void *re::DynamicArray<re::KeyValuePair<int,re::DynamicArray<unsigned int>>>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::KeyValuePair<int,re::DynamicArray<unsigned int>>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::KeyValuePair<int,re::DynamicArray<unsigned int>>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::KeyValuePair<int,re::DynamicArray<unsigned int>>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::KeyValuePair<int,re::DynamicArray<unsigned int>>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 48 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v11[5] = 0;
          v11[2] = 0;
          v11[3] = 0;
          v11[1] = 0;
          *(v11 + 8) = 0;
          v12 = *(v8 + 8);
          v13 = *(v8 + 16);
          v14 = v8 + 8;
          v11[1] = v12;
          v11[2] = v13;
          *v14 = 0;
          *(v14 + 8) = 0;
          v15 = v11[3];
          v11[3] = *(v14 + 16);
          *(v14 + 16) = v15;
          v16 = v11[5];
          v11[5] = *(v14 + 32);
          *(v14 + 32) = v16;
          ++*(v14 + 24);
          ++*(v11 + 8);
          re::DynamicArray<unsigned long>::deinit(v14);
          v11 += 6;
          v8 = v14 + 40;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::createCGImagePtrFromCGImageSource(uint64_t a1@<X0>, CGImageSource *a2@<X1>, uint64_t a3@<X3>, size_t a4@<X4>, uint64_t a5@<X8>)
{
  v96 = *MEMORY[0x1E69E9840];
  v73 = 0;
  v74 = 0;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  [v10 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E696E0A8]];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:*(a3 + 44)];
  [v10 setValue:v11 forKey:*MEMORY[0x1E696E0A0]];

  [v10 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696E008]];
  if ((*(a1 + 21) & 1) == 0)
  {
    [v10 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E696E138]];
    [v10 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696E038]];
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(a2, a4, v10);
  if (ImageAtIndex || (ImageAtIndex = CGImageSourceCreateImageAtIndex(a2, a4, 0)) != 0)
  {
    v13 = ImageAtIndex;
    v14 = CGImageSourceCopyPropertiesAtIndex(a2, a4, 0);
    v15 = v14;
    if (!v14)
    {
      v44 = *re::pipelineLogObjects(0);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_ERROR, "Failed to retrieve image properties from a CGImageSource during texture creation", buf, 2u);
      }

      *(a5 + 48) = 0;
      *(a5 + 16) = 0u;
      *(a5 + 32) = 0u;
      *a5 = 0u;
      *(a5 + 56) = CGColorSpaceGetNumberOfComponents(0);
      *(a5 + 64) = CGColorSpaceGetModel(0);
      *(a5 + 72) = 0;
      *(a5 + 80) = 0;
      *(a5 + 104) = 0;
      goto LABEL_55;
    }

    v67 = a5;
    v16 = [(__CFDictionary *)v14 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
    v17 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
    v69 = v16;
    v18 = [v16 unsignedIntegerValue];
    v68 = v17;
    v19 = [v17 unsignedIntegerValue];
    v20 = *(a3 + 16);
    if (v20 <= 1)
    {
      v20 = 1;
    }

    if (*(a3 + 8) == 1)
    {
      LODWORD(v21) = v20;
    }

    else
    {
      LODWORD(v21) = 1;
    }

    v22 = v21;
    v23 = re::internal::downsampleFactorToFitDeviceLimits(a1, 2, v18, v19, 0);
    if (v23 <= v21)
    {
      v21 = v21;
    }

    else
    {
      v21 = v23;
    }

    v65 = v18;
    v66 = v19;
    if (v21 >= 2)
    {
      v25 = v23;
      v64 = v15;
      v26 = [v10 mutableCopy];
      v27 = [MEMORY[0x1E696AD98] numberWithInt:v21];
      [v26 setObject:v27 forKey:*MEMORY[0x1E696E0F8]];

      if (v25 > v22)
      {
        v29 = *re::pipelineLogObjects(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218752;
          *&buf[4] = v65;
          *&buf[12] = 2048;
          *&buf[14] = v19;
          *&buf[22] = 2048;
          *&buf[24] = v74;
          *v88 = 2048;
          *&v88[2] = v73;
          _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Downsampling imported image to match device limits, from %zux%zu image to %zux%zu", buf, 0x2Au);
        }
      }

      v10 = v26;
      v15 = v64;
    }

    if ((*(a3 + 56) - 3) <= 1 && !*(a3 + 64))
    {
      ColorSpace = CGImageGetColorSpace(v13);
      Model = CGColorSpaceGetModel(ColorSpace);
      if (Model <= kCGColorSpaceModelRGB)
      {
        v33 = Model;
        if (!re::internal::colorSpaceIsExtendedOrHDR(ColorSpace, v32))
        {
          v34 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x1E696DEF0]];
          if (v34)
          {
          }

          else
          {
            v54 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x1E696DDF0]];
            v55 = [v54 BOOLValue];
            v56 = [v54 BOOLValue];
            if (*(a1 + 16) == 1)
            {
              v57 = v56;
              if (v33)
              {
                v58 = 4;
              }

              else
              {
                v58 = 1;
              }

              if (*(a1 + 19))
              {
                v59 = *(a1 + 20);
              }

              else
              {
                v59 = 0;
              }

              CGColorSpaceNameForGamut = re::ColorHelpers::getCGColorSpaceNameForGamut(v58, v55 ^ 1u, v57, v59);
            }

            else
            {
              v61 = MEMORY[0x1E695F1C0];
              if (v33 == kCGColorSpaceModelMonochrome)
              {
                v61 = MEMORY[0x1E695F128];
              }

              CGColorSpaceNameForGamut = *v61;
            }

            v62 = *(a3 + 16);
            *buf = *a3;
            *&buf[16] = v62;
            *v88 = *(a3 + 32);
            *&v88[12] = *(a3 + 44);
            v89 = *(a3 + 64);
            v90 = *(a3 + 72);
            LODWORD(v91) = *(a3 + 88);
            re::FixedArray<short>::FixedArray(&v92, (a3 + 96));
            v95 = *(a3 + 120);
            objc_storeStrong(&v89, CGColorSpaceNameForGamut);
            v63 = CGImageRetain(v13);
            CGImageRefWithColorSpace = re::createCGImageRefWithColorSpace(a1, v63, buf, 0);
            if (v92 != 0.0)
            {
              if (v93)
              {
                (*(**&v92 + 40))();
                v93 = 0;
                v94 = 0;
              }

              v92 = 0.0;
            }

            if (CGImageRefWithColorSpace)
            {
LABEL_26:
              CGImageRelease(v13);
              CGImagePtr::CGImagePtr(buf, CGImageRefWithColorSpace);
              if (v21 >= 2)
              {
                v46 = *&buf[8];
                v45 = *&buf[16];
                v47 = v73;
                v48 = v74;
                if (*&buf[8] > v74 || *&buf[16] > v73)
                {
                  v49 = *re::pipelineLogObjects(v37);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    *v75 = 134219264;
                    v76 = v65;
                    v77 = 2048;
                    v78 = v66;
                    v79 = 2048;
                    v80 = v48;
                    v81 = 2048;
                    v82 = v47;
                    v83 = 2048;
                    v84 = v46;
                    v85 = 2048;
                    v86 = v45;
                    _os_log_debug_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEBUG, "Performing requested downsampling of %zux%zu image to %zux%zu (since Image I/O only downsampled to %zux%zu)", v75, 0x3Eu);
                  }

                  v50 = CGImageCreateByScaling();
                  if (v50)
                  {
                    v51 = v50;
                    CGImagePtr::CGImagePtr(image, 0);
                    CGImagePtr::swap(image, buf);
                    CGImageRelease(image[0]);
                    image[0] = 0;

                    CGColorSpaceRelease(space);
                    space = 0;
                    CGImagePtr::CGImagePtr(v67, v51);
LABEL_54:
                    CGImageRelease(*buf);
                    *buf = 0;

                    CGColorSpaceRelease(*&v88[16]);
LABEL_55:

                    goto LABEL_56;
                  }

                  v53 = *re::pipelineLogObjects(0);
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    *v75 = 134218240;
                    v76 = v48;
                    v77 = 2048;
                    v78 = v47;
                    _os_log_error_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_ERROR, "Failed to scale source image to %zux%zu during texture creation, ignoring downsampling", v75, 0x16u);
                  }
                }
              }

              else if (*(a3 + 120) == 1)
              {
                v38 = [(__CFDictionary *)v15 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
                if (v38)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v39 = [v38 objectForKeyedSubscript:*MEMORY[0x1E696DF78]];
                    v40 = [v38 objectForKeyedSubscript:*MEMORY[0x1E696DF70]];
                    v41 = v40;
                    if (v39)
                    {
                      if (v40)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v42 = [v39 unsignedIntegerValue];
                            v43 = [v41 unsignedIntegerValue];
                            if ((BYTE8(v90) & 1) == 0)
                            {
                              BYTE8(v90) = 1;
                            }

                            v91 = v42;
                            v92 = v43;
                          }
                        }
                      }
                    }
                  }
                }
              }

              CGImagePtr::CGImagePtr(v67, buf);
              goto LABEL_54;
            }
          }
        }
      }
    }

    v35 = CGImageRetain(v13);
    CGImageRefWithColorSpace = re::createCGImageRefWithColorSpace(a1, v35, a3, 0);
    goto LABEL_26;
  }

  v52 = *re::pipelineLogObjects(0);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, "Failed to create an image from a CGImageSource during texture creation", buf, 2u);
  }

  *(a5 + 48) = 0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  *(a5 + 56) = CGColorSpaceGetNumberOfComponents(0);
  *(a5 + 64) = CGColorSpaceGetModel(0);
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 104) = 0;
LABEL_56:
}

unint64_t re::anonymous namespace::getCGDownsampledImageSize(unint64_t this, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  if ((a3 ^ (a3 - 1)) <= a3 - 1)
  {
    v6 = (a3 - 1) | ((a3 - 1) >> 1) | (((a3 - 1) | ((a3 - 1) >> 1)) >> 2);
    v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
    a3 = (v7 | (v7 >> 16) | ((v7 | (v7 >> 16)) >> 32)) + 1;
  }

  v8 = this / a3;
  if (this / a3 <= 1)
  {
    v8 = 1;
  }

  *a4 = v8;
  v9 = a2 / a3;
  if (a2 / a3 <= 1)
  {
    v9 = 1;
  }

  *a5 = v9;
  return this;
}

BOOL re::internal::colorSpaceIsExtendedOrHDR(re::internal *this, CGColorSpace *a2)
{
  if (CGColorSpaceUsesExtendedRange(this) || CGColorSpaceIsPQBased(this))
  {
    return 1;
  }

  return CGColorSpaceIsHLGBased(this);
}

const re::ImportGraphicsContext *re::createCGImageRefWithColorSpace(re *this, const re::ImportGraphicsContext *a2, CGImage *a3, const re::TextureFromImageOptions *a4)
{
  v4 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 8);
  v9 = v8;
  if (!v8)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = CGColorSpaceCreateWithName(v8);
  if (!v10)
  {
    v15 = *re::pipelineLogObjects(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      *buf = 136315138;
      CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Invalid colorSpaceNameOverride: %s", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v11 = v10;
  if (*(this + 16) == 1 && (*(a3 + 14) - 3) <= 1)
  {
    ColorSpace = CGImageGetColorSpace(a2);
    if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
    {
      CopyWithColorSpace = CGImageCreateCopyWithColorSpace(a2, v11);
      if (CopyWithColorSpace)
      {
        v14 = CopyWithColorSpace;
        CGImageRelease(a2);
        a2 = v14;
      }

      else
      {
        Name = CGColorSpaceGetName(ColorSpace);
        v33 = CFStringGetCStringPtr(Name, 0x8000100u);
        v34 = CFStringGetCStringPtr(v8, 0x8000100u);
        v35 = *re::pipelineLogObjects(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          CStringPtr = v33;
          v40 = 2080;
          v41 = v34;
          _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "Failed to create CGImage from Source ColorSpace: %s to Override ColorSpace: %s", buf, 0x16u);
        }
      }
    }
  }

LABEL_11:
  CGColorSpaceRelease(v11);
  if (v4)
  {
    Width = CGImageGetWidth(a2);
    Height = CGImageGetHeight(a2);
    v36 = 0;
    v37 = 0;
    v19 = *(a3 + 2) == 1 ? *(a3 + 4) : 1;
    v20 = v19;
    v21 = re::internal::downsampleFactorToFitDeviceLimits(this, 2, 0, 0, 0);
    v23 = v21 <= v19 ? v19 : v21;
    if (v23 >= 2)
    {
      v24 = v21;
      v26 = v36;
      v27 = v37;
      if (Width > v37 || Height > v36)
      {
        v28 = *re::pipelineLogObjects(CGDownsampledImageSize);
        if (v24 <= v20)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218752;
            CStringPtr = Width;
            v40 = 2048;
            v41 = Height;
            v42 = 2048;
            v43 = v27;
            v44 = 2048;
            v45 = v26;
            _os_log_debug_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEBUG, "Performing requested downsampling of %zux%zu image to %zux%zu", buf, 0x2Au);
          }
        }

        else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218752;
          CStringPtr = Width;
          v40 = 2048;
          v41 = Height;
          v42 = 2048;
          v43 = v27;
          v44 = 2048;
          v45 = v26;
          _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Downsampling imported image to match device limits, from %zux%zu image to %zux%zu", buf, 0x2Au);
        }

        v29 = CGImageCreateByScaling();
        if (!v29)
        {
          v30 = *re::pipelineLogObjects(0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            CStringPtr = v27;
            v40 = 2048;
            v41 = v26;
            _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "Failed to scale source image to %zux%zu during texture creation, ignoring downsampling", buf, 0x16u);
          }
        }

        CGImageRelease(a2);
        return v29;
      }
    }
  }

  return a2;
}

void re::createTextureFromCGImagePtr(uint64_t a1@<X0>, id *a2@<X1>, id *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, re::Allocator *a6@<X5>, CGColorSpaceRef *a7@<X6>, unint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned int *a11, uint64_t a12)
{
  v15 = a5;
  if (*(a5 + 28))
  {
    v21 = a1;
    v19 = a9;
    re::logTextureCompressionInfo("createTextureFromCGImagePtr", *a3, (a5 + 28));
    v15 = a5;
    a1 = v21;
    a9 = v19;
  }
}

void re::anonymous namespace::createTextureWithImageUsingVImage(uint64_t a1@<X0>, unint64_t a2@<X1>, id *a3@<X2>, id *a4@<X3>, const char *a5@<X4>, uint64_t a6@<X5>, re::Allocator *a7@<X6>, CGColorSpaceRef *a8@<X7>, uint64_t a9@<X8>, unint64_t *a10, uint64_t a11, unsigned int *a12, uint64_t a13)
{
  v16 = a4;
  v462 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    *&v421[32] = 0;
    memset(v421, 0, 28);
    re::DynamicArray<float *>::setCapacity(v421, a2);
    v21 = *&v421[16];
    v22 = a1;
    v23 = a2;
    do
    {
      if (v21 >= *&v421[8])
      {
        re::DynamicArray<float *>::growCapacity(v421, v21 + 1);
        v21 = *&v421[16];
      }

      v24 = *a1;
      a1 += 112;
      *(*&v421[32] + 8 * v21++) = v24;
      *&v421[16] = v21;
      ++*&v421[24];
      --v23;
    }

    while (v23);
    v16 = a4;
    v25 = re::internal::ensureImageArrayConsistency(*&v421[32], v21, [*a4 textureType], image);
    if ((image[0] & 1) == 0)
    {
      v29 = "(no label)";
      if (a5)
      {
        v29 = a5;
      }

      if (image[2])
      {
        v30 = image[3];
      }

      else
      {
        v30 = (&image[2] + 1);
      }

      re::DynamicString::format("Assembling texture '%s' from image array: %s", buf, v29, v30);
      re::DynamicString::DynamicString(v363, buf);
      *a9 = 0;
      v31 = v363[3];
      *(a9 + 8) = v363[0];
      *(a9 + 32) = v31;
      *(a9 + 16) = *&v363[1];
      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      if (image[0] & 1) == 0 && image[1] && (image[2])
      {
        (*(*image[1] + 40))();
      }

      if (*v421 && *&v421[32])
      {
        (*(**v421 + 40))();
      }

      return;
    }

    if (*v421 && *&v421[32])
    {
      (*(**v421 + 40))(v25);
    }

    a1 = v22;
  }

  v403 = vmovn_s64(*(a1 + 24));
  space = *(a1 + 48);
  v405 = *(a1 + 72);
  v406 = 0;
  memset(v407, 0, sizeof(v407));
  v330 = *(a6 + 72);
  v335 = *(a6 + 80);
  v337 = *(a6 + 84);
  v363[0] = 0;
  v343 = a3;
  v26 = a9;
  if ([*v16 textureType] == 7)
  {
    [*v16 pixelFormat];
    memset(v421, 0, 56);
    MTLPixelFormatGetInfoForDevice();
    if ((*&v421[8] & 0x400) != 0)
    {
      *v421 = [*v16 copy];
      NS::SharedPtr<MTL::Texture>::operator=(v363, v421);
      if (*v421)
      {
      }

      isHDR = re::isHDR([*v16 pixelFormat]);
      v28 = *v16;
      if (isHDR)
      {
        [v28 setPixelFormat_];
      }

      else
      {
        [v28 pixelFormat];
        memset(v421, 0, 56);
        MTLPixelFormatGetInfoForDevice();
        if ((*&v421[8] & 0x800) != 0)
        {
          v32 = 71;
        }

        else
        {
          v32 = 70;
        }

        [*v16 setPixelFormat_];
      }

      [*v16 setStorageMode_];
    }
  }

  v319 = a2;
  v33 = &selRef_isLimitedRenderAsset;
  v34 = [*v16 pixelFormat];
  memset(v421, 0, 56);
  InfoForDevice = MTLPixelFormatGetInfoForDevice();
  if ((v421[8] & 1) == 0)
  {
    v36 = *re::pipelineLogObjects(InfoForDevice);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LODWORD(image[0]) = 67109120;
      HIDWORD(image[0]) = v34;
      _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Invalid pixel format %u during texture creation", image, 8u);
    }

    v390 = 0;
    v391 = 0;
    *&v392.bitmapInfo = unk_1E30FFC08;
LABEL_45:
    v394 = 0;
    *&v392.renderingIntent = 0;
    v393 = 0;
    v395 = -1;
    v402 = 0;
    v396 = 0;
    v397 = 0;
    v398 = 0u;
    v399 = 0u;
    v400 = 0;
    goto LABEL_46;
  }

  v443 = 0;
  v442 = 0u;
  memset(image, 0, sizeof(image));
  v37 = MTLPixelFormatGetInfoForDevice();
  if ((image[1] & 1) == 0)
  {
    v38 = *re::pipelineLogObjects(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v263 = v38;
      Name = MTLPixelFormatGetName();
      *buf = 136446210;
      *&buf[4] = Name;
      _os_log_error_impl(&dword_1E1C61000, v263, OS_LOG_TYPE_ERROR, "Pixel format %{public}s is not supported by this MTLDevice", buf, 0xCu);
    }

    v390 = 0;
    v391 = 0;
    *&v392.bitmapInfo = unk_1E30FFC08;
    goto LABEL_45;
  }

  v51 = *(a6 + 20);
  if (v51 == 3)
  {
    v52 = a6;
    v318 = 0;
    v312 = [*v16 mipmapLevelCount] > 1;
  }

  else if (v51 || [*v16 mipmapLevelCount] < 2)
  {
    v52 = a6;
    v312 = 0;
    v318 = 0;
  }

  else
  {
    v52 = a6;
    v312 = (image[1] & 0x14) != 20;
    v318 = (image[1] & 0x14) == 20;
  }

  v323 = *a12;
  v321 = [*v16 swizzle];
  v310 = *a12;
  if ((BYTE1(image[1]) & 4) == 0)
  {
    v54 = v53;
    v55 = v312;
    v56 = !v312;
    if (v53)
    {
      v56 = 1;
    }

    a6 = v52;
    if ((v56 & 1) == 0)
    {
      v57 = *re::pipelineLogObjects(v53);
      v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
      v55 = 0;
      if (v58)
      {
        v59 = v57;
        v60 = MTLPixelFormatGetName();
        *buf = 136446210;
        *&buf[4] = v60;
        _os_log_impl(&dword_1E1C61000, v59, OS_LOG_TYPE_DEFAULT, "Pixel format %{public}s does not have a matching vImageScale variant required for mipmap generation on CPU.                              Texture won't have any mipmaps.", buf, 0xCu);

        v55 = 0;
      }
    }

    LOBYTE(v390) = 0;
    HIBYTE(v390) = v318;
    v391 = v55;
    LODWORD(v398) = 0;
    *(&v398 + 4) = 0;
    v396 = 0;
    v397 = 0;
    HIDWORD(v398) = v54;
    *&v399 = v330;
    *(&v399 + 1) = __PAIR64__(v337, v335);
    v400 = v323 != v321;
    if (v323 != v321)
    {
      v401 = v310;
    }

    v402 = v363[0];
    v33 = &selRef_isLimitedRenderAsset;
    goto LABEL_46;
  }

  v61 = [*v16 &selRef_resourceWithResourcePath_];
  v314 = v52;
  v62 = *(v52 + 12);
  Model = CGColorSpaceGetModel(space);
  v64 = Model != kCGColorSpaceModelMonochrome;
  v317 = a1;
  if (v62 != 2)
  {
    v65 = a8;
    if (v62 != 1)
    {
      if (v62)
      {
        v62 = 0;
        v308 = 0;
        v66 = 0;
        v67 = 0x2000;
        goto LABEL_521;
      }

      goto LABEL_501;
    }

LABEL_519:
    v67 = 8194;
    v308 = 1;
    v66 = 1;
    goto LABEL_520;
  }

  v246 = v405 & 0x1F;
  v65 = a8;
  if (v246 > 7)
  {
LABEL_614:
    v308 = 0;
    v66 = 0;
    if (Model)
    {
      v62 = 5;
    }

    else
    {
      v62 = 0;
    }

    if (Model)
    {
      v67 = 8198;
    }

    else
    {
      v67 = 0x2000;
    }

    goto LABEL_521;
  }

  v62 = 1;
  if (((1 << v246) & 0x98) == 0)
  {
    if (((1 << v246) & 6) != 0)
    {
      goto LABEL_519;
    }

    goto LABEL_614;
  }

LABEL_501:
  v308 = 0;
  v66 = 1;
  v67 = 8196;
  v62 = 3;
LABEL_520:
  v64 = 1;
LABEL_521:
  v329 = v16;
  v307 = v66;
  if (v403.i32[0] >= 9u && re::isHDR(v61))
  {
    if (v66)
    {
      v267 = 9;
    }

    else
    {
      v267 = 5;
    }

    if (v64)
    {
      v268 = 10;
    }

    else
    {
      v268 = 9;
    }

    v306 = v268;
    v269 = 16;
    if (v64)
    {
      v270 = 64;
    }

    else
    {
      v270 = 16;
    }

    if (!v64)
    {
      v267 = 2;
    }

    v304 = v267;
    v309 = v62 | 0x1100;
  }

  else
  {
    v269 = 8;
    if (v64)
    {
      v271 = v405 & 0x7000;
      if (v66)
      {
        v272 = 6;
      }

      else
      {
        v272 = 3;
      }

      if (v271 == 0x2000)
      {
        v62 = v67;
      }

      v309 = v62;
      if (v271 == 0x2000)
      {
        v273 = 8;
      }

      else
      {
        v273 = v272;
      }

      v304 = v273;
      v306 = 5;
      v270 = 32;
    }

    else
    {
      v309 = v62;
      v304 = 1;
      v270 = 8;
      v306 = 1;
    }
  }

  v274 = *v65;
  v275 = v407[1];
  v276 = CGColorSpaceRetain(*v65);
  v277 = v65[1];
  v278 = *(v65 + 4);
  ASTCDefaultMode = re::getASTCDefaultMode(v34);
  ASTCBlockSize = re::getASTCBlockSize(v34);
  if (ASTCBlockSize)
  {
    v281 = *(v314 + 40);
    LOBYTE(v390) = 1;
    HIBYTE(v390) = v318;
    v391 = v312;
    v392.bitsPerComponent = v269;
    v392.bitsPerPixel = v270;
    v392.colorSpace = v274;
    v392.bitmapInfo = v309;
    v392.version = 0;
    v392.decode = 0;
    *&v392.renderingIntent = v275;
    v393 = v276;
    v394 = v277;
    v395 = v278;
    v396 = __PAIR64__(ASTCDefaultMode, ASTCBlockSize);
    v397 = v308 & v307;
    LODWORD(v398) = v281;
    *(&v398 + 4) = v304;
    HIDWORD(v398) = v306;
    *&v399 = v330;
    *(&v399 + 1) = __PAIR64__(v337, v335);
    v400 = v323 != v321;
    if (v323 != v321)
    {
      v401 = v310;
    }

    v276 = 0;
    v402 = v363[0];
    a6 = v314;
    a1 = v317;
    v16 = v329;
  }

  else
  {
    v282 = *re::pipelineLogObjects(ASTCBlockSize);
    a1 = v317;
    if (os_log_type_enabled(v282, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = image[0];
      _os_log_error_impl(&dword_1E1C61000, v282, OS_LOG_TYPE_ERROR, "Invalid pixel format for ASTC compression: %{public}s", buf, 0xCu);
    }

    v390 = 0;
    v391 = 0;
    *&v392.bitmapInfo = unk_1E30FFC08;
    v394 = 0;
    *&v392.renderingIntent = 0;
    v393 = 0;
    v395 = -1;
    v402 = 0;
    v396 = 0;
    v397 = 0;
    v398 = 0u;
    v399 = 0u;
    v400 = 0;
    a6 = v314;
    v16 = v329;
  }

  v33 = &selRef_isLimitedRenderAsset;
  CGColorSpaceRelease(v276);
  v26 = a9;
LABEL_46:
  v39 = v363[0];
  if (v363[0])
  {
  }

  if (v392.version)
  {
    v40 = *v421;
    v41 = *&v421[16];
    v42 = *&v421[24];
    *v26 = 0;
    *(v26 + 8) = v40;
    *(v26 + 24) = v41;
    *(v26 + 32) = v42;
LABEL_636:
    if (v402)
    {

      v402 = 0;
    }

    CGColorSpaceRelease(v393);
    return;
  }

  memset(v386, 0, 24);
  v387 = 0u;
  memset(v388, 0, 28);
  v389 = 0uLL;
  v385 = (v391 | (8 * v390) | (2 * HIBYTE(v390)));
  if (CGColorSpaceEqualToColorSpace())
  {
    v43 = 0;
  }

  else
  {
    v43 = 16;
  }

  v385 = v385 & 0xFFEF | v43;
  *(&v389 + 1) = CGImageGetUTType(*a1);
  if ((*(a6 + 56) - 3) <= 1 && *a8)
  {
    v44 = CGColorSpaceGetName(*a8);
    v45 = *(&v387 + 1);
    *(&v387 + 1) = v44;
  }

  v316 = a1;
  memset(v384, 0, sizeof(v384));
  if (*v343 && ([*v16 storageMode] == 2 || (v390 & 0x100) != 0 || v390 == 1))
  {
    re::internal::BlitCommandQueue::init(v384, v343, &re::internal::textureUploadQueueName(void)::queueName);
  }

  v46 = [*v16 width];
  v47 = [*v16 height];
  v49 = [*v16 depth];
  if (*v343)
  {
    if ([*v16 textureType] == 7)
    {
      v50 = 2048;
    }

    else if ([*v343 supportsFamily:1003])
    {
      v50 = 0x4000;
    }

    else
    {
      v68 = [*v343 supportsFamily:2002];
      v50 = 0x2000;
      if (v68)
      {
        v50 = 0x4000;
      }
    }

    v71 = v46 > v50 || v47 > v50 || v49 > v50;
    if ([*v16 textureType] == 3)
    {
      if ([*v16 arrayLength] <= 0x800 && !v71)
      {
        goto LABEL_98;
      }

LABEL_237:
      re::DynamicString::format("Bad dimensions as GPU family doesnt support textures of following resolution: (%zu, %zu, %zu) ", v421, v46, v47, v49);
      re::DynamicString::DynamicString(image, v421);
      *v26 = 0;
      v134 = image[3];
      *(v26 + 8) = image[0];
      *(v26 + 32) = v134;
      *(v26 + 16) = *&image[1];
      if (*v421 && (v421[8] & 1) != 0)
      {
        (*(**v421 + 40))();
      }

LABEL_630:
      re::internal::BlitCommandQueue::~BlitCommandQueue(v384);
      if (v388[0])
      {
        if (v389)
        {
          (*(*v388[0] + 40))();
        }

        *&v389 = 0;
        memset(v388, 0, 24);
        ++LODWORD(v388[3]);
      }

      if (v387)
      {
      }

      goto LABEL_636;
    }

    if (v71)
    {
      goto LABEL_237;
    }
  }

LABEL_98:
  v328 = v16;
  v324 = a13;
  v72 = *a10;
  if (*a10 <= a10[1])
  {
    v72 = a10[1];
  }

  v73 = a10[2];
  if (v72 > v73)
  {
    v73 = v72;
  }

  if (v46 <= v47)
  {
    v74 = v47;
  }

  else
  {
    v74 = v46;
  }

  if (v74 <= v49)
  {
    v74 = v49;
  }

  v75 = 64 - __clz(v73);
  v76 = v75 - 1;
  if (v73)
  {
    v77 = ~(-1 << (v75 - 1));
  }

  else
  {
    v77 = 0;
  }

  if (!v73)
  {
    v76 = 0;
  }

  if ((v77 & v73) != 0)
  {
    v78 = v75;
  }

  else
  {
    v78 = v76;
  }

  v79 = 64 - __clz(v74);
  v80 = v79 - 1;
  if (v74)
  {
    v81 = ~(-1 << (v79 - 1));
  }

  else
  {
    v81 = 0;
  }

  if (!v74)
  {
    v80 = 0;
  }

  if ((v81 & v74) != 0)
  {
    v82 = v79;
  }

  else
  {
    v82 = v80;
  }

  v322 = v82 - v78;
  v83 = *v343;
  v383 = 0;
  if (v390 == 1 && v83 && !v402)
  {
    v85 = a5;
    if (*(a6 + 120) == 1)
    {
      v86 = *re::pipelineLogObjects(v84);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *v421 = 0;
        _os_log_impl(&dword_1E1C61000, v86, OS_LOG_TYPE_DEFAULT, "'reduceMemoryPeak' option ignored when loading image with compression options", v421, 2u);
      }
    }

    *v408 = 0;
    v377 = 0;
    LOBYTE(v380) = 0;
    memset(v381, 0, sizeof(v381));
    v379 = 0;
    v378 = 8;
    v382 = dispatch_get_global_queue(21, 0);
    if (v319)
    {
      v87 = 0;
      v88 = v343;
      v89 = "(no label)";
      if (a5)
      {
        v89 = a5;
      }

      v334 = v89;
      v90 = v322;
      contexta = (v322 + 1);
      while (1)
      {
        image[0] = *v88;
        memset(&image[1], 0, 24);
        LODWORD(v442) = 1;
        *(&v442 + 1) = 0;
        v443 = 0;
        v453 = 0;
        v454 = 0;
        v452.f64[1] = 0.0;
        v455 = 0;
        v459 = 0;
        v456 = 0;
        v457 = 0;
        v458 = 0;
        v351[0] = 0;
        width = v428.width;
        height = v428.height;
        if (!HIDWORD(v430))
        {
          break;
        }

        v94 = *re::pipelineLogObjects(v91);
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          *v421 = 0;
          _os_log_error_impl(&dword_1E1C61000, v94, OS_LOG_TYPE_ERROR, "Failed to create image buffer during texture creation", v421, 2u);
        }

        v96 = 0;
        v97 = *v421;
        v98 = *&v421[16];
        v99 = *&v421[24];
        *v26 = 0;
        *(v26 + 8) = v97;
        *(v26 + 24) = v98;
        *(v26 + 32) = v99;
LABEL_167:
        CGColorSpaceRelease(v440);
        v109 = v439;
        v440 = 0;
        v439 = 0;
        if (v109)
        {
          free(v109);
        }

        if (v437)
        {
          CGImageBlockSetRelease();
        }

        if (!v96)
        {
          goto LABEL_624;
        }

        if (!v87)
        {
          if (*(a6 + 52) == 1)
          {
            re::mtl::Device::makeSharedTexture(*v328, v343, v421);
            NS::SharedPtr<MTL::Texture>::operator=(&v383, v421);
            if (*v421)
            {
            }

            if (!v383)
            {
              re::DynamicString::format("Failed to allocate shared texture with dimensions %zu x %zu", v421, [*v328 width], objc_msgSend(*v328, sel_height));
LABEL_621:
              re::DynamicString::DynamicString(buf, v421);
              *v26 = 0;
              v292 = v410;
              *(v26 + 8) = *buf;
              *(v26 + 32) = v292;
              *(v26 + 16) = *&buf[8];
              if (*v421 && (v421[8] & 1) != 0)
              {
                (*(**v421 + 40))();
              }

LABEL_624:
              re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(image);
LABEL_625:
              if (*&v381[1])
              {
                astcenc_context_free(*&v381[1]);
                *&v381[1] = 0;
              }

              goto LABEL_628;
            }
          }

          else
          {
            re::mtl::Device::makeTexture(*v328, v343, v421);
            NS::SharedPtr<MTL::Texture>::operator=(&v383, v421);
            if (*v421)
            {
            }

            if (!v383)
            {
              re::DynamicString::format("Failed to allocate texture with dimensions %zu x %zu", v421, [*v328 width], objc_msgSend(*v328, sel_height));
              goto LABEL_621;
            }
          }
        }

        v110 = re::internal::BlitCommandQueue::blitCommandEncoder(v384);
        v362[0] = 0;
        re::internal::TextureInMetalBuffers::replaceTextureSlice(image, &v383, v90, v87, v110, v362);
        if (v391 || HIBYTE(v390) == 1)
        {
          re::internal::BlitCommandQueue::commit(v384);
          re::internal::BlitCommandQueue::waitUntilCompleted(v384, v421);
          if ((v421[0] & 1) == 0)
          {
            v112 = *re::pipelineLogObjects(v111);
            if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
            {
              v131 = &v421[17];
              if (v421[16])
              {
                v131 = *&v421[24];
              }

              *buf = 136315394;
              *&buf[4] = v334;
              *&buf[12] = 2080;
              *&buf[14] = v131;
            }

            if (v421[0] & 1) == 0 && *&v421[8] && (v421[16])
            {
              (*(**&v421[8] + 40))();
            }
          }
        }

        re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(image);
        if (v391)
        {
          v113 = [*v328 mipmapLevelCount];
          if ([*v328 textureType] == 7)
          {
            v114 = *re::pipelineLogObjects(7);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              *v421 = 0;
              _os_log_error_impl(&dword_1E1C61000, v114, OS_LOG_TYPE_ERROR, "Mipmaps generation is not supported for compressed 3D textures (rdar://118713689)", v421, 2u);
            }
          }

          else
          {
            v115 = v322 + 1;
            if (contexta < v113)
            {
              do
              {
                if (v115 > contexta)
                {
                  if (width >> v115 <= 1)
                  {
                    v116 = 1;
                  }

                  else
                  {
                    v116 = width >> v115;
                  }

                  if (height >> v115 <= 1)
                  {
                    v117 = 1;
                  }

                  else
                  {
                    v117 = height >> v115;
                  }

                  operator new();
                }

                v118 = v421[0];
                if (v421[0])
                {
                  v119 = re::internal::BlitCommandQueue::blitCommandEncoder(v384);
                  v361[0] = 0;
                  re::internal::TextureInMetalBuffers::replaceTextureSlice(&v421[8], &v383, v115, v87, v119, v361);
                }

                else
                {
                  v120 = &v421[17];
                  if (v421[16])
                  {
                    v120 = *&v421[24];
                  }

                  re::DynamicString::format("Failed to compress mipmap %zu image buffer during texture creation: %s", image, v115, v120);
                  re::DynamicString::DynamicString(buf, image);
                  *v26 = 0;
                  v121 = v410;
                  *(v26 + 8) = *buf;
                  *(v26 + 32) = v121;
                  *(v26 + 16) = *&buf[8];
                  if (image[0] && (image[1] & 1) != 0)
                  {
                    (*(*image[0] + 40))();
                  }
                }

                if (v421[0] == 1)
                {
                  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v421[8]);
                }

                else if (*&v421[8] && (v421[16] & 1) != 0)
                {
                  (*(**&v421[8] + 40))();
                }

                if (!v118)
                {
                  goto LABEL_625;
                }
              }

              while (v113 != ++v115);
            }
          }
        }

        v33 = &selRef_isLimitedRenderAsset;
        if (HIBYTE(v390) == 1)
        {
          v122 = objc_autoreleasePoolPush();
          v123 = v383;
          v124 = [v383 arrayLength];
          if ([v123 textureType] - 5 >= 2)
          {
            v125 = v124;
          }

          else
          {
            v125 = 6 * v124;
          }

          v126 = v383;
          v127 = [v383 pixelFormat];
          v128 = [v126 newTextureViewWithPixelFormat:v127 textureType:objc_msgSend(v383 levels:sel_textureType) slices:v322, a11, 0, v125];
          v129 = re::internal::BlitCommandQueue::blitCommandEncoder(v384);
          re::mtl::BlitCommandEncoder::generateMipmaps(v129, v128);
          if (v128)
          {
          }

          objc_autoreleasePoolPop(v122);
          v33 = &selRef_isLimitedRenderAsset;
        }

        re::internal::BlitCommandQueue::commit(v384);
        re::internal::BlitCommandQueue::waitUntilCompleted(v384, v421);
        if ((v421[0] & 1) == 0)
        {
          v265 = *re::pipelineLogObjects(v130);
          if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
          {
            if (v421[16])
            {
              v299 = *&v421[24];
            }

            else
            {
              v299 = &v421[17];
            }

            LODWORD(image[0]) = 136315394;
            *(image + 4) = v334;
            WORD2(image[1]) = 2080;
            *(&image[1] + 6) = v299;
          }

          re::DynamicString::DynamicString(image, &v421[8]);
          *v26 = 0;
          v266 = image[3];
          *(v26 + 8) = image[0];
          *(v26 + 32) = v266;
          *(v26 + 16) = *&image[1];
          if (v421[0] & 1) == 0 && *&v421[8] && (v421[16])
          {
            (*(**&v421[8] + 40))(*&v421[8], *&v421[24]);
          }

          goto LABEL_625;
        }

        ++v87;
        v88 = v343;
        v90 = v322;
        if (v87 == v319)
        {
          v85 = a5;
          if (*&v381[1])
          {
            astcenc_context_free(*&v381[1]);
            *&v381[1] = 0;
          }

          goto LABEL_556;
        }
      }

      if ((v421[0] & 1) == 0)
      {
        v101 = *re::pipelineLogObjects(v100);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v101, OS_LOG_TYPE_ERROR, "Failed to compress image buffer during texture creation", buf, 2u);
        }

        v96 = 0;
        v103 = *buf;
        v106 = *&buf[16];
        v107 = v410;
        *v26 = 0;
        *(v26 + 8) = v103;
        *(v26 + 24) = v106;
        *(v26 + 32) = v107;
        goto LABEL_162;
      }

      memset(v363, 0, sizeof(v363));
      v364 = 1;
      v365 = 0;
      v366 = 0;
      v370 = 0;
      v371 = 0;
      *(&v369 + 1) = 0;
      v372 = 0;
      v376 = 0;
      v373 = 0;
      v374 = 0;
      v375 = 0;
      re::Result<re::internal::TextureInMetalBuffers,re::DynamicString>::swapValue(buf, v421, v363);
      re::ObjCObject::operator=(image, buf);
      image[1] = *&buf[8];
      re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::operator=(&image[2], &buf[16]);
      re::DynamicArray<BOOL>::operator=(&v452.f64[1], &v415);
      v457 = v416;
      v458 = v417;
      if (v459)
      {
        if ((v418 & 1) == 0)
        {
          v459 = 0;
          goto LABEL_148;
        }
      }

      else
      {
        if ((v418 & 1) == 0)
        {
          goto LABEL_148;
        }

        v459 = 1;
      }

      v460 = v419;
      v461 = v420;
LABEL_148:
      re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(buf);
      re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v363);
      if (v391)
      {
        if (width >> 1 <= 1)
        {
          v104 = 1;
        }

        else
        {
          v104 = width >> 1;
        }

        if (height >> 1 <= 1)
        {
          v105 = 1;
        }

        else
        {
          v105 = height >> 1;
        }

        operator new();
      }

      if (v324)
      {
        if (v87 != v319 - 1)
        {
LABEL_161:
          v96 = 1;
LABEL_162:
          if (v421[0] == 1)
          {
            re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v421[8]);
          }

          else if (*&v421[8] && (v421[16] & 1) != 0)
          {
            (*(**&v421[8] + 40))();
          }

          goto LABEL_167;
        }

        v108 = *(v324 + 24);
        if (!v108)
        {
          goto LABEL_662;
        }

        (*(*v108 + 48))(v108);
      }

      v324 = 0;
      goto LABEL_161;
    }

LABEL_556:

LABEL_557:
    if (v402)
    {
      *v421 = v383;
      *&v421[8] = 0;
      re::internal::synchronizeTextureMipmaps(v421, v283);
      if (*&v421[8] != -1)
      {
        (off_1F5D0BE10[*&v421[8]])(image, v421);
      }

      *buf = re::getASTCBlockSize([v402 v33[204]]);
      *&buf[4] = re::getASTCDefaultMode([v402 v33[204]]);
      buf[8] = 0;
      *&buf[12] = 0;
      if (*(a6 + 24) == 4)
      {
        *&buf[12] = *(a6 + 40);
      }

      image[0] = v383;
      LODWORD(image[1]) = 0;
      re::createCompressedTextureData(image, *(a6 + 56), buf, v343, &v402, 0, v421);
      if (LODWORD(image[1]) != -1)
      {
        v284 = (off_1F5D0BE10[LODWORD(image[1])])(v363, image);
      }

      if (v421[0])
      {
        if (*&v421[16])
        {
          goto LABEL_663;
        }

        NS::SharedPtr<MTL::Buffer>::operator=(&v383, &v421[8]);
        v385 |= 8u;
      }

      else
      {
        v285 = *re::pipelineLogObjects(v284);
        if (os_log_type_enabled(v285, OS_LOG_TYPE_DEFAULT))
        {
          v286 = "(no label)";
          if (v85)
          {
            v286 = v85;
          }

          if (v421[16])
          {
            v287 = *&v421[24];
          }

          else
          {
            v287 = &v421[17];
          }

          LODWORD(image[0]) = 136315394;
          *(image + 4) = v286;
          WORD2(image[1]) = 2080;
          *(&image[1] + 6) = v287;
        }
      }

      v245 = re::Result<re::TextureData,re::DynamicString>::~Result(v421);
    }

    if (v400)
    {
      if (v390 == 1)
      {
        v385 |= 4u;
        v288 = *re::pipelineLogObjects(v245);
        if (os_log_type_enabled(v288, OS_LOG_TYPE_DEFAULT))
        {
          *v421 = 0;
          _os_log_impl(&dword_1E1C61000, v288, OS_LOG_TYPE_DEFAULT, "Compression + swizzle is not supported if device doesn't support swizzle: will uncompress.", v421, 2u);
        }
      }

      re::internal::createRepackedTexture(v343, &v383, v401, v421);
      NS::SharedPtr<MTL::Texture>::operator=(&v383, v421);
      if (*v421)
      {
      }
    }

    *v421 = v383;
    *&v421[8] = 0;
    re::TextureImportData::ImportReport::SourceInfo::setFromTexture(v386, v421);
    if (*&v421[8] != -1)
    {
      (off_1F5D0BE10[*&v421[8]])(image, v421);
    }

    image[0] = v383;
    LODWORD(image[1]) = 0;
    v421[0] = 0;
    *&v421[8] = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v421, image);
    *&v421[16] = v385;
    *&v421[24] = *v386;
    *&v421[36] = *&v386[12];
    v289 = v387;
    v387 = 0u;
    *&v421[56] = v289;
    *&v421[72] = v388[0];
    memset(v388, 0, 24);
    *&v421[80] = *&v388[1];
    ++LODWORD(v388[3]);
    *&v421[96] = 1;
    v290 = v389;
    *&v389 = 0;
    *&v421[104] = v290;
    if (LODWORD(image[1]) != -1)
    {
      (off_1F5D0BE10[LODWORD(image[1])])(buf, image);
    }

    if (*&v421[8])
    {
      if (*&v421[8] != 1)
      {
        goto LABEL_663;
      }

      if (!*(*v421 + 48))
      {
        goto LABEL_596;
      }

      v291 = (*v421 + 24);
    }

    else
    {
      v291 = v421;
    }

    if (v85 && *v291 && *v85)
    {
      re::TextureData::setLabel(v421, v85);
    }

LABEL_596:
    re::Ok<re::TextureImportData &,re::TextureImportData>(v421, image);
    re::Result<re::TextureImportData,re::DynamicString>::Result(v26, image);
    if (v446)
    {
      if (v450)
      {
        (*(*v446 + 40))();
      }

      v450 = 0;
      v447 = 0;
      v448 = 0;
      v446 = 0;
      ++v449;
    }

    if (v444)
    {

      v444 = 0;
    }

    if (LODWORD(image[1]) != -1)
    {
      (off_1F5D0BE10[LODWORD(image[1])])(buf, image);
    }

    if (*&v421[72])
    {
      if (*&v421[104])
      {
        (*(**&v421[72] + 40))();
      }

      *&v421[104] = 0;
      memset(&v421[72], 0, 24);
      ++*&v421[96];
    }

    if (*&v421[56])
    {

      *&v421[56] = 0;
    }

    if (*&v421[8] != -1)
    {
      (off_1F5D0BE10[*&v421[8]])(image, v421);
    }

LABEL_628:
    if (v383)
    {
    }

    goto LABEL_630;
  }

  *&v381[1] = 0;
  v379 = 0;
  v377 = 0;
  v378 = 0;
  v380 = 0;
  v315 = a6;
  if (*(a6 + 120) != 1)
  {
    goto LABEL_243;
  }

  if (!v83 || v391)
  {
    v132 = *re::pipelineLogObjects(v84);
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
    {
      *v421 = 0;
      v133 = "Loading with lower memory peak: not supported if loading without Metal";
      goto LABEL_242;
    }
  }

  else if ((*(a6 + 24) - 3) > 1)
  {
    if (*(a6 + 72))
    {
      v132 = *re::pipelineLogObjects(v84);
      if (!os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_243;
      }

      *v421 = 0;
      v133 = "Loading with lower memory peak: not supported with image dimension override options";
      goto LABEL_242;
    }

    v247 = *(v316 + 104);
    if (v247)
    {
      v248 = re::UTTypes::HEIC(v247);
      v249 = CFStringCompare(v247, v248, 0);
      if (v249)
      {
        v250 = re::UTTypes::AVIF(v249);
        v251 = CFStringCompare(v247, v250, 0);
        if (v251)
        {
          v252 = re::UTTypes::JPEG(v251);
          v253 = CFStringCompare(v247, v252, 0);
          if (v253)
          {
            v254 = *re::pipelineLogObjects(v253);
            if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
            {
              *v421 = 0;
              _os_log_impl(&dword_1E1C61000, v254, OS_LOG_TYPE_DEFAULT, "For formats other than heic, jpg and avif, loading with lower memory peak can increase processing time with fewer memory benefits.", v421, 2u);
            }
          }
        }
      }
    }

    v255 = *(v316 + 8);
    v256 = *(v316 + 16);
    if (v256 * v255 >= 0x80000)
    {
      v135 = a13;
      if (*(v316 + 80))
      {
        v257 = v255;
        v259 = *(v316 + 88);
        v258 = *(v316 + 96);
        v260 = vcvtpd_u64_f64(v255 / v259);
        v261 = v256;
        v262 = vcvtpd_u64_f64(v256 / v258);
        if (v262 * v260 < 2)
        {
          v331 = 0;
          v332 = 1;
          goto LABEL_244;
        }

        v297 = 1;
        do
        {
          v298 = v297;
          if (v262)
          {
            if ((v260 & 1) != 0 && (v260 < 2 || v260 <= v262))
            {
              v262 >>= v262 > 1;
            }

            else
            {
              v260 >>= 1;
            }
          }

          else
          {
            v262 >>= 1;
          }

          v297 = 0;
        }

        while ((v298 & 1) != 0);
        v14 = v259 * v260;
        v13 = v258 * v262;
      }

      else
      {
        v257 = v255;
        v293 = 1;
        v294 = *(v316 + 16);
        do
        {
          v295 = v293;
          v296 = v255 > v294;
          v294 >>= v255 <= v294;
          v255 >>= v296;
          v293 = 0;
        }

        while ((v295 & 1) != 0);
        v14 = v255;
        v13 = v294;
        v261 = v256;
      }

      v332 = vcvtpd_u64_f64(v257 / v14) * vcvtpd_u64_f64(v261 / v13);
      if (v332 >= 2)
      {
        v385 |= 0x200u;
      }

      v331 = 1;
      goto LABEL_244;
    }
  }

  else
  {
    v132 = *re::pipelineLogObjects(v84);
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
    {
      *v421 = 0;
      v133 = "Loading with lower memory peak: not supported with ASTC compression options";
LABEL_242:
      _os_log_impl(&dword_1E1C61000, v132, OS_LOG_TYPE_DEFAULT, v133, v421, 2u);
    }
  }

LABEL_243:
  v331 = 0;
  v332 = 1;
  v135 = a13;
LABEL_244:
  if (!v319)
  {
LABEL_497:
    v245 = re::DynamicArray<re::internal::TextureInMetalBuffers>::deinit(&v377);
    v85 = a5;
    a6 = v315;
    goto LABEL_557;
  }

  v303 = 0;
  v338 = 0;
  v136 = "(no label)";
  if (a5)
  {
    v136 = a5;
  }

  v301 = v136;
  v313 = v322 + 1;
  v302 = ~v82 + v78;
  v311 = v83;
  while (!v332)
  {
LABEL_496:
    if (++v338 == v319)
    {
      goto LABEL_497;
    }
  }

  v137 = 0;
  v336 = (v316 + 112 * v338);
  while (1)
  {
    contextb = objc_autoreleasePoolPush();
    if ((v331 & 1) == 0)
    {
      v325 = vcvtq_f64_u64(*(v336 + 8));
      CGImagePtr::CGImagePtr(image, v336);
      v451 = 0uLL;
      v452 = v325;
      CGImagePtr::CGImagePtr(v421, image);
      *&v421[112] = v451;
      *&v421[128] = v452;
      buf[0] = 1;
      CGImagePtr::CGImagePtr(&buf[8], v421);
      v414 = *&v421[112];
      v415 = *&v421[128];
      CGImageRelease(*v421);
      *v421 = 0;

      CGColorSpaceRelease(*&v421[48]);
      *&v421[48] = 0;
      CGImageRelease(image[0]);
      image[0] = 0;

      v150 = v443;
      goto LABEL_260;
    }

    v138 = *(v336 + 1);
    v139 = vcvtpd_u64_f64(v138 / v14);
    v140 = *(v336 + 2);
    v141 = vcvtpd_u64_f64(v140 / v13);
    v142 = v14 * (v137 % v139);
    v143 = v13 * (v137 / v139);
    v144 = v138 - v142;
    v145 = v142;
    v146 = v143;
    if (v137 % v139 == v139 - 1)
    {
      v147 = v144;
    }

    else
    {
      v147 = v14;
    }

    if (v137 / v139 == v141 - 1)
    {
      v148 = (v140 - v143);
    }

    else
    {
      v148 = v13;
    }

    v463.origin.x = v142;
    v463.origin.y = v143;
    v463.size.width = v147;
    v463.size.height = v148;
    v149 = CGImageCreateWithImageInRect(*v336, v463);
    if (v149)
    {
      CGImagePtr::CGImagePtr(v363, v149);
      CGImagePtr::CGImagePtr(image, v363);
      *&v451 = v145;
      *(&v451 + 1) = v146;
      v452.f64[0] = v147;
      v452.f64[1] = v148;
      CGImagePtr::CGImagePtr(v421, image);
      *&v421[112] = v451;
      *&v421[128] = v452;
      buf[0] = 1;
      CGImagePtr::CGImagePtr(&buf[8], v421);
      v414 = *&v421[112];
      v415 = *&v421[128];
      CGImageRelease(*v421);
      *v421 = 0;

      CGColorSpaceRelease(*&v421[48]);
      *&v421[48] = 0;
      CGImageRelease(image[0]);
      image[0] = 0;

      CGColorSpaceRelease(v443);
      v443 = 0;
      CGImageRelease(v363[0]);
      v363[0] = 0;

      v150 = v366;
LABEL_260:
      CGColorSpaceRelease(v150);
      goto LABEL_261;
    }

    buf[0] = 0;
    *&buf[8] = *v421;
    v410 = *&v421[16];
    v411 = *&v421[24];
LABEL_261:
    if (buf[0])
    {
      break;
    }

    v161 = *re::pipelineLogObjects(v151);
    if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
    {
      v172 = &buf[17];
      if (buf[16])
      {
        v172 = v410;
      }

      *v421 = 136315138;
      *&v421[4] = v172;
    }

    re::DynamicString::DynamicString(v421, &buf[8]);
    v157 = 0;
    *v26 = 0;
    v162 = *&v421[24];
    *(v26 + 8) = *v421;
    *(v26 + 32) = v162;
    *(v26 + 16) = *&v421[8];
LABEL_485:
    if (buf[0] == 1)
    {
      CGImageRelease(*&buf[8]);
      *&buf[8] = 0;

      CGColorSpaceRelease(v412);
    }

    else if (*&buf[8] && (buf[16] & 1) != 0)
    {
      (*(**&buf[8] + 40))();
    }

    objc_autoreleasePoolPop(contextb);
    if ((v157 & 1) == 0)
    {
      re::DynamicArray<re::internal::TextureInMetalBuffers>::deinit(&v377);
      goto LABEL_628;
    }

    if (++v137 == v332)
    {
      goto LABEL_496;
    }
  }

  v430 = 0;
  v429 = 0u;
  memset(&v428, 0, sizeof(v428));
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(0);
  LODWORD(v432) = CGColorSpaceGetModel(0);
  LODWORD(v433) = 0;
  LOBYTE(v434) = 0;
  v437 = 0;
  CGImagePtr::CGImagePtr(v421, &v428);
  memset(&v421[112], 0, 32);
  CGImagePtr::CGImagePtr(v363, &buf[8]);
  v368 = v414;
  v369 = v415;
  CGImagePtr::CGImagePtr(image, v421);
  CGImagePtr::swap(image, &buf[8]);
  CGImageRelease(image[0]);
  image[0] = 0;

  CGColorSpaceRelease(v443);
  v414 = *&v421[112];
  v415 = *&v421[128];
  CGImageRelease(*v421);
  *v421 = 0;

  CGColorSpaceRelease(*&v421[48]);
  *&v421[48] = 0;
  CGImageRelease(v428.data);
  v428.data = 0;

  CGColorSpaceRelease(v430);
  v152 = v338 == v319 - 1 && v137 == v332 - 1;
  v153 = !v152;
  if (v152)
  {
    CGImagePtr::CGImagePtr(v358, 0);
    CGImagePtr::swap(v358, v336);
    CGImageRelease(v358[0]);
    v358[0] = 0;

    CGColorSpaceRelease(v359);
    v359 = 0;
  }

  v357 = 0;
  if (HIDWORD(v443))
  {
    v155 = *re::pipelineLogObjects(v154);
    if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
    {
      *v421 = 0;
      _os_log_error_impl(&dword_1E1C61000, v155, OS_LOG_TYPE_ERROR, "Failed to create image buffer during texture creation", v421, 2u);
    }

    v157 = 0;
    v158 = *v421;
    v159 = *&v421[16];
    v160 = *&v421[24];
    *v26 = 0;
    *(v26 + 8) = v158;
    *(v26 + 24) = v159;
    *(v26 + 32) = v160;
    goto LABEL_480;
  }

  v163 = v357;
  if (v83)
  {
    v164 = image[3];
    if ([*v343 supportsFamily:1003])
    {
      v165 = 0x4000;
    }

    else
    {
      v166 = [*v343 supportsFamily:2002];
      v165 = 0x4000;
      if (!v166)
      {
        v165 = 0x2000;
      }
    }

    v167 = v165 * DWORD1(v442);
    if (v164 > v167 >> 3)
    {
      v168 = (image[2] * DWORD1(v442) + 7) >> 3;
      if (v168 <= v167 >> 3)
      {
        if (v163)
        {
          v326 = v135;
          if (image[1] >= 2)
          {
            v169 = v164;
            v170 = (image[2] * DWORD1(v442) + 7) >> 3;
            v171 = 1;
            do
            {
              memmove(image[0] + v170, image[0] + v169, v168);
              ++v171;
              v170 += v168;
              v169 += v164;
            }

            while (v171 < image[1]);
          }

          image[3] = v168;
          v33 = &selRef_isLimitedRenderAsset;
          v135 = v326;
          v83 = v311;
          goto LABEL_308;
        }

        memset(v408, 0, 32);
        v173 = MEMORY[0x1E6908310](v408, image[1]);
        if (v173)
        {
          v174 = v173;
          v175 = v135;
          v176 = *re::pipelineLogObjects(v173);
          if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
          {
            *v421 = 134217984;
            *&v421[4] = v174;
            _os_log_error_impl(&dword_1E1C61000, v176, OS_LOG_TYPE_ERROR, "Failed to allocate an image buffer to pack to maximum allowed row bytes (vImage error: %zd)", v421, 0xCu);
          }

          re::DynamicString::format("Failed to allocate an image buffer to pack to maximum allowed row bytes (vImage error: %zd)", v421, v174);
          v177 = *&v421[16];
          v178 = *v421;
          v179 = v421[8];
          LOBYTE(v428.data) = 0;
          v428.rowBytes = *&v421[16];
          *&v429 = *&v421[24];
          v428.height = *v421;
          v428.width = *&v421[8];
          re::DynamicString::DynamicString(v421, &v428.height);
          *a9 = 0;
          v180 = *&v421[24];
          *(a9 + 8) = *v421;
          *(a9 + 32) = v180;
          *(a9 + 16) = *&v421[8];
          if (v178 && (v179 & 1) != 0)
          {
            (*(*v178 + 40))(v178, v177);
          }

          v157 = 0;
          v135 = v175;
          v26 = a9;
LABEL_471:
          v83 = v311;
          goto LABEL_480;
        }

        v327 = v135;
        *&v408[24] = v168;
        if (image[1])
        {
          v181 = 0;
          v182 = 0;
          v183 = 0;
          do
          {
            memcpy((v182 + *v408), image[0] + v181, v168);
            v183 = (v183 + 1);
            v182 += v168;
            v181 += v164;
          }

          while (v183 < image[1]);
        }

        CGColorSpaceRelease(*v422);
        v184 = *&v421[144];
        *v422 = 0;
        *&v421[144] = 0;
        if (v184)
        {
          free(v184);
        }

        v135 = v327;
        v83 = v311;
        if (*&v421[104])
        {
          CGImageBlockSetRelease();
        }

        v33 = &selRef_isLimitedRenderAsset;
        v26 = a9;
      }
    }
  }

LABEL_308:
  if (v153 & 1 | (v135 == 0 || !v163))
  {
    if (v83)
    {
      goto LABEL_310;
    }

LABEL_326:
    v356 = *v328;
    if (v390 == 1)
    {
      *v421 = [*v328 copy];
      NS::SharedPtr<MTL::Texture>::operator=(&v356, v421);
      if (*v421)
      {
      }

      if (SDWORD1(v398) <= 5)
      {
        if (DWORD1(v398) != 1)
        {
          if (DWORD1(v398) == 2)
          {
            v196 = 25;
            goto LABEL_385;
          }

LABEL_379:
          v196 = 0;
          goto LABEL_385;
        }

        v209 = HIDWORD(v396) == 2;
        v210 = 10;
LABEL_382:
        if (v209)
        {
          v196 = v210 + 1;
        }

        else
        {
          v196 = v210;
        }

        goto LABEL_385;
      }

      if (DWORD1(v398) == 6)
      {
        v209 = HIDWORD(v396) == 2;
        v210 = 70;
        goto LABEL_382;
      }

      if (DWORD1(v398) != 9)
      {
        goto LABEL_379;
      }

      v196 = 115;
LABEL_385:
      [v356 setPixelFormat_];
    }

    *&v408[32] = 0;
    memset(v408, 0, 28);
    if (!v211)
    {
      v213 = *v421;
      v214 = *&v421[16];
      v215 = *&v421[24];
      *v26 = 0;
      *(v26 + 8) = v213;
      *(v26 + 24) = v214;
      *(v26 + 32) = v215;
      goto LABEL_452;
    }

    v212 = v356;
    v355 = v212;
    re::CPUTexture::Data::addMipAndFixAlignment(v408, &v355, image[0], image[1] * image[3]);
    if (v212)
    {

      v355 = 0;
    }

    if (v391)
    {
      v428.data = 0;
      if (v313 < [*v328 mipmapLevelCount])
      {
      }

      v26 = a9;
      v83 = v311;
    }

    else
    {
      [*v328 setMipmapLevelCount_];
    }

    re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(&v356, v408, &v354);
    if (v390 == 1)
    {
      re::internal::createCompressedCPUTextureData(v354, SDWORD1(v398), SDWORD2(v398), v328, &v396, v322, v421);
      if (v421[0])
      {
        v385 |= 8u;
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v354, *&v421[8]);
        re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(v421);
        goto LABEL_398;
      }

      v218 = &v421[17];
      if (v421[16])
      {
        v218 = *&v421[24];
      }

      re::DynamicString::format("Failed to compress image buffer during texture creation: %s", &v428, v218);
      re::DynamicString::DynamicString(v351, &v428);
      *v26 = 0;
      *(v26 + 8) = *v351;
      *(v26 + 32) = v353;
      *(v26 + 16) = v352;
      if (v428.data && (v428.height & 1) != 0)
      {
        (*(*v428.data + 40))();
      }

      re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(v421);
LABEL_430:
      if (v354)
      {
      }

LABEL_452:
      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v408);
      if (v356)
      {
      }

LABEL_479:
      v157 = 0;
      goto LABEL_480;
    }

LABEL_398:
    v216 = v354;
    if (*(v354 + 6) && a5 && *(v354 + 3) && *a5)
    {
      re::CPUTexture::setLabel(v354, a5);
      v216 = v354;
      v428.data = v354;
      if (!v354)
      {
        goto LABEL_406;
      }
    }

    else
    {
      v428.data = v354;
    }

    v217 = v216 + 8;
LABEL_406:
    LODWORD(v428.height) = 1;
    re::TextureImportData::TextureImportData(v421, &v428, &v385);
    if (LODWORD(v428.height) != -1)
    {
      (off_1F5D0BE10[LODWORD(v428.height)])(v351, &v428);
    }

    re::Ok<re::TextureImportData &,re::TextureImportData>(v421, &v428);
    re::Result<re::TextureImportData,re::DynamicString>::Result(v26, &v428);
    if (v433)
    {
      if (v437)
      {
        (*(*v433 + 40))();
      }

      v437 = 0;
      v434 = 0;
      v435 = 0;
      v433 = 0;
      ++v436;
    }

    if (NumberOfComponents)
    {

      NumberOfComponents = 0;
    }

    if (LODWORD(v428.height) != -1)
    {
      (off_1F5D0BE10[LODWORD(v428.height)])(v351, &v428);
    }

    if (*&v421[72])
    {
      if (*&v421[104])
      {
        (*(**&v421[72] + 40))();
      }

      *&v421[104] = 0;
      memset(&v421[72], 0, 24);
      ++*&v421[96];
    }

    if (*&v421[56])
    {

      *&v421[56] = 0;
    }

    if (*&v421[8] != -1)
    {
      (off_1F5D0BE10[*&v421[8]])(&v428, v421);
    }

    goto LABEL_430;
  }

  v195 = *(v135 + 24);
  if (!v195)
  {
    goto LABEL_662;
  }

  (*(*v195 + 48))(v195);
  v135 = 0;
  if (!v83)
  {
    goto LABEL_326;
  }

LABEL_310:
  v185 = [*v328 mipmapLevelCount];
  if ((*(v315 + 52) & 1) == 0 && [*v328 storageMode] != 2)
  {
    if (!(v137 | v338))
    {
      re::mtl::Device::makeTexture(*v328, v343, v421);
      NS::SharedPtr<MTL::Texture>::operator=(&v383, v421);
      if (*v421)
      {
      }

      if (!v383)
      {
        re::DynamicString::format("Failed to allocate texture with dimensions %zu x %zu", v421, [*v328 width], objc_msgSend(*v328, sel_height));
        re::DynamicString::DynamicString(&v428, v421);
        *v26 = 0;
        rowBytes = v428.rowBytes;
        *(v26 + 8) = v428.data;
        *(v26 + 32) = rowBytes;
        *(v26 + 16) = *&v428.height;
        if (*v421 && (v421[8] & 1) != 0)
        {
          (*(**v421 + 40))();
        }

        v157 = 0;
        v33 = &selRef_isLimitedRenderAsset;
        v83 = v311;
        goto LABEL_480;
      }
    }

    memset(v408, 0, 24);
    v344[0] = 1;
    v345 = v368;
    v346 = v369;
    {
      re::DynamicString::format("Failed to allocate buffer for texture with dimensions %zu x %zu", v421, [*v328 width], objc_msgSend(*v328, sel_height));
      re::DynamicString::DynamicString(&v428, v421);
      *v26 = 0;
      v208 = v428.rowBytes;
      *(v26 + 8) = v428.data;
      *(v26 + 32) = v208;
      *(v26 + 16) = *&v428.height;
      if (*v421 && (v421[8] & 1) != 0)
      {
        (*(**v421 + 40))();
      }

      v33 = &selRef_isLimitedRenderAsset;
      v83 = v311;
      re::internal::BlitCommandQueue::~BlitCommandQueue(v408);
      goto LABEL_479;
    }

    if (v391)
    {
      *v351 = 0;
      if (v313 < v185)
      {
      }
    }

    re::internal::BlitCommandQueue::~BlitCommandQueue(v408);
    v33 = &selRef_isLimitedRenderAsset;
    if (!(v153 & 1 | ((v390 & 0x100) == 0)))
    {
      goto LABEL_458;
    }

    v83 = v311;
    if (v303)
    {
LABEL_465:
      re::internal::BlitCommandQueue::commit(v384);
      re::internal::BlitCommandQueue::waitUntilCompleted(v384, v421);
      if ((v421[0] & 1) == 0)
      {
        v241 = *re::pipelineLogObjects(v235);
        if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
        {
          v244 = &v421[17];
          if (v421[16])
          {
            v244 = *&v421[24];
          }

          LODWORD(v428.data) = 136315394;
          *(&v428.data + 4) = v301;
          WORD2(v428.height) = 2080;
          *(&v428.height + 6) = v244;
        }

        re::DynamicString::DynamicString(&v428, &v421[8]);
        *v26 = 0;
        v242 = v428.rowBytes;
        *(v26 + 8) = v428.data;
        *(v26 + 32) = v242;
        *(v26 + 16) = *&v428.height;
        if (v421[0] & 1) == 0 && *&v421[8] && (v421[16])
        {
          (*(**&v421[8] + 40))();
        }

        v157 = 0;
        v303 = 1;
        goto LABEL_480;
      }
    }

    if (*(v315 + 120) == 1)
    {
      v236 = v135;
      v237 = v379;
      v379 = 0;
      if (v237)
      {
        v238 = *&v381[1];
        v239 = 224 * v237;
        do
        {
          re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v238);
          v238 = (v240 + 224);
          v239 -= 224;
        }

        while (v239);
      }

      v303 = 0;
      ++v380;
      v157 = 1;
      v135 = v236;
      goto LABEL_471;
    }

    v303 = 0;
    v157 = 1;
LABEL_480:
    CGColorSpaceRelease(v454);
    v243 = v453;
    v454 = 0;
    v453 = 0;
    if (v243)
    {
      free(v243);
    }

    if (v450)
    {
      CGImageBlockSetRelease();
    }

    CGImageRelease(v363[0]);
    v363[0] = 0;

    CGColorSpaceRelease(v366);
    goto LABEL_485;
  }

  v305 = v137 | v338;
  if (v378 < v185)
  {
    re::DynamicArray<re::internal::TextureInMetalBuffers>::setCapacity(&v377, v185);
  }

  *v421 = *v343;
  memset(&v421[8], 0, 24);
  *&v421[32] = 1;
  *&v421[40] = 0;
  *&v421[48] = 0;
  *&v421[144] = 0;
  *v422 = 0;
  *&v421[136] = 0;
  *&v422[8] = 0;
  v425 = 0;
  *&v422[16] = 0;
  v423 = 0;
  v424 = 0;
  v186 = v379;
  v187 = v322 + 1;
  if (v379 >= v313)
  {
    if (v379 > v313)
    {
      v188 = v135;
      v197 = 224 * (v322 + 1);
      do
      {
        re::internal::TextureInMetalBuffers::~TextureInMetalBuffers((*&v381[1] + v197));
        ++v187;
        v197 += 224;
      }

      while (v187 < v379);
      goto LABEL_336;
    }
  }

  else
  {
    if (v378 < v313)
    {
      re::DynamicArray<re::internal::TextureInMetalBuffers>::setCapacity(&v377, v313);
      v186 = v379;
    }

    v188 = v135;
    if (v186 < v313)
    {
      v189 = v302 + v186;
      v190 = 224 * v186;
      do
      {
        v191 = *&v381[1] + v190;
        *v191 = *v421;
        *(v191 + 8) = *&v421[8];
        re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(v191 + 16, &v421[16]);
        re::DynamicArray<BOOL>::DynamicArray(v191 + 136, &v421[136]);
        v192 = v423;
        *(v191 + 184) = v424;
        *(v191 + 176) = v192;
        LODWORD(v192) = v425;
        *(v191 + 192) = v425;
        if (v192 == 1)
        {
          v193 = v426;
          *(v191 + 216) = v427;
          *(v191 + 200) = v193;
        }

        v190 += 224;
      }

      while (!__CFADD__(v189++, 1));
    }

LABEL_336:
    v379 = v322 + 1;
    ++v380;
    v135 = v188;
    v26 = a9;
  }

  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v421);
  if (image[1])
  {
    v198 = image[3] * (image[1] - 1) + ((image[2] * DWORD1(v442) + 7) >> 3);
  }

  else
  {
    v198 = 0;
  }

  v428.data = &unk_1F5D0A468;
  LOBYTE(v428.height) = 0;
  v428.width = image[0];
  v428.rowBytes = v198;
  re::FixedArrayInputStream::FixedArrayInputStream(&v429, image[0], v198, -1);
  if (image[1])
  {
    v199 = image[3] * (image[1] - 1) + ((image[2] * DWORD1(v442) + 7) >> 3);
  }

  else
  {
    v199 = 0;
  }

  *v421 = image[2];
  *&v421[8] = image[1];
  *&v421[16] = 1;
  *&v408[8] = 0;
  *&v408[16] = 0;
  *v408 = &v408[8];
  v200 = re::internal::TextureInMetalBuffers::allocate(*&v381[1] + 224 * v379 - 224, v199, image[3], 1uLL, &v428, v421, 1uLL, v408);
  std::__tree<unsigned long long>::destroy(v408, *&v408[8]);
  if ((v200 & 1) == 0)
  {
    v204 = *v421;
    v205 = *&v421[16];
    v206 = *&v421[24];
    *v26 = 0;
    *(v26 + 8) = v204;
    *(v26 + 24) = v205;
    *(v26 + 32) = v206;
    goto LABEL_359;
  }

  if (v391)
  {
    v356 = 0;
    if (v313 < v185)
    {
    }
  }

  *&v422[8] = 0u;
  memset(v421, 0, 48);
  *&v421[48] = unk_1E30FFC08;
  memset(&v421[64], 0, 88);
  *v422 = 0u;
  *&v422[16] = -1;
  CGColorSpaceRelease(*v422);
  v202 = *&v421[144];
  *v422 = 0;
  *&v421[144] = 0;
  if (v202)
  {
    free(v202);
  }

  if (*&v421[104])
  {
    CGImageBlockSetRelease();
  }

  if (v135)
  {
    v203 = v153;
  }

  else
  {
    v203 = 1;
  }

  if (v203)
  {
    if (v305)
    {
      goto LABEL_436;
    }

LABEL_370:
    if (*(v315 + 52) == 1)
    {
      re::mtl::Device::makeSharedTexture(*v328, v343, v421);
    }

    else
    {
      re::mtl::Device::makeTexture(*v328, v343, v421);
    }

    NS::SharedPtr<MTL::Texture>::operator=(&v383, v421);
    if (*v421)
    {
    }

    if (v383)
    {
LABEL_436:
      v219 = v135;
      v220 = v379;
      v221 = v322;
      if (v379 <= v322)
      {
        goto LABEL_661;
      }

      v222 = *&v381[1] + 224 * v322;
      v223 = re::internal::BlitCommandQueue::blitCommandEncoder(v384);
      v348[0] = 1;
      v349 = v368;
      v350 = v369;
      re::internal::TextureInMetalBuffers::replaceTextureSlice(v222, &v383, v322, v338, v223, v348);
      if (v391 && v313 < v185)
      {
        v224 = 224 * (v322 + 1);
        v220 = (v322 + 1);
        while (1)
        {
          v225 = v379;
          if (v379 <= v220)
          {
            break;
          }

          v221 = *&v381[1];
          v226 = re::internal::BlitCommandQueue::blitCommandEncoder(v384);
          v347[0] = 0;
          re::internal::TextureInMetalBuffers::replaceTextureSlice(v221 + v224, &v383, v322, v338, v226, v347);
          ++v220;
          v224 += 224;
          if (v185 == v220)
          {
            goto LABEL_442;
          }
        }

        *v351 = 0;
        memset(v421, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v408 = 136315906;
        *&v408[4] = "operator[]";
        *&v408[12] = 1024;
        *&v408[14] = 789;
        *&v408[18] = 2048;
        *&v408[20] = v220;
        *&v408[28] = 2048;
        *&v408[30] = v225;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_661:
        *v351 = 0;
        memset(v421, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v408 = 136315906;
        *&v408[4] = "operator[]";
        *&v408[12] = 1024;
        *&v408[14] = 789;
        *&v408[18] = 2048;
        *&v408[20] = v221;
        *&v408[28] = 2048;
        *&v408[30] = v220;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

LABEL_442:
      v428.data = &unk_1F5D0A468;
      re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(&v429);
      v135 = v219;
      v26 = a9;
      v33 = &selRef_isLimitedRenderAsset;
      v83 = v311;
      if (v153 & 1 | ((v390 & 0x100) == 0))
      {
        goto LABEL_465;
      }

LABEL_458:
      if ([v383 textureType] == 5 || objc_msgSend(v383, sel_textureType) == 3)
      {
        v229 = v319;
      }

      else
      {
        v229 = 1;
      }

      v230 = v383;
      v231 = [v383 v33[204]];
      v232 = [v230 newTextureViewWithPixelFormat:v231 textureType:objc_msgSend(v383 levels:sel_textureType) slices:v322, a11, 0, v229];
      v233 = objc_autoreleasePoolPush();
      v234 = re::internal::BlitCommandQueue::blitCommandEncoder(v384);
      re::mtl::BlitCommandEncoder::generateMipmaps(v234, v232);
      objc_autoreleasePoolPop(v233);
      if (v232)
      {
      }

      v83 = v311;
      goto LABEL_465;
    }

    re::DynamicString::format("Failed to allocate shared texture with dimensions %zu x %zu", v421, [*v328 width], objc_msgSend(*v328, sel_height));
    re::DynamicString::DynamicString(v408, v421);
    *v26 = 0;
    v227 = *&v408[24];
    *(v26 + 8) = *v408;
    *(v26 + 32) = v227;
    *(v26 + 16) = *&v408[8];
    if (*v421 && (v421[8] & 1) != 0)
    {
      (*(**v421 + 40))();
    }

LABEL_359:
    v33 = &selRef_isLimitedRenderAsset;
    v83 = v311;
    v428.data = &unk_1F5D0A468;
    re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(&v429);
    goto LABEL_479;
  }

  v207 = *(v135 + 24);
  if (v207)
  {
    (*(*v207 + 48))(v207);
    v135 = 0;
    if (!v305)
    {
      goto LABEL_370;
    }

    goto LABEL_436;
  }

LABEL_662:
  std::__throw_bad_function_call[abi:nn200100]();
LABEL_663:
  v300 = std::__throw_bad_variant_access[abi:nn200100]();
  re::createTextureFromCGImagePtrs(v300);
}

void re::createTextureFromCGImagePtrs(uint64_t a1@<X0>, unint64_t a2@<X1>, id *a3@<X2>, id *a4@<X3>, const char *a5@<X4>, uint64_t a6@<X5>, re::Allocator *a7@<X6>, CGColorSpaceRef *a8@<X7>, uint64_t a9@<X8>, unint64_t *a10, uint64_t a11, unsigned int *a12, uint64_t a13)
{
  if (*(a6 + 28))
  {
    v20 = a1;
    v21 = a2;
    v15 = a8;
    v16 = a7;
    v17 = a5;
    v19 = a9;
    v18 = a4;
    re::logTextureCompressionInfo("createTextureFromCGImagePtrs", *a4, (a6 + 28));
    a4 = v18;
    a9 = v19;
    a1 = v20;
    a2 = v21;
    a5 = v17;
    a7 = v16;
    a8 = v15;
  }
}

CGColorSpaceRef re::getDestinationColorSpace@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, id *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  [*a3 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  [*a3 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  if (*(a1 + 24) > 8uLL || (v11 = *(a1 + 48)) != 0 && re::internal::colorSpaceIsExtendedOrHDR(v11, v10))
  {
    isHDR = 1;
  }

  else
  {
    isHDR = re::isHDR([*a3 pixelFormat]);
  }

  if ((*(a4 + 56) - 3) <= 1)
  {
    if (a2[16] == 1)
    {
      if (a2[19])
      {
        v13 = a2[20];
      }

      else
      {
        v13 = 0;
      }

      CGColorSpaceNameForGamut = re::ColorHelpers::getCGColorSpaceNameForGamut(0, 0, isHDR, v13);
    }

    else
    {
      CGColorSpaceNameForGamut = *MEMORY[0x1E695F128];
    }

    v21 = CGColorSpaceCreateWithName(CGColorSpaceNameForGamut);
    BaseColorSpace = v21;
    if (a2[16] == 1)
    {
      if (CGColorSpaceEqualToColorSpace())
      {
        goto LABEL_31;
      }
    }

    else
    {
      Model = CGColorSpaceGetModel(v21);
      if (CGColorSpaceGetModel(*(a1 + 48)) == Model)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_30;
  }

  v15 = *(a1 + 48);
  v16 = CGColorSpaceGetModel(v15);
  v18 = v16;
  if (v16 == kCGColorSpaceModelIndexed)
  {
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(*(a1 + 48));
    v20 = CGColorSpaceGetModel(BaseColorSpace);
    CFRetain(BaseColorSpace);
    v15 = BaseColorSpace;
  }

  else
  {
    BaseColorSpace = 0;
    v20 = v16;
  }

  if (v20)
  {
    ColorSpaceTransferFunction = re::getColorSpaceTransferFunction(v15, v17);
    v24 = MEMORY[0x1E695F0F8];
    if ((ColorSpaceTransferFunction & 1) == 0)
    {
      v24 = MEMORY[0x1E695F0E0];
    }

    v25 = MEMORY[0x1E695F1A0];
    if ((ColorSpaceTransferFunction & 1) == 0)
    {
      v25 = MEMORY[0x1E695F128];
    }

    if (!isHDR)
    {
      v24 = v25;
    }

    BaseColorSpace = CGColorSpaceCreateWithName(*v24);
    goto LABEL_30;
  }

  if (v18 == kCGColorSpaceModelIndexed)
  {
LABEL_30:
    *a5 = BaseColorSpace;
    *(a5 + 8) = CGColorSpaceGetNumberOfComponents(BaseColorSpace);
    result = CGColorSpaceGetModel(BaseColorSpace);
    *(a5 + 16) = result;
    return result;
  }

LABEL_31:
  CGColorSpaceRelease(BaseColorSpace);
  result = CGColorSpaceRetain(*(a1 + 48));
  v27 = *(a1 + 56);
  *a5 = result;
  *(a5 + 8) = v27;
  *(a5 + 16) = *(a1 + 64);
  return result;
}

const __CFString *re::getColorSpaceTransferFunction(re *this, CGColorSpace *a2)
{
  BaseColorSpace = this;
  if (CGColorSpaceGetModel(this) == kCGColorSpaceModelIndexed)
  {
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(BaseColorSpace);
  }

  result = CGColorSpaceGetName(BaseColorSpace);
  if (result)
  {
    v5 = result;
    if (re::colorSpaceNameHasSRGBTransfer(result, v4))
    {
      return 2;
    }

    else
    {
      return re::colorSpaceNameHasLinearTransfer(v5, v6);
    }
  }

  return result;
}

void re::createTextureDescriptorForCGImagePtr(uint64_t a1@<X0>, id *a2@<X1>, id *a3@<X2>, re::internal *a4@<X3>, int a5@<W4>, unint64_t *a6@<X5>, void *a7@<X6>, unsigned int *a8@<X7>, id *a9@<X8>)
{
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v63 = v16;
  v62 = v17;
  if (a5)
  {
    if (*(a4 + 2) == 1)
    {
      v18 = *(a4 + 4);
      if (v18 >= 2)
      {
      }
    }
  }

  [*a3 pixelFormat];
  BitsPerComponent = CGImageGetBitsPerComponent(*a1);
  DestinationTransferFunctionFromOptions = re::internal::getDestinationTransferFunctionFromOptions(a4, *(a1 + 48), (BitsPerComponent > 8));
  if (DestinationTransferFunctionFromOptions)
  {
    v21 = DestinationTransferFunctionFromOptions == 2;
  }

  else
  {
    v21 = (*(a4 + 14) - 3) < 2;
  }

  if (*a2)
  {
    v60 = [*a2 supportsTextureSwizzle];
  }

  else
  {
    v60 = 1;
  }

  v22 = *(a1 + 48);
  BaseColorSpace = CGColorSpaceGetBaseColorSpace(v22);
  if (!BaseColorSpace)
  {
    BaseColorSpace = v22;
  }

  NumberOfComponents = CGColorSpaceGetNumberOfComponents(BaseColorSpace);
  v26 = *(a4 + 1);
  if (v26 == 1)
  {
    v59 = 0;
    v27 = 1;
  }

  else
  {
    v27 = NumberOfComponents;
    if (v26 == 2)
    {
      if (!((NumberOfComponents != 1) | v60 & 1))
      {
        v27 = 3;
      }

      v59 = (NumberOfComponents != 1) ^ ((NumberOfComponents != 1) | v60);
    }

    else
    {
      if (v26 == 3)
      {
        re::internal::assertLog(4, v25, "assertion failure: '%s' (%s:line %i) Semantics should have been applied at this point", "!Unreachable code", "createTextureDescriptorForCGImagePtr", 3811);
        _os_crash();
        __break(1u);
        return;
      }

      v59 = 0;
    }
  }

  if (*a4 != 1)
  {
    v58 = a2;
    v57 = a8;
    if (*a4)
    {
      v37 = 0;
      goto LABEL_60;
    }

    v28 = *(a4 + 14);
    if (CGImageGetBitsPerComponent(*a1) > 8)
    {
      goto LABEL_32;
    }

    v30 = *(a1 + 48);
    if (v30)
    {
      IsExtendedOrHDR = re::internal::colorSpaceIsExtendedOrHDR(v30, v29);
      v32 = !v21;
      if (v21)
      {
        v33 = 71;
      }

      else
      {
        v33 = 10;
      }

      if (v32)
      {
        v34 = 70;
      }

      else
      {
        v34 = 71;
      }

      if (IsExtendedOrHDR)
      {
LABEL_32:
        v34 = 115;
        v33 = 25;
        v35 = 25;
LABEL_53:
        AlphaInfo = CGImageGetAlphaInfo(*a1);
        if (((v28 != 2) & (AlphaInfo < 8) & (0x9Eu >> AlphaInfo)) != 0)
        {
          v37 = v34;
        }

        else
        {
          v37 = v33;
        }

        if (v27 != 1)
        {
          v37 = v34;
        }

        if (AlphaInfo == kCGImageAlphaOnly)
        {
          v37 = v35;
        }

LABEL_60:
        v42 = v37;
        v43 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v37 width:v63 height:v62 mipmapped:*(a4 + 5) != 2];
        v44 = [v43 width];
        v45 = [v43 height];
        v46 = [v43 depth];
        v47 = v46;
        if (a6)
        {
          *a6 = v44;
          a6[1] = v45;
          a6[2] = v46;
        }

        if (a7)
        {
          *a7 = [v43 mipmapLevelCount];
        }

        v48 = [*a3 copy];
        *a9 = v48;
        [v48 setTextureType_];
        [v48 setWidth_];
        [v48 setHeight_];
        [v48 setDepth_];
        [v48 setArrayLength_];
        [v48 setPixelFormat_];
        [v48 setMipmapLevelCount_];
        [v48 setSampleCount_];
        if (*(a4 + 19))
        {
          [v48 setHeight_];
        }

        if (*(a4 + 18))
        {
          [v48 setWidth_];
        }

        if (*(a4 + 20))
        {
          [v48 setDepth_];
        }

        if (*(a4 + 21))
        {
          [v48 setMipmapLevelCount_];
        }

        v49 = [*a3 swizzle];
        v50 = BYTE1(v49);
        v51 = v49;
        v52 = BYTE2(v49);
        v53 = HIBYTE(v49);
        if (v59)
        {
          if (v49 - 2 < 3)
          {
            v51 = 2;
          }

          if (BYTE1(v49) - 2 < 3)
          {
            v50 = 2;
          }

          if (BYTE2(v49) - 2 < 3)
          {
            v52 = 2;
          }

          if ((HIBYTE(v49) - 2) < 3u)
          {
            v53 = 2;
          }
        }

        if (v60 && dyld_program_sdk_at_least())
        {
          v54 = (v53 << 24) | (v52 << 16) | (v50 << 8) | v51;
          if (((v54 != 84148994) & ~v59) != 0)
          {
            goto LABEL_89;
          }

          v55 = CGImageGetAlphaInfo(*a1);
          if (v55 - 1 >= 4 && v55 != kCGImageAlphaOnly && ([v48 usage] & 6) == 0)
          {
            v53 = 1;
          }
        }

        v54 = (v52 << 16) | (v53 << 24) | (v50 << 8) | v51;
        if (v54 == 84148994)
        {
LABEL_95:
          [v48 pixelFormat];
          if (re::internal::textureMightNeedPixelFormatViewUsage())
          {
            [v48 setUsage_];
          }

          re::internal::applyCompressionOptionsToTextureDescriptor(v58, a4, 1, 0, a9);

          return;
        }

LABEL_89:
        if (v57)
        {
          *v57 = v54;
        }

        if (v60)
        {
          v56 = v54;
        }

        else
        {
          v56 = 84148994;
        }

        [v48 setSwizzle_];
        goto LABEL_95;
      }
    }

    else
    {
      v40 = !v21;
      if (v21)
      {
        v33 = 71;
      }

      else
      {
        v33 = 10;
      }

      if (v40)
      {
        v34 = 70;
      }

      else
      {
        v34 = 71;
      }
    }

    v35 = 1;
    goto LABEL_53;
  }

  v36 = [*a3 pixelFormat];
  if (v36)
  {
    v37 = v36;
    v58 = a2;
    v38 = *(a4 + 14);
    v57 = a8;
    if (v38 == 3)
    {
      if (v36 != 10)
      {
        goto LABEL_60;
      }
    }

    else if (v36 != 10 || v38 != 4)
    {
      goto LABEL_60;
    }

    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    *buf = 0u;
    MTLPixelFormatGetInfoForDevice();
    if (buf[8])
    {
      v37 = 11;
    }

    else
    {
      v37 = 25;
    }

    goto LABEL_60;
  }

  v39 = *re::pipelineLogObjects(v36);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "Invalid pixel format in texture descriptor", buf, 2u);
  }

  *a9 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
}

void re::createTextureDescriptorForCGImageSource(CGImageSource *a1@<X0>, uint64_t a2@<X1>, id *a3@<X2>, unsigned __int8 *a4@<X3>, unint64_t *a5@<X4>, void *a6@<X5>, int a7@<W6>, id *a8@<X8>)
{
  v16 = [MEMORY[0x1E695DF90] dictionary];
  [v16 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E696E0A8]];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:a4[44]];
  [v16 setValue:v17 forKey:*MEMORY[0x1E696E0A0]];

  [v16 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696E008]];
  if ((*(a2 + 21) & 1) == 0)
  {
    [v16 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E696E138]];
    [v16 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E696E038]];
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, 0, v16);
  if (ImageAtIndex)
  {
    goto LABEL_6;
  }

  v19 = CGImageSourceCreateImageAtIndex(a1, 0, 0);
  if (v19)
  {
    ImageAtIndex = v19;
LABEL_6:
    CGImagePtr::CGImagePtr(image, ImageAtIndex);
    re::createTextureDescriptorForCGImagePtr(image, a2, a3, a4, a7, a5, a6, 0, a8);
    CGImageRelease(image[0]);
    image[0] = 0;

    CGColorSpaceRelease(image[6]);
    goto LABEL_7;
  }

  v20 = *re::pipelineLogObjects(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LOWORD(image[0]) = 0;
    _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Failed to create an image from a CGImageSource", image, 2u);
  }

  *a8 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
LABEL_7:
}

void re::copyTextureBytesToASTCCompression(id *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, re::ASTCCompressor *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8))
  {
    v19 = a2;
    v20 = a5;
    v21 = a6;
    v22 = a7;
    v17 = &unk_1F5D0BF18;
    v18 = &unk_1F5D0BF70;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    LODWORD(v26) = 0;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::__value_func[abi:nn200100](v50, a10);
    re::copyTextureBytesToASTCCompression(a9, &v17, a3, a4, a8, v50);
    std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::~__value_func[abi:nn200100](v50);
    v17 = &unk_1F5D0BF18;
    v18 = &unk_1F5D0BF70;
    if (v23)
    {
      if (v27)
      {
        (*(*v23 + 40))();
      }
    }
  }

  else
  {
    v19 = a2;
    v20 = a5;
    v21 = a6;
    v22 = a7;
    v17 = &unk_1F5D0BE30;
    v18 = &unk_1F5D0BE88;
    v15 = *a1;
    v23 = &unk_1F5D0BDD0;
    v24 = v15;
    v25 = v24;
    v26 = 0;
    v27 = 0u;
    LODWORD(v28[0]) = 1;
    *(v28 + 8) = 0u;
    v29 = 0;
    v30 = 0u;
    v31 = 0;
    v34 = 0;
    v32 = 0u;
    v33 = 0;

    v35 = a1;
    v16 = *a1;
    v39 = 0u;
    v38[0] = v16;
    v38[1] = 0;
    v40 = 1;
    v41 = 0u;
    v43 = 0u;
    v42 = 0;
    v44 = 0;
    v47 = 0;
    v45 = 0u;
    v46 = 0;
    v48 = 0u;
    v49 = 0;
    v36 = 0u;
    v37 = 0u;
    std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::__value_func[abi:nn200100](v51, a10);
    re::copyTextureBytesToASTCCompression(a9, &v17, a3, a4, a8, v51);
    std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::~__value_func[abi:nn200100](v51);
    v17 = &unk_1F5D0BE30;
    v18 = &unk_1F5D0BE88;
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v38);
    v23 = &unk_1F5D0BDD0;
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v25);
  }
}

uint64_t re::copyTextureBytesToASTCCompression(uint64_t a1, uint64_t a2, __int128 *a3, int a4, re::ASTCCompressor *a5, uint64_t a6)
{
  v12 = re::TextureData::pixelFormat(*(a2 + 16));
  v13 = re::TextureData::swizzle(*(a2 + 16));
  v14 = (v13 & 0xFF00) == 0x500 || HIBYTE(v13) == 5;
  v16 = (v13 & 0xFF0000) == 0x50000 || v13 == 5 || v14;
  v17 = re::MTLToASTCPixelFormat(v12, v16);
  if (!v17)
  {
    result = re::DynamicString::format("Unsupported metal format for ASTC compression: %d", &v42, v12);
    v25 = v42;
    v26 = v43;
    *a1 = 0;
    *(a1 + 8) = v25;
    *(a1 + 24) = v26;
    return result;
  }

  v18 = v17;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  MTLPixelFormatGetInfoForDevice();
  v19 = re::TextureData::width(*(a2 + 16));
  if (v19 >> *(a2 + 24) <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19 >> *(a2 + 24);
  }

  v21 = re::TextureData::height(*(a2 + 16)) >> *(a2 + 24);
  if (v21 <= 1)
  {
    v21 = 1;
  }

  memset(v41, 0, sizeof(v41));
  v32 = v20;
  *&v33 = v21;
  *(&v33 + 1) = 1;
  (*(*a2 + 24))(&v38, a2, &v32, v41);
  if (v38)
  {
    v35 = *a3;
    v36 = v18;
    v37 = a4;
    v22 = (*(*a2 + 32))(a2);
    if (v32 == 1)
    {
      v23 = *(a6 + 24);
      if (!v23)
      {
        v27 = std::__throw_bad_function_call[abi:nn200100]();
        return re::colorSpaceNameHasSRGBTransfer(v27, v28);
      }

      result = (*(*v23 + 48))(v23, a2 + 8);
    }

    else
    {
      re::DynamicString::DynamicString(&v29, &v33);
      *a1 = 0;
      *(a1 + 8) = v29;
      *(a1 + 32) = v31;
      *(a1 + 16) = v30;
      result = v33;
      if (v33 && (BYTE8(v33) & 1) != 0)
      {
        result = (*(*v33 + 40))();
      }
    }
  }

  else
  {
    result = re::DynamicString::DynamicString(&v32, &v39);
    *a1 = 0;
    *(a1 + 8) = v32;
    *(a1 + 32) = v34;
    *(a1 + 16) = v33;
  }

  if ((v38 & 1) == 0)
  {
    result = v39;
    if (v39)
    {
      if (v40)
      {
        return (*(*v39 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::getLinearColorSpaceNameFromSRGB(const __CFString *this, const __CFString *a2)
{
  if (CFStringCompare(this, *MEMORY[0x1E695F0B8], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F198];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F0D8], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F0F0];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F1C0], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F1B0];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F110], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F108];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F120], 0) == kCFCompareEqualTo || CFStringCompare(this, *MEMORY[0x1E695F128], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F1A0];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F0E0], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F0F8];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F150], 0) == kCFCompareEqualTo || CFStringCompare(this, *MEMORY[0x1E695F168], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F1A8];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F0E8], 0))
  {
    return 0;
  }

  else
  {
    return *MEMORY[0x1E695F100];
  }
}

uint64_t re::getSRGBColorSpaceNameFromLinear(const __CFString *this, const __CFString *a2)
{
  if (CFStringCompare(this, *MEMORY[0x1E695F198], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F0B8];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F0F0], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F0D8];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F1B0], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F1C0];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F108], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F110];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F1A0], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F128];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F0F8], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F0E0];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F1A8], 0) == kCFCompareEqualTo)
  {
    v4 = MEMORY[0x1E695F150];
    return *v4;
  }

  if (CFStringCompare(this, *MEMORY[0x1E695F100], 0))
  {
    return 0;
  }

  else
  {
    return *MEMORY[0x1E695F0E8];
  }
}

void re::decompressCPUTexture(re *this@<X0>, uint64_t a2@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  re::TextureData::pixelFormat(this);
  MTLPixelFormatGetInfoForDevice();
  v5 = re::TextureData::pixelFormat(this);
  v6 = at_block_format_bc1;
  if (v5 <= 499)
  {
    switch(v5)
    {
      case 0:
      case 1:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 40:
      case 41:
      case 42:
      case 43:
      case 53:
      case 54:
      case 55:
      case 60:
      case 62:
      case 63:
      case 64:
      case 65:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 80:
      case 81:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 103:
      case 104:
      case 105:
      case 110:
      case 112:
      case 113:
      case 114:
      case 115:
      case 123:
      case 124:
      case 125:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 170:
      case 172:
      case 174:
      case 176:
      case 178:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 240:
      case 241:
      case 250:
      case 252:
      case 253:
      case 255:
      case 260:
      case 261:
      case 262:
        goto LABEL_9;
      case 132:
      case 133:
        v6 = at_block_format_bc2;
        goto LABEL_43;
      case 134:
      case 135:
        v6 = at_block_format_bc3;
        goto LABEL_43;
      case 140:
      case 141:
      case 142:
      case 143:
        v6 = at_block_format_bc5;
        goto LABEL_43;
      case 150:
      case 151:
      case 152:
      case 153:
        v6 = at_block_format_bc6;
        goto LABEL_43;
      case 186:
      case 204:
        v6 = at_block_format_astc_4x4_ldr;
        goto LABEL_43;
      case 187:
      case 205:
        v6 = at_block_format_astc_5x4_ldr;
        goto LABEL_43;
      case 188:
      case 206:
        v6 = at_block_format_astc_5x5_ldr;
        goto LABEL_43;
      case 189:
      case 207:
        v6 = at_block_format_astc_6x5_ldr;
        goto LABEL_43;
      case 190:
      case 208:
        v6 = at_block_format_astc_6x6_ldr;
        goto LABEL_43;
      case 192:
      case 210:
        v6 = at_block_format_astc_8x5_ldr;
        goto LABEL_43;
      case 193:
      case 211:
        v6 = at_block_format_astc_8x6_ldr;
        goto LABEL_43;
      case 194:
      case 212:
        v6 = at_block_format_astc_8x8_ldr;
        goto LABEL_43;
      case 195:
      case 213:
        v6 = at_block_format_astc_10x5_ldr;
        goto LABEL_43;
      case 196:
      case 214:
        v6 = at_block_format_astc_10x6_ldr;
        goto LABEL_43;
      case 197:
      case 215:
        v6 = at_block_format_astc_10x8_ldr;
        goto LABEL_43;
      case 198:
      case 216:
        v6 = at_block_format_astc_10x10_ldr;
        goto LABEL_43;
      case 199:
      case 217:
        v6 = at_block_format_astc_12x10_ldr;
        goto LABEL_43;
      case 200:
      case 218:
        v6 = at_block_format_astc_12x12_ldr;
        goto LABEL_43;
      case 222:
        v6 = at_block_format_astc_4x4_hdr;
        goto LABEL_43;
      case 223:
        v6 = at_block_format_astc_5x4_hdr;
        goto LABEL_43;
      case 224:
        v6 = at_block_format_astc_5x5_hdr;
        goto LABEL_43;
      case 225:
        v6 = at_block_format_astc_6x5_hdr;
        goto LABEL_43;
      case 226:
        v6 = at_block_format_astc_6x6_hdr;
        goto LABEL_43;
      case 228:
        v6 = at_block_format_astc_8x5_hdr;
        goto LABEL_43;
      case 229:
        v6 = at_block_format_astc_8x6_hdr;
        goto LABEL_43;
      case 230:
        v6 = at_block_format_astc_8x8_hdr;
        goto LABEL_43;
      case 231:
        v6 = at_block_format_astc_10x5_hdr;
        goto LABEL_43;
      case 232:
        v6 = at_block_format_astc_10x6_hdr;
        goto LABEL_43;
      case 233:
        v6 = at_block_format_astc_10x8_hdr;
        goto LABEL_43;
      case 234:
        v6 = at_block_format_astc_10x10_hdr;
        goto LABEL_43;
      case 235:
        v6 = at_block_format_astc_12x10_hdr;
        goto LABEL_43;
      case 236:
        v6 = at_block_format_astc_12x12_hdr;
        goto LABEL_43;
      default:
        goto LABEL_43;
    }
  }

  if ((v5 - 520) <= 0x31 && ((1 << (v5 - 8)) & 0x3FC0FDFF007FFLL) != 0 || (v5 - 500) < 0xB || (v5 - 588) <= 0x29 && ((1 << (v5 - 76)) & 0x30003F80001) != 0)
  {
LABEL_9:
    v7 = *re::pipelineLogObjects(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      *&buf[4] = v42;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Failed to decompress unsupported format %{public}s", buf, 0xCu);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
LABEL_43:
    v31 = a2;
    if (*(this + 2) == 1)
    {
      v8 = *this;
      v41 = 0;
      v38[1] = 0;
      v39 = 0;
      v38[0] = 0;
      v40 = 0;
      v9 = re::TextureData::mipmapLevelCount(this);
      re::DynamicArray<re::DynamicArray<float>>::resize(v38, v9);
      v10 = re::TextureData::pixelFormat(this);
      isHDR = re::isHDR(v10);
      v12 = 70;
      if ((WORD4(v42) & 0x800) != 0)
      {
        v12 = 71;
      }

      v13 = isHDR == 0;
      if (isHDR)
      {
        v14 = at_texel_format_rgba16_float;
      }

      else
      {
        v14 = at_texel_format_rgba8_unorm;
      }

      if (!v13)
      {
        v12 = 115;
      }

      v34 = v12;
      v15 = at_encoder_create(v14, at_alpha_not_premultiplied, v6, at_alpha_not_premultiplied, 0);
      FaceOrArrayLength = re::internal::getFaceOrArrayLength(this, v16);
      v32 = v9;
      if (v9)
      {
        v18 = 0;
        v33 = FaceOrArrayLength;
        while (1)
        {
          v37 = 0;
          v36 = 0u;
          memset(v35, 0, sizeof(v35));
          re::TextureData::width(this);
          re::TextureData::height(this);
          re::TextureData::depth(this);
          MTLGetTextureLevelInfoForDeviceWithOptions();
          if (re::TextureData::textureType(this) == 7)
          {
            v19 = v48;
          }

          else
          {
            v19 = v33;
          }

          v20 = *(v8 + 48);
          if (v20 <= v18)
          {
            *v46 = 0;
            v55 = 0u;
            v56 = 0u;
            memset(dest, 0, sizeof(dest));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *src = 136315906;
            *&src[4] = "operator[]";
            *&src[12] = 1024;
            *&src[14] = 797;
            *&src[18] = 2048;
            *&src[20] = v18;
            v52 = 2048;
            v53 = v20;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_75:
            *v46 = 0;
            v55 = 0u;
            v56 = 0u;
            memset(dest, 0, sizeof(dest));
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *src = 136315906;
            *&src[4] = "operator[]";
            *&src[12] = 1024;
            *&src[14] = 789;
            *&src[18] = 2048;
            *&src[20] = v18;
            v52 = 2048;
            v53 = v20;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v21 = *(v8 + 64) + 40 * v18;
          if (*(v21 + 16))
          {
            v20 = v39;
            if (v39 <= v18)
            {
              goto LABEL_75;
            }

            v22 = v41 + 40 * v18;
            re::DynamicArray<BOOL>::resize(v22, *(&v36 + 1) * v19);
            if (v19)
            {
              break;
            }
          }

LABEL_63:
          if (++v18 == v32)
          {
            goto LABEL_64;
          }
        }

        v23 = 0;
        while (1)
        {
          memset(dest, 0, 40);
          *dest = *(v22 + 32) + *(&v36 + 1) * v23;
          *&dest[8] = vmovn_s64(*buf);
          *&dest[16] = 1;
          *&dest[24] = v36;
          *&src[8] = 0;
          *&src[16] = 0;
          *src = 0;
          *src = *(v21 + 32) + v50 * v23;
          *&src[8] = v49;
          v24 = at_encoder_decompress_texels(v15, src, dest, at_flags_default);
          if (v24)
          {
            break;
          }

          if (v19 == ++v23)
          {
            goto LABEL_63;
          }
        }

        v28 = v24;
        v29 = *re::pipelineLogObjects(v24);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *v46 = 134217984;
          *&v46[4] = v28;
          _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "Encoder failed (error: %ld) during texture creation", v46, 0xCu);
        }

        *v31 = 0;
        *(v31 + 8) = 0;
      }

      else
      {
LABEL_64:
        *buf = [*(v8 + 24) copy];
        [*buf setPixelFormat_];
        re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(buf, v38, v35);
        v25 = *&v35[0];
        *v31 = *&v35[0];
        if (v25)
        {
          v26 = (v25 + 8);
          v27 = *&v35[0];
          *(v31 + 8) = 1;
          if (v27)
          {
          }
        }

        else
        {
          *(v31 + 8) = 1;
        }

        if (*buf)
        {
        }
      }

      re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v38);
    }

    else
    {
      v30 = std::__throw_bad_variant_access[abi:nn200100]();
      re::convertCPUTextureColorSpace(v30);
    }
  }
}

void re::convertCPUTextureColorSpace(int a1@<W0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v6 = a2[8];
  if (v6 && (v11 = 0, (re::ColorHelpers::getColorGamutFromCGColorSpaceName(v6, &v11) & 1) != 0) && v11 != a1)
  {
    v7 = re::TextureData::pixelFormat(a2);
    CGColorSpaceNameForPixelFormat = re::ColorHelpers::getCGColorSpaceNameForPixelFormat(v7, a1);
    v8 = CGColorSpaceCreateWithName(CGColorSpaceNameForPixelFormat);
    v9 = v8;
    if (v8)
    {
      v13[0] = &unk_1F5D0BFF8;
      v13[1] = &v9;
      v13[3] = v13;
      v12[0] = &unk_1F5D0C088;
      v12[1] = &CGColorSpaceNameForPixelFormat;
      v12[3] = v12;
      re::convertCPUTexture(a2, v13, v12, a3);
      std::__function::__value_func<void ()(re::TextureImportData::ImportReport &)>::~__value_func[abi:nn200100](v12);
      v8 = v9;
    }

    else
    {
      *(a3 + 16) &= 0xFC00u;
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = 0;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 84) = 0u;
      *(a3 + 104) = 0;
      *(a3 + 112) = 0;
    }

    CGColorSpaceRelease(v8);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) &= 0xFC00u;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 24) = 0;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 84) = 0u;
    *(a3 + 104) = 0;
    *(a3 + 112) = 0;
  }
}

void re::convertCPUTexture(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v108 = *MEMORY[0x1E69E9840];
  v8 = a1[8];
  v9 = v8;
  v85 = 0;
  v84 = 0u;
  memset(v83, 0, sizeof(v83));
  re::TextureData::pixelFormat(a1);
  MTLPixelFormatGetInfoForDevice();
  v81 = 0;
  v82 = 0;
  if (*(a1 + 2) != 1)
  {
    goto LABEL_69;
  }

  v10 = *a1;
  v50 = a3;
  if (v8)
  {
    v8 = CGColorSpaceCreateWithName(v8);
  }

  if (v84 == 4)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  v12 = [*(v10 + 24) pixelFormat];
  __src[0] = v8;
  __src[1] = CGColorSpaceGetNumberOfComponents(v8);
  LODWORD(v88) = CGColorSpaceGetModel(v8);
  CGColorSpaceRelease(v8);
  v73 = space;
  v74 = CGColorSpaceRetain(v78);
  v75 = v79;
  v76 = v80;
  v72 = re::TextureData::pixelFormat(a1);
  v13 = *(a2 + 24);
  if (!v13)
  {
    goto LABEL_68;
  }

  (*(*v13 + 48))(v13, &space, &v73, &v72);
  v14 = *(v10 + 48);
  v52 = (v10 + 24);
  FaceOrArrayLength = re::internal::getFaceOrArrayLength((v10 + 24));
  v71 = 0;
  v68[1] = 0;
  v69 = 0;
  v68[0] = 0;
  v70 = 0;
  v51 = v14;
  v16 = re::DynamicArray<re::DynamicArray<float>>::resize(v68, v14);
  v60 = *(a1 + 8);
  v61[0] = *(a1 + 3);
  *(v61 + 12) = *(a1 + 36);
  v17 = a1[7];
  v62 = v17;
  if (v17)
  {
    v18 = (v17 + 8);
  }

  v63 = a1[8];
  re::DynamicArray<short>::DynamicArray(v64, a1 + 9);
  v67 = a1[14];
  v59 = *v52;
  v20 = v72;
  if (v20 != re::TextureData::pixelFormat(a1))
  {
    __src[0] = [v59 copy];
    NS::SharedPtr<MTL::Texture>::operator=(&v59, __src);
    if (__src[0])
    {
    }

    [v59 setPixelFormat_];
  }

  v49 = v8;
  if (v51)
  {
    v21 = 0;
    v22 = FaceOrArrayLength;
    v23 = &selRef_setOwnerWithIdentity_;
    v24 = &selRef_childNodes;
    v25 = &selRef_setOwnerWithIdentity_;
    v47 = v22;
    v48 = v10;
    do
    {
      v26 = *(v10 + 48);
      if (v26 <= v21)
      {
        goto LABEL_66;
      }

      v27 = *(v10 + 64);
      v28 = [*(v10 + 24) v23[339]] >> v21;
      if (v28 <= 1)
      {
        v28 = 1;
      }

      v58 = v28;
      v29 = [*(v10 + 24) v24[322]];
      if (v29 >> v21 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29 >> v21;
      }

      if ([*(v10 + 24) v25[250]] == 7)
      {
        v31 = [*v52 depth];
        if (v31 >> v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v31 >> v21;
        }
      }

      v57 = v27 + 40 * v21;
      v32 = *(v57 + 16);
      v56 = v92;
      v26 = v69;
      if (v69 <= v21)
      {
        goto LABEL_67;
      }

      v33 = v92;
      __n = v92 * v30;
      v55 = v32 / v22;
      re::DynamicArray<BOOL>::resize(v71 + 40 * v21, v92 * v30 * v22);
      v34 = 0;
      if (v22 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v22;
      }

      v54 = v35;
      do
      {
        v26 = v69;
        if (v69 <= v21)
        {
          v86 = 0;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          *__src = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v101 = 136315906;
          *&v101[4] = "operator[]";
          v102 = 1024;
          v103 = 789;
          v104 = 2048;
          v105 = v21;
          v106 = 2048;
          v107 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_66:
          v86 = 0;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          *__src = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v101 = 136315906;
          *&v101[4] = "operator[]";
          v102 = 1024;
          v103 = 797;
          v104 = 2048;
          v105 = v21;
          v106 = 2048;
          v107 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_67:
          v86 = 0;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          *__src = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v101 = 136315906;
          *&v101[4] = "operator[]";
          v102 = 1024;
          v103 = 789;
          v104 = 2048;
          v105 = v21;
          v106 = 2048;
          v107 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_68:
          std::__throw_bad_function_call[abi:nn200100]();
LABEL_69:
          std::__throw_bad_variant_access[abi:nn200100]();
        }

        v36 = *(v57 + 32);
        v37 = *(v71 + 40 * v21 + 32);
        v101[0] = 0;
        __src[0] = (v36 + v34 * v55);
        __src[1] = v30;
        *&v88 = v58;
        *(&v88 + 1) = v56;
        v89 = *&space.bitsPerComponent;
        v90 = *&space.bitmapInfo;
        v92 = 0;
        v91 = *&space.renderingIntent;
        v93 = v58;
        v94 = v30;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v38 = CGColorSpaceRetain(space.colorSpace);
        v98 = v38;
        NumberOfComponents = CGColorSpaceGetNumberOfComponents(v38);
        Model = CGColorSpaceGetModel(v38);
        if (v39)
        {
          v40 = (v37 + v34 * __n);
          v41 = __src[0];
          if (*(&v88 + 1) == v33)
          {
            memcpy(v40, __src[0], __n);
          }

          else
          {
            v42 = v30;
            do
            {
              memcpy(v40, v41, v33);
              v41 += *(&v88 + 1);
              v40 += v33;
              --v42;
            }

            while (v42);
          }
        }

        else
        {
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) &= 0xFC00u;
          *(a4 + 32) = 0;
          *(a4 + 40) = 0;
          *(a4 + 24) = 0;
          *(a4 + 56) = 0u;
          *(a4 + 72) = 0u;
          *(a4 + 84) = 0u;
          *(a4 + 104) = 0;
          *(a4 + 112) = 0;
        }

        CGColorSpaceRelease(v98);
        v43 = *(&v97 + 1);
        v98 = 0;
        *(&v97 + 1) = 0;
        if (v43)
        {
          free(v43);
        }

        if (v95)
        {
          CGImageBlockSetRelease();
        }

        if ((v39 & 1) == 0)
        {
          goto LABEL_54;
        }

        ++v34;
      }

      while (v34 != v54);
      ++v21;
      v22 = v47;
      v10 = v48;
      v23 = &selRef_setOwnerWithIdentity_;
      v24 = &selRef_childNodes;
      v25 = &selRef_setOwnerWithIdentity_;
    }

    while (v21 != v51);
  }

  re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(&v59, v68, v101);
  __src[0] = *v101;
  if (*v101)
  {
    v44 = (*v101 + 8);
    LODWORD(__src[1]) = 1;
    v45 = v50;
    if (*v101)
    {
    }
  }

  else
  {
    LODWORD(__src[1]) = 1;
    v45 = v50;
  }

  re::TextureImportData::ImportReport::SourceInfo::setFromTexture(v61, __src);
  v46 = *(v45 + 24);
  if (!v46)
  {
    goto LABEL_68;
  }

  (*(*v46 + 48))(v46, &v60);
  re::TextureImportData::TextureImportData(a4, __src, &v60);
  if (v49)
  {
    CGColorSpaceRelease(v49);
  }

  if (LODWORD(__src[1]) != -1)
  {
    (off_1F5D0BE10[LODWORD(__src[1])])(v101, __src);
  }

LABEL_54:
  if (v59)
  {
  }

  if (v64[0])
  {
    if (v66)
    {
      (*(*v64[0] + 40))();
    }

    v66 = 0;
    memset(v64, 0, sizeof(v64));
    ++v65;
  }

  if (v62)
  {
  }

  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v68);
  CGColorSpaceRelease(v74);
  CGColorSpaceRelease(v78);
  if (v82 != -1)
  {
    (off_1F5D0BE10[v82])(__src, &v81);
  }
}

uint64_t std::function<void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void re::convertCPUTextureToFloat(re *this, const re::TextureImportData *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = a2;
  v3 = re::TextureData::pixelFormat(this);
  v17 = v3;
  v15 = 0;
  space = 0;
  v14 = 0;
  v4 = *(this + 8);
  v5 = v4;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  MTLPixelFormatGetInfoForDevice();
  if (v4)
  {
    goto LABEL_14;
  }

  ComponentCount = re::getComponentCount();
  isHDR = re::isHDR(v3);
  v8 = MEMORY[0x1E695F0F0];
  v9 = MEMORY[0x1E695F0F8];
  if (ComponentCount > 2)
  {
    if (isHDR)
    {
      v11 = *MEMORY[0x1E695F0F0];
LABEL_10:
      if (re::getComponentCount() >= 3)
      {
        v12 = v8;
      }

      else
      {
        v12 = v9;
      }

      v13 = *v12;
      space = CGColorSpaceCreateWithName(v11);
      v15 = CGColorSpaceCreateWithName(v13);
LABEL_14:
      operator new();
    }

    v10 = MEMORY[0x1E695F198];
  }

  else
  {
    v10 = MEMORY[0x1E695F1A0];
    if (isHDR)
    {
      v10 = MEMORY[0x1E695F0F8];
    }
  }

  v11 = *v10;
  goto LABEL_10;
}

void re::convertFloatCPUTextureTo8Unorm_sRGB(__CFString **this, const re::TextureImportData *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = re::TextureData::pixelFormat(this);
  v3 = this[8];
  v4 = v3;
  if (!v3)
  {
    if (re::getComponentCount() > 2)
    {
      v5 = MEMORY[0x1E695F198];
    }

    else
    {
      v5 = MEMORY[0x1E695F1A0];
    }

    v3 = *v5;
  }

  v8 = 1;
  re::ColorHelpers::getColorGamutFromCGColorSpaceName(v3, &v8);
  if (re::getComponentCount() >= 3)
  {
    if (v8 - 1 > 2)
    {
      v6 = MEMORY[0x1E695F1C0];
    }

    else
    {
      v6 = qword_1E8721630[(v8 - 1)];
    }
  }

  else
  {
    v6 = MEMORY[0x1E695F128];
  }

  v7 = *v6;
  space = CGColorSpaceCreateWithName(v3);
  v9 = CGColorSpaceCreateWithName(v7);
  operator new();
}

void re::convertForMetalEmulationIfNeeded(re *this@<X0>, _BYTE *a2@<X8>)
{
  re::TextureData::pixelFormat(this);
  MTLPixelFormatGetInfoForDevice();
  MTLPixelFormatGetInfoForDevice();
  *a2 = 0;
}

void re::encodeTextureSliceToImageData(id *this@<X0>, const re::ImportGraphicsContext *a2@<X1>, const __CFString *a3@<X2>, const __CFString *a4@<X3>, const __CFString *a5@<X4>, float a6@<S0>, unint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, uint64_t a10@<X8>, unint64_t a11)
{
  v14 = a5;
  v16 = a2;
  v129 = *MEMORY[0x1E69E9840];
  valuePtr = a6;
  v19 = re::TextureData::pixelFormat(a2);
  isASTCPixelFormat = re::isASTCPixelFormat(v19);
  if ((v19 - 10) > 0x3D || ((1 << (v19 - 10)) & 0x3000000000000003) == 0)
  {
    if (!isASTCPixelFormat || (isASTCPixelFormat = re::isHDR(v19), isASTCPixelFormat))
    {
      v25 = "Unsupported pixel format";
LABEL_41:
      v40 = v88;
      v41 = v89;
      v42 = v90;
      *a10 = 0;
      *(a10 + 8) = v40;
      *(a10 + 24) = v41;
      *(a10 + 32) = v42;
      return;
    }

    if (a4)
    {
      v108 = 0;
      v109 = 0;
      goto LABEL_5;
    }

LABEL_40:
    v25 = "Unspecified image format";
    goto LABEL_41;
  }

  if (!a4)
  {
    goto LABEL_40;
  }

  v108 = 0;
  v109 = 0;
  if (!isASTCPixelFormat)
  {
    v86 = v14;
    goto LABEL_29;
  }

LABEL_5:
  p_location = &location;
  TextureSlice = re::createTextureSlice(v16, a7, a8, &location);
  v86 = v14;
  if (v95)
  {
    if (v95 != 1)
    {
      goto LABEL_94;
    }

    if (!*(location + 6))
    {
      goto LABEL_20;
    }

    p_location = (location + 24);
  }

  if (*p_location)
  {
    re::decompressTexture(this, &location, &v88);
    v23 = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v108, &v88);
    if (DWORD2(v88) != -1)
    {
      v23 = (off_1F5D0BE10[DWORD2(v88)])(v123, &v88);
    }

    if (v109)
    {
      if (v109 != 1)
      {
        goto LABEL_94;
      }

      if (!*(v108 + 48))
      {
LABEL_24:
        v26 = 0;
        a8 = 0;
        a7 = 0;
        goto LABEL_25;
      }

      v24 = (v108 + 24);
    }

    else
    {
      v24 = &v108;
    }

    if (*v24)
    {
      a8 = 0;
      a7 = 0;
      v26 = 1;
      v16 = &v108;
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_20:
  v26 = 0;
LABEL_25:
  v27 = v88;
  v28 = v89;
  v29 = v90;
  *a10 = 0;
  *(a10 + 8) = v27;
  *(a10 + 24) = v28;
  *(a10 + 32) = v29;
LABEL_26:
  if (v95 != -1)
  {
    (off_1F5D0BE10[v95])(&v88, &location);
  }

  if (!v26)
  {
    goto LABEL_90;
  }

LABEL_29:
  type = a4;
  location = *this;
  v95 = 0;
  v96[0] = 0;
  v96[1] = 0;
  v97 = 1;
  v98 = 0;
  v99 = 0;
  memset(v100, 0, sizeof(v100));
  v101 = 0;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v92 = 0;
  bytesPerRow = 0uLL;
  ComponentCount = re::getComponentCount();
  v31 = re::TextureData::width(v16);
  v32 = re::TextureData::height(v16);
  v33 = *(v16 + 2);
  if (v33 == 1)
  {
    v35 = *v16;
    bytesPerRow = v91;
    v36 = *(v35 + 48);
    if (v36 <= a7)
    {
      v111 = 0;
      memset(v123, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v112 = 136315906;
      *&v112[4] = "operator[]";
      *&v112[12] = 1024;
      *&v112[14] = 797;
      *&v112[18] = 2048;
      *&v112[20] = a7;
      *&v112[28] = 2048;
      *&v112[30] = v36;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v37 = v91 * v32;
    v38 = (*(*(v35 + 64) + 40 * a7 + 32) + v91 * v32 * (a8 + a9));
    goto LABEL_54;
  }

  if (v33)
  {
LABEL_94:
    v78 = std::__throw_bad_variant_access[abi:nn200100]();
    re::internal::copyTextureSliceToBuffer(v78, v79, v80, v81, v82, v83, v84);
    return;
  }

  *&bytesPerRow = v31 * ComponentCount;
  *(&bytesPerRow + 1) = v31 * ComponentCount * v31;
  re::internal::copyTextureSliceToBuffer(&v88, this, v16, &v92, a7, a8, a9);
  v34 = v88;
  if ((v88 & 1) == 0)
  {
    re::DynamicString::DynamicString(v123, (&v88 + 8));
    v37 = 0;
    v38 = 0;
    *a10 = 0;
    v39 = *(&v123[1] + 1);
    *(a10 + 8) = *&v123[0];
    *(a10 + 32) = v39;
    *(a10 + 16) = *(v123 + 8);
    goto LABEL_48;
  }

  memset(v112, 0, 32);
  *&v112[32] = 1;
  v114 = 0;
  v113 = 0;
  v117 = 0;
  v115 = 0;
  v116 = 0;
  v118 = 0;
  v122 = 0;
  v120 = 0;
  v119 = 0;
  v121 = 0;
  re::Result<re::internal::TextureInMetalBuffers,re::DynamicString>::swapValue(v123, &v88, v112);
  re::ObjCObject::operator=(&location, v123);
  v95 = *(&v123[0] + 1);
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::operator=(v96, &v123[1]);
  re::DynamicArray<BOOL>::operator=(v100, v124);
  v103 = v124[5];
  v104 = v125;
  if ((v105 & 1) == 0)
  {
    if ((v126 & 1) == 0)
    {
      goto LABEL_45;
    }

    v105 = 1;
LABEL_44:
    v106 = v127;
    v107 = v128;
    goto LABEL_45;
  }

  if (v126)
  {
    goto LABEL_44;
  }

  v105 = 0;
LABEL_45:
  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v123);
  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v112);
  if ((v105 & 1) == 0)
  {
    re::internal::TextureInMetalBuffers::createTextureData(&location, 0);
  }

  v37 = *(&v106 + 1);
  v38 = v107;
LABEL_48:
  if (v88 == 1)
  {
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers((&v88 + 8));
  }

  else if (*(&v88 + 1) && (v89 & 1) != 0)
  {
    (*(**(&v88 + 1) + 40))();
  }

  if ((v34 & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_54:
  v43 = a3;
  if (!a3)
  {
    v44 = MEMORY[0x1E695F1A0];
    if (ComponentCount != 1)
    {
      v44 = MEMORY[0x1E695F198];
    }

    v43 = *v44;
  }

  v45 = CGColorSpaceCreateWithName(v43);
  if (ComponentCount == 4 && re::TextureData::swizzle(v16) >> 24 != 1 && v32)
  {
    v46 = 0;
    v47 = 3;
    while (1)
    {
      v48 = 4 * v31;
      v49 = v47;
      if (4 * v31)
      {
        break;
      }

LABEL_65:
      ++v46;
      v47 += bytesPerRow;
      if (v46 == v32)
      {
        goto LABEL_66;
      }
    }

    while (v38[v49] == 255)
    {
      v49 += 4;
      v48 -= 4;
      if (!v48)
      {
        goto LABEL_65;
      }
    }

    v50 = CGDataProviderCreateWithData(0, v38, v37, 0);
    v51 = 3;
  }

  else
  {
LABEL_66:
    v50 = CGDataProviderCreateWithData(0, v38, v37, 0);
    if (ComponentCount == 1)
    {
      v51 = 0;
    }

    else
    {
      v51 = 5;
    }
  }

  v52 = CGImageCreate(v31, v32, 8uLL, 8 * ComponentCount, bytesPerRow, v45, v51, v50, 0, 0, kCGRenderingIntentDefault);
  if (v52)
  {
    v53 = v52;
    Mutable = CFDataCreateMutable(0, 0);
    if (Mutable)
    {
      v55 = Mutable;
      v56 = *MEMORY[0x1E695E480];
      v57 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v57)
      {
        v58 = v57;
        v59 = CFNumberCreate(v56, kCFNumberFloatType, &valuePtr);
        CFDictionaryAddValue(v58, *MEMORY[0x1E696D338], v59);
        if (v86)
        {
          v60 = 875704422;
        }

        else
        {
          v60 = 875836518;
        }

        LODWORD(v123[0]) = v60;
        v61 = CFNumberCreate(v56, kCFNumberSInt32Type, v123);
        CFDictionaryAddValue(v58, *MEMORY[0x1E696E148], v61);
        v62 = CGImageDestinationCreateWithData(v55, type, 1uLL, 0);
        if (v62)
        {
          v63 = v62;
          CGImageDestinationAddImage(v62, v53, v58);
          v64 = CGImageDestinationFinalize(v63);
          if (v64)
          {
            *a10 = 1;
            *(a10 + 8) = v55;
          }

          else
          {
            v75 = v88;
            v76 = v89;
            v77 = v90;
            *a10 = 0;
            *(a10 + 8) = v75;
            *(a10 + 24) = v76;
            *(a10 + 32) = v77;
          }

          CFRelease(v63);
        }

        else
        {
          v72 = v88;
          v73 = v89;
          v74 = v90;
          *a10 = 0;
          *(a10 + 8) = v72;
          *(a10 + 24) = v73;
          *(a10 + 32) = v74;
        }

        CFRelease(v59);
        CFRelease(v61);
        CFRelease(v58);
        goto LABEL_87;
      }

      v68 = "Failed to create an optiosn dictionary";
    }

    else
    {
      v68 = "Failed to encode texture as an image.";
    }

    v69 = v88;
    v70 = v89;
    v71 = v90;
    *a10 = 0;
    *(a10 + 8) = v69;
    *(a10 + 24) = v70;
    *(a10 + 32) = v71;
LABEL_87:
    CFRelease(v53);
    goto LABEL_88;
  }

  v65 = v88;
  v66 = v89;
  v67 = v90;
  *a10 = 0;
  *(a10 + 8) = v65;
  *(a10 + 24) = v66;
  *(a10 + 32) = v67;
LABEL_88:
  CFRelease(v50);
  CGColorSpaceRelease(v45);
LABEL_89:
  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&location);
LABEL_90:
  if (v109 != -1)
  {
    (off_1F5D0BE10[v109])(&v88, &v108);
  }
}

void re::internal::copyTextureSliceToBuffer(uint64_t a1, id *a2, id *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    a6 = a7;
  }

  v32 = a6;
  v20[0] = *a2;
  memset(&v20[1], 0, 24);
  v21 = 1;
  v22 = 0;
  v23 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v19 = *(a4 + 8);
  re::internal::TextureInMetalBuffers::copyTextureSliceToBuffer(v20, a2, a3, a5, &v32, &v19, v16);
  if (v16[0])
  {
    re::Ok<re::internal::TextureInMetalBuffers,re::internal::TextureInMetalBuffers>(&v13, v20);
    re::Result<re::internal::TextureInMetalBuffers,re::DynamicString>::Result(a1, &v13);
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v13);
  }

  else
  {
    re::DynamicString::DynamicString(&v13, &v17);
    *a1 = 0;
    *(a1 + 8) = v13;
    *(a1 + 32) = v15;
    *(a1 + 16) = v14;
  }

  if (v16[0] & 1) == 0 && v17 && (v18)
  {
    (*(*v17 + 40))();
  }

  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v20);
}

__n128 re::Result<re::internal::TextureInMetalBuffers,re::DynamicString>::swapValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + 8);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  *a1 = v7;
  *(a1 + 8) = v8;
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(a1 + 16, (a2 + 24));
  re::DynamicArray<BOOL>::DynamicArray(a1 + 136, (a2 + 144));
  *(a1 + 176) = *(a2 + 184);
  *(a1 + 184) = *(a2 + 192);
  v9 = *(a2 + 200);
  *(a1 + 192) = v9;
  if (v9 == 1)
  {
    *(a1 + 200) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 224);
  }

  re::ObjCObject::operator=(v6, a3);
  *(a2 + 16) = *(a3 + 8);
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::operator=(a2 + 24, (a3 + 16));
  re::DynamicArray<BOOL>::operator=(a2 + 144, (a3 + 136));
  v11 = *(a3 + 176);
  *(a2 + 192) = *(a3 + 184);
  *(a2 + 184) = v11;
  if (*(a2 + 200))
  {
    if ((*(a3 + 192) & 1) == 0)
    {
      *(a2 + 200) = 0;
      return result;
    }
  }

  else
  {
    if ((*(a3 + 192) & 1) == 0)
    {
      return result;
    }

    *(a2 + 200) = 1;
  }

  result = *(a3 + 200);
  *(a2 + 224) = *(a3 + 216);
  *(a2 + 208) = result;
  return result;
}

uint64_t re::generateCPUTextureMipmaps@<X0>(id *this@<X0>, uint64_t a2@<X8>)
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = this + 3;
  if (!v6)
  {
    result = re::DynamicString::format("Unsupported scaling for pixel format %d", v61, [*v5 pixelFormat]);
    goto LABEL_5;
  }

  v7 = v6;
  v8 = [*v5 textureType];
  if (v8 == 7)
  {
LABEL_5:
    v11 = *v61;
    v12 = v62[0];
    v13 = v62[1];
    *a2 = 0;
    *(a2 + 8) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    return result;
  }

  FaceOrArrayLength = re::internal::getFaceOrArrayLength(this, v9);
  memset(v45, 0, sizeof(v45));
  v47 = unk_1E30FFC08;
  v48 = 0;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = -1;
  [this[3] pixelFormat];
  ComponentCount = re::getComponentCount();
  v44 = 0;
  [this[3] pixelFormat];
  BytesPerPixel = re::getBytesPerPixel();
  LODWORD(v46) = 8 * BytesPerPixel / ComponentCount;
  DWORD1(v46) = 8 * BytesPerPixel;
  if (ComponentCount == 4)
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  LODWORD(v47) = v17;
  isHDR = re::isHDR([this[3] pixelFormat]);
  if (isHDR)
  {
    if (v46 == 16)
    {
      v18 = 4096;
    }

    else
    {
      v18 = 0x2000;
    }

    LODWORD(v47) = v47 | v18 | 0x100;
  }

  if (this[6] < 2)
  {
LABEL_34:
    v31 = 1;
    goto LABEL_36;
  }

  v34 = *a2;
  v19 = 1;
  v35 = *(a2 + 8);
  v36 = *(a2 + 24);
  v37 = *(a2 + 16);
  v38 = *(a2 + 32);
  while (1)
  {
    v21 = this[6];
    if (v21 <= v19 - 1)
    {
      *(a2 + 24) = v36;
      *(a2 + 32) = v38;
      *(a2 + 8) = v35;
      *(a2 + 16) = v37;
      *a2 = v34;
      *v70 = 0;
      v64 = 0u;
      v65 = 0u;
      *v62 = 0u;
      v63 = 0u;
      *v61 = 0u;
      a2 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v60[0]) = 136315906;
      *(v60 + 4) = "operator[]";
      WORD6(v60[0]) = 1024;
      *(v60 + 14) = 797;
      WORD1(v60[1]) = 2048;
      *(&v60[1] + 4) = v19 - 1;
      WORD6(v60[1]) = 2048;
      *(&v60[1] + 14) = v21;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_42:
      *(a2 + 24) = v36;
      *(a2 + 32) = v38;
      *(a2 + 8) = v35;
      *(a2 + 16) = v37;
      *a2 = v34;
      *v70 = 0;
      v64 = 0u;
      v65 = 0u;
      *v62 = 0u;
      v63 = 0u;
      *v61 = 0u;
      a2 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v60[0]) = 136315906;
      *(v60 + 4) = "operator[]";
      WORD6(v60[0]) = 1024;
      *(v60 + 14) = 797;
      WORD1(v60[1]) = 2048;
      *(&v60[1] + 4) = v19;
      WORD6(v60[1]) = 2048;
      *(&v60[1] + 14) = v21;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_43:
      *(a2 + 24) = v36;
      *(a2 + 32) = v38;
      *(a2 + 8) = v35;
      *(a2 + 16) = v37;
      *a2 = v34;
      v59 = 0;
      memset(v60, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v70 = 136315906;
      *&v70[4] = "operator[]";
      v71 = 1024;
      v72 = 797;
      v73 = 2048;
      v74 = v19;
      v75 = 2048;
      v76 = v21;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v21 <= v19)
    {
      goto LABEL_42;
    }

    v22 = this[8];
    v23 = &v22[5 * v19 - 5];
    v24 = *(v23 + 4);
    v25 = v22[5 * v19 + 4];
    *(v45 + 8) = vextq_s8(v56[0], v56[0], 8uLL);
    *(&v45[1] + 1) = v57;
    if (isHDR)
    {
      v40.i32[0] = v57;
      v40.i32[1] = DWORD2(v57);
      MetalEmulation::wrapTextureMip(this[3], (v19 - 1), &v40, v24, *(v23 + 2), v61);
      v39.i32[0] = v42;
      v39.i32[1] = DWORD2(v42);
      v21 = this[6];
      if (v21 <= v19)
      {
        goto LABEL_43;
      }

      MetalEmulation::wrapTextureMip(this[3], v19, &v39, v25, *(this[8] + 5 * v19 + 2), v60);
      MetalEmulation::computeMip(v61, v60);
      goto LABEL_32;
    }

    if (FaceOrArrayLength)
    {
      break;
    }

LABEL_32:
    v56[4] = v41[4];
    v57 = v42;
    v58 = v43;
    v56[0] = v41[0];
    v56[1] = v41[1];
    v56[2] = v41[2];
    v56[3] = v41[3];
    if (++v19 >= this[6])
    {
      *(a2 + 24) = v36;
      *(a2 + 32) = v38;
      *(a2 + 8) = v35;
      *(a2 + 16) = v37;
      goto LABEL_34;
    }
  }

  v26 = 0;
  while (1)
  {
    *&v45[0] = v24;
    v27 = v41[0];
    v29 = v61[0];
    if (v61[0])
    {
      re::CPUTexture::setSliceAndFixAlignment(this, v19, v26, v61[0], v62[1]);
      v24 += *(&v57 + 1);
    }

    else
    {
      v34 = 0;
      v35 = *&v60[0];
      v36 = *&v60[1];
      v37 = *(&v60[0] + 1);
      v38 = *(&v60[1] + 1);
    }

    CGColorSpaceRelease(space);
    v30 = v68;
    space = 0;
    v68 = 0;
    if (v30)
    {
      free(v30);
    }

    v20 = v66;
    if (v66)
    {
      v20 = CGImageBlockSetRelease();
    }

    if (!v29)
    {
      break;
    }

    if (FaceOrArrayLength == ++v26)
    {
      goto LABEL_32;
    }
  }

  *(a2 + 24) = v36;
  *(a2 + 32) = v38;
  *(a2 + 8) = v35;
  *(a2 + 16) = v37;
  v31 = v34;
LABEL_36:
  *a2 = v31;
  CGColorSpaceRelease(v54);
  v32 = *(&v53 + 1);
  *(&v53 + 1) = 0;
  *&v54 = 0;
  if (v32)
  {
    free(v32);
  }

  result = v51;
  if (v51)
  {
    return CGImageBlockSetRelease();
  }

  return result;
}

uint64_t re::anonymous namespace::determineScaleVariantFromPixelFormat(int a1)
{
  result = 1;
  if (a1 > 499)
  {
    v3 = a1 - 8;
    if ((a1 - 520) <= 0x31)
    {
      if (((1 << v3) & 0x3FC0CDFF007FFLL) != 0)
      {
        return 0;
      }

      if (((1 << v3) & 0x300000000) != 0)
      {
        return 13;
      }
    }

    if ((a1 - 500) >= 0xB)
    {
      v4 = a1 - 588;
      if (v4 > 0x29 || ((1 << v4) & 0x30003F80001) == 0)
      {
        return result;
      }
    }

    return 0;
  }

  switch(a1)
  {
    case 0:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 40:
    case 41:
    case 42:
    case 43:
    case 53:
    case 54:
    case 60:
    case 62:
    case 63:
    case 64:
    case 65:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 103:
    case 104:
    case 105:
    case 123:
    case 124:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 140:
    case 141:
    case 142:
    case 143:
    case 150:
    case 151:
    case 152:
    case 153:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 172:
    case 174:
    case 176:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 222:
    case 223:
    case 224:
    case 225:
    case 226:
    case 228:
    case 229:
    case 230:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 240:
    case 241:
    case 250:
    case 252:
    case 253:
    case 255:
    case 260:
    case 261:
    case 262:
      return 0;
    case 20:
    case 23:
      result = 3;
      break;
    case 22:
    case 24:
      result = 2;
      break;
    case 25:
      result = 9;
      break;
    case 55:
      result = 4;
      break;
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 80:
    case 81:
      result = 5;
      break;
    case 110:
    case 113:
      result = 6;
      break;
    case 112:
    case 114:
      result = 7;
      break;
    case 115:
      result = 10;
      break;
    case 125:
      result = 8;
      break;
    default:
      return result;
  }

  return result;
}

void re::anonymous namespace::scaleImageBufferUsingVImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x1E69E9840];
  memset(&v21, 0, sizeof(v21));
  v10 = MEMORY[0x1E6908310](&v21, a4, a3, *(a2 + 36), 0);
  if (v10)
  {
    v11 = v10;
    v12 = *re::pipelineLogObjects(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      width = v11;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to allocate an image buffer during texture creation (vImage error: %zd)", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v14 = v13;
  if (v13 < 0)
  {
    v20 = *re::pipelineLogObjects(v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      width = v14;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Failed to get temp buffer size for image scaling during texture creation (vImage error: %zd)", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (v13)
  {
    v15 = *re::pipelineLogObjects(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      width = v21.width;
      v24 = 2048;
      height = v21.height;
      v26 = 2048;
      v27 = v14;
      _os_log_debug_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEBUG, "Image scaling to %lux%lu requires %zd bytes of temp buffer", buf, 0x20u);
    }
  }

  v16 = (*(*a6 + 32))(a6, v14, *MEMORY[0x1E69E9AC8]);
  if (v17)
  {
    v18 = v17;
    v19 = *re::pipelineLogObjects(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      width = v18;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Failed to scale image during texture creation (vImage error: %zd)", buf, 0xCu);
    }

    (*(*a6 + 40))(a6, v16);
LABEL_14:
    free(v21.data);
LABEL_15:
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 48) = unk_1E30FFC08;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 168) = -1;
    return;
  }

  (*(*a6 + 40))(a6, v16);
}

void re::anonymous namespace::vImageBufferStorage::~vImageBufferStorage(re::_anonymous_namespace_::vImageBufferStorage *this)
{
  CGColorSpaceRelease(*(this + 19));
  v2 = *(this + 18);
  *(this + 18) = 0;
  *(this + 19) = 0;
  if (v2)
  {
    free(v2);
  }

  if (*(this + 13))
  {
    CGImageBlockSetRelease();
    *(this + 13) = 0;
    *(this + 15) = 0;
  }
}

uint64_t re::internal::createCompressedCPUTextureData@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, id *a4@<X3>, int *a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v50[1] = 0;
  v51 = 0;
  v50[0] = 0;
  v52 = 0;
  v47 = 0;
  memset(v48, 0, sizeof(v48));
  v46[2] = 0;
  v46[0] = 0;
  v46[1] = 8;
  v49 = dispatch_get_global_queue(21, 0);
  v40 = a5;
  v43 = *a5;
  v44 = a2;
  v45 = a3;
  v14 = [*a4 mipmapLevelCount];
  LODWORD(v15) = re::internal::getFaceOrArrayLength(a4);
  re::DynamicArray<re::DynamicArray<float>>::resize(v50, v14);
  if (v14 <= a6)
  {
LABEL_23:
    re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(a4, v50, (a7 + 8));
    *a7 = 1;
  }

  else
  {
    v16 = &selRef_setOwnerWithIdentity_;
    v17 = &selRef_setOwnerWithIdentity_;
    v15 = v15;
    v38 = v14;
    v39 = a7;
    v37 = v15;
LABEL_3:
    v18 = *(a1 + 48);
    if (v18 <= a6)
    {
      goto LABEL_35;
    }

    v19 = *(a1 + 64);
    if ([*a4 v16[250]] == 7)
    {
      v20 = [*a4 depth];
      if (v20 >> a6 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v20 >> a6;
      }
    }

    v21 = v19 + 40 * a6;
    v22 = *(v21 + 16);
    v23 = [*a4 v17[339]] >> a6;
    if (v23 <= 1)
    {
      v23 = 1;
    }

    v42.width = v23;
    v24 = [*a4 height] >> a6;
    if (v24 <= 1)
    {
      v24 = 1;
    }

    v42.height = v24;
    v25 = a1;
    v42.rowBytes = v60;
    a1 = v51;
    if (v51 <= a6)
    {
      goto LABEL_36;
    }

    height = v42.height;
    v27 = re::blockToSize(*v40);
    v28 = (v53 + 40 * a6);
    v29 = v15 * ((height + HIDWORD(v27) - 1) / HIDWORD(v27)) * ((v42.width + LODWORD(v27) - 1) / LODWORD(v27));
    if (v28[1] < 16 * v29)
    {
      re::DynamicArray<BOOL>::setCapacity(v28, 16 * v29);
    }

    v30 = 0;
    if (v15 <= 1)
    {
      a1 = 1;
    }

    else
    {
      a1 = v15;
    }

    v18 = v22 / v15;
    while (1)
    {
      v42.data = (*(v21 + 32) + v30 * v18);
      v31 = v51;
      if (v51 <= a6)
      {
        v54 = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v61 = 136315906;
        *&v61[4] = "operator[]";
        *&v61[12] = 1024;
        *&v61[14] = 789;
        *&v61[18] = 2048;
        *&v61[20] = a6;
        *&v61[28] = 2048;
        *&v61[30] = v31;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_35:
        v42.data = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v61 = 136315906;
        *&v61[4] = "operator[]";
        *&v61[12] = 1024;
        *&v61[14] = 797;
        *&v61[18] = 2048;
        *&v61[20] = a6;
        *&v61[28] = 2048;
        *&v61[30] = v18;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_36:
        v41[0] = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v55 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v61 = 136315906;
        *&v61[4] = "operator[]";
        *&v61[12] = 1024;
        *&v61[14] = 789;
        *&v61[18] = 2048;
        *&v61[20] = a6;
        *&v61[28] = 2048;
        *&v61[30] = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v41[0] = &unk_1F5D0BFB8;
      v41[1] = v53 + 40 * a6;
      v41[2] = 0;
      if ((v55 & 1) == 0)
      {
        break;
      }

      ++v30;
      if (!--a1)
      {
        ++a6;
        a7 = v39;
        a1 = v25;
        v16 = &selRef_setOwnerWithIdentity_;
        v17 = &selRef_setOwnerWithIdentity_;
        v15 = v37;
        if (a6 == v38)
        {
          goto LABEL_23;
        }

        goto LABEL_3;
      }
    }

    if (v56)
    {
      v32 = *(&v56 + 1);
    }

    else
    {
      v32 = &v56 + 1;
    }

    re::DynamicString::format("Failed to compress image buffer during texture creation: %s", v61, v32);
    v33 = *v61;
    v34 = *&v61[16];
    v35 = *&v61[24];
    *v39 = 0;
    *(v39 + 8) = v33;
    *(v39 + 24) = v34;
    *(v39 + 32) = v35;
    if (v55 & 1) == 0 && *(&v55 + 1) && (v56)
    {
      (*(**(&v55 + 1) + 40))();
    }
  }

  if (*&v48[4])
  {
    astcenc_context_free(*&v48[4]);
    *&v48[4] = 0;
  }

  return re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v50);
}

void re::anonymous namespace::compressTextureWithImageBuffer(uint64_t a1, uint64_t a2, const vImage_Buffer *a3, uint64_t a4, re::ASTCCompressor *a5)
{
  v39 = 0;
  memset(v40, 0, sizeof(v40));
  v38[2] = 0;
  v38[0] = 0;
  v38[1] = 8;
  v41 = dispatch_get_global_queue(21, 0);
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = v38;
  }

  re::ASTCCompressor::initializeContext(v10, a4, *(a4 + 16), *(a4 + 20), v34);
  if ((v34[0] & 1) == 0)
  {
    if (v36)
    {
      v21 = *&v37[7];
    }

    else
    {
      v21 = v37;
    }

    re::DynamicString::format("Encoder failed during texture creation: %s", &v31, v21);
    goto LABEL_16;
  }

  height = a3->height;
  width = a3->width;
  if (a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = v38;
  }

  v14 = re::blockToSize(*(v13 + 4));
  v15 = 16 * ((width + LODWORD(v14) - 1) / LODWORD(v14));
  v16 = (height + HIDWORD(v14) - 1) / HIDWORD(v14) * v15;
  v17.n128_f64[0] = re::blockToSize(*a4);
  v18 = (**a2)(a2, v16, v15, v17.n128_u32[1], width | (height << 32), 1, v17);
  if ((v18 & 1) == 0)
  {
LABEL_16:
    v22 = v31;
    v23 = v32;
    v24 = v33;
    *a1 = 0;
    *(a1 + 8) = v22;
    *(a1 + 24) = v23;
    *(a1 + 32) = v24;
    goto LABEL_17;
  }

  v19 = (*(*a2 + 8))(a2);
  re::ASTCCompressor::compress(v10, a3, v19, &v31);
  if (v31)
  {
    (*(*a2 + 16))(a2);
    v20 = 1;
  }

  else
  {
    if (v32)
    {
      v25 = v33;
    }

    else
    {
      v25 = &v32 + 1;
    }

    re::DynamicString::format("Encoder failed during texture creation: %s", &v28, v25);
    v20 = 0;
    v26 = v29;
    v27 = v30;
    *(a1 + 8) = v28;
    *(a1 + 24) = v26;
    *(a1 + 32) = v27;
  }

  *a1 = v20;
  if (v31 & 1) == 0 && *(&v31 + 1) && (v32)
  {
    (*(**(&v31 + 1) + 40))();
  }

LABEL_17:
  if (v34[0] & 1) == 0 && v35 && (v36)
  {
    (*(*v35 + 40))();
  }

  if (*&v40[4])
  {
    astcenc_context_free(*&v40[4]);
    *&v40[4] = 0;
  }
}

__n128 re::Ok<re::internal::TextureInMetalBuffers,re::internal::TextureInMetalBuffers>(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(a1 + 16, (a2 + 16));
  re::DynamicArray<BOOL>::DynamicArray(a1 + 136, (a2 + 136));
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  v7 = *(a2 + 192);
  *(a1 + 192) = v7;
  if (v7 == 1)
  {
    result = *(a2 + 200);
    *(a1 + 200) = result;
    *(a1 + 216) = *(a2 + 216);
  }

  return result;
}

uint64_t re::Result<re::internal::TextureInMetalBuffers,re::DynamicString>::Result(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  v4 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(a1 + 24, (a2 + 16));
  re::DynamicArray<BOOL>::DynamicArray(a1 + 144, (a2 + 136));
  v6 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 184);
  *(a1 + 184) = v6;
  LODWORD(v6) = *(a2 + 192);
  *(a1 + 200) = v6;
  if (v6 == 1)
  {
    v7 = *(a2 + 200);
    *(a1 + 224) = *(a2 + 216);
    *(a1 + 208) = v7;
  }

  return a1;
}

void re::anonymous namespace::logFormatConversionInfo(re::_anonymous_namespace_ *this, const vImage_CGImageFormat *a2, const vImage_CGImageFormat *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6908320](this, a2, a3);
  if (!v5)
  {
    v6 = *re::pipelineLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(this + 1);
      v9 = *this;
      v8 = *(this + 1);
      v10 = *(this + 4);
      colorSpace = a2->colorSpace;
      bitsPerComponent = a2->bitsPerComponent;
      bitsPerPixel = a2->bitsPerPixel;
      bitmapInfo = a2->bitmapInfo;
      v15 = 138414082;
      v16 = v7;
      v17 = 1024;
      v18 = v8;
      v19 = 1024;
      v20 = v9;
      v21 = 1024;
      v22 = v10;
      v23 = 2112;
      v24 = colorSpace;
      v25 = 1024;
      v26 = bitsPerPixel;
      v27 = 1024;
      v28 = bitsPerComponent;
      v29 = 1024;
      v30 = bitmapInfo;
      _os_log_debug_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEBUG, "Format conversion required on texture import:\n     Source format: %@, %u bpp, %u bpc, 0x%08x info\nDestination format: %@, %u bpp, %u bpc, 0x%08x info", &v15, 0x3Au);
    }
  }
}

uint64_t re::anonymous namespace::createBufferWithImageUsingVImage(re::_anonymous_namespace_ *this, CGImagePtr *a2, const vImage_CGImageFormat *a3, re::Allocator *a4, BOOL *a5, re::TextureImportData::ImportReport *a6)
{
  v78 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    *a5 = 0;
  }

  else
  {
    v12 = *re::pipelineLogObjects(this);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      *v66 = 0;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to create buffer from image due to invalid image", v66, 2u);
    }

    v14 = *a2;
    *a5 = 0;
    if (!v14)
    {
      v15 = *re::pipelineLogObjects(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Failed to create buffer from image due to invalid image", buf, 2u);
      }
    }
  }

  v16 = objc_autoreleasePoolPush();
  if (CGImageGetImageProvider())
  {
    v65 = v16;
    v73 = *MEMORY[0x1E695F298];
    v74 = MEMORY[0x1E695E118];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v18 = CGImageProviderCopyImageBlockSetWithOptions();
    if (v18 || (v18 = CGImageProviderCopyImageBlockSetWithOptions()) != 0)
    {
      v19 = v18;
      Count = CGImageBlockSetGetCount();
      if (Count == 1)
      {
        v63 = a3;
        v64 = a4;
        BitmapInfo = CGImageProviderGetBitmapInfo();
        ComponentType = CGImageBlockSetGetComponentType();
        ColorSpace = CGImageBlockSetGetColorSpace();
        PixelSize = CGImageBlockSetGetPixelSize();
        memset(v66, 0, sizeof(v66));
        if (ComponentType >= 7)
        {
          re::internal::assertLog(4, v25, "assertion failure: '%s' (%s:line %i) ", "0 <= componentType && componentType < countOf(kImageProviderComponentTypes)", "imageProviderComponentType", 832);
          _os_crash();
          __break(1u);
        }

        v26 = PixelSize;
        if (v27[4] == 1)
        {
          LODWORD(v67) = *(v27 + 2);
          DWORD1(v67) = 8 * PixelSize;
          *(&v67 + 1) = ColorSpace;
          *v68 = BitmapInfo;
          *&v68[12] = 0;
          *&v68[4] = 0;
        }

        else
        {
          v37 = *re::pipelineLogObjects(PixelSize);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = ComponentType;
            _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "Unsupported CGImageComponentType %d during texture creation", buf, 8u);
          }

          *v68 = unk_1E30FFC08;
          *&v68[16] = 0;
        }

        memset(&v68[24], 0, 32);
        *&v69 = v19;
        DWORD2(v69) = ComponentType;
        *&v70 = ColorSpace;
        *(&v70 + 1) = v26;
        v71 = 0u;
        *space_8 = 0u;
        *&space_8[16] = -1;
        CGImageBlockSetGetImageBlock();
        CGImageBlockSetGetSize();
        v39 = v38;
        v41 = v40;
        Data = CGImageBlockGetData();
        BytesPerRow = CGImageBlockGetBytesPerRow();
        *v66 = Data;
        *&v66[8] = v41;
        *&v66[16] = v39;
        *&v66[24] = BytesPerRow;
        CGImageBlockGetRect();
        *&v68[24] = v44;
        *&v68[32] = v45;
        *&v68[40] = v46;
        *&v68[48] = v47;
        CGImagePtr::CGImagePtr(buf, 0);
        CGImagePtr::swap(v48, a2);
        CGImageRelease(*buf);
        *buf = 0;

        CGColorSpaceRelease(v76);
        v76 = 0;
        a3 = v63;
        a4 = v64;
        goto LABEL_31;
      }

      v35 = *re::pipelineLogObjects(Count);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "Failed to create a single image block from a CGImageProvider during texture creation", buf, 2u);
      }

      CGImageBlockSetRelease();
    }

    else
    {
      v49 = *re::pipelineLogObjects(0);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_ERROR, "Failed to create an image from a CGImageProvider during texture creation", buf, 2u);
      }
    }

    *&space_8[8] = 0u;
    memset(v66, 0, sizeof(v66));
    *v68 = unk_1E30FFC08;
    memset(&v68[16], 0, 40);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    *space_8 = 0u;
    *&space_8[16] = -1;
LABEL_31:
    v16 = v65;
LABEL_32:

    goto LABEL_33;
  }

  DataProvider = CGImageGetDataProvider(*a2);
  if (DataProvider)
  {
    v29 = CGDataProviderCopyData(DataProvider);
    v17 = v29;
    if (v29)
    {
      v30 = v29;
      *v66 = [(__CFData *)v30 bytes];
      v31 = *(a2 + 6);
      *&v66[24] = *(a2 + 5);
      *&v67 = vmovn_s64(*(a2 + 24));
      *(&v67 + 1) = v31;
      *v68 = *(a2 + 18);
      *&v68[4] = 0uLL;
      *&v68[24] = 0;
      *&v68[32] = 0;
      v32 = *(a2 + 8);
      *&v66[8] = vextq_s8(v32, v32, 8uLL);
      *&v68[40] = vcvtq_f64_u64(v32);
      v69 = 0u;
      v70 = 0u;
      v71 = v30;
      v33 = CGColorSpaceRetain(v31);
      *space_8 = v33;
      *&space_8[8] = CGColorSpaceGetNumberOfComponents(v33);
      *&space_8[16] = CGColorSpaceGetModel(v33);
      CGImagePtr::CGImagePtr(buf, 0);
      CGImagePtr::swap(v34, a2);
      CGImageRelease(*buf);
      *buf = 0;

      CGColorSpaceRelease(v76);
      v76 = 0;
    }

    else
    {
      v62 = *re::pipelineLogObjects(0);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_ERROR, "Failed to create an image from a CGDataProvider during texture creation", buf, 2u);
      }

      *&space_8[8] = 0u;
      memset(v66, 0, sizeof(v66));
      *v68 = unk_1E30FFC08;
      memset(&v68[16], 0, 40);
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      *space_8 = 0u;
      *&space_8[16] = -1;
    }

    goto LABEL_32;
  }

  v36 = *re::pipelineLogObjects(0);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Failed to create a texture because it is not backed by an image or data provider", buf, 2u);
  }

  *&space_8[8] = 0u;
  memset(v66, 0, sizeof(v66));
  *v68 = unk_1E30FFC08;
  memset(&v68[16], 0, 40);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  *space_8 = 0u;
  *&space_8[16] = -1;
LABEL_33:
  objc_autoreleasePoolPop(v16);
  if (*&v68[4])
  {
    v51 = *re::pipelineLogObjects(v50);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_ERROR, "Failed to create buffer from image during texture creation", buf, 2u);
    }
  }

  {
    v52 = *&v68[32];
    *(this + 4) = *&v68[16];
    *(this + 5) = v52;
    v53 = *&v66[16];
    *this = *v66;
    *(this + 1) = v53;
    v54 = *v68;
    *(this + 2) = v67;
    *(this + 3) = v54;
    v55 = v69;
    *(this + 12) = *&v68[48];
    *(this + 13) = v55;
    *(this + 28) = DWORD2(v69);
    v56 = *(&v70 + 1);
    *(this + 15) = v70;
    *(this + 16) = v56;
    *&v69 = 0;
    *&v70 = 0;
    v57 = v71;
    v71 = 0uLL;
    *(this + 136) = v57;
    v58 = *&space_8[8];
    *(this + 19) = *space_8;
    *(this + 20) = v58;
    *space_8 = 0;
    *&space_8[8] = 0;
    v59 = *&space_8[16];
    *&space_8[16] = -1;
    goto LABEL_39;
  }

  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 3) = unk_1E30FFC08;
  *(this + 8) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  v59 = -1;
LABEL_39:
  *(this + 42) = v59;
  CGColorSpaceRelease(*space_8);
  v60 = *(&v71 + 1);
  *(&v71 + 1) = 0;
  *space_8 = 0;
  if (v60)
  {
    free(v60);
  }

  result = v69;
  if (v69)
  {
    return CGImageBlockSetRelease();
  }

  return result;
}

void re::anonymous namespace::compressTextureWithImageBuffer(uint64_t a1, void *a2, const vImage_Buffer *a3, uint64_t a4, re::ASTCCompressor *a5)
{
  v23 = &unk_1F5D0BDD0;
  v24 = a2;
  v25 = v24;
  v26 = 0;
  v27[1] = 0;
  v27[0] = 0;
  v28 = 1;
  v30 = 0;
  v29 = 0;
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v36 = 0;
  v34 = 0;
  v33 = 0;
  v35 = 0;

  if (v20 == 1)
  {
    v10[0] = v25;
    v10[1] = v26;
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(&v11, v27);
    re::DynamicArray<BOOL>::DynamicArray(v12, v31);
    v12[5] = v34;
    v13 = v35;
    v14 = v36;
    if (v36 == 1)
    {
      v15 = v37;
      v16 = v38;
    }

    re::Ok<re::internal::TextureInMetalBuffers,re::internal::TextureInMetalBuffers>(&v17, v10);
    re::Result<re::internal::TextureInMetalBuffers,re::DynamicString>::Result(a1, &v17);
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v17);
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v10);
  }

  else
  {
    re::DynamicString::DynamicString(&v17, &v21);
    *a1 = 0;
    v9 = v19;
    *(a1 + 8) = v17;
    *(a1 + 32) = v9;
    *(a1 + 16) = v18;
    if (v21 && (v22 & 1) != 0)
    {
      (*(*v21 + 40))();
    }
  }

  v23 = &unk_1F5D0BDD0;
  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v25);
}

BOOL re::anonymous namespace::adjustBufferLinePaddingAndKTXConformance(re *a1)
{
  v1 = *(a1 + 3);
  v2 = *(a1 + 2) * *(a1 + 9) + 7;
  if (v2 >> 3 == v1)
  {
    return 1;
  }

  if (v2 >> 3 < v1)
  {
    v4 = 4;
    if (v2 >> 3 > 4)
    {
      v4 = v2 >> 3;
    }

    if ((v2 & 0x18) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2 >> 3;
    }

    if (*(a1 + 1) >= 2uLL)
    {
      v6 = *a1;
      v7 = (*a1 + v1);
      v8 = 1;
      do
      {
        v6 += v5;
        memmove(v6, v7, v5);
        ++v8;
        v7 += v1;
      }

      while (v8 < *(a1 + 1));
    }

    *(a1 + 3) = v5;
    return 1;
  }

  v10 = *re::pipelineLogObjects(a1);
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v11[0] = 0;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to adjust buffer to alignment requirements", v11, 2u);
    return 0;
  }

  return result;
}

void re::anonymous namespace::generateMipmapLevelOnCPU(uint64_t *a1, uint64_t a2, uint64_t a3, id *a4, uint64_t a5, char a6)
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = [*a4 width];
  if (v12 >> a6 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 >> a6;
  }

  v14 = [*a4 height];
  if (v14 >> a6 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14 >> a6;
  }

  if (*a1)
  {
    v16 = *a1;
  }

  else
  {
    v16 = a2;
  }

  operator new();
}

uint64_t re::anonymous namespace::vImageBufferStorage::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 48) = v6;
  if (a1 != a2)
  {
    if (*(a1 + 104))
    {
      CGImageBlockSetRelease();
      *(a1 + 104) = 0;
      *(a1 + 120) = 0;
    }

    *(a1 + 104) = *(a2 + 13);
    *(a1 + 112) = *(a2 + 28);
    v9 = *(a2 + 16);
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 128) = v9;
    *(a2 + 13) = 0;
    *(a2 + 15) = 0;
  }

  v10 = *(a2 + 17);
  *(a2 + 17) = 0;
  v11 = *(a1 + 136);
  *(a1 + 136) = v10;

  v12 = *(a2 + 18);
  *(a2 + 18) = 0;
  v13 = *(a1 + 144);
  *(a1 + 144) = v12;
  if (v13)
  {
    free(v13);
  }

  v14 = *(a2 + 19);
  v15 = *(a2 + 20);
  v16 = *(a2 + 42);
  *(a2 + 42) = -1;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  v17 = *(a1 + 152);
  *(a1 + 152) = v14;
  *(a1 + 160) = v15;
  *(a1 + 168) = v16;
  CGColorSpaceRelease(v17);
  return a1;
}

uint64_t re::anonymous namespace::replaceTextureSliceWithBuffer(id *a1, uint64_t a2, unint64_t a3, uint64_t a4, id *a5, uint64_t a6)
{
  if ([*a1 storageMode] == 2)
  {
    v44 = [*a1 device];
    v45 = 0;
    v46 = 0;
    v47 = 0;
    LODWORD(v48) = 1;
    v49 = 0;
    v50 = 0;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v54 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;

    v12 = *a4;
    v13 = *(a4 + 8);
    if (v13)
    {
      v14 = *(a4 + 24) * (v13 - 1) + ((*(a4 + 16) * *(a4 + 36) + 7) >> 3);
    }

    else
    {
      v14 = 0;
    }

    v39 = &unk_1F5D0A468;
    v40 = 0;
    v41 = v12;
    v42 = v14;
    re::FixedArrayInputStream::FixedArrayInputStream(v43, v12, v14, -1);
    v25 = *(a4 + 8);
    if (v25)
    {
      v27 = *(a4 + 16);
      v26 = *(a4 + 24);
      v28 = v26 * (v25 - 1) + ((v27 * *(a4 + 36) + 7) >> 3);
    }

    else
    {
      v28 = 0;
      v27 = *(a4 + 16);
      v26 = *(a4 + 24);
    }

    v38[0] = v27;
    v38[1] = v25;
    v38[2] = 1;
    v37[0] = 0;
    v37[1] = 0;
    v36 = v37;
    v29 = re::internal::TextureInMetalBuffers::allocate(&v44, v28, v26, 1uLL, &v39, v38, 1uLL, &v36);
    std::__tree<unsigned long long>::destroy(&v36, v37[0]);
    if (v29)
    {
      v30 = re::internal::BlitCommandQueue::blitCommandEncoder(a5);
      v33[0] = *a6;
      if (v33[0] == 1)
      {
        v31 = *(a6 + 24);
        v34 = *(a6 + 8);
        v35 = v31;
      }

      re::internal::TextureInMetalBuffers::replaceTextureSlice(&v44, a1, a2, a3, v30, v33);
      v39 = &unk_1F5D0A468;
      re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v43);
      re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v44);
      return 1;
    }

    else
    {
      v39 = &unk_1F5D0A468;
      re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v43);
      re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v44);
      return 0;
    }
  }

  else
  {
    v15 = *(a4 + 24);
    if (*a6 == 1)
    {
      v16 = *(a6 + 16);
      v17 = *(a6 + 8);
      v18 = v16;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    v19 = [*a1 textureType];
    v20 = *(a4 + 8);
    v21 = *(a4 + 16);
    v22 = *a1;
    v23 = *a4;
    v44 = v17;
    v45 = v18;
    if (v19 == 7)
    {
      v46 = a3;
      v47 = v21;
      v24 = 1;
      v48 = v20;
      v49 = 1;
      [v22 replaceRegion:&v44 mipmapLevel:a2 slice:0 withBytes:v23 bytesPerRow:v15 bytesPerImage:0];
    }

    else
    {
      v46 = 0;
      v47 = v21;
      v48 = v20;
      v49 = 1;
      [v22 replaceRegion:&v44 mipmapLevel:a2 slice:a3 withBytes:v23 bytesPerRow:v15 bytesPerImage:0];
      return 1;
    }
  }

  return v24;
}

void re::anonymous namespace::cgFormatForTextureDestination(uint64_t a1, int a2, uint64_t *a3, char a4, int a5, uint64_t a6, int a7)
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = 8 * *(a3 + 6);
  v11 = *(a3 + 32);
  v12 = v10 / v11;
  v13 = a4 & 0x1F;
  switch(a7)
  {
    case 2:
      if (--v13 < 6)
      {
        v14 = dword_1E3100418[v13];
        v15 = &unk_1E3100430;
        goto LABEL_9;
      }

      goto LABEL_10;
    case 1:
      v16 = 2;
      v14 = 1;
      goto LABEL_12;
    case 0:
      if (v13 < 7)
      {
        v14 = dword_1E31003E0[a4 & 0x1F];
        v15 = &unk_1E31003FC;
LABEL_9:
        v16 = v15[v13];
        goto LABEL_12;
      }

LABEL_10:
      v16 = 4;
      v14 = 3;
      goto LABEL_12;
  }

  v14 = 0;
  v16 = 0;
LABEL_12:
  if (v12 > 7)
  {
    if (v12 == 16)
    {
      v18 = 4096;
    }

    else
    {
      v18 = 0x2000;
    }

    if (v12 == 8)
    {
      v17 = 0;
    }

    else
    {
      v17 = v18;
    }
  }

  else if (v10 == 16)
  {
    v17 = 4096;
  }

  else
  {
    v17 = 0x2000;
  }

  v19 = 0;
  if (a2 <= 499)
  {
    switch(a2)
    {
      case 0:
      case 92:
      case 93:
      case 94:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 140:
      case 141:
      case 142:
      case 143:
      case 150:
      case 151:
      case 152:
      case 153:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 170:
      case 172:
      case 174:
      case 176:
      case 178:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 197:
      case 198:
      case 199:
      case 200:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 240:
      case 241:
      case 250:
      case 252:
      case 253:
      case 255:
      case 260:
      case 261:
      case 262:
        goto LABEL_33;
      case 1:
        v19 = 7;
        goto LABEL_44;
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 20:
      case 22:
      case 23:
      case 24:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 53:
      case 54:
      case 60:
      case 62:
      case 63:
      case 64:
      case 103:
      case 104:
        v19 = v17;
        goto LABEL_44;
      case 25:
      case 55:
      case 65:
      case 105:
        v19 = v17 | 0x100;
        goto LABEL_44;
      case 40:
        v19 = 4096;
        goto LABEL_44;
      case 41:
      case 42:
        v19 = 4099;
        goto LABEL_44;
      case 43:
        v19 = v16 | 0x1000;
        goto LABEL_44;
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 90:
      case 91:
      case 110:
      case 112:
      case 113:
      case 114:
      case 123:
      case 124:
        v19 = v17 | v14;
        goto LABEL_44;
      case 80:
      case 81:
        goto LABEL_38;
      case 115:
      case 125:
        v19 = v14 | v17 | 0x100;
        goto LABEL_44;
      default:
        goto LABEL_44;
    }
  }

  v20 = a2 - 8;
  if ((a2 - 520) <= 0x31)
  {
    if (((1 << v20) & 0x3FC00DFF007FFLL) != 0)
    {
LABEL_33:
      v21 = *re::pipelineLogObjects(a1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = *a3;
        v30 = 136446210;
        v31 = v23;
        _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "No CG image format corresponds to pixel format %{public}s", &v30, 0xCu);
      }

      *(a1 + 16) = unk_1E30FFC08;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = 0;
      v22 = -1;
      goto LABEL_53;
    }

    if (((1 << v20) & 0x300000000) != 0)
    {
LABEL_38:
      v19 = v16 | 0x2000;
      goto LABEL_44;
    }

    if (((1 << v20) & 0xC00000000) != 0)
    {
      v19 = 0x2000;
      goto LABEL_44;
    }
  }

  if ((a2 - 500) < 0xB || (a2 - 588) <= 0x29 && ((1 << (a2 - 76)) & 0x30003F80001) != 0)
  {
    goto LABEL_33;
  }

LABEL_44:
  v24 = *a6;
  v26 = (v19 & 0x1F) == 0 && *(a6 + 8) == 1 && v11 == 2;
  v27 = v19 | 3;
  if (!v26)
  {
    v27 = v19;
  }

  *a1 = v12;
  *(a1 + 4) = v10;
  *(a1 + 8) = v24;
  *(a1 + 16) = v27;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a5;
  *(a1 + 36) = 0;
  v28 = CGColorSpaceRetain(v24);
  v29 = *(a6 + 8);
  *(a1 + 40) = v28;
  *(a1 + 48) = v29;
  v22 = *(a6 + 16);
LABEL_53:
  *(a1 + 56) = v22;
}

uint64_t re::anonymous namespace::convertBufferToFormat(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, _WORD *a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 3);
  *&srcFormat.bitsPerComponent = *(a1 + 2);
  *&srcFormat.bitmapInfo = v10;
  *&srcFormat.renderingIntent = a1[8];
  *a4 = 0;
  if ((srcFormat.bitmapInfo & 0x70000) != 0)
  {
    v11 = *a2;
    if (*a2 == 8 || v11 == 16 && (*(a2 + 17) & 1) != 0)
    {
      v16 = 4 * v11;
      memset(&dest, 0, sizeof(dest));
      v17 = MEMORY[0x1E6908310](&dest, a1[1], a1[2], 4 * v11, 0);
      if (v17)
      {
        v18 = v17;
        v19 = *re::pipelineLogObjects(v17);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v18;
          v20 = "Failed to allocate an image buffer during texture creation (vImage error: %zd)";
LABEL_43:
          _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, v20, &buf, 0xCu);
        }

        return 0;
      }

      *permuteMap = 50462976;
      v21 = srcFormat.bitmapInfo & 0x30000;
      if (*a2 == 16)
      {
        if (v21)
        {
          v22 = vImageConvert_XRGB2101010ToARGB16F(a1, 1.0, &dest, 0, 1023, permuteMap, 0x10u);
        }

        else
        {
          v22 = vImageConvert_ARGB2101010ToARGB16F(a1, &dest, 0, 1023, permuteMap, 0x10u);
        }
      }

      else if (v21)
      {
        v22 = vImageConvert_XRGB2101010ToARGB8888(a1, 1u, &dest, 0, 1023, permuteMap, 0x10u);
      }

      else
      {
        v22 = vImageConvert_ARGB2101010ToARGB8888(a1, &dest, 0, 1023, permuteMap, 0x10u);
      }

      v23 = v22;
      if (v22)
      {
        v24 = *re::pipelineLogObjects(v22);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
LABEL_87:
          free(dest.data);
          return 0;
        }

        LODWORD(buf) = 134217984;
        *(&buf + 4) = v23;
        v25 = "Failed to convert image from 10 bits to float16 during texture creation (vImage error: %zd)";
LABEL_91:
        _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, v25, &buf, 0xCu);
        goto LABEL_87;
      }

      srcFormat.bitsPerComponent = *a2;
      srcFormat.bitsPerPixel = v16;
      srcFormat.bitmapInfo = *(a2 + 16) & 0x7F00 | srcFormat.bitmapInfo & 0x1F;
      CGColorSpaceRelease(space);
      v26 = v72;
      v72 = 0;
      space = 0;
      if (v26)
      {
        free(v26);
      }

      if (v70)
      {
        CGImageBlockSetRelease();
      }

      *a5 |= 0x40u;
      *a4 = 1;
    }

    else
    {
      v12 = *re::pipelineLogObjects(a1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *a2;
        v13 = *(a2 + 4);
        v15 = *(a2 + 16);
        LODWORD(buf) = 67109632;
        DWORD1(buf) = v13;
        WORD4(buf) = 1024;
        *(&buf + 10) = v14;
        HIWORD(buf) = 1024;
        v69 = v15;
        _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Unhandled conversion from a 10 bit image to destination format: %u bpp, %u bpc, 0x%08x info", &buf, 0x14u);
      }
    }
  }

  if (MEMORY[0x1E6908320](&srcFormat, a2))
  {
    return 1;
  }

  if (srcFormat.bitsPerPixel != *(a2 + 4) || srcFormat.bitmapInfo != *(a2 + 16) || srcFormat.bitsPerComponent != *a2)
  {
    *a5 |= 0x40u;
  }

  *permuteMap = 0;
  v28 = vImageConverter_CreateWithCGImageFormat(&srcFormat, a2, 0, 0, permuteMap);
  if (v28)
  {
    v29 = v28;
    goto LABEL_33;
  }

  v34 = CGColorConversionInfoCreate(srcFormat.colorSpace, *(a2 + 8));
  if (!v34 || (v35 = v34, v29 = vImageConverter_CreateWithCGColorConversionInfo(v34, &srcFormat, a2, 0, 0, permuteMap), CFRelease(v35), !v29))
  {
    v19 = *re::pipelineLogObjects(v34);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = *permuteMap;
      v20 = "Failed to create an image converter during texture creation (vImage error: %zd)";
      goto LABEL_43;
    }

    return 0;
  }

LABEL_33:
  if (vImageConverter_GetNumberOfSourceBuffers(v29) != 1)
  {
    re::internal::assertLog(4, v30, "assertion failure: '%s' (%s:line %i) ", "vImageConverter_GetNumberOfSourceBuffers(converter) == 1", "convertBufferToFormat", 2834);
    _os_crash();
    __break(1u);
LABEL_95:
    re::internal::assertLog(4, v31, "assertion failure: '%s' (%s:line %i) ", "vImageConverter_GetNumberOfDestinationBuffers(converter) == 1", "convertBufferToFormat", 2835);
    _os_crash();
    __break(1u);
  }

  if (vImageConverter_GetNumberOfDestinationBuffers(v29) != 1)
  {
    goto LABEL_95;
  }

  memset(&dest, 0, sizeof(dest));
  v32 = MEMORY[0x1E6908310](&dest, a1[1], a1[2], *(a2 + 4), 0);
  *permuteMap = v32;
  if (v32)
  {
    v33 = *re::pipelineLogObjects(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = *permuteMap;
      _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Failed to allocate an image buffer during texture creation (vImage error: %zd)", &buf, 0xCu);
    }

    vImageConverter_Release(v29);
    return 0;
  }

  v63 = a3;
  if (srcFormat.bitsPerComponent == 16 && (srcFormat.bitmapInfo & 0x100) != 0 && srcFormat.colorSpace != *(a2 + 8))
  {
    v36 = a1[1];
    if (v36)
    {
      v37 = 0;
      v38 = 0;
      v39 = a1[2] * (srcFormat.bitsPerPixel >> 4);
      v40 = *a1;
      v41 = v39 & 0xFFFFFFFFFFFFFFF8;
      v42.i64[0] = 0x8400840084008400;
      v42.i64[1] = 0x8400840084008400;
      while (!v37)
      {
        v46 = 0uLL;
        if (v39 >= 8)
        {
          v47 = (2 * v39) & 0xFFFFFFFFFFFFFFF0;
          v48 = v40;
          do
          {
            v49 = *v48++;
            v46 = vmaxnmq_f16(v46, v49);
            v47 -= 16;
          }

          while (v47);
        }

        v50 = 0;
        do
        {
          v64 = v46;
          v51 = *(&v64 & 0xFFFFFFFFFFFFFFF1 | (2 * (v50 & 7)));
        }

        while (v51 != COERCE_SHORT_FLOAT(31744) && v50++ != 7);
        v53 = v39 & 0xFFFFFFFFFFFFFFF8;
        if (v41 == v39)
        {
LABEL_69:
          if (v51 != COERCE_SHORT_FLOAT(31744))
          {
            goto LABEL_71;
          }
        }

        else
        {
          while (*&v40->i16[v53] != COERCE_SHORT_FLOAT(31744))
          {
            if (++v53 >= v39)
            {
              goto LABEL_69;
            }
          }
        }

        v37 = *a1;
        v54 = a1[3] * v36;
        v55 = (*(*v63 + 32))(v63, v54, 16);
        *a1 = v55;
        memcpy(v55, v37, v54);
        v42.i64[0] = 0x8400840084008400;
        v42.i64[1] = 0x8400840084008400;
        v40 = (*a1 + a1[3] * v38);
LABEL_72:
        v36 = a1[1];
        if (v38 >= v36)
        {
          goto LABEL_75;
        }
      }

      v43 = (2 * v39) & 0xFFFFFFFFFFFFFFF0;
      v44 = v40;
      if (v39 >= 8)
      {
        do
        {
          *v44 = vminnmq_f16(*v44, v42);
          ++v44;
          v43 -= 16;
        }

        while (v43);
      }

      v45 = v39 & 0xFFFFFFFFFFFFFFF8;
      if (v41 != v39)
      {
        do
        {
          if (*&v40->i16[v45] == COERCE_SHORT_FLOAT(31744))
          {
            v40->i16[v45] = 31743;
          }

          ++v45;
        }

        while (v45 < v39);
      }

LABEL_71:
      ++v38;
      v40 = (v40 + a1[3]);
      goto LABEL_72;
    }
  }

  v37 = 0;
LABEL_75:
  v56 = vImageConvert_AnyToAny(v29, a1, &dest, 0, 0x90u);
  v57 = v56;
  if (v56 < 0)
  {
    v61 = *re::pipelineLogObjects(v56);
    v58 = v63;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v57;
      _os_log_error_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_ERROR, "Failed to prepare image converter during texture creation (vImage error: %zd)", &buf, 0xCu);
      if (!v37)
      {
        goto LABEL_84;
      }
    }

    else if (!v37)
    {
      goto LABEL_84;
    }

LABEL_83:
    (*(*v58 + 40))(v58, *a1);
    *a1 = v37;
    goto LABEL_84;
  }

  v58 = v63;
  if (v56)
  {
    v59 = *re::pipelineLogObjects(v56);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v57;
      _os_log_debug_impl(&dword_1E1C61000, v59, OS_LOG_TYPE_DEBUG, "Format conversion requires %zd bytes of temp buffer", &buf, 0xCu);
    }
  }

  v60 = (*(*v63 + 32))(v63, v57, *MEMORY[0x1E69E9AC8]);
  *permuteMap = vImageConvert_AnyToAny(v29, a1, &dest, v60, 0x10u);
  (*(*v63 + 40))(v63, v60);
  if (v37)
  {
    goto LABEL_83;
  }

LABEL_84:
  vImageConverter_Release(v29);
  if (v57 < 0)
  {
    return 0;
  }

  if (*permuteMap)
  {
    v24 = *re::pipelineLogObjects(v62);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    LODWORD(buf) = 134217984;
    *(&buf + 4) = *permuteMap;
    v25 = "Failed to convert image during texture creation (vImage error: %zd)";
    goto LABEL_91;
  }

  result = 1;
  *a4 = 1;
  return result;
}

uint64_t re::anonymous namespace::vImageBufferStorage::vImageBufferStorage(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *a3;
  v7 = a3[1];
  *(a1 + 64) = *(a3 + 4);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  v8 = vcvtq_f64_u64(*(a2 + 8));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = vextq_s8(v8, v8, 8uLL);
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  v9 = CGColorSpaceRetain(*(a3 + 1));
  *(a1 + 152) = v9;
  *(a1 + 160) = CGColorSpaceGetNumberOfComponents(v9);
  *(a1 + 168) = CGColorSpaceGetModel(v9);
  v10 = *(a1 + 144);
  *(a1 + 144) = *a2;
  if (v10)
  {
    free(v10);
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  return a1;
}

uint64_t re::anonymous namespace::DeviceOutputAllocator::outputAllocate(re::_anonymous_namespace_::DeviceOutputAllocator *this, uint64_t a2, unint64_t a3, unint64_t a4, at_size_t a5)
{
  z = a5.z;
  v6 = *&a5.x;
  v15 = *(this + 1);
  v16 = @"compressTextureWithImageBuffer staging buffer";
  v17[0] = 0;
  v17[1] = 0;
  v18 = 1;
  v19 = 0;
  v20 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  CFRetain(@"compressTextureWithImageBuffer staging buffer");
  re::ObjCObject::operator=(this + 2, &v15);
  *(this + 3) = @"compressTextureWithImageBuffer staging buffer";
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::operator=(this + 32, v17);
  re::DynamicArray<BOOL>::operator=(this + 152, v21);
  *(this + 24) = v24;
  *(this + 100) = v25;
  if ((*(this + 208) & 1) == 0)
  {
    if ((v26 & 1) == 0)
    {
      goto LABEL_7;
    }

    *(this + 208) = 1;
LABEL_6:
    *(this + 216) = v27;
    *(this + 29) = v28;
    goto LABEL_7;
  }

  if (v26)
  {
    goto LABEL_6;
  }

  *(this + 208) = 0;
LABEL_7:
  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v15);
  v15 = v6;
  v16 = HIDWORD(v6);
  v17[0] = z;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v11 = re::internal::TextureInMetalBuffers::allocate(this + 16, a2, a3, a4, 0, &v15, 1uLL, &v13);
  std::__tree<unsigned long long>::destroy(&v13, v14[0]);
  return v11;
}

uint64_t re::anonymous namespace::DeviceOutputAllocator::outputBuffer(re::_anonymous_namespace_::DeviceOutputAllocator *this)
{
  if ((*(this + 208) & 1) == 0)
  {
    re::internal::TextureInMetalBuffers::createTextureData((this + 16), 1);
  }

  return *(this + 29);
}

uint64_t *std::unique_ptr<re::anonymous namespace::vImageBufferStorage>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    CGColorSpaceRelease(*(v2 + 152));
    v3 = *(v2 + 144);
    *(v2 + 144) = 0;
    *(v2 + 152) = 0;
    if (v3)
    {
      free(v3);
    }

    if (*(v2 + 104))
    {
      CGImageBlockSetRelease();
      *(v2 + 104) = 0;
      *(v2 + 120) = 0;
    }

    JUMPOUT(0x1E6906520);
  }

  return result;
}

uint64_t re::anonymous namespace::MetalCompression::outputBuffer(re::_anonymous_namespace_::MetalCompression *this)
{
  if ((*(this + 256) & 1) == 0)
  {
    re::internal::TextureInMetalBuffers::createTextureData((this + 64), 1);
  }

  return *(this + 35);
}

void re::anonymous namespace::MetalCompression::updateSource(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  *(a1 + 568) = *(a3 + 16);
  *(a1 + 552) = v6;
  v7 = *(a1 + 16);
  if (*(v7 + 8))
  {
    v14 = std::__throw_bad_variant_access[abi:nn200100]();
    return;
  }

  re::internal::copyTextureSliceToBuffer(v35, *(a1 + 288), v7, a3, *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if (v35[0])
  {
    memset(v15, 0, sizeof(v15));
    v16 = 1;
    v17 = 0;
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v22 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    re::Result<re::internal::TextureInMetalBuffers,re::DynamicString>::swapValue(&v27, v35, v15);
    re::ObjCObject::operator=((a1 + 328), &v27);
    *(a1 + 336) = v28;
    re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::operator=(a1 + 344, &v28 + 1);
    re::DynamicArray<BOOL>::operator=(a1 + 464, v30);
    *(a1 + 504) = v30[5];
    *(a1 + 512) = v31;
    if (*(a1 + 520))
    {
      if ((v32 & 1) == 0)
      {
        *(a1 + 520) = 0;
LABEL_10:
        re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v27);
        re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v15);
        if ((*(a1 + 520) & 1) == 0)
        {
          re::internal::TextureInMetalBuffers::createTextureData((a1 + 328), 1);
        }

        v12 = *a2;
        v11 = a2[1];
        v13 = *(a1 + 560);
        *(a1 + 296) = *(a1 + 544);
        *(a1 + 304) = v11;
        *(a1 + 312) = v12;
        *(a1 + 320) = v13;
        *a4 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      if ((v32 & 1) == 0)
      {
        goto LABEL_10;
      }

      *(a1 + 520) = 1;
    }

    *(a1 + 528) = v33;
    *(a1 + 544) = v34;
    goto LABEL_10;
  }

  re::DynamicString::DynamicString(&v27, &v36);
  *a4 = 0;
  v10 = v29;
  *(a4 + 8) = v27;
  *(a4 + 32) = v10;
  *(a4 + 16) = v28;
LABEL_13:
  if (v35[0] == 1)
  {
    re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(&v36);
  }

  else if (v36)
  {
    if (v37)
    {
      (*(*v36 + 40))();
    }
  }
}

__n128 re::anonymous namespace::MetalCompression::backingMetalBuffer@<Q0>(re::_anonymous_namespace_::MetalCompression *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 8);
  v5 = *(this + 9);
  *a2 = v4;
  *(a2 + 8) = v5;
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(a2 + 16, this + 10);
  re::DynamicArray<BOOL>::DynamicArray(a2 + 136, this + 25);
  *(a2 + 176) = *(this + 30);
  *(a2 + 184) = *(this + 124);
  v7 = *(this + 256);
  *(a2 + 192) = v7;
  if (v7 == 1)
  {
    *(a2 + 216) = *(this + 35);
    result = *(this + 264);
    *(a2 + 200) = result;
  }

  return result;
}

BOOL re::anonymous namespace::MetalCompression::isValid(re::_anonymous_namespace_::MetalCompression *this)
{
  if ((*(this + 256) & 1) == 0)
  {
    re::internal::TextureInMetalBuffers::createTextureData((this + 64), 1);
  }

  return *(this + 35) != 0;
}

uint64_t re::anonymous namespace::MetalCompression::length(re::_anonymous_namespace_::MetalCompression *this)
{
  if ((*(this + 256) & 1) == 0)
  {
    re::internal::TextureInMetalBuffers::createTextureData((this + 64), 1);
  }

  return *(this + 34);
}

BOOL non-virtual thunk tore::anonymous namespace::MetalCompression::isValid(uint64_t a1)
{
  if ((*(a1 + 248) & 1) == 0)
  {
    re::internal::TextureInMetalBuffers::createTextureData((a1 + 56), 1);
  }

  return *(a1 + 272) != 0;
}

uint64_t non-virtual thunk tore::anonymous namespace::MetalCompression::length(uint64_t a1)
{
  if ((*(a1 + 248) & 1) == 0)
  {
    re::internal::TextureInMetalBuffers::createTextureData((a1 + 56), 1);
  }

  return *(a1 + 264);
}

__n128 non-virtual thunk tore::anonymous namespace::MetalCompression::backingMetalBuffer@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *a2 = v4;
  *(a2 + 8) = v5;
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(a2 + 16, (a1 + 72));
  re::DynamicArray<BOOL>::DynamicArray(a2 + 136, (a1 + 192));
  *(a2 + 176) = *(a1 + 232);
  *(a2 + 184) = *(a1 + 240);
  v7 = *(a1 + 248);
  *(a2 + 192) = v7;
  if (v7 == 1)
  {
    result = *(a1 + 256);
    *(a2 + 200) = result;
    *(a2 + 216) = *(a1 + 272);
  }

  return result;
}

void re::anonymous namespace::BaseCompressionSource::backingMetalBuffer(uint64_t a1@<X8>)
{
  *(a1 + 32) = 1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
}

void non-virtual thunk tore::anonymous namespace::BaseCompressionSource::backingMetalBuffer(uint64_t a1@<X8>)
{
  *(a1 + 32) = 1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
}

int8x16_t re::anonymous namespace::CPUCompression::updateSource@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, __int128 *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a3;
  *(a1 + 136) = *(a3 + 2);
  *(a1 + 120) = v6;
  v7 = *(a1 + 16);
  if (*(v7 + 2) != 1)
  {
LABEL_5:
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v8 = *(a1 + 24);
  if (*(*v7 + 48) <= v8)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_5;
  }

  v10 = *(*(*v7 + 64) + 40 * v8 + 32) + a2->i64[1] * *(a3 + 1) * (*(a1 + 32) + *(a1 + 40));
  re::TextureData::textureType(v7);
  v11 = *(a1 + 128);
  *(a1 + 88) = v10;
  result = vextq_s8(*a2, *a2, 8uLL);
  *(a1 + 96) = result;
  *(a1 + 112) = v11;
  *a4 = 1;
  return result;
}

uint64_t re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::copy(a1, a2);
        v5 = *(a1 + 16);
LABEL_16:
        *(a1 + 16) = v5 + 2;
        return a1;
      }

      v7 = *(a1 + 8);
      *(a1 + 8) = 0;
      v5 = *(a1 + 16);
      if (v5)
      {
        v8 = (a1 + 24);
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v8 = *(a1 + 32);
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      v9 = 96 * v7;
      do
      {
        if (*v8)
        {

          *v8 = 0;
        }

        v8 += 12;
        v9 -= 96;
      }

      while (v9);
      v5 = *(a1 + 16);
      goto LABEL_16;
    }

    if (v4)
    {
      v6 = a2[1];
      *a1 = v4;
      re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::setCapacity(a1, v6);
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::anonymous namespace::doVImageScale(uint64_t result, vImage_Buffer *src, const vImage_Buffer *a3, void *tempBuffer, uint64_t flags)
{
  switch(result)
  {
    case 0:
      re::internal::assertLog(4, src, a3, tempBuffer, flags, "assertion failure: '%s' (%s:line %i) Invalid vImageScale_* variant", "!Unreachable code", "doVImageScale", 3241, v5, v6);
      result = _os_crash();
      __break(1u);
      break;
    case 1:

      result = vImageScale_Planar8(src, a3, tempBuffer, flags);
      break;
    case 2:

      result = vImageScale_Planar16S(src, a3, tempBuffer, flags);
      break;
    case 3:

      result = vImageScale_Planar16U(src, a3, tempBuffer, flags);
      break;
    case 4:

      result = vImageScale_PlanarF(src, a3, tempBuffer, flags);
      break;
    case 5:

      result = vImageScale_ARGB8888(src, a3, tempBuffer, flags);
      break;
    case 6:

      result = vImageScale_ARGB16U(src, a3, tempBuffer, flags);
      break;
    case 7:

      result = vImageScale_ARGB16S(src, a3, tempBuffer, flags);
      break;
    case 8:

      result = vImageScale_ARGBFFFF(src, a3, tempBuffer, flags);
      break;
    case 9:

      result = vImageScale_Planar16F(src, a3, tempBuffer, flags);
      break;
    case 10:

      result = vImageScale_ARGB16F(src, a3, tempBuffer, flags);
      break;
    case 11:

      result = vImageScale_CbCr8(src, a3, tempBuffer, flags);
      break;
    case 12:

      result = vImageScale_CbCr16U(src, a3, tempBuffer, flags);
      break;
    case 13:

      result = vImageScale_XRGB2101010W(src, a3, tempBuffer, flags);
      break;
    default:
      return result;
  }

  return result;
}

BOOL re::anonymous namespace::BasicAppendingOutputAllocator::outputAllocate(re::_anonymous_namespace_::BasicAppendingOutputAllocator *this, uint64_t a2, unint64_t a3, unint64_t a4, at_size_t a5)
{
  v6 = *(this + 1);
  v7 = *(v6 + 16);
  v8 = v7 + a2;
  re::DynamicArray<BOOL>::resize(v6, v7 + a2);
  v9 = *(this + 1);
  *(this + 2) = *(v9 + 32) + v7;
  return *(v9 + 16) == v8;
}

uint64_t std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_0,std::allocator<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0BFF8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_0,std::allocator<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 8);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v5);
  Model = CGColorSpaceGetModel(v5);
  v8 = *(a3 + 40);
  *(a3 + 40) = v5;
  *(a3 + 48) = NumberOfComponents;
  *(a3 + 56) = Model;
  CGColorSpaceRelease(v8);
  *(a3 + 8) = **(a1 + 8);
}

uint64_t std::__function::__func<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_0,std::allocator<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_1,std::allocator<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_1>,void ()(re::TextureImportData::ImportReport &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0C088;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_1,std::allocator<re::convertCPUTextureColorSpace(re::ColorGamut,re::TextureImportData const&)::$_1>,void ()(re::TextureImportData::ImportReport &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::TextureImportData::ImportReport &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_0,std::allocator<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0C118;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_0,std::allocator<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  ComponentCount = re::getComponentCount();
  v9 = *(a1 + 24);
  v10 = **(a1 + 16);
  *a3 = v10;
  *(a3 + 4) = v10 * ComponentCount;
  if (v10 == 16)
  {
    v11 = 4352;
  }

  else
  {
    v11 = 8448;
  }

  *(a3 + 16) = *(a3 + 16) & 0xFFFFCFFF | v11;
  if (v10 == 16)
  {
    v12 = 65;
  }

  else
  {
    v12 = 105;
  }

  if (v10 == 16)
  {
    v13 = 115;
  }

  else
  {
    v13 = 125;
  }

  if (v10 == 16)
  {
    v14 = 25;
  }

  else
  {
    v14 = 55;
  }

  if (ComponentCount != 1)
  {
    v14 = v13;
  }

  if (ComponentCount == 2)
  {
    v14 = v12;
  }

  *a4 = v14;
  v15 = *v9;
  if (*v9)
  {
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(*v9);
    Model = CGColorSpaceGetModel(v15);
    v18 = *(a2 + 40);
    *(a2 + 40) = v15;
    *(a2 + 48) = NumberOfComponents;
    *(a2 + 56) = Model;
    CGColorSpaceRelease(v18);
    v19 = *(a1 + 32);
    *(a2 + 8) = **(a1 + 24);
    v20 = *v19;
    v21 = CGColorSpaceGetNumberOfComponents(*v19);
    v22 = CGColorSpaceGetModel(v20);
    v23 = *(a3 + 40);
    *(a3 + 40) = v20;
    *(a3 + 48) = v21;
    *(a3 + 56) = v22;
    CGColorSpaceRelease(v23);
    *(a3 + 8) = **(a1 + 32);
  }
}

uint64_t std::__function::__func<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_0,std::allocator<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_1,std::allocator<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_1>,void ()(re::TextureImportData::ImportReport &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0C198;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_1,std::allocator<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_1>,void ()(re::TextureImportData::ImportReport &)>::operator()(uint64_t a1, id *this)
{
  v2 = *this;
  *this |= 0x40u;
  if (**(a1 + 8))
  {
    *this = v2 | 0x50;
    re::TextureImportData::ImportReport::setColorSpace(this, **(a1 + 8));
  }
}

uint64_t std::__function::__func<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_1,std::allocator<re::convertCPUTextureToFloat(re::TextureImportData const&,unsigned long)::$_1>,void ()(re::TextureImportData::ImportReport &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_0,std::allocator<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0C218;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_0,std::allocator<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  ComponentCount = re::getComponentCount();
  *a3 = 8;
  *(a3 + 4) = 8 * ComponentCount;
  if (re::getComponentCount() == 1)
  {
    v9 = 11;
  }

  else
  {
    v9 = 71;
  }

  *a4 = v9;
  *(a3 + 16) &= 0xFFFFCEFF;
  v10 = *(a1 + 16);
  v11 = *v10;
  if (*v10)
  {
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(*v10);
    Model = CGColorSpaceGetModel(v11);
    v14 = *(a2 + 40);
    *(a2 + 40) = v11;
    *(a2 + 48) = NumberOfComponents;
    *(a2 + 56) = Model;
    CGColorSpaceRelease(v14);
    v15 = *(a1 + 24);
    *(a2 + 8) = **(a1 + 16);
    v16 = *v15;
    v17 = CGColorSpaceGetNumberOfComponents(*v15);
    v18 = CGColorSpaceGetModel(v16);
    v19 = *(a3 + 40);
    *(a3 + 40) = v16;
    *(a3 + 48) = v17;
    *(a3 + 56) = v18;
    CGColorSpaceRelease(v19);
    *(a3 + 8) = **(a1 + 24);
  }
}

uint64_t std::__function::__func<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_0,std::allocator<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_0>,void ()(re::anonymous namespace::vImageFormatStorage &,re::anonymous namespace::vImageFormatStorage &,re::mtl::PixelFormat &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_1,std::allocator<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_1>,void ()(re::TextureImportData::ImportReport &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0C298;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_1,std::allocator<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_1>,void ()(re::TextureImportData::ImportReport &)>::operator()(uint64_t a1, id *this)
{
  *this |= 0x10u;
  re::TextureImportData::ImportReport::setColorSpace(this, **(a1 + 8));
  *this |= 0x40u;
}

uint64_t std::__function::__func<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_1,std::allocator<re::convertFloatCPUTextureTo8Unorm_sRGB(re::TextureImportData const&)::$_1>,void ()(re::TextureImportData::ImportReport &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::addPropertyToGeomModelDescriptor(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, const char *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v12 = a1;
  v68 = a2;
  v13 = a3;
  v14 = [v12 type];
  v15 = *MEMORY[0x1E69DEDC0];

  if (v14 == v15)
  {
    v31 = 8;
LABEL_9:
    v32 = 8;
    goto LABEL_15;
  }

  v16 = [v12 type];
  v17 = *MEMORY[0x1E69DEDD0];

  if (v16 == v17)
  {
    v31 = 11;
    v32 = 12;
    goto LABEL_15;
  }

  v18 = [v12 type];
  v19 = *MEMORY[0x1E69DEDD8];

  if (v18 == v19)
  {
    v31 = 10;
    v32 = 16;
    goto LABEL_15;
  }

  v20 = [v12 type];
  v21 = *MEMORY[0x1E69DEDE8];

  if (v20 == v21)
  {
    v31 = 6;
    v32 = 4;
    goto LABEL_15;
  }

  v22 = [v12 type];
  v23 = *MEMORY[0x1E69DEDB0];

  if (v22 == v23)
  {
    v31 = 7;
    goto LABEL_9;
  }

  v24 = [v12 type];
  v25 = *MEMORY[0x1E69DEDF8];

  if (v24 == v25)
  {
    v32 = 4;
    v31 = 4;
LABEL_15:
    v33 = [v12 metadataWithKey:@"elementSize"];
    v34 = v33;
    v66 = a4;
    if (v33)
    {
      v35 = [v33 intValue] == 1;
    }

    else
    {
      v35 = 1;
    }

    v36 = 4;
    if (!a6 && v35)
    {
      v37 = v31;
      v38 = v13;
      v39 = [v12 metadataWithKey:@"interpolation"];
      v40 = v39;
      if (v39)
      {
        v41 = [v39 stringValue];

        v38 = v41;
      }

      if ([v38 isEqualToString:@"vertex"] & 1) != 0 || (objc_msgSend(v38, "isEqualToString:", @"varying"))
      {
        v36 = 1;
      }

      else if ([v38 isEqualToString:@"faceVarying"])
      {
        v36 = 3;
      }

      else if ([v38 isEqualToString:@"constant"])
      {
        v36 = 0;
      }

      else if ([v38 isEqualToString:@"uniform"])
      {
        v36 = 2;
      }

      else
      {
        v36 = 4;
      }

      v31 = v37;
    }

    v42 = v13;
    v43 = [v12 data];
    v44 = [v43 dataNoCopy];
    v45 = [v44 copy];

    if (!v43 || !v45)
    {
      v49 = "No values specified for attribute.";
      goto LABEL_31;
    }

    v47 = [v45 length];
    v48 = [v43 arraySize];
    if (v47 < v48 * v32)
    {
      v49 = "Skipping attribute because the value buffer is malformed.";
LABEL_31:
      v50 = v76;
      v51 = v77;
      v52 = v78;
      *a7 = 0;
      *(a7 + 8) = 100;
      *(a7 + 16) = re::AssetErrorCategory(void)::instance;
      *(a7 + 24) = v50;
      *(a7 + 40) = v51;
      *(a7 + 48) = v52;
      v30 = v68;
LABEL_53:

      v13 = v42;
      goto LABEL_54;
    }

    *&v76 = v45;
    BYTE8(v76) = v31;
    v77 = [v43 arraySize];
    v78 = 0;
    v79 = v32;
    v30 = v68;
    v53 = [v68 data];
    v54 = [v53 dataNoCopy];
    v65 = [v54 copy];

    v71 = 0;
    v72 = -1;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    if (v68 && v53)
    {
      v56 = [v65 length];
      v57 = [v53 arraySize];
      if (v56 < 4 * v57)
      {
        v58 = v69;
        v59 = v70;
        *a7 = 0;
        *(a7 + 8) = 100;
        *(a7 + 16) = re::AssetErrorCategory(void)::instance;
        *(a7 + 24) = v58;
        *(a7 + 40) = v59;
        v60 = v65;
LABEL_52:

        goto LABEL_53;
      }

      v73 = [v53 arraySize];
      v75 = 4;
      v72 = 5;
      v55 = re::ObjCObject::operator=(&v71, v65);
    }

    v61 = a5;
    if (!a5)
    {
      v64 = [v12 name];
      v63 = [v64 stringValue];
      v55 = [v63 UTF8String];
      v61 = v55;
    }

    if (v53)
    {
      v62 = &v71;
    }

    else
    {
      v62 = 0;
    }

    re::GeomModelDescriptor::setAttribute(v66, &v69, v36, &v76, v62, a7);
    v60 = v65;
    if (v69)
    {
      if (BYTE8(v69))
      {
        (*(*v69 + 40))();
      }

      v69 = 0u;
      v70 = 0u;
    }

    if (!a5)
    {
    }

    goto LABEL_52;
  }

  v27 = v76;
  v28 = v77;
  v29 = v78;
  *a7 = 0;
  *(a7 + 8) = 100;
  *(a7 + 16) = re::AssetErrorCategory(void)::instance;
  *(a7 + 24) = v27;
  *(a7 + 40) = v28;
  *(a7 + 48) = v29;
  v30 = v68;
LABEL_54:
}

void re::addPropertyToGeomModelDescriptorHelper(uint64_t a1, void *a2, void *a3, void *a4, void *a5, const char *a6, int a7)
{
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = [v14 name];
  v17 = [v16 stringValue];
  v19 = [v17 stringByAppendingString:@":indices"];

  v18 = [v15 property:v19];

  re::addPropertyToGeomModelDescriptor(v14, v18, v13, a5, a6, a7, a1);
}

id re::primaryUVSetForMesh(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 property:@"primvars:st"];
  v3 = v2;
  v4 = MEMORY[0x1E69DEDC0];
  if (v2 && ([v2 type], v5 = objc_claimAutoreleasedReturnValue(), v6 = *v4, v5, v5 == v6))
  {
    v15 = v3;
  }

  else
  {
    v20 = v1;
    [v1 properties];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v24 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v22;
      v12 = *MEMORY[0x1E69DEEC0];
      v13 = *v4;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v15 = [v7 objectForKey:*(*(&v21 + 1) + 8 * i)];
          v16 = [v15 role];

          if (v16 == v12)
          {

            goto LABEL_17;
          }

          v17 = [v15 type];

          if (v17 == v13)
          {
            v18 = v15;

            v10 = v18;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }

    v10 = v10;
    v15 = v10;
LABEL_17:

    v1 = v20;
  }

  return v15;
}

void re::addSkeletonBindingsAsAttributesToModelDescriptor(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v134 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 inheritedProperty:@"primvars:skel:jointWeights"];
  v9 = [v7 inheritedProperty:@"primvars:skel:jointIndices"];
  if (v8)
  {
    v10 = [v8 data];
    v11 = v10;
    if (v10 && v9)
    {
      v12 = [v9 data];

      if (v12)
      {
        v13 = [v8 metadataWithKey:@"elementSize"];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 intValue];
        }

        else
        {
          v15 = 1;
        }

        v80 = v15;
        v82 = v15;
        v16 = a1[2] * v15;
        v17 = [v8 data];
        v18 = [v17 dataNoCopy];
        if ([v18 length] < 4 * v16)
        {

LABEL_131:
          goto LABEL_132;
        }

        v78 = v14;
        v79 = a4;
        v76 = a3;
        v77 = a1;
        v19 = [v9 data];
        v20 = [v19 dataNoCopy];
        v21 = [v20 length];

        if (v21 < 4 * v16)
        {
          goto LABEL_131;
        }

        v22 = [v9 metadataWithKey:@"elementSize"];
        v23 = v22;
        v24 = v22 ? [v22 intValue] : 1;

        if (v24 != v82)
        {
          goto LABEL_131;
        }

        v25 = [v8 metadataWithKey:@"interpolation"];
        v26 = [v25 stringValue];
        v27 = [v26 isEqualToString:@"constant"];

        v28 = [v9 metadataWithKey:@"interpolation"];
        v29 = [v28 stringValue];
        v30 = [v29 isEqualToString:@"constant"];

        if ((v27 & 1) == 0)
        {
          v31 = [v8 data];
          v32 = [v31 arraySize];

          if (v32 != v16)
          {
            goto LABEL_131;
          }
        }

        if ((v30 & 1) == 0)
        {
          v33 = [v9 data];
          v34 = [v33 arraySize];

          if (v34 != v16)
          {
            goto LABEL_131;
          }
        }

        if (v27)
        {
          v73 = v30;
          v71 = [v8 data];
          v70 = [v71 dataNoCopy];
          v35 = [v70 bytes];
          v118 = 0;
          v117 = 0;
          v119 = 0;
          if (v16)
          {
            v37 = 0;
            v38 = 0;
            v39 = 4 * v82;
            do
            {
              v40 = v118;
              if (v118 <= v38)
              {
                goto LABEL_134;
              }

              v36 = memcpy((v119 + v37), v35, v39);
              v38 += v82;
              v37 += v39;
            }

            while (v38 < v16);
          }

          v99 = v119;
          v100 = v118;
          *v131 = 0;
          *&v131[8] = 0;
          v40 = v77;
          re::GeomModelDescriptor::setAttribute<float,unsigned int>(v77, &v123, 4, &v99, v131, v114);
          if ((v114[0] & 1) == 0 && v115)
          {
            if (BYTE8(v115))
            {
              (*(*v115 + 40))();
            }

            v116 = 0u;
            v115 = 0u;
          }

          v30 = v73;
          if (*&v123.f64[0] && (LOBYTE(v123.f64[1]) & 1) != 0)
          {
            (*(**&v123.f64[0] + 40))();
          }

          if (v117 && v118)
          {
            (*(*v117 + 40))();
          }
        }

        else
        {
          v40 = v77;
          re::addPropertyToGeomModelDescriptorHelper(v120, v7, v8, @"constant", v77, "skinnedAnimationWeights", 1);
          if ((v120[0] & 1) == 0 && v121)
          {
            if (BYTE8(v121))
            {
              (*(*v121 + 40))();
            }

            v122 = 0u;
            v121 = 0u;
          }
        }

        if (v30)
        {
          v74 = [v9 data];
          v72 = [v74 dataNoCopy];
          v35 = [v72 bytes];
          v118 = 0;
          v117 = 0;
          v119 = 0;
          if (v16)
          {
            v42 = 0;
            v38 = 0;
            v43 = 4 * v82;
            while (1)
            {
              v40 = v118;
              if (v118 <= v38)
              {
                break;
              }

              v41 = memcpy((v119 + v42), v35, v43);
              v38 += v82;
              v42 += v43;
              if (v38 >= v16)
              {
                goto LABEL_47;
              }
            }

LABEL_135:
            v99 = 0;
            v126 = 0u;
            v127 = 0u;
            v124 = 0u;
            v125 = 0u;
            v123 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v131 = 136315906;
            *&v131[4] = "operator[]";
            *&v131[12] = 1024;
            *&v131[14] = 468;
            *&v131[18] = 2048;
            *&v131[20] = v38;
            v132 = 2048;
            v133 = v40;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_136:
            v94 = 0;
            v126 = 0u;
            v127 = 0u;
            v124 = 0u;
            v125 = 0u;
            v123 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v131 = 136315906;
            *&v131[4] = "operator[]";
            *&v131[12] = 1024;
            *&v131[14] = 468;
            *&v131[18] = 2048;
            *&v131[20] = v14;
            v132 = 2048;
            v133 = v35;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_137:
            v94 = 0;
            v126 = 0u;
            v127 = 0u;
            v124 = 0u;
            v125 = 0u;
            v123 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v131 = 136315906;
            *&v131[4] = "operator[]";
            *&v131[12] = 1024;
            *&v131[14] = 468;
            *&v131[18] = 2048;
            *&v131[20] = v14;
            v132 = 2048;
            v133 = v35;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

LABEL_47:
          v99 = v119;
          v100 = v118;
          *v131 = 0;
          *&v131[8] = 0;
          v40 = v77;
          re::GeomModelDescriptor::setAttribute<int,unsigned int>(v77, &v123, 4, &v99, v131, v108);
          v44 = v80;
          if ((v108[0] & 1) == 0 && v109)
          {
            if (BYTE8(v109))
            {
              (*(*v109 + 40))();
            }

            v110 = 0u;
            v109 = 0u;
          }

          if (*&v123.f64[0] && (LOBYTE(v123.f64[1]) & 1) != 0)
          {
            (*(**&v123.f64[0] + 40))();
          }

          if (v117 && v118)
          {
            (*(*v117 + 40))();
          }
        }

        else
        {
          re::addPropertyToGeomModelDescriptorHelper(v111, v7, v9, @"constant", v40, "skinnedAnimationJointIndices", 1);
          v44 = v80;
          if ((v111[0] & 1) == 0)
          {
            v45 = v112;
            if (v112)
            {
              if (BYTE8(v112))
              {
                v45 = (*(*v112 + 40))();
              }

              v113 = 0u;
              v112 = 0u;
            }
          }
        }

        v35 = v40[2];
        v118 = 0;
        v117 = 0;
        v119 = 0;
        if (!v35)
        {
LABEL_68:
          v99 = v119;
          v100 = v118;
          *v131 = 0;
          *&v131[8] = 0;
          re::GeomModelDescriptor::setAttribute<int,unsigned int>(v40, &v123, 4, &v99, v131, v105);
          if ((v105[0] & 1) == 0 && v106)
          {
            if (BYTE8(v106))
            {
              (*(*v106 + 40))();
            }

            v107 = 0u;
            v106 = 0u;
          }

          if (*&v123.f64[0] && (LOBYTE(v123.f64[1]) & 1) != 0)
          {
            (*(**&v123.f64[0] + 40))();
          }

          if (v117 && v118)
          {
            (*(*v117 + 40))();
          }

          v50 = [v7 inheritedProperty:@"primvars:skel:geomBindTransform"];
          v118 = 0;
          v117 = 0;
          v119 = 0;
          if (v50 && ([(_anonymous_namespace_ *)v50 data], v51 = objc_claimAutoreleasedReturnValue(), v51, v51))
          {
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            [(_anonymous_namespace_ *)v50 double4x4Value];
            v83 = vcvt_hight_f32_f64(vcvt_f32_f64(v123), v124);
            *_ZN2re10FixedArrayIDv4_fEixEm(v118, v119, 0) = v83;
            v84 = vcvt_hight_f32_f64(vcvt_f32_f64(v125), v126);
            *_ZN2re10FixedArrayIDv4_fEixEm(v118, v119, 1uLL) = v84;
            v85 = vcvt_hight_f32_f64(vcvt_f32_f64(v127), v128);
            *_ZN2re10FixedArrayIDv4_fEixEm(v118, v119, 2uLL) = v85;
            v86 = vcvt_hight_f32_f64(vcvt_f32_f64(v129), v130);
          }

          else
          {
            v52 = MEMORY[0x1E69E9B18];
            v87 = *MEMORY[0x1E69E9B18];
            *_ZN2re10FixedArrayIDv4_fEixEm(v118, v119, 0) = v87;
            v88 = v52[1];
            *_ZN2re10FixedArrayIDv4_fEixEm(v118, v119, 1uLL) = v88;
            v89 = v52[2];
            *_ZN2re10FixedArrayIDv4_fEixEm(v118, v119, 2uLL) = v89;
            v86 = v52[3];
          }

          v53 = _ZN2re10FixedArrayIDv4_fEixEm(v118, v119, 3uLL);
          *v53 = v86;
          v99 = v119;
          v100 = v118;
          *v131 = 0;
          *&v131[8] = 0;
          _ZN2re19GeomModelDescriptor12setAttributeIDv4_fjEENS_6ResultINS_4UnitENS_13DetailedErrorEEERKNS_13DynamicStringENS_17GeomAttributeRateERKNS_5SliceIT_EERKNSB_IT0_EE(v40, &v123, 4, &v99, v131, v102);
          if ((v102[0] & 1) == 0 && v103)
          {
            if (BYTE8(v103))
            {
              (*(*v103 + 40))();
            }

            v104 = 0u;
            v103 = 0u;
          }

          if (*&v123.f64[0] && (LOBYTE(v123.f64[1]) & 1) != 0)
          {
            (*(**&v123.f64[0] + 40))();
          }

          v54 = [v7 property:@"skel:joints"];
          v55 = v54;
          if (v54)
          {
            v56 = [v54 data];

            if (v56)
            {
              v81 = v50;
              v75 = v55;
              v57 = [v55 stringArray];
              v58 = [v57 count];
              v99 = 0;
              v100 = 0;
              v101 = 0;
              v59 = v58;
              v90 = v59;
              if (v59)
              {
                v14 = 0;
                do
                {
                  v61 = [v57 objectAtIndexedSubscript:v14];
                  v62 = [v61 UTF8String];
                  v63 = [v57 objectAtIndexedSubscript:v14];
                  v64 = [v63 length];
                  *v131 = 0;
                  *&v131[8] = &str_67;
                  v65 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v79 + 112, v131, (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v131 >> 31) ^ (*v131 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v131 >> 31) ^ (*v131 >> 1))) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v131 >> 31) ^ (*v131 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v131 >> 31) ^ (*v131 >> 1))) >> 27))) >> 31), &v123);
                  v66 = HIDWORD(v123.f64[1]);
                  v67 = *(v79 + 128);
                  if (v131[0])
                  {
                    if (v131[0])
                    {
                    }
                  }

                  *v131 = 0;
                  *&v131[8] = &str_67;

                  v35 = v100;
                  if (v66 == 0x7FFFFFFF)
                  {
                    if (v100 <= v14)
                    {
                      goto LABEL_136;
                    }

                    *(v101 + 4 * v14) = v14;
                  }

                  else
                  {
                    if (v100 <= v14)
                    {
                      goto LABEL_137;
                    }

                    *(v101 + 4 * v14) = *(v67 + 32 * v66 + 24);
                  }

                  ++v14;
                }

                while (v90 != v14);
              }

              v94 = v101;
              v95 = v100;
              *v131 = 0;
              *&v131[8] = 0;
              v40 = v77;
              re::GeomModelDescriptor::setAttribute<int,unsigned int>(v77, &v123, 4, &v94, v131, v96);
              if ((v96[0] & 1) == 0 && v97)
              {
                if (BYTE8(v97))
                {
                  (*(*v97 + 40))();
                }

                v98 = 0u;
                v97 = 0u;
              }

              if (*&v123.f64[0] && (LOBYTE(v123.f64[1]) & 1) != 0)
              {
                (*(**&v123.f64[0] + 40))();
              }

              v14 = v78;
              if (v99 && v100)
              {
                (*(*v99 + 40))();
              }

              v50 = v81;
              v55 = v75;
            }
          }

          memset(v131, 0, 24);
          v68 = *(v76 + 8) >> 1;
          v69 = memcpy(*&v131[16], *v76, *(v76 + 8));
          *(*&v131[16] + *(v76 + 8)) = 0;
          v94 = *&v131[16];
          v95 = *&v131[8];
          v99 = 0;
          v100 = 0;
          re::GeomModelDescriptor::setAttribute<unsigned short,unsigned int>(v40, &v123, 4, &v94, &v99, v91);
          if ((v91[0] & 1) == 0 && v92)
          {
            if (BYTE8(v92))
            {
              (*(*v92 + 40))();
            }

            v93 = 0u;
            v92 = 0u;
          }

          if (*&v123.f64[0] && (LOBYTE(v123.f64[1]) & 1) != 0)
          {
            (*(**&v123.f64[0] + 40))();
          }

          if (*v131 && *&v131[8])
          {
            (*(**v131 + 40))();
          }

          if (v117 && v118)
          {
            (*(*v117 + 40))();
          }

          goto LABEL_131;
        }

        v47 = 0;
        v38 = v118;
        v48 = v119;
        v49 = v44;
        while (v38 != v47)
        {
          *(v48 + 4 * v47) = v49;
          v49 += v44;
          if (v35 == ++v47)
          {
            goto LABEL_68;
          }
        }

        v99 = 0;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v123 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v131 = 136315906;
        *&v131[4] = "operator[]";
        *&v131[12] = 1024;
        *&v131[14] = 468;
        *&v131[18] = 2048;
        *&v131[20] = v38;
        v132 = 2048;
        v133 = v38;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_134:
        v99 = 0;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v123 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v131 = 136315906;
        *&v131[4] = "operator[]";
        *&v131[12] = 1024;
        *&v131[14] = 468;
        *&v131[18] = 2048;
        *&v131[20] = v38;
        v132 = 2048;
        v133 = v40;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_135;
      }
    }

    else
    {
    }
  }

LABEL_132:
}