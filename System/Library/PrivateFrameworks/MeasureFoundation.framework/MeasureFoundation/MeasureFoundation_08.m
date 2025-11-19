double static vImage_Buffer.scalePlanar8(srcImageBuffer:dstImageBuffer:scaleFactor:flags:tempBuffer:)@<D0>(void *a1@<X0>, vImagePixelCount a2@<X1>, int64_t a3@<X2>, int64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>, float a9@<S0>)
{
  sub_2583FD998(a1, a2, a3, a4, a5, a6, a7, v12, a9);
  result = *v12;
  v11 = v12[1];
  *a8 = v12[0];
  *(a8 + 16) = v11;
  *(a8 + 32) = v13;
  return result;
}

CGSize __swiftcall vImage_Buffer.getSize()()
{
  v2 = v1;
  v3 = v0;
  result.height = v3;
  result.width = v2;
  return result;
}

void *vImage_Buffer.fill(value:)(void *__c)
{
  v2 = *(v1 + 8);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    if ((v3 * v2) >> 64 == (v3 * v2) >> 63)
    {
      v4 = *v1;
      memset(*v1, __c, v3 * v2);
      return v4;
    }
  }

  __break(1u);
  return __c;
}

const void *vImage_Buffer.clone()(const void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2 * a4;
    if ((a2 * a4) >> 64 == (a2 * a4) >> 63)
    {
      v5 = result;
      v6 = malloc(a2 * a4);
      memcpy(v6, v5, v4);
      return v6;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall vImage_Buffer.printPixels(prefix:offsetValue:)(Swift::String prefix, Swift::Int offsetValue)
{
  v21 = v3;
  if (v3)
  {
    v6 = v5;
    if ((v5 & 0x8000000000000000) != 0)
    {
LABEL_21:
      __break(1u);
    }

    else
    {
      v7 = v4;
      v8 = v2;
      v23 = 0;
      v10 = 0;
      v11 = 0;
      v12 = MEMORY[0x277D83B88];
      v13 = MEMORY[0x277D83C10];
      v19 = v4;
      v20 = v5;
      do
      {
        if (!is_mul_ok(v11, v6))
        {
          goto LABEL_20;
        }

        v22 = v11;
        if (v10)
        {
        }

        if (v7)
        {
          v14 = v23;
          while ((v14 & 0x8000000000000000) == 0)
          {
            v15 = *(v8 + v14);
            v16 = v15 + offsetValue;
            if (__OFADD__(v15, offsetValue))
            {
              goto LABEL_19;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
            v17 = swift_allocObject();
            *(v17 + 16) = xmmword_25842CCB0;
            *(v17 + 56) = v12;
            *(v17 + 64) = v13;
            *(v17 + 32) = v16;
            v18 = sub_258428670();
            MEMORY[0x259C7DFF0](v18);

            ++v14;
            if (!--v7)
            {
              v7 = v19;
              v6 = v20;
              goto LABEL_4;
            }
          }

          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_4:
        sub_258428400();
        v11 = v22 + 1;
        v23 += v6;
        v10 = 1;
      }

      while (v22 + 1 != v21);
    }
  }
}

char *vImage_Buffer.draw(onto:offsetX:offsetY:bytesPerPixel:)(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a9)
  {
    v11 = (a5 * a7) >> 64 != (a5 * a7) >> 63;
    v12 = a10 * a7;
    v13 = (a10 * a7) >> 64 != (a10 * a7) >> 63;
    if (result)
    {
      v16 = 0;
      v17 = &result[a5 * a7];
      for (i = 0x8000000000000000; i; --i)
      {
        v19 = v16 + a6;
        if (__OFADD__(v16, a6))
        {
          goto LABEL_15;
        }

        v20 = v19 * a4;
        if ((v19 * a4) >> 64 != (v19 * a4) >> 63)
        {
          goto LABEL_16;
        }

        if (v11)
        {
          goto LABEL_17;
        }

        if (!a8)
        {
          goto LABEL_21;
        }

        v21 = v16 * a11;
        if ((v16 * a11) >> 64 != (v16 * a11) >> 63)
        {
          goto LABEL_18;
        }

        if (a10 < 0)
        {
          goto LABEL_19;
        }

        if (v13)
        {
          goto LABEL_20;
        }

        ++v16;
        result = memcpy(&v17[v20], (a8 + v21), v12);
        if (a9 == v16)
        {
          return result;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void vImage_Buffer.draw(onto:within:bytesPerPixel:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a12 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v13 = a12;
  Width = CGRectGetWidth(*&a2);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (Width < v13)
  {
    v13 = Width;
  }

  if (a11 < 0)
  {
    goto LABEL_47;
  }

  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  Height = CGRectGetHeight(v33);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (Height >= a11)
  {
    v25 = a11;
  }

  else
  {
    v25 = Height;
  }

  if (Height < 0)
  {
    goto LABEL_51;
  }

  if (!v25)
  {
    return;
  }

  v26 = 0;
  while (a1)
  {
    v34.origin.x = a2;
    v34.origin.y = a3;
    v34.size.width = a4;
    v34.size.height = a5;
    MinY = CGRectGetMinY(v34);
    if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (MinY <= -9.22337204e18)
    {
      goto LABEL_33;
    }

    if (MinY >= 9.22337204e18)
    {
      goto LABEL_34;
    }

    v28 = v26 + MinY;
    if (__OFADD__(v26, MinY))
    {
      goto LABEL_35;
    }

    v29 = v28 * a8;
    if ((v28 * a8) >> 64 != (v28 * a8) >> 63)
    {
      goto LABEL_36;
    }

    v35.origin.x = a2;
    v35.origin.y = a3;
    v35.size.width = a4;
    v35.size.height = a5;
    MinX = CGRectGetMinX(v35);
    if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_37;
    }

    if (MinX <= -9.22337204e18)
    {
      goto LABEL_38;
    }

    if (MinX >= 9.22337204e18)
    {
      goto LABEL_39;
    }

    v31 = MinX * a9;
    if ((MinX * a9) >> 64 != v31 >> 63)
    {
      goto LABEL_40;
    }

    if (!a10)
    {
      goto LABEL_53;
    }

    v32 = v26 * a13;
    if ((v26 * a13) >> 64 != (v26 * a13) >> 63)
    {
      goto LABEL_41;
    }

    if ((v13 * a9) >> 64 != (v13 * a9) >> 63)
    {
      goto LABEL_42;
    }

    ++v26;
    memcpy((a1 + v29 + v31), (a10 + v32), v13 * a9);
    if (v25 == v26)
    {
      return;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t static vImage_Buffer.wrap(ioSurface:planeIndex:srcRect:)@<X0>(__IOSurface *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  seed = 0;
  IOSurfaceLock(a1, 2u, &seed);
  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(a1, a2);
  WidthOfPlane = IOSurfaceGetWidthOfPlane(a1, a2);
  HeightOfPlane = IOSurfaceGetHeightOfPlane(a1, a2);
  BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(a1, a2);
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(a3 + 16);
  v15 = *(a3 + 24);
  v16 = *(a3 + 32);
  if (v16)
  {
    Width = WidthOfPlane;
  }

  else
  {
    v27.origin.x = v12;
    v27.origin.y = v13;
    v27.size.width = v14;
    v27.size.height = v15;
    Width = CGRectGetWidth(v27);
  }

  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (Width <= -1.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (Width >= 1.84467441e19)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v16)
  {
    Height = HeightOfPlane;
  }

  else
  {
    v28.origin.x = v12;
    v28.origin.y = v13;
    v28.size.width = v14;
    v28.size.height = v15;
    Height = CGRectGetHeight(v28);
  }

  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  if (Height <= -1.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (Height >= 1.84467441e19)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v16 & 1) == 0)
  {
    BytesPerElementOfPlane = IOSurfaceGetBytesPerElementOfPlane(a1, a2);
    if (v13 > -9.22337204e18)
    {
      if (v13 < 9.22337204e18)
      {
        v20 = v13 * BytesPerRowOfPlane;
        if ((v13 * BytesPerRowOfPlane) >> 64 == v20 >> 63)
        {
          if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v12 > -9.22337204e18)
            {
              if (v12 < 9.22337204e18)
              {
                v21 = v12 * BytesPerElementOfPlane;
                if ((v12 * BytesPerElementOfPlane) >> 64 == v21 >> 63)
                {
                  v22 = __OFADD__(v20, v21);
                  v23 = v20 + v21;
                  if (!v22)
                  {
                    BaseAddressOfPlane += v23;
                    goto LABEL_24;
                  }

LABEL_38:
                  __break(1u);
                }

LABEL_37:
                __break(1u);
                goto LABEL_38;
              }

LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_24:
  result = IOSurfaceUnlock(a1, 2u, &seed);
  *a4 = BaseAddressOfPlane;
  *(a4 + 8) = Height;
  *(a4 + 16) = Width;
  *(a4 + 24) = BytesPerRowOfPlane;
  *(a4 + 32) = 0;
  return result;
}

void static vImage_Buffer.wrap(mtlTexture:srcRect:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 buffer];
  if (!v6)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v9 = 0;
LABEL_30:
    *a3 = v16;
    *(a3 + 8) = v17;
    *(a3 + 16) = v18;
    *(a3 + 24) = v9;
    *(a3 + 32) = v6 == 0;
    return;
  }

  v7 = [a1 width];
  v8 = [a1 height];
  v9 = [a1 bufferBytesPerRow];
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  if (v14)
  {
    Width = v7;
  }

  else
  {
    v27.origin.x = v10;
    v27.origin.y = v11;
    v27.size.width = v12;
    v27.size.height = v13;
    Width = CGRectGetWidth(v27);
  }

  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (Width <= -1.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (Width >= 1.84467441e19)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v14)
  {
    Height = v8;
  }

  else
  {
    v28.origin.x = v10;
    v28.origin.y = v11;
    v28.size.width = v12;
    v28.size.height = v13;
    Height = CGRectGetHeight(v28);
  }

  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_34;
  }

  if (Height <= -1.0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (Height >= 1.84467441e19)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v20 = [swift_unknownObjectRetain() contents];
  v21 = v6;
  v22 = [a1 bufferOffset];
  swift_unknownObjectRelease();
  v16 = &v22[v20];
  if (v14)
  {
LABEL_29:
    v18 = Width;
    v17 = Height;
    goto LABEL_30;
  }

  if (!v7)
  {
    goto LABEL_37;
  }

  if (v9 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_46;
  }

  if (v11 <= -9.22337204e18)
  {
    goto LABEL_38;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v23 = v11 * v9;
  if ((v11 * v9) >> 64 != v23 >> 63)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v24 = v10 * (v9 / v7);
  if ((v10 * (v9 / v7)) >> 64 == v24 >> 63)
  {
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (!v25)
    {
      v16 += v26;
      goto LABEL_29;
    }

    goto LABEL_45;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void *static vImage_Buffer.makeTempBufferForScaleARGB(srcImageBuffer:is128Bit:scaleFactor:flags:)(void *a1, vImagePixelCount a2, int64_t a3, int64_t a4, char a5, uint64_t a6, float a7)
{
  v15 = *MEMORY[0x277D85DE8];
  src.data = a1;
  src.height = a2;
  src.width = a3;
  src.rowBytes = a4;
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (!a3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = roundf(a3 * a7);
  dest.data = 0;
  if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v7 <= -1.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v7 >= 1.8447e19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = v7;
  dest.width = v7;
  v9 = roundf(a2 * a7);
  if ((LODWORD(v9) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v9 <= -1.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 >= 1.8447e19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  dest.height = v9;
  if (v8 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((a4 / a3 * v8) >> 64 != (a4 / a3 * v8) >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  dest.rowBytes = a4 / a3 * v8;
  v10 = a6 | 0x80;
  if ((a5 & 1) == 0)
  {
    if ((a6 & 0x8000000000000000) == 0)
    {
      if (v10 <= 0xFFFFFFFFLL)
      {
        v11 = vImageScale_ARGB8888(&src, &dest, 0, v10);
        if (v11 < 1)
        {
          return 0;
        }

        return malloc(v11);
      }

LABEL_34:
      __break(1u);
    }

    goto LABEL_32;
  }

  if (a6 < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v10 > 0xFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = vImageScale_ARGBFFFF(&src, &dest, 0, v10);
  if (v11 < 1)
  {
    return 0;
  }

  return malloc(v11);
}

vImage_Error static vImage_Buffer.scaleARGB(srcImageBuffer:is128Bit:dstImageBuffer:srcRect:dstRect:flags:tempBuffer:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, int64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, void *a14)
{
  v56 = *MEMORY[0x277D85DE8];
  src.rowBytes = a4;
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  if (!a3)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v23 = *a11;
  v24 = *(a11 + 8);
  v25 = *(a11 + 16);
  v26 = *(a11 + 24);
  v27 = *(a11 + 32);
  if (v27)
  {
    Width = a3;
  }

  else
  {
    v57.origin.x = *a11;
    v57.origin.y = *(a11 + 8);
    v57.size.width = *(a11 + 16);
    v57.size.height = *(a11 + 24);
    Width = CGRectGetWidth(v57);
  }

  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_63;
  }

  if (Width <= -1.0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (Width >= 1.84467441e19)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  src.width = Width;
  if (v27)
  {
    Height = a2;
  }

  else
  {
    v58.origin.x = v23;
    v58.origin.y = v24;
    v58.size.width = v25;
    v58.size.height = v26;
    Height = CGRectGetHeight(v58);
  }

  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_66;
  }

  if (Height <= -1.0)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (Height >= 1.84467441e19)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  src.height = Height;
  v30 = 0.0;
  if ((v27 & 1) == 0)
  {
    v30 = v24;
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_69;
    }
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v31 = v30 * a4;
  if ((v30 * a4) >> 64 != v31 >> 63)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v32 = 0.0;
  if ((v27 & 1) == 0)
  {
    v32 = v23;
    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_73;
    }
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v33 = a4 / a3;
  v34 = v32 * v33;
  if ((v32 * v33) >> 64 != v34 >> 63)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v35 = __OFADD__(v31, v34);
  v36 = v31 + v34;
  if (v35)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (!a1)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
  }

  v37 = a10;
  dest.rowBytes = a10;
  src.data = (a1 + v36);
  v38 = *a12;
  v39 = *(a12 + 8);
  v40 = *(a12 + 16);
  v41 = *(a12 + 24);
  v42 = *(a12 + 32);
  if (v42)
  {
    v43 = a8;
  }

  else
  {
    v59.origin.x = *a12;
    v59.origin.y = *(a12 + 8);
    v59.size.width = *(a12 + 16);
    v59.size.height = *(a12 + 24);
    v43 = CGRectGetWidth(v59);
  }

  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_78;
  }

  if (v43 <= -1.0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v43 >= 1.84467441e19)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  dest.width = v43;
  if (v42)
  {
    v44 = a7;
  }

  else
  {
    v60.origin.x = v38;
    v60.origin.y = v39;
    v60.size.width = v40;
    v60.size.height = v41;
    v44 = CGRectGetHeight(v60);
  }

  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_81;
  }

  if (v44 <= -1.0)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v44 >= 1.84467441e19)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  dest.height = v44;
  v45 = 0.0;
  if ((v42 & 1) == 0)
  {
    v45 = v39;
    if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_84;
    }
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v45 >= 9.22337204e18)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v46 = v45 * a10;
  if ((v45 * a10) >> 64 != v46 >> 63)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v47 = 0.0;
  if ((v42 & 1) == 0)
  {
    v47 = v38;
    if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_88;
    }
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v47 >= 9.22337204e18)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v48 = v47 * v33;
  if ((v47 * v33) >> 64 != v48 >> 63)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v35 = __OFADD__(v46, v48);
  v49 = v46 + v48;
  if (v35)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (!a6)
  {
    goto LABEL_98;
  }

  dest.data = (a6 + v49);
  if (a5)
  {
    if ((a13 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(a13))
      {
        result = vImageScale_ARGBFFFF(&src, &dest, a14, a13);
        v51 = result;
        if (!result)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      goto LABEL_95;
    }

    goto LABEL_93;
  }

  if ((a13 & 0x8000000000000000) != 0)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (HIDWORD(a13))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  result = vImageScale_ARGB8888(&src, &dest, a14, a13);
  v51 = result;
  if (result)
  {
LABEL_59:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_25842CCB0;
    sub_258428FC0();

    v53 = sub_2584292B0();
    MEMORY[0x259C7DFF0](v53);

    *(v52 + 56) = MEMORY[0x277D837D0];
    *(v52 + 32) = 0xD00000000000001CLL;
    *(v52 + 40) = 0x8000000258438210;
    sub_2584293A0();

    a6 = 0;
    a7 = 0;
    a8 = 0;
    v37 = 0;
  }

LABEL_60:
  *a9 = a6;
  *(a9 + 8) = a7;
  *(a9 + 16) = a8;
  *(a9 + 24) = v37;
  *(a9 + 32) = v51 != 0;
  return result;
}

size_t static vImage_Buffer.diff(srcImageBuffer:dstImageBuffer:resultImageBuffer:)@<X0>(size_t result@<X0>, uint64_t a2@<X1>, size_t a3@<X2>, size_t a4@<X3>, uint64_t a5@<X4>, size_t *a6@<X8>, uint64_t a7)
{
  if (((a3 | a2) & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = result;
  if ((*(a7 + 32) & 1) == 0)
  {
    v14 = *(a7 + 16);
    v15 = *(a7 + 24);
    result = *a7;
    v13 = *(a7 + 8);
    goto LABEL_6;
  }

  result = a2 * a4;
  if ((a2 * a4) >> 64 == (a2 * a4) >> 63)
  {
    result = malloc(result);
    v13 = a2;
    v14 = a3;
    v15 = a4;
LABEL_6:
    v16 = 0;
    v17 = 0;
    if (!a2)
    {
LABEL_23:
      *a6 = result;
      a6[1] = v13;
      a6[2] = v14;
      a6[3] = v15;
      a6[4] = v17;
      a6[5] = v16;
      return result;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (v20 != (a2 & ~(a2 >> 63)))
    {
      v21 = v20 * a4;
      if ((v20 * a4) >> 64 != (v20 * a4) >> 63)
      {
        goto LABEL_27;
      }

      if (a3)
      {
        v22 = 0;
        v17 = v19;
        while (1)
        {
          v23 = v21 + v22;
          if (__OFADD__(v21, v22))
          {
            break;
          }

          v24 = *(a5 + v23);
          v25 = *(v12 + v23);
          *(result + v23) = (v24 - v25 + 255) >> 1;
          if (v24 - v25 >= 0)
          {
            v26 = (v24 - v25);
          }

          else
          {
            v26 = (v25 - v24);
          }

          v27 = __OFADD__(v17, v26);
          v17 += v26;
          if (v27)
          {
            goto LABEL_25;
          }

          if (v24 != v25)
          {
            v16 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              __break(1u);
              goto LABEL_23;
            }

            ++v18;
          }

          ++v22;
          v19 = v17;
          if (a3 == v22)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
        break;
      }

LABEL_8:
      if (++v20 == a2)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t vImage_Buffer.hash(into:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_2584293E0();
  }

  sub_2584293E0();
  return MEMORY[0x259C7ECE0](a2);
}

uint64_t vImage_Buffer.hashValue.getter(uint64_t a1)
{
  sub_2584293C0();
  sub_2584293E0();
  if (a1)
  {
    MEMORY[0x259C7ECE0](a1);
  }

  return sub_2584293F0();
}

uint64_t sub_2583FD474()
{
  v1 = *v0;
  sub_2584293C0();
  sub_2584293E0();
  if (v1)
  {
    MEMORY[0x259C7ECE0](v1);
  }

  return sub_2584293F0();
}

uint64_t sub_2583FD4D8()
{
  v1 = *v0;
  if (!*v0)
  {
    return sub_2584293E0();
  }

  sub_2584293E0();
  return MEMORY[0x259C7ECE0](v1);
}

uint64_t sub_2583FD520()
{
  v1 = *v0;
  sub_2584293C0();
  sub_2584293E0();
  if (v1)
  {
    MEMORY[0x259C7ECE0](v1);
  }

  return sub_2584293F0();
}

void sub_2583FD594(__CVBuffer *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
  if (!BaseAddressOfPlane)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    BytesPerRowOfPlane = 0;
LABEL_30:
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    *a4 = v18;
    *(a4 + 8) = v19;
    *(a4 + 16) = v20;
    *(a4 + 24) = BytesPerRowOfPlane;
    *(a4 + 32) = BaseAddressOfPlane == 0;
    return;
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, a2);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(a3 + 16);
  v15 = *(a3 + 24);
  v16 = *(a3 + 32);
  if (v16)
  {
    Width = WidthOfPlane;
  }

  else
  {
    v26.origin.x = v12;
    v26.origin.y = v13;
    v26.size.width = v14;
    v26.size.height = v15;
    Width = CGRectGetWidth(v26);
  }

  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (Width <= -1.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (Width >= 1.84467441e19)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v16)
  {
    Height = HeightOfPlane;
  }

  else
  {
    v27.origin.x = v12;
    v27.origin.y = v13;
    v27.size.width = v14;
    v27.size.height = v15;
    Height = CGRectGetHeight(v27);
  }

  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_34;
  }

  if (Height <= -1.0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (Height >= 1.84467441e19)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = BaseAddressOfPlane;
  if (v16)
  {
LABEL_29:
    v20 = Width;
    v19 = Height;
    goto LABEL_30;
  }

  if (!WidthOfPlane)
  {
    goto LABEL_37;
  }

  if (BytesPerRowOfPlane == 0x8000000000000000 && WidthOfPlane == -1)
  {
    goto LABEL_46;
  }

  if (v13 <= -9.22337204e18)
  {
    goto LABEL_38;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v22 = v13 * BytesPerRowOfPlane;
  if ((v13 * BytesPerRowOfPlane) >> 64 != v22 >> 63)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v23 = v12 * (BytesPerRowOfPlane / WidthOfPlane);
  if ((v12 * (BytesPerRowOfPlane / WidthOfPlane)) >> 64 == v23 >> 63)
  {
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (!v24)
    {
      v18 = &BaseAddressOfPlane[v25];
      goto LABEL_29;
    }

    goto LABEL_45;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void *_sSo13vImage_BufferV17MeasureFoundationE08makeTempB15ForScalePlanar803srcaB011scaleFactor5flagsSvSgAB_SfSitFZ_0(void *a1, vImagePixelCount a2, int64_t a3, int64_t a4, uint64_t a5, float a6)
{
  v13 = *MEMORY[0x277D85DE8];
  src.data = a1;
  src.height = a2;
  src.width = a3;
  src.rowBytes = a4;
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!a3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = roundf(a3 * a6);
  dest.data = 0;
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v6 >= 1.8447e19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v6;
  dest.width = v6;
  v8 = roundf(a2 * a6);
  if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 <= -1.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v8 >= 1.8447e19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  dest.height = v8;
  if (v7 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((a4 / a3 * v7) >> 64 != (a4 / a3 * v7) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  dest.rowBytes = a4 / a3 * v7;
  if (a5 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  if ((a5 | 0x80) > 0xFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  v9 = vImageScale_Planar8(&src, &dest, 0, a5 | 0x80);
  if (v9 < 1)
  {
    return 0;
  }

  else
  {
    return malloc(v9);
  }
}

uint64_t sub_2583FD998@<X0>(void *a1@<X0>, vImagePixelCount a2@<X1>, int64_t a3@<X2>, int64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>, float a9@<S0>)
{
  v27 = *MEMORY[0x277D85DE8];
  src.data = a1;
  src.height = a2;
  src.width = a3;
  src.rowBytes = a4;
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (!a3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = roundf(a3 * a9);
  if ((LODWORD(v10) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v10 <= -9.2234e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v10 >= 9.2234e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = roundf(a2 * a9);
  if ((LODWORD(v11) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v11 <= -9.2234e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v11 >= 9.2234e18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (*(a5 + 32))
  {
    v15 = v10;
    v16 = a4 / a3 * v10;
    if ((a4 / a3 * v10) >> 64 != v16 >> 63)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v17 = v11;
    if (((v15 | v11) & 0x8000000000000000) != 0)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    if ((v17 * v16) >> 64 != (v17 * v16) >> 63)
    {
      goto LABEL_36;
    }

    v18 = malloc(v17 * v16);
  }

  else
  {
    v18 = *a5;
    v17 = *(a5 + 8);
    v15 = *(a5 + 16);
    v16 = *(a5 + 24);
  }

  dest.data = v18;
  dest.height = v17;
  dest.width = v15;
  dest.rowBytes = v16;
  if ((a6 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  if (HIDWORD(a6))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = vImageScale_Planar8(&src, &dest, a7, a6);
  v20 = result;
  if (!result)
  {
    v23 = *&dest.data;
    v24 = *&dest.width;
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25842CCB0;
  sub_258428FC0();

  v22 = sub_2584292B0();
  MEMORY[0x259C7DFF0](v22);

  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 32) = 0xD00000000000001BLL;
  *(v21 + 40) = 0x8000000258436CA0;
  sub_2584293A0();

  v23 = 0uLL;
  if ((*(a5 + 32) & 1) == 0)
  {
    v24 = 0uLL;
    goto LABEL_23;
  }

  result = dest.data;
  if (dest.data)
  {
    result = MEMORY[0x259C7FB80](dest.data, -1, -1);
    v24 = 0uLL;
    v23 = 0uLL;
LABEL_23:
    *a8 = v23;
    *(a8 + 16) = v24;
    *(a8 + 32) = v20 != 0;
    return result;
  }

  __break(1u);
  return result;
}

void sub_2583FDC64(uint64_t a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  Width = CGRectGetWidth(*&a4);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (Width <= -1.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (Width >= 1.84467441e19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16.origin.x = a4;
  v16.origin.y = a5;
  v16.size.width = a6;
  v16.size.height = a7;
  Height = CGRectGetHeight(v16);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (Height <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (Height >= 1.84467441e19)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!a1)
  {
LABEL_30:
    __break(1u);
    return;
  }

  if (a5 <= -9.22337204e18)
  {
    goto LABEL_23;
  }

  if (a5 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((a5 * a2) >> 64 != (a5 * a2) >> 63)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((a4 * a3) >> 64 != (a4 * a3) >> 63)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }
}

unint64_t sub_2583FDE24()
{
  result = qword_27F929200[0];
  if (!qword_27F929200[0])
  {
    type metadata accessor for vImage_Buffer(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F929200);
  }

  return result;
}

uint64_t (*WeakRef.value.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2583FE718;
}

uint64_t sub_2583FDF44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_allocObject();
  v5 = a3(a1);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t WeakRef.init(_:)()
{
  v0 = sub_2583FE5D4();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WeakRef.__deallocating_deinit()
{
  MEMORY[0x259C7FC20](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2583FE048()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*HashableWeakRef.value.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2583FE128;
}

void sub_2583FE12C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t HashableWeakRef.init(_:)()
{
  v0 = sub_2583FE534();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2583FE1EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return (*(*(*(v3 + *MEMORY[0x277D84DE8] + 8) - 8) + 56))(a2, 1, 1);
  }

  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return (*(*(*(v3 + *MEMORY[0x277D84DE8] + 8) - 8) + 56))(a2, 0, 1);
}

uint64_t HashableWeakRef.__deallocating_deinit()
{
  MEMORY[0x259C7FC20](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t static HashableWeakRef.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_5;
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
LABEL_5:
    v4 = *(a1 + 24) == *(a2 + 24);
    return v4 & 1;
  }

  v4 = sub_258428600();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t HashableWeakRef.hashValue.getter()
{
  sub_2584293C0();
  MEMORY[0x259C7ECE0](*(v0 + 24));
  return sub_2584293F0();
}

uint64_t sub_2583FE4E8()
{
  sub_2584293C0();
  HashableWeakRef.hash(into:)();
  return sub_2584293F0();
}

uint64_t sub_2583FE534()
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v0 + 24) = sub_2584285A0();
  return v0;
}

uint64_t sub_2583FE5D4()
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t sub_2583FE724(uint64_t a1)
{
  v2 = v1;
  v3 = sub_258384260(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_258395B34();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_2584283F0();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_258396C84(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t WorldAnchor.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_identifier;
  v4 = sub_2584283F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorldAnchor.autoUpdate.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorldAnchor.autoUpdate.setter(char a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float WorldAnchor.confidence.getter()
{
  v1 = v0 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence;
  swift_beginAccess();
  return *v1;
}

uint64_t property wrapper backing initializer of WorldAnchor.plane(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929310);
  v2 = swift_allocObject();

  v3 = swift_slowAlloc();
  *v3 = 0;

  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t sub_2583FEA18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *(v5 + 24);

  os_unfair_lock_lock(v6);
  swift_beginAccess();
  v7 = *(v5 + 16);

  os_unfair_lock_unlock(v6);

  *a2 = v7;
  return result;
}

uint64_t sub_2583FEAB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *(v5 + 24);

  os_unfair_lock_lock(v6);
  swift_beginAccess();
  *(v5 + 16) = v2;

  os_unfair_lock_unlock(v6);
}

uint64_t WorldAnchor.plane.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 24);

  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v4 = *(v2 + 16);

  os_unfair_lock_unlock(v3);

  return v4;
}

uint64_t property wrapper backing initializer of WorldAnchor.viewAnchor(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929320);
  v2 = swift_allocObject();
  v3 = a1;
  v4 = swift_slowAlloc();
  *v4 = 0;

  *(v2 + 16) = a1;
  *(v2 + 24) = v4;
  return v2;
}

uint64_t _s17MeasureFoundation11WorldAnchorC05pointD033_5454E724AA4159EF16DA5F66FC4569C8LLSo8ARAnchorCvpfP_0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
  v2 = swift_allocObject();
  v3 = a1;
  v4 = swift_slowAlloc();
  *v4 = 0;

  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  return v2;
}

uint64_t WorldAnchor.updateHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_2583B6410(*v1);
  return v2;
}

uint64_t WorldAnchor.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_2583B640C(v6, v7);
}

void (*WorldAnchor.updateHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v8;
  sub_2583B6410(v7);
  return sub_2583FEE2C;
}

void sub_2583FEE2C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = v3[4];
  v6 = (v3[5] + v3[6]);
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  if (a2)
  {
    sub_2583B6410(v4);
    sub_2583B640C(v7, v8);
    v9 = v3[3];
    v10 = v3[4];
  }

  else
  {
    v9 = v7;
    v10 = v8;
  }

  sub_2583B640C(v9, v10);

  free(v3);
}

void (*sub_2583FEEB0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27F927B18 != -1)
  {
    swift_once();
  }

  v4 = off_27F929308;
  *(v3 + 32) = off_27F929308;
  v5 = *(v4 + 3);

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(v4 + 2);

  os_unfair_lock_unlock(v5);
  *(v3 + 24) = v6;
  return sub_2583FEF98;
}

void sub_2583FEF98(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(v4 + 24);
  if (a2)
  {

    os_unfair_lock_lock(v5);
    *(v4 + 16) = v3;

    os_unfair_lock_unlock(v5);
  }

  else
  {
    os_unfair_lock_lock(*(v4 + 24));
    *(v4 + 16) = v3;

    os_unfair_lock_unlock(v5);
  }

  free(v2);
}

_DWORD *sub_2583FF04C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929388);
  v0 = swift_allocObject();
  result = swift_slowAlloc();
  *result = 0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  *(v0 + 24) = result;
  off_27F929308 = v0;
  return result;
}

uint64_t static WorldAnchor.arSession.getter()
{
  swift_beginAccess();
  v0 = static WorldAnchor.arSession;
  v1 = static WorldAnchor.arSession;
  return v0;
}

void static WorldAnchor.arSession.setter(uint64_t a1)
{
  swift_beginAccess();
  v2 = static WorldAnchor.arSession;
  static WorldAnchor.arSession = a1;
}

double sub_2583FF1B0()
{
  qword_27F92F358 = 0;
  result = 0.0;
  static WorldAnchor.delegate = 0u;
  *algn_27F92F348 = 0u;
  return result;
}

__int128 *WorldAnchor.delegate.unsafeMutableAddressor()
{
  if (qword_27F927B20 != -1)
  {
    swift_once();
  }

  return &static WorldAnchor.delegate;
}

uint64_t static WorldAnchor.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F927B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_258389808(&static WorldAnchor.delegate, a1, &qword_27F929328);
}

uint64_t static WorldAnchor.delegate.setter(uint64_t a1)
{
  if (qword_27F927B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2583FF348(a1, &static WorldAnchor.delegate);
  swift_endAccess();
  return sub_258385E40(a1, &qword_27F929328);
}

uint64_t sub_2583FF348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929328);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static WorldAnchor.delegate.modify())()
{
  if (qword_27F927B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t WorldAnchor.hash(into:)()
{
  sub_2584283F0();
  sub_2584076A4(&qword_27F927FC8, MEMORY[0x277CC95F0]);
  return sub_258428590();
}

unint64_t WorldAnchor.viewDirection.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 24);

  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = v4;
  os_unfair_lock_unlock(v3);

  if (!v4)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = *(v7 + 24);

  os_unfair_lock_lock(v8);
  swift_beginAccess();
  v9 = *(v7 + 16);
  os_unfair_lock_unlock(v8);

  [v9 transform];
  v17 = v10;

  [v5 transform];
  v16 = v11;

  v12 = vsubq_f32(v17, v16);
  v13 = vmulq_f32(v12, v12);
  *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  *v13.f32 = vrsqrte_f32(v14);
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
  return vmulq_n_f32(v12, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]).u64[0];
}

unint64_t WorldAnchor.distanceToViewAnchor.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 24);

  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = v4;
  os_unfair_lock_unlock(v3);

  if (v4)
  {
    v6 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
    swift_beginAccess();
    v7 = *(v0 + v6);
    v8 = *(v7 + 24);

    os_unfair_lock_lock(v8);
    swift_beginAccess();
    v9 = *(v7 + 16);
    os_unfair_lock_unlock(v8);

    [v9 transform];
    v17 = v10;

    [v5 transform];
    v16 = v11;

    v12 = vsubq_f32(v17, v16);
    v13 = vmulq_f32(v12, v12);
    v14 = COERCE_UNSIGNED_INT(sqrtf(v13.f32[2] + vaddv_f32(*v13.f32)));
  }

  else
  {
    v14 = 0;
  }

  return v14 | ((v4 == 0) << 32);
}

uint64_t WorldAnchor.__allocating_init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)(__int128 *a1, uint64_t a2, char a3, int8x16_t *a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, float a9)
{
  v14 = swift_allocObject();
  WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v14;
}

uint64_t WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)(__int128 *a1, uint64_t a2, char a3, int8x16_t *a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, float a9)
{
  v10 = v9;
  v64 = a4[1];
  v65 = *a4;
  v62 = a4[3];
  v63 = a4[2];
  v59 = a1[1];
  v60 = *a1;
  v57 = a1[3];
  v58 = a1[2];
  _s17MeasureFoundation11WorldAnchorC10identifier0B04UUIDVvpfi_0();
  v14 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929310);
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *v16 = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = v16;
  *(v10 + v14) = v15;
  *(v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_maxTranslationForPlaneUpgrade) = 994352038;
  *(v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_minDotForPlaneUpgrade) = 1065289295;
  v17 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929320);
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *v19 = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = v19;
  *(v10 + v17) = v18;
  v20 = (v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
  *v21 = a5;
  v21[1] = a6;
  v21[2] = a7;
  v21[3] = a8;
  v22 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v23 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
  v24 = swift_allocObject();
  v25 = v22;
  v26 = swift_slowAlloc();
  *v26 = 0;
  *(v24 + 16) = v25;
  *(v24 + 24) = v26;
  *(v10 + v23) = v24;
  swift_endAccess();

  v27 = 0;
  if ((a1[4] & 1) == 0)
  {
    v27 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  }

  swift_beginAccess();

  v28 = swift_allocObject();
  v29 = v27;
  v30 = swift_slowAlloc();
  *v30 = 0;
  *(v28 + 16) = v27;
  *(v28 + 24) = v30;
  *(v10 + v17) = v28;
  swift_endAccess();

  if (a4[4].i8[0])
  {
    v31 = -1;
  }

  else
  {
    v31 = 0;
  }

  v32 = vdupq_n_s32(v31);
  v33 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v34 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
  swift_beginAccess();
  v35 = swift_allocObject();
  v36 = v33;
  v37 = swift_slowAlloc();
  *v37 = 0;
  *(v35 + 16) = v36;
  *(v35 + 24) = v37;
  *(v10 + v34) = v35;
  swift_endAccess();

  v38 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();
  swift_retain_n();

  v39 = swift_allocObject();
  v40 = swift_slowAlloc();
  *v40 = 0;
  *(v39 + 16) = a2;
  *(v39 + 24) = v40;
  *(v10 + v38) = v39;
  swift_endAccess();

  *(v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate) = a3 & 1;
  *(v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence) = a9;
  v41 = *(v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor);
  v42 = *(v41 + 24);

  os_unfair_lock_lock(v42);
  swift_beginAccess();
  v43 = *(v41 + 16);
  os_unfair_lock_unlock(v42);

  sub_2584031E0(v43);

  v44 = *(v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor);
  v45 = *(v44 + 24);

  os_unfair_lock_lock(v45);
  swift_beginAccess();
  v46 = *(v44 + 16);
  os_unfair_lock_unlock(v45);

  sub_2584031E0(v46);

  v47 = *(v10 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor);
  v48 = *(v47 + 24);

  os_unfair_lock_lock(v48);
  swift_beginAccess();
  v49 = *(v47 + 16);
  v50 = v49;
  os_unfair_lock_unlock(v48);

  if (v49)
  {
    sub_2584031E0(v50);
  }

  if (a2)
  {
    swift_beginAccess();
    v51 = *(a2 + 16);
    v52 = *(v51 + 24);

    os_unfair_lock_lock(v52);
    swift_beginAccess();
    v53 = *(v51 + 16);
    os_unfair_lock_unlock(v52);

    sub_2584031E0(v53);
  }

  if (qword_27F927B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_27F92F350)
  {
    sub_2583ACFA4(&static WorldAnchor.delegate, v71);
    v54 = v72;
    v55 = v73;
    __swift_project_boxed_opaque_existential_0(v71, v72);
    (*(v55 + 8))(v10, v54, v55);

    __swift_destroy_boxed_opaque_existential_0(v71);
  }

  else
  {
  }

  return v10;
}

uint64_t WorldAnchor.__allocating_init(anchor:shouldAutoUpdate:)(uint64_t a1, char a2)
{
  v2 = sub_258405B2C(a1, a2);

  return v2;
}

uint64_t WorldAnchor.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + 24);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v5 = *(v3 + 16);
  os_unfair_lock_unlock(v4);

  sub_25840375C(v5);

  v6 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = *(v7 + 24);

  os_unfair_lock_lock(v8);
  swift_beginAccess();
  v9 = *(v7 + 16);
  os_unfair_lock_unlock(v8);

  sub_25840375C(v9);

  v10 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = *(v11 + 24);

  os_unfair_lock_lock(v12);
  swift_beginAccess();
  v13 = *(v11 + 16);
  v14 = v13;
  os_unfair_lock_unlock(v12);

  if (v13)
  {
    sub_25840375C(v14);
  }

  v15 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();
  v16 = *(v1 + v15);
  v17 = *(v16 + 24);

  os_unfair_lock_lock(v17);
  swift_beginAccess();
  v18 = *(v16 + 16);

  os_unfair_lock_unlock(v17);

  if (v18)
  {
    swift_beginAccess();
    v19 = *(v18 + 16);
    v20 = *(v19 + 24);

    os_unfair_lock_lock(v20);
    swift_beginAccess();
    v21 = *(v19 + 16);
    os_unfair_lock_unlock(v20);

    sub_25840375C(v21);
  }

  if (qword_27F927B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_27F92F350)
  {
    sub_2583ACFA4(&static WorldAnchor.delegate, v27);
    v22 = v28;
    v23 = v29;
    __swift_project_boxed_opaque_existential_0(v27, v28);
    (*(v23 + 24))(v1, v22, v23);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  v24 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_identifier;
  v25 = sub_2584283F0();
  (*(*(v25 - 8) + 8))(v1 + v24, v25);

  sub_2583B640C(*(v1 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler), *(v1 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler + 8));
  return v1;
}

uint64_t WorldAnchor.__deallocating_deinit()
{
  WorldAnchor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2584002E0(void *a1, uint64_t a2)
{
  v3 = v2;
  v131 = a2;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B40);
  v5 = MEMORY[0x28223BE20](v146);
  v138 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v144 = (&v124 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B48);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v132 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v124 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v137 = &v124 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v140 = &v124 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v147 = &v124 - v18;
  MEMORY[0x28223BE20](v17);
  v148 = &v124 - v19;
  v20 = sub_2584283F0();
  v151 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v141 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v152.i64[0] = &v124 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v124 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v124 - v28;
  v30 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();
  v134 = v30;
  v31 = *(v3 + v30);
  v32 = *(v31 + 24);

  os_unfair_lock_lock(v32);
  swift_beginAccess();
  v150 = *(v31 + 16);

  os_unfair_lock_unlock(v32);

  v149 = a1;
  v33 = [a1 identifier];
  sub_2584283D0();

  v34 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
  swift_beginAccess();
  v35 = *(v3 + v34);
  v36 = *(v35 + 24);

  os_unfair_lock_lock(v36);
  swift_beginAccess();
  v37 = *(v35 + 16);
  os_unfair_lock_unlock(v36);

  v38 = v29;
  v39 = [v37 identifier];

  sub_2584283D0();
  v40 = v20;
  v142 = sub_2584076A4(&qword_27F927FD0, MEMORY[0x277CC95F0]);
  v41 = sub_258428600();
  v42 = v151;
  LOBYTE(v39) = v41;
  v43 = v151 + 8;
  v44 = *(v151 + 8);
  v143 = v27;
  v44(v27, v40);
  if ((v39 & 1) == 0)
  {
    v145 = v44;
    v135 = v43;
    v124 = v34;
    v48 = v42 + 16;
    v47 = *(v42 + 16);
    v130 = v38;
    v133 = v47;
    v47(v152.i64[0], v38, v40);
    v49 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
    swift_beginAccess();
    v129 = v49;
    v50 = *(v3 + v49);
    v51 = *(v50 + 24);

    os_unfair_lock_lock(v51);
    swift_beginAccess();
    v52 = *(v50 + 16);
    v53 = v52;
    os_unfair_lock_unlock(v51);

    v136 = v3;
    v54 = v42;
    if (v52)
    {
      v55 = [v53 identifier];

      v56 = v148;
      sub_2584283D0();

      v57 = 0;
      v58 = v144;
    }

    else
    {
      v57 = 1;
      v58 = v144;
      v56 = v148;
    }

    v59 = v147;
    v60 = *(v54 + 56);
    v60(v56, v57, 1, v40);
    v133(v59, v152.i64[0], v40);
    v125 = v60;
    v126 = v54 + 56;
    v60(v59, 0, 1, v40);
    v61 = *(v146 + 48);
    sub_258389808(v56, v58, &qword_27F928B48);
    sub_258389808(v59, v58 + v61, &qword_27F928B48);
    v62 = v56;
    v63 = *(v54 + 48);
    v64 = v63(v58, 1, v40);
    v127 = v54 + 48;
    v128 = v48;
    v144 = v63;
    if (v64 == 1)
    {
      sub_258385E40(v59, &qword_27F928B48);
      sub_258385E40(v62, &qword_27F928B48);
      v145(v152.i64[0], v40);
      if (v63(v58 + v61, 1, v40) == 1)
      {
        sub_258385E40(v58, &qword_27F928B48);
LABEL_18:
        v145(v130, v40);
        v97 = *(v136 + v129);
        v98 = *(v97 + 24);
        v99 = v149;
        v100 = v149;

        os_unfair_lock_lock(v98);
        v81 = 1;
        swift_beginAccess();
        v101 = *(v97 + 16);
        *(v97 + 16) = v99;

        os_unfair_lock_unlock(v98);

        return v81 & 1;
      }
    }

    else
    {
      v65 = v140;
      sub_258389808(v58, v140, &qword_27F928B48);
      if (v63(v58 + v61, 1, v40) != 1)
      {
        v93 = v143;
        (*(v151 + 32))(v143, v58 + v61, v40);
        v94 = sub_258428600();
        v95 = v58;
        v96 = v145;
        v145(v93, v40);
        sub_258385E40(v147, &qword_27F928B48);
        sub_258385E40(v148, &qword_27F928B48);
        v96(v152.i64[0], v40);
        v96(v65, v40);
        sub_258385E40(v95, &qword_27F928B48);
        if (v94)
        {
          goto LABEL_18;
        }

LABEL_12:
        v68 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
        v69 = v136;
        swift_beginAccess();
        v70 = *(v69 + v68);
        v71 = *(v70 + 24);

        os_unfair_lock_lock(v71);
        swift_beginAccess();
        v72 = *(v70 + 16);
        os_unfair_lock_unlock(v71);

        v73 = [v72 identifier];

        v74 = v143;
        sub_2584283D0();

        v75 = v130;
        LOBYTE(v73) = sub_258428600();
        v76 = v74;
        v77 = v145;
        v145(v76, v40);
        if (v73)
        {
          v77(v75, v40);
          v45 = *(v69 + v68);
          v46 = *(v45 + 24);

          os_unfair_lock_lock(v46);
          goto LABEL_14;
        }

        v82 = *(v151 + 32);
        v83 = v141;
        v151 += 32;
        v152.i64[0] = v82;
        v82(v141, v75, v40);
        v84 = *(v69 + v134);
        v85 = *(v84 + 24);

        os_unfair_lock_lock(v85);
        swift_beginAccess();
        v86 = *(v84 + 16);

        os_unfair_lock_unlock(v85);

        if (v86)
        {
          swift_beginAccess();
          v87 = *(v86 + 16);
          v88 = *(v87 + 24);

          os_unfair_lock_lock(v88);
          swift_beginAccess();
          v89 = *(v87 + 16);
          os_unfair_lock_unlock(v88);

          v90 = [v89 identifier];

          v83 = v141;
          v91 = v137;
          sub_2584283D0();

          v92 = 0;
        }

        else
        {
          v92 = 1;
          v91 = v137;
        }

        v102 = v125;
        v125(v91, v92, 1, v40);
        v103 = v139;
        v133(v139, v83, v40);
        v102(v103, 0, 1, v40);
        v104 = *(v146 + 48);
        v105 = v83;
        v106 = v138;
        sub_258389808(v91, v138, &qword_27F928B48);
        sub_258389808(v103, v106 + v104, &qword_27F928B48);
        v107 = v144;
        if (v144(v106, 1, v40) == 1)
        {
          sub_258385E40(v103, &qword_27F928B48);
          sub_258385E40(v91, &qword_27F928B48);
          v145(v105, v40);
          v108 = v144(v106 + v104, 1, v40);
          v109 = v136;
          if (v108 == 1)
          {
            sub_258385E40(v106, &qword_27F928B48);
            v110 = v150;
            v111 = v124;
            goto LABEL_29;
          }
        }

        else
        {
          v112 = v132;
          sub_258389808(v106, v132, &qword_27F928B48);
          v113 = v107(v106 + v104, 1, v40);
          v109 = v136;
          v111 = v124;
          if (v113 != 1)
          {
            v115 = v143;
            (v152.i64[0])(v143, v106 + v104, v40);
            v152.i32[0] = sub_258428600();
            v116 = v115;
            v117 = v145;
            v145(v116, v40);
            sub_258385E40(v139, &qword_27F928B48);
            sub_258385E40(v91, &qword_27F928B48);
            v117(v141, v40);
            v117(v112, v40);
            sub_258385E40(v106, &qword_27F928B48);
            v110 = v150;
            if (v152.i8[0])
            {
LABEL_29:
              if (v110)
              {
                v118 = *(v109 + v111);
                v119 = *(v118 + 24);

                os_unfair_lock_lock(v119);
                swift_beginAccess();
                v120 = *(v118 + 16);
                os_unfair_lock_unlock(v119);

                [v120 transform];
                v152 = v121;

                v122 = v152;
                v122.i32[3] = 0;
                v81 = WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v149, v131, v122);

                return v81 & 1;
              }

              goto LABEL_27;
            }

LABEL_26:

LABEL_27:
            v81 = 0;
            return v81 & 1;
          }

          sub_258385E40(v139, &qword_27F928B48);
          sub_258385E40(v91, &qword_27F928B48);
          v114 = v145;
          v145(v141, v40);
          v114(v112, v40);
        }

        sub_258385E40(v106, &qword_27F928B40);
        goto LABEL_26;
      }

      v66 = v65;
      sub_258385E40(v147, &qword_27F928B48);
      sub_258385E40(v148, &qword_27F928B48);
      v67 = v145;
      v145(v152.i64[0], v40);
      v67(v66, v40);
    }

    sub_258385E40(v58, &qword_27F928B40);
    goto LABEL_12;
  }

  v44(v38, v40);
  v45 = *(v3 + v34);
  v46 = *(v45 + 24);

  os_unfair_lock_lock(v46);
LABEL_14:
  swift_beginAccess();
  v78 = *(v45 + 16);
  v79 = v149;
  *(v45 + 16) = v149;
  v80 = v79;

  os_unfair_lock_unlock(v46);

  v81 = 1;
  return v81 & 1;
}

Swift::Void __swiftcall WorldAnchor.update()()
{
  v1 = sub_2584283F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v259 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258428D40();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v259 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!static WorldAnchor.arSession)
  {
    return;
  }

  v8 = [static WorldAnchor.arSession currentFrame];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v278 = v0;
  v10 = [v8 camera];
  sub_258428D50();

  v11 = sub_258428D30();
  if ((*(*(v11 - 8) + 48))(v7, 2, v11) != 2 || (v12 = [v9 worldTrackingState]) == 0 || (v13 = v12, v14 = objc_msgSend(v12, sel_vioTrackingState), v13, v14))
  {

    sub_258405E2C(v7);
    return;
  }

  v276.i64[0] = v2;
  sub_258405E2C(v7);
  v15 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
  v16 = v278;
  swift_beginAccess();
  v17 = *(v16 + v15);
  v18 = *(v17 + 24);

  os_unfair_lock_lock(v18);
  swift_beginAccess();
  v19 = *(v17 + 16);
  v20 = v19;
  os_unfair_lock_unlock(v18);

  if (!v19)
  {
    v44 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
    swift_beginAccess();
    v45 = *(v16 + v44);
    v46 = *(v45 + 24);

    os_unfair_lock_lock(v46);
    swift_beginAccess();
    v47 = *(v45 + 16);
    os_unfair_lock_unlock(v46);

    [v47 transform];
    v276 = v49;
    v277 = v48;
    v274 = v51;
    v275 = v50;

    v52 = (v16 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
    v53 = v276;
    *v52 = v277;
    v52[1] = v53;
    v54 = v274;
    v52[2] = v275;
    v52[3] = v54;
    v55 = v16 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler;
    swift_beginAccess();
    v56 = *v55;
    if (*v55)
    {
      v57 = *(v55 + 8);

      v56(v58);

      sub_2583B640C(v56, v57);
    }

    else
    {
    }

    return;
  }

  v21 = *(v16 + v15);
  v22 = *(v21 + 24);

  os_unfair_lock_lock(v22);
  swift_beginAccess();
  v23 = *(v21 + 16);
  v24 = v23;
  os_unfair_lock_unlock(v22);

  if (!v23)
  {
    __break(1u);
    goto LABEL_122;
  }

  [v24 transform];
  v277 = v25;

  v26 = v277;
  v26.i32[3] = 0;
  v275 = v26;
  v27 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
  swift_beginAccess();
  v28 = *(v16 + v27);
  v29 = *(v28 + 24);

  os_unfair_lock_lock(v29);
  swift_beginAccess();
  v30 = *(v28 + 16);
  os_unfair_lock_unlock(v29);

  [v30 transform];
  v274 = v31;

  v32 = vsubq_f32(v274, v277);
  v33 = vmulq_f32(v32, v32);
  *&v34 = v33.f32[2] + vaddv_f32(*v33.f32);
  *v33.f32 = vrsqrte_f32(v34);
  *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32)));
  v277 = vmulq_n_f32(v32, vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32))).f32[0]);
  v35 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();
  v36 = *(v16 + v35);
  v37 = *(v36 + 24);

  os_unfair_lock_lock(v37);
  swift_beginAccess();
  v38 = *(v36 + 16);

  os_unfair_lock_unlock(v37);

  if (v38)
  {
    swift_beginAccess();
    v39 = *(v38 + 16);
    v40 = *(v39 + 24);

    os_unfair_lock_lock(v40);
    swift_beginAccess();
    v41 = *(v39 + 16);
    os_unfair_lock_unlock(v40);

    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    if (v42)
    {
      v43 = [v42 _hitTestFromOrigin_withDirection_usingExtent_usingGeometry_];
    }

    else
    {

      v43 = 0;
    }

    if (!*(v38 + 48))
    {
      goto LABEL_71;
    }
  }

  else
  {
    v43 = 0;
  }

  v59 = [v9 _hitTestFromOrigin_withDirection_types_];
  sub_258385DB0(0, &qword_27F928B10);
  v60 = sub_258428860();

  if (!(v60 >> 62))
  {
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    goto LABEL_70;
  }

  if (!sub_258428F10())
  {
LABEL_70:

LABEL_71:
    v62 = 0;
    v271 = (v16 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
    v151 = *(v16 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48);
    v270 = v16 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48;
    v152 = vextq_s8(v151, v151, 8uLL);
    *v152.i8 = vext_s8(*v151.i8, *v152.i8, 4uLL);
    v274 = v152;
    v275 = v151;
    goto LABEL_72;
  }

LABEL_20:
  if ((v60 & 0xC000000000000001) != 0)
  {
    v61 = MEMORY[0x259C7E900](0, v60);
  }

  else
  {
    if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_120;
    }

    v61 = *(v60 + 32);
  }

  v62 = v61;

  v277.i64[0] = v38;
  if (v38)
  {
    v63 = v62 == 0;
  }

  else
  {
    v63 = 1;
  }

  v64 = v63;
  v271 = (v16 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
  v65 = *(v16 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48);
  v270 = v16 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48;
  v66 = vextq_s8(v65, v65, 8uLL);
  *v66.i8 = vext_s8(*v65.i8, *v66.i8, 4uLL);
  v274 = v66;
  v275 = v65;
  if (v62 && (!v43 ? (v68 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor, swift_beginAccess(), v69 = *(v16 + v68), v269.i64[0] = v35, v70 = v62, v71 = *(v69 + 24), , os_unfair_lock_lock(v71), swift_beginAccess(), v72 = *(v69 + 16), *&v272 = 0, v73 = v72, v74 = v71, v62 = v70, os_unfair_lock_unlock(v74), , v35 = v269.i64[0], [v73 transform], v273 = v75, v73, v43 = v272) : (objc_msgSend(v43, sel_worldTransform), v273 = v67), objc_msgSend(v62, sel_worldTransform), (v64 & 1) == 0))
  {
    v77 = vsubq_f32(v273, v76);
    v78 = vmulq_f32(v77, v77);
    v79 = sqrtf(v78.f32[2] + vaddv_f32(*v78.f32));
    if (v43)
    {
      [v43 worldTransform];
      v273 = v80;
    }

    else
    {
      v273 = v271[1];
    }

    [v62 worldTransform];
    v82 = vmulq_f32(v273, v81);
    v83 = v82.f32[2] + vaddv_f32(*v82.f32);
    v84 = v79 >= 0.003 || v83 <= 0.99619;
    v38 = v277.i64[0];
    if (!v84)
    {
      *&v272 = v43;
      v273.i64[0] = v62;
      if (qword_27F927B28 != -1)
      {
        swift_once();
      }

      v85 = unk_27F92F390;
      *&v268 = qword_27F92F388;
      v288[0] = 0;
      v288[1] = 0xE000000000000000;
      sub_258428FC0();
      MEMORY[0x259C7DFF0](0xD000000000000018, 0x80000002584382A0);
      v86 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
      v87 = v278;
      swift_beginAccess();
      v264 = v86;
      v88 = *(v87 + v86);
      v89 = *(v88 + 24);

      os_unfair_lock_lock(v89);
      swift_beginAccess();
      v90 = *(v88 + 16);
      os_unfair_lock_unlock(v89);

      v91 = [v90 identifier];

      sub_2584283D0();
      v92 = sub_2584283B0();
      v94 = v93;
      v265 = *(v276.i64[0] + 8);
      v266 = v276.i64[0] + 8;
      v265(v4, v1);
      MEMORY[0x259C7DFF0](v92, v94);

      MEMORY[0x259C7DFF0](0xD000000000000034, 0x80000002584382C0);
      sub_2584289C0();
      MEMORY[0x259C7DFF0](46, 0xE100000000000000);
      v95 = v288[0];
      v96 = v288[1];
      v97 = sub_258428C50();
      v98 = qword_27F927A30;

      if (v98 != -1)
      {
        swift_once();
      }

      v269.i64[0] = qword_27F928848;
      os_unfair_lock_lock(qword_27F928848);
      if (qword_27F927A38 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v99 = off_27F928850;
      v100 = *(off_27F928850 + 2);
      v267 = v95;
      if (v100 && (v101 = sub_258384364(v268, v85), (v102 & 1) != 0))
      {
        v103 = *(v99[7] + 8 * v101);
        swift_endAccess();
        v104 = v103;
      }

      else
      {
        LODWORD(v262) = v97;
        *&v263 = v96;
        swift_endAccess();
        sub_258385DB0(0, &qword_27F927F98);
        if (qword_27F927A28 != -1)
        {
          swift_once();
        }

        v105 = v268;
        v106 = sub_258428D90();
        swift_beginAccess();
        v104 = v106;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v286[0] = off_27F928850;
        off_27F928850 = 0x8000000000000000;
        sub_258384C94(v104, v105, v85, isUniquelyReferenced_nonNull_native);

        off_27F928850 = v286[0];
        swift_endAccess();
        v96 = v263;
      }

      os_unfair_lock_unlock(v269.i64[0]);
      *&v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
      v108 = swift_allocObject();
      v263 = xmmword_25842CCB0;
      *(v108 + 16) = xmmword_25842CCB0;
      *(v108 + 56) = MEMORY[0x277D837D0];
      v262 = sub_258385D08();
      *(v108 + 64) = v262;
      *(v108 + 32) = v267;
      *(v108 + 40) = v96;

      sub_258428440();

      v109 = *(v278 + v35);
      v110 = *(v109 + 24);

      os_unfair_lock_lock(v110);
      swift_beginAccess();
      v111 = *(v109 + 16);

      os_unfair_lock_unlock(v110);

      if (!v111)
      {
        goto LABEL_123;
      }

      swift_beginAccess();
      v112 = *(v111 + 16);
      v113 = *(v112 + 24);

      os_unfair_lock_lock(v113);
      swift_beginAccess();
      v114 = *(v112 + 16);
      os_unfair_lock_unlock(v113);

      sub_25840375C(v114);

      v62 = v273.i64[0];
      v115 = [v273.i64[0] anchor];
      if (v115)
      {
        v116 = v115;
        objc_opt_self();
        v117 = swift_dynamicCastObjCClass();
        if (v117)
        {
          v118 = v117;
          v119 = v62;
          sub_258411D3C(v119, 0, v286);
          v261 = v119;

          v277.i64[0] = v286[13];
          v120 = v287;
          v121 = (v278 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence);
          swift_beginAccess();
          *v121 = v120;
          v267 = v116;
          sub_2584031E0(v118);
          if (qword_27F927B30 != -1)
          {
            swift_once();
          }

          v259 = *algn_27F92F3A8;
          v260 = qword_27F92F3A0;
          v288[0] = 0;
          v288[1] = 0xE000000000000000;
          sub_258428FC0();

          strcpy(v288, "World anchor ");
          HIWORD(v288[1]) = -4864;
          v122 = *(v278 + v264);
          v123 = *(v122 + 24);

          os_unfair_lock_lock(v123);
          swift_beginAccess();
          v124 = *(v122 + 16);
          os_unfair_lock_unlock(v123);

          v125 = [v124 identifier];

          sub_2584283D0();
          v126 = sub_2584283B0();
          v128 = v127;
          v129 = v265;
          v265(v4, v1);
          MEMORY[0x259C7DFF0](v126, v128);

          MEMORY[0x259C7DFF0](0xD00000000000001ALL, 0x8000000258438300);
          v130 = [v118 identifier];

          sub_2584283D0();
          v131 = sub_2584283B0();
          v133 = v132;
          v129(v4, v1);
          v134 = v131;
          v136 = v259;
          v135 = v260;
          MEMORY[0x259C7DFF0](v134, v133);

          MEMORY[0x259C7DFF0](46, 0xE100000000000000);
          v137 = v288[1];
          v266 = v288[0];
          v138 = sub_258428C50();

          os_unfair_lock_lock(v269.i64[0]);
          swift_beginAccess();
          v139 = off_27F928850;
          if (*(off_27F928850 + 2) && (v140 = sub_258384364(v135, v136), (v141 & 1) != 0))
          {
            v142 = *(v139[7] + 8 * v140);
            swift_endAccess();
            v143 = v142;

            v144 = v267;
          }

          else
          {
            LODWORD(v265) = v138;
            v145 = v135;
            swift_endAccess();
            sub_258385DB0(0, &qword_27F927F98);
            if (qword_27F927A28 != -1)
            {
              swift_once();
            }

            v146 = sub_258428D90();
            swift_beginAccess();
            v143 = v146;
            v147 = swift_isUniquelyReferenced_nonNull_native();
            v279 = off_27F928850;
            off_27F928850 = 0x8000000000000000;
            sub_258384C94(v143, v145, v136, v147);

            off_27F928850 = v279;
            swift_endAccess();
            v144 = v267;
          }

          os_unfair_lock_unlock(v269.i64[0]);
          v148 = swift_allocObject();
          *(v148 + 16) = v263;
          v149 = v262;
          *(v148 + 56) = MEMORY[0x277D837D0];
          *(v148 + 64) = v149;
          *(v148 + 32) = v266;
          *(v148 + 40) = v137;

          sub_258428440();

          v150 = v261;

          v62 = v273.i64[0];
          v43 = v273.i64[0];
          v16 = v278;
          v38 = v277.i64[0];
          goto LABEL_74;
        }
      }

      v38 = 0;
      v16 = v278;
      v43 = v272;
    }
  }

  else
  {
    v38 = v277.i64[0];
  }

LABEL_72:
  if (!v43)
  {
    v277.i64[0] = v38;
    v273.i64[0] = v62;
    *&v272 = 0;
    goto LABEL_87;
  }

  v150 = v43;
LABEL_74:
  [v150 worldTransform];
  v154 = vdup_lane_s32(*v274.f32, 0);
  v154.i32[0] = v275.i32[0];
  v156 = vsub_f32(v155, v154);
  v273.i64[0] = v62;
  v277.i64[0] = v38;
  if (sqrtf(((v153 - v274.f32[1]) * (v153 - v274.f32[1])) + vaddv_f32(vmul_f32(v156, v156))) <= 0.00000011921)
  {
    *&v272 = v43;
LABEL_87:
    v38 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
    swift_beginAccess();
    v192 = *(v16 + v38);
    v193 = *(v192 + 24);

    os_unfair_lock_lock(v193);
    swift_beginAccess();
    v194 = *(v192 + 16);
    os_unfair_lock_unlock(v193);

    [v194 transform];
    v269 = v195;

    v196 = vdup_lane_s32(*v274.f32, 0);
    v196.i32[0] = v275.i32[0];
    v197 = vsub_f32(*v269.f32, v196);
    if (sqrtf(((v269.f32[2] - v274.f32[1]) * (v269.f32[2] - v274.f32[1])) + vaddv_f32(vmul_f32(v197, v197))) <= 0.00000011921)
    {

LABEL_107:

      return;
    }

    v198 = *(v16 + v38);
    v199 = *(v198 + 24);

    os_unfair_lock_lock(v199);
    swift_beginAccess();
    v200 = *(v198 + 16);
    os_unfair_lock_unlock(v199);

    [v200 &selRef_initWithDevice_];
    v274 = v202;
    v275 = v201;
    v268 = v204;
    v269 = v203;

    v205 = v270;
    v206 = v271;
    v207 = v274;
    *v271 = v275;
    v206[1] = v207;
    v208 = v268;
    v206[2] = v269;
    *v205 = v208;
    v209 = v16 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler;
    swift_beginAccess();
    v210 = *v209;
    if (*v209)
    {
      v211 = *(v209 + 8);

      v210(v212);
      v16 = v278;
      sub_2583B640C(v210, v211);
    }

    v43 = v276.i64[0];
    if (qword_27F927B20 == -1)
    {
LABEL_91:
      swift_beginAccess();
      if (qword_27F92F350)
      {
        sub_2583ACFA4(&static WorldAnchor.delegate, v288);
        v213 = v289.i64[1];
        v214 = v290;
        __swift_project_boxed_opaque_existential_0(v288, v289.i64[1]);
        (*(v214 + 16))(v16, v213, v214);
        __swift_destroy_boxed_opaque_existential_0(v288);
      }

      if (qword_27F927B30 != -1)
      {
        swift_once();
      }

      v216 = qword_27F92F3A0;
      v215 = *algn_27F92F3A8;
      v288[0] = 0;
      v288[1] = 0xE000000000000000;
      sub_258428FC0();
      v284 = v288[0];
      v285 = v288[1];
      MEMORY[0x259C7DFF0](0xD00000000000001BLL, 0x8000000258438240);
      v217 = *(v278 + v38);
      v218 = v215;
      v219 = *(v217 + 24);

      os_unfair_lock_lock(v219);
      swift_beginAccess();
      v220 = *(v217 + 16);
      os_unfair_lock_unlock(v219);

      v221 = [v220 identifier];

      sub_2584283D0();
      v222 = sub_2584283B0();
      v224 = v223;
      (*(v43 + 1))(v4, v1);
      MEMORY[0x259C7DFF0](v222, v224);

      MEMORY[0x259C7DFF0](0xD000000000000010, 0x8000000258438260);
      sub_2584289C0();
      MEMORY[0x259C7DFF0](93, 0xE100000000000000);
      v225 = v284;
      v226 = v285;
      v227 = sub_258428C70();
      v228 = qword_27F927A30;

      if (v228 != -1)
      {
        swift_once();
      }

      v229 = qword_27F928848;
      os_unfair_lock_lock(qword_27F928848);
      if (qword_27F927A38 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v230 = off_27F928850;
      v231 = *(off_27F928850 + 2);
      v278 = v225;
      if (v231 && (v232 = sub_258384364(v216, v218), (v233 & 1) != 0))
      {
        v234 = *(v230[7] + 8 * v232);
        swift_endAccess();
        v235 = v234;
      }

      else
      {
        v276.i32[0] = v227;
        swift_endAccess();
        sub_258385DB0(0, &qword_27F927F98);
        if (qword_27F927A28 != -1)
        {
          swift_once();
        }

        v236 = sub_258428D90();
        swift_beginAccess();
        v235 = v236;
        v237 = swift_isUniquelyReferenced_nonNull_native();
        v283 = off_27F928850;
        off_27F928850 = 0x8000000000000000;
        sub_258384C94(v235, v216, v218, v237);

        off_27F928850 = v283;
        swift_endAccess();
      }

      os_unfair_lock_unlock(v229);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
      v238 = swift_allocObject();
      *(v238 + 16) = xmmword_25842CCB0;
      *(v238 + 56) = MEMORY[0x277D837D0];
      *(v238 + 64) = sub_258385D08();
      *(v238 + 32) = v278;
      *(v238 + 40) = v226;

      sub_258428440();

      goto LABEL_107;
    }

LABEL_120:
    swift_once();
    goto LABEL_91;
  }

  v157 = v150;
  sub_258411D3C(v157, 0, v288);
  *&v268 = v157;

  v158 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
  swift_beginAccess();
  v159 = *(v16 + v158);
  v160 = *(v159 + 24);

  os_unfair_lock_lock(v160);
  swift_beginAccess();
  v161 = *(v159 + 16);
  os_unfair_lock_unlock(v160);

  v274 = v291;
  v275 = v292;
  v272 = v290;
  v269 = v289;
  v162 = objc_allocWithZone(MEMORY[0x277CE5218]);
  v163 = [v162 initWithTransform_];
  v164 = sub_258405E88(v161, v163);
  v165 = v164;

  if (!v164)
  {
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    return;
  }

  v166 = v278;
  v167 = *(v278 + v158);
  v168 = *(v167 + 24);
  v169 = v165;

  os_unfair_lock_lock(v168);
  swift_beginAccess();
  v170 = *(v167 + 16);
  *(v167 + 16) = v169;

  os_unfair_lock_unlock(v168);

  v171 = v293;
  v172 = (v166 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence);
  swift_beginAccess();
  *v172 = v171;
  v173 = v158;
  if (qword_27F927B30 != -1)
  {
    swift_once();
  }

  v175 = qword_27F92F3A0;
  v174 = *algn_27F92F3A8;
  v279 = 0;
  v280 = 0xE000000000000000;
  sub_258428FC0();
  MEMORY[0x259C7DFF0](0xD00000000000001CLL, 0x8000000258438280);
  v275.i64[0] = v173;
  v176 = *(v278 + v173);
  v177 = *(v176 + 24);

  os_unfair_lock_lock(v177);
  swift_beginAccess();
  v178 = *(v176 + 16);
  os_unfair_lock_unlock(v177);

  v179 = [v178 identifier];

  sub_2584283D0();
  v180 = sub_2584283B0();
  v182 = v181;
  (*(v276.i64[0] + 8))(v4, v1);
  MEMORY[0x259C7DFF0](v180, v182);

  MEMORY[0x259C7DFF0](0xD000000000000010, 0x8000000258438260);
  sub_2584289C0();
  MEMORY[0x259C7DFF0](93, 0xE100000000000000);
  v183 = v280;
  v276.i64[0] = v279;
  v184 = sub_258428C70();
  v185 = qword_27F927A30;

  if (v185 != -1)
  {
    swift_once();
  }

  v186 = qword_27F928848;
  os_unfair_lock_lock(qword_27F928848);
  if (qword_27F927A38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v187 = off_27F928850;
  if (*(off_27F928850 + 2) && (v188 = sub_258384364(v175, v174), (v189 & 1) != 0))
  {
    v190 = *(v187[7] + 8 * v188);
    swift_endAccess();
    v191 = v190;
  }

  else
  {
    v274.i32[0] = v184;
    swift_endAccess();
    sub_258385DB0(0, &qword_27F927F98);
    if (qword_27F927A28 != -1)
    {
      swift_once();
    }

    v239 = sub_258428D90();
    swift_beginAccess();
    v191 = v239;
    v240 = swift_isUniquelyReferenced_nonNull_native();
    v283 = off_27F928850;
    off_27F928850 = 0x8000000000000000;
    sub_258384C94(v191, v175, v174, v240);

    off_27F928850 = v283;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v186);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
  v241 = swift_allocObject();
  *(v241 + 16) = xmmword_25842CCB0;
  *(v241 + 56) = MEMORY[0x277D837D0];
  *(v241 + 64) = sub_258385D08();
  *(v241 + 32) = v276.i64[0];
  *(v241 + 40) = v183;

  sub_258428440();

  v242 = v278;
  v243 = *(v278 + v275.i64[0]);
  v244 = *(v243 + 24);

  os_unfair_lock_lock(v244);
  swift_beginAccess();
  v245 = *(v243 + 16);
  os_unfair_lock_unlock(v244);

  [v245 transform];
  v275 = v247;
  v276 = v246;
  v274 = v248;
  v272 = v249;

  v250 = v270;
  v251 = v271;
  v252 = v275;
  *v271 = v276;
  v251[1] = v252;
  v251[2] = v274;
  *v250 = v272;
  v253 = v242 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler;
  swift_beginAccess();
  v254 = *v253;
  if (*v253)
  {
    v255 = *(v253 + 8);

    v254(v256);
    v242 = v278;
    sub_2583B640C(v254, v255);
  }

  if (qword_27F927B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_27F92F350)
  {
    sub_2583ACFA4(&static WorldAnchor.delegate, &v279);
    v257 = v281;
    v258 = v282;
    __swift_project_boxed_opaque_existential_0(&v279, v281);
    (*(v258 + 16))(v242, v257, v258);

    sub_2583D2648(v288);
    __swift_destroy_boxed_opaque_existential_0(&v279);
  }

  else
  {

    sub_2583D2648(v288);
  }
}

uint64_t sub_2584031E0(void *a1)
{
  v3 = *v1;
  v4 = sub_2584283F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v38 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v38 - v12;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_beginAccess();
    result = static WorldAnchor.arSession;
    if (!static WorldAnchor.arSession)
    {
      __break(1u);
      return result;
    }

    [static WorldAnchor.arSession addAnchor_];
  }

  v38[1] = v3;
  v39 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
  v15 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();
  sub_2584293C0();
  sub_2584076A4(&qword_27F927FC8, MEMORY[0x277CC95F0]);

  sub_258428590();
  v16 = sub_2584293F0();

  *(v15 + 24) = v16;
  v17 = [a1 identifier];
  sub_2584283D0();

  if (qword_27F927B18 != -1)
  {
    swift_once();
  }

  v18 = off_27F929308;
  v19 = *(off_27F929308 + 3);

  os_unfair_lock_lock(v19);
  swift_beginAccess();
  v20 = v18[2];

  os_unfair_lock_unlock(v19);

  if (*(v20 + 16) && (sub_258384260(v13), (v21 & 1) != 0))
  {
    v22 = *(v5 + 8);

    v22(v13, v4);

    v23 = [a1 identifier];
    v24 = v39;
    sub_2584283D0();

    v25 = sub_2583FEEB0(v42);
    v26 = sub_2583DEA18(v40);
    if (*v27)
    {

      sub_2583C6974(&v41, v15);
    }

    (v26)(v40, 0);
    v22(v24, v4);
    v25(v42, 0);
  }

  else
  {

    v28 = *(v5 + 8);
    v28(v13, v4);
    v29 = [a1 identifier];
    sub_2584283D0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F928860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25842DFB0;
    *(inited + 32) = v15;

    v31 = sub_258405508(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v32 = off_27F929308;
    v33 = *(off_27F929308 + 3);

    os_unfair_lock_lock(v33);
    swift_beginAccess();
    v34 = *(v32 + 2);

    os_unfair_lock_unlock(v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40[0] = v34;
    sub_258385B3C(v31, v8, isUniquelyReferenced_nonNull_native);
    v28(v8, v4);
    v36 = v40[0];
    v37 = *(v32 + 3);
    os_unfair_lock_lock(v37);
    *(v32 + 2) = v36;

    os_unfair_lock_unlock(v37);
  }
}

uint64_t sub_25840375C(void *a1)
{
  v2 = sub_2584283F0();
  v38 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v35 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_beginAccess();
    result = static WorldAnchor.arSession;
    if (!static WorldAnchor.arSession)
    {
      __break(1u);
      return result;
    }

    [static WorldAnchor.arSession removeAnchor_];
  }

  v36 = v5;
  v37 = a1;
  v12 = [a1 identifier];
  sub_2584283D0();

  v13 = sub_2583FEEB0(v40);
  v14 = sub_2583DEA18(v39);
  if (*v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
    v16 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    swift_weakAssign();
    sub_2584293C0();
    sub_2584076A4(&qword_27F927FC8, MEMORY[0x277CC95F0]);

    sub_258428590();
    v17 = sub_2584293F0();

    *(v16 + 24) = v17;
    sub_2583E349C(v16);
  }

  (v14)(v39, 0);
  v18 = *(v38 + 8);
  v18(v10, v2);
  v13(v40, 0);
  v19 = v37;
  v20 = [v37 identifier];
  sub_2584283D0();

  if (qword_27F927B18 != -1)
  {
    swift_once();
  }

  v21 = off_27F929308;
  v22 = *(off_27F929308 + 3);

  os_unfair_lock_lock(v22);
  swift_beginAccess();
  v23 = v21[2];

  os_unfair_lock_unlock(v22);

  if (*(v23 + 16) && (v24 = sub_258384260(v8), (v25 & 1) != 0))
  {
    v26 = *(*(v23 + 56) + 8 * v24);

    v18(v8, v2);

    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = sub_258428F10();
    }

    else
    {
      v27 = *(v26 + 16);
    }

    if (!v27)
    {
      v28 = [v19 identifier];
      v29 = v36;
      sub_2584283D0();

      v30 = off_27F929308;
      v31 = *(off_27F929308 + 3);

      os_unfair_lock_lock(v31);
      swift_beginAccess();
      v32 = *(v30 + 2);

      os_unfair_lock_unlock(v31);
      v39[0] = v32;
      sub_2583FE724(v29);

      v18(v29, v2);
      v33 = v39[0];
      v34 = *(v30 + 3);
      os_unfair_lock_lock(v34);
      *(v30 + 2) = v33;

      os_unfair_lock_unlock(v34);
    }
  }

  else
  {

    return (v18)(v8, v2);
  }

  return result;
}

uint64_t static WorldAnchor.didUpdate(anchors:camera:forceUpdate:)(unint64_t a1, uint64_t a2, int a3)
{
  v65 = a3;
  v64 = a2;
  v61 = sub_2584283F0();
  v4 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_258428F10())
  {
    v8 = 0;
    v60 = a1 & 0xC000000000000001;
    v54 = a1 & 0xFFFFFFFFFFFFFF8;
    v53 = a1 + 32;
    v59 = (v4 + 8);
    v58 = MEMORY[0x277D84F90] >> 62;
    v56 = v6;
    v57 = a1;
    v55 = i;
    while (1)
    {
      if (v60)
      {
        v9 = MEMORY[0x259C7E900](v8, a1);
      }

      else
      {
        if (v8 >= *(v54 + 16))
        {
          goto LABEL_64;
        }

        v9 = *(v53 + 8 * v8);
      }

      v66 = v9;
      v10 = __OFADD__(v8, 1);
      v11 = v8 + 1;
      if (v10)
      {
        goto LABEL_63;
      }

      v12 = [v66 identifier];
      sub_2584283D0();

      if (qword_27F927B18 != -1)
      {
        swift_once();
      }

      v13 = off_27F929308;
      v14 = *(off_27F929308 + 3);

      os_unfair_lock_lock(v14);
      swift_beginAccess();
      a1 = v13[2];

      os_unfair_lock_unlock(v14);

      if (*(a1 + 16) && (v15 = sub_258384260(v6), (v16 & 1) != 0))
      {
        v17 = *(*(a1 + 56) + 8 * v15);
        v18 = *v59;

        v18(v6, v61);
      }

      else
      {

        (*v59)(v6, v61);
        v17 = 0;
      }

      v63 = v11;
      if (v58 && (v19 = MEMORY[0x277D84F90], sub_258428F10()))
      {
        v20 = sub_258397E08(v19);
        v69[0] = v20;
        if (!v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v20 = MEMORY[0x277D84FA0];
        v69[0] = MEMORY[0x277D84FA0];
        if (!v17)
        {
LABEL_19:
          if ((v20 & 0xC000000000000001) == 0)
          {
            goto LABEL_46;
          }

LABEL_20:

          sub_258428EC0();
          a1 = type metadata accessor for WorldAnchor();
          sub_2584076A4(&qword_27F929360, type metadata accessor for WorldAnchor);
          sub_258428A20();
          v4 = v69[9];
          v21 = v69[10];
          v22 = v69[11];
          v23 = v69[12];
          v24 = v69[13];
          goto LABEL_50;
        }
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v25 = v66;

        sub_258428EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
        sub_258406DAC();
        sub_258428A20();
        v26 = v69[4];
        v27 = v69[5];
        a1 = v69[6];
        v6 = v69[7];
        v4 = v69[8];
      }

      else
      {
        v28 = -1 << *(v17 + 32);
        v27 = v17 + 56;
        a1 = ~v28;
        v29 = -v28;
        v30 = v29 < 64 ? ~(-1 << v29) : -1;
        v4 = v30 & *(v17 + 56);
        v31 = v66;

        v6 = 0;
        v26 = v17;
      }

      v62 = a1;
      v32 = (a1 + 64) >> 6;
LABEL_30:
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

      a1 = v26 & 0x7FFFFFFFFFFFFFFFLL;
      v38 = sub_258428F40();
      if (v38)
      {
        v67 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
        swift_dynamicCast();
        v35 = v6;
        v36 = v4;
        if (v68)
        {
          goto LABEL_39;
        }
      }

LABEL_45:
      sub_2583980BC();

      v20 = v69[0];
      if ((v69[0] & 0xC000000000000001) != 0)
      {
        goto LABEL_20;
      }

LABEL_46:
      v43 = -1 << *(v20 + 32);
      v21 = v20 + 56;
      v22 = ~v43;
      v44 = -v43;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      else
      {
        v45 = -1;
      }

      v24 = v45 & *(v20 + 56);

      v23 = 0;
      v4 = v20;
LABEL_50:
      v6 = ((v22 + 64) >> 6);
      if ((v4 & 0x8000000000000000) != 0)
      {
LABEL_51:
        v46 = sub_258428F40();
        if (!v46)
        {
          goto LABEL_4;
        }

        v67 = v46;
        type metadata accessor for WorldAnchor();
        swift_dynamicCast();
        a1 = v68;
        v47 = v23;
        v48 = v24;
        if (!v68)
        {
          goto LABEL_4;
        }

        goto LABEL_59;
      }

      while (2)
      {
        v49 = v23;
        v50 = v24;
        v47 = v23;
        if (!v24)
        {
          while (1)
          {
            v47 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              break;
            }

            if (v47 >= v6)
            {
              goto LABEL_4;
            }

            v50 = *(v21 + 8 * v47);
            ++v49;
            if (v50)
            {
              goto LABEL_58;
            }
          }

          __break(1u);
          goto LABEL_62;
        }

LABEL_58:
        v48 = (v50 - 1) & v50;
        a1 = *(*(v4 + 48) + ((v47 << 9) | (8 * __clz(__rbit64(v50)))));

        if (a1)
        {
LABEL_59:
          WorldAnchor.update()();

          v23 = v47;
          v24 = v48;
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          continue;
        }

        break;
      }

LABEL_4:
      sub_2583980BC();

      v8 = v63;
      a1 = v57;
      v6 = v56;
      if (v63 == v55)
      {
        return _s17MeasureFoundation11WorldAnchorC6didAdd7anchorsySaySo8ARAnchorCG_tFZ_0();
      }
    }

    v33 = v6;
    v34 = v4;
    v35 = v6;
    if (v4)
    {
LABEL_35:
      v36 = (v34 - 1) & v34;
      v37 = *(*(v26 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));

      if (!v37)
      {
        goto LABEL_45;
      }

LABEL_39:
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v40 = Strong;
        v41 = sub_2584002E0(v66, v64);
        if (v65 & 1) != 0 || (a1 = v41, v42 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate, swift_beginAccess(), (*(v40 + v42)) && (a1)
        {
          a1 = v69;
          sub_2583C6C58(&v68, v40);
        }
      }

      v6 = v35;
      v4 = v36;
      goto LABEL_30;
    }

    while (1)
    {
      v35 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v35 >= v32)
      {
        goto LABEL_45;
      }

      v34 = *(v27 + 8 * v35);
      ++v33;
      if (v34)
      {
        goto LABEL_35;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

  return _s17MeasureFoundation11WorldAnchorC6didAdd7anchorsySaySo8ARAnchorCG_tFZ_0();
}

uint64_t static WorldAnchor.didRemove(anchors:)(unint64_t a1)
{
  v2 = sub_2584283F0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v68 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v67 = &v61 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v61 - v9);
  v82 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_67;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v72 = v10;
    v69 = v8;
    if (v11)
    {
      v79 = v3;
      v12 = 0;
      v3 = (a1 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x259C7E900](v12, a1);
        }

        else
        {
          if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v8 = *(a1 + 8 * v12 + 32);
        }

        v13 = v8;
        v10 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_258429030();
          sub_258429070();
          sub_258429080();
          v8 = sub_258429040();
        }

        else
        {
        }

        ++v12;
      }

      while (v10 != v11);
      a1 = v82;
      v3 = v79;
      if ((v82 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      a1 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_17:
        if ((a1 & 0x4000000000000000) == 0)
        {
          v14 = *(a1 + 16);
          goto LABEL_19;
        }
      }
    }

    v8 = sub_258428F10();
    v14 = v8;
LABEL_19:
    v15 = v69;
    v16 = v72;
    if (!v14)
    {
      break;
    }

    v17 = 0;
    v71 = a1 & 0xC000000000000001;
    v62 = a1;
    v63 = a1 + 32;
    v76 = (v3 + 8);
    v61 = v14;
    while (1)
    {
LABEL_22:
      if (v71)
      {
        v8 = MEMORY[0x259C7E900](v17, a1);
      }

      else
      {
        if (v17 >= *(a1 + 16))
        {
          goto LABEL_66;
        }

        v8 = *(v63 + 8 * v17);
      }

      v3 = v8;
      if (__OFADD__(v17++, 1))
      {
        break;
      }

      v19 = [v8 identifier];
      sub_2584283D0();

      if (qword_27F927B18 != -1)
      {
        swift_once();
      }

      v20 = off_27F929308;
      v10 = *(off_27F929308 + 3);

      os_unfair_lock_lock(v10);
      swift_beginAccess();
      v21 = v20[2];

      os_unfair_lock_unlock(v10);

      if (*(v21 + 16))
      {
        v22 = sub_258384260(v16);
        if (v23)
        {
          v24 = *(*(v21 + 56) + 8 * v22);
          v25 = *v76;

          v70 = v25;
          v25(v16, v15);

          v65 = v24;
          v66 = v17;
          if ((v24 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            sub_258428EC0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
            sub_258406DAC();
            v8 = sub_258428A20();
            v26 = v82;
            v27 = v83;
            a1 = v84;
            v10 = v85;
            v28 = v86;
          }

          else
          {
            v29 = -1 << *(v24 + 32);
            v27 = v24 + 56;
            a1 = ~v29;
            v30 = -v29;
            if (v30 < 64)
            {
              v31 = ~(-1 << v30);
            }

            else
            {
              v31 = -1;
            }

            v28 = v31 & *(v24 + 56);

            v32 = v24;
            v10 = 0;
            v26 = v32;
          }

          v64 = a1;
          v33 = (a1 + 64) >> 6;
          v77 = v26;
          v78 = v27;
          v74 = v3;
          while (1)
          {
            if ((v26 & 0x8000000000000000) != 0)
            {
              v38 = sub_258428F40();
              if (!v38)
              {
                goto LABEL_56;
              }

              v80 = v38;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
              swift_dynamicCast();
              a1 = v81;
              v36 = v10;
              v37 = v28;
              if (!v81)
              {
                goto LABEL_56;
              }
            }

            else
            {
              v34 = v10;
              v35 = v28;
              v36 = v10;
              if (!v28)
              {
                while (1)
                {
                  v36 = (&v34->_os_unfair_lock_opaque + 1);
                  if (__OFADD__(v34, 1))
                  {
                    break;
                  }

                  if (v36 >= v33)
                  {
                    goto LABEL_56;
                  }

                  v35 = *(v27 + 8 * v36);
                  v34 = (v34 + 1);
                  if (v35)
                  {
                    goto LABEL_45;
                  }
                }

                __break(1u);
                goto LABEL_63;
              }

LABEL_45:
              v37 = (v35 - 1) & v35;
              a1 = *(*(v26 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));

              if (!a1)
              {
LABEL_56:
                sub_2583980BC();

                v14 = v61;
                a1 = v62;
                v17 = v66;
                if (v66 != v61)
                {
                  goto LABEL_22;
                }
              }
            }

            v79 = v37;
            swift_beginAccess();
            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              v40 = Strong;
              objc_opt_self();
              v75 = swift_dynamicCastObjCClassUnconditional();
              v41 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
              swift_beginAccess();
              v42 = *(v40 + v41);
              v43 = *(v42 + 24);

              os_unfair_lock_lock(v43);
              swift_beginAccess();
              v44 = *(v42 + 16);

              os_unfair_lock_unlock(v43);

              if (v44)
              {

                v73 = v41;
                v45 = *(v40 + v41);
                v46 = *(v45 + 24);

                os_unfair_lock_lock(v46);
                swift_beginAccess();
                v47 = *(v45 + 16);

                os_unfair_lock_unlock(v46);

                if (!v47)
                {
                  __break(1u);
                  return result;
                }

                swift_beginAccess();
                v49 = *(v47 + 16);
                v50 = *(v49 + 24);

                os_unfair_lock_lock(v50);
                swift_beginAccess();
                v51 = *(v49 + 16);
                os_unfair_lock_unlock(v50);

                v52 = [v51 identifier];

                v53 = v67;
                sub_2584283D0();

                v54 = [v75 identifier];
                v55 = v68;
                sub_2584283D0();

                LOBYTE(v54) = sub_2584283C0();
                v15 = v69;
                v56 = v70;
                v70(v55, v69);
                v56(v53, v15);
                if (v54)
                {
                  v57 = *(v40 + v73);
                  v58 = *(v57 + 24);

                  os_unfair_lock_lock(v58);
                  swift_beginAccess();
                  *(v57 + 16) = 0;

                  os_unfair_lock_unlock(v58);
                }
              }

              v3 = v74;
              sub_25840375C(v74);
              v59 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate;
              swift_beginAccess();
              if (*(v40 + v59))
              {
                WorldAnchor.update()();
              }

              v16 = v72;
            }

            v10 = v36;
            v27 = v78;
            v28 = v79;
            v26 = v77;
          }
        }
      }

      v8 = (*v76)(v16, v15);
      if (v17 == v14)
      {
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v60 = v8;
    v11 = sub_258428F10();
    v8 = v60;
  }
}

uint64_t static WorldAnchor.forEachAnchor(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v61 = a1;
  v62 = a2;
  v2 = sub_2584283F0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v59 = &v53 - v7;
  if (qword_27F927B18 == -1)
  {
    goto LABEL_2;
  }

LABEL_44:
  swift_once();
LABEL_2:
  v8 = off_27F929308;
  v9 = *(off_27F929308 + 3);

  os_unfair_lock_lock(v9);
  swift_beginAccess();
  v10 = v8[2];

  os_unfair_lock_unlock(v9);

  v11 = 0;
  v13 = v10 + 64;
  v12 = *(v10 + 64);
  v60 = v10;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v56 = (v3 + 32);
  v57 = v3 + 16;
  v55 = (v3 + 8);
  v18 = MEMORY[0x277D84F90];
  v54 = v3;
LABEL_5:
  v58 = v18;
  while (v16)
  {
LABEL_12:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = v59;
    (*(v3 + 16))(v59, *(v60 + 48) + *(v3 + 72) * (v21 | (v11 << 6)), v2);
    v23 = *(v3 + 32);
    v24 = v2;
    v23(v6, v22, v2);
    v25 = off_27F929308;
    v26 = v6;
    v27 = *(off_27F929308 + 3);

    os_unfair_lock_lock(v27);
    swift_beginAccess();
    v28 = v25[2];

    v29 = v27;
    v6 = v26;
    os_unfair_lock_unlock(v29);

    if (*(v28 + 16))
    {
      v30 = sub_258384260(v26);
      if (v31)
      {
        v32 = *v55;
        v53 = *(*(v28 + 56) + 8 * v30);

        v33 = v26;
        v2 = v24;
        v32(v33, v24);
        v34 = v58;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_25839DBBC(0, v34[2] + 1, 1, v34);
        }

        v3 = v54;
        v35 = v34;
        v36 = v34[2];
        v37 = v35;
        v38 = v35[3];
        if (v36 >= v38 >> 1)
        {
          v37 = sub_25839DBBC((v38 > 1), v36 + 1, 1, v37);
        }

        v37[2] = v36 + 1;
        v39 = &v37[v36];
        v18 = v37;
        v39[4] = v53;
        goto LABEL_5;
      }
    }

    v19 = v26;
    v2 = v24;
    (*v55)(v19, v24);
    v3 = v54;
  }

  while (1)
  {
    v20 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v11;
    if (v16)
    {
      v11 = v20;
      goto LABEL_12;
    }
  }

  v57 = v18[2];
  if (!v57)
  {
  }

  v2 = 0;
  v56 = v18 + 4;
  do
  {
    if (v2 >= v18[2])
    {
      goto LABEL_43;
    }

    v40 = v56[v2];
    if ((v40 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_258428EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
      sub_258406DAC();
      sub_258428A20();
      v6 = v65;
      v41 = v66;
      v42 = v67;
      v43 = v68;
      v44 = v69;
    }

    else
    {
      v45 = -1 << *(v40 + 32);
      v41 = (v40 + 56);
      v42 = ~v45;
      v46 = -v45;
      if (v46 < 64)
      {
        v47 = ~(-1 << v46);
      }

      else
      {
        v47 = -1;
      }

      v44 = v47 & *(v40 + 56);
      swift_bridgeObjectRetain_n();
      v43 = 0;
      v6 = v40;
    }

    v59 = v42;
    v60 = v2 + 1;
    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v48 = v43;
      v49 = v44;
      v2 = v43;
      if (!v44)
      {
        while (1)
        {
          v2 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v2 >= ((v42 + 64) >> 6))
          {
            goto LABEL_21;
          }

          v49 = *&v41[8 * v2];
          ++v48;
          if (v49)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
        goto LABEL_42;
      }

LABEL_34:
      v50 = (v49 - 1) & v49;
      v3 = *(*(v6 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v49)))));

      if (!v3)
      {
        break;
      }

      while (1)
      {
        v61(v3);

        v43 = v2;
        v44 = v50;
        if ((v6 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_36:
        v51 = sub_258428F40();
        if (v51)
        {
          v63 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
          swift_dynamicCast();
          v3 = v64;
          v2 = v43;
          v50 = v44;
          if (v64)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

LABEL_21:
    sub_2583980BC();

    v18 = v58;
    v2 = v60;
  }

  while (v60 != v57);
}

uint64_t WorldAnchor.hashValue.getter()
{
  sub_2584293C0();
  sub_2584283F0();
  sub_2584076A4(&qword_27F927FC8, MEMORY[0x277CC95F0]);
  sub_258428590();
  return sub_2584293F0();
}

uint64_t sub_25840535C()
{
  sub_2584293C0();
  sub_2584283F0();
  sub_2584076A4(&qword_27F927FC8, MEMORY[0x277CC95F0]);
  sub_258428590();
  return sub_2584293F0();
}

uint64_t sub_2584053FC()
{
  sub_2584283F0();
  sub_2584076A4(&qword_27F927FC8, MEMORY[0x277CC95F0]);
  return sub_258428590();
}

uint64_t sub_258405484()
{
  sub_2584293C0();
  (*(**v0 + 360))(v2);
  return sub_2584293F0();
}

uint64_t sub_258405508(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
  v5 = sub_258406DAC();
  v6 = MEMORY[0x259C7E2F0](v3, v4, v5);
  if (v2)
  {
    v2 = sub_258428F10();
    if (!v2)
    {
      return v6;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v6;
    }
  }

  v7 = 0;
  v8 = v1 & 0xC000000000000001;
  v40 = v1;
  v41 = v1 & 0xFFFFFFFFFFFFFF8;
  v45 = v1 + 32;
  v1 &= 0xFFFFFFFFFFFFFF8uLL;
  v42 = v8;
  v43 = v2;
LABEL_8:
  v9 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 < 0)
  {
    v9 = v6;
  }

  v44 = v9;
  v10 = v6 + 56;
  while (1)
  {
    if (v8)
    {
      v11 = MEMORY[0x259C7E900](v7, v40);
      v12 = __OFADD__(v7++, 1);
      if (v12)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v7 >= *(v1 + 16))
      {
        goto LABEL_69;
      }

      v11 = *(v45 + 8 * v7);

      v12 = __OFADD__(v7++, 1);
      if (v12)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        v3 = sub_258428F10();
        goto LABEL_3;
      }
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      break;
    }

    sub_2584293C0();
    MEMORY[0x259C7ECE0](*(v11 + 24));
    v14 = sub_2584293F0();
    v15 = -1 << *(v6 + 32);
    v16 = v14 & ~v15;
    if (((*(v10 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
LABEL_32:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v6;
      if (*(v6 + 24) <= *(v6 + 16))
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_2583C51CC();
        }

        else
        {
          sub_2583C48B4();
        }

        v2 = v6;
        sub_2584293C0();
        MEMORY[0x259C7ECE0](*(v11 + 24));
        v19 = sub_2584293F0();
        v1 = v6 + 56;
        v20 = -1 << *(v6 + 32);
        v16 = v19 & ~v20;
        if (((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_48;
        }

        v21 = ~v20;
        swift_beginAccess();
        while (1)
        {
          v23 = *(*(v46 + 48) + 8 * v16);
          swift_beginAccess();
          if (!swift_weakLoadStrong())
          {
            break;
          }

          if (!swift_weakLoadStrong())
          {

LABEL_41:
            v22 = *(v23 + 24);

            if (v22 == *(v11 + 24))
            {
              goto LABEL_74;
            }

            goto LABEL_42;
          }

          v24 = sub_2584283C0();

          if (v24)
          {
            goto LABEL_74;
          }

LABEL_42:
          v16 = (v16 + 1) & v21;
          if (((*(v1 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_41;
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2583C43BC();
      }

LABEL_48:
      v25 = v46;
      *(v46 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v16;
      *(*(v46 + 48) + 8 * v16) = v11;
      v26 = *(v46 + 16);
      v12 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v12)
      {
        goto LABEL_70;
      }

      *(v46 + 16) = v27;
      v8 = v42;
      v2 = v43;
      v1 = v41;
LABEL_50:
      v6 = v25;
      if (v7 == v2)
      {
        return v25;
      }

      goto LABEL_8;
    }

    v1 = ~v15;
    swift_beginAccess();
    while (1)
    {
      v17 = *(*(v6 + 48) + 8 * v16);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        if (swift_weakLoadStrong())
        {

          v2 = sub_2584283C0();

          if (v2)
          {
            break;
          }

          goto LABEL_20;
        }
      }

      else
      {
      }

      v2 = *(v17 + 24);

      if (v2 == *(v11 + 24))
      {
        break;
      }

LABEL_20:
      v16 = (v16 + 1) & v1;
      if (((*(v10 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v8 = v42;
    v2 = v43;
    v1 = v41;
LABEL_27:
    if (v7 == v2)
    {
      return v6;
    }
  }

  v13 = sub_258428F20();

  if (v13)
  {

    swift_dynamicCast();

    goto LABEL_27;
  }

  v28 = sub_258428F10();
  if (!__OFADD__(v28, 1))
  {
    v25 = sub_2583C5DCC(v44, v28 + 1);
    if (*(v25 + 24) <= *(v25 + 16))
    {
      sub_2583C51CC();
    }

    sub_2584293C0();
    MEMORY[0x259C7ECE0](*(v11 + 24));
    v29 = sub_2584293F0();
    v30 = v25 + 56;
    v31 = -1 << *(v25 + 32);
    v32 = v29 & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v25 + 56 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v30 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_65;
        }
      }

      goto LABEL_71;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v25 + 56 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_65:
    *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    *(*(v25 + 48) + 8 * v34) = v11;
    ++*(v25 + 16);

    goto LABEL_50;
  }

  __break(1u);
LABEL_74:
  result = sub_258429380();
  __break(1u);
  return result;
}

uint64_t sub_258405B2C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 24);

  os_unfair_lock_lock(v6);
  swift_beginAccess();
  v7 = *(v5 + 16);
  os_unfair_lock_unlock(v6);

  [v7 transform];
  v53 = v9;
  v54 = v8;
  v51 = v11;
  v52 = v10;

  v12 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
  swift_beginAccess();
  v13 = *(a1 + v12);
  v14 = *(v13 + 24);

  os_unfair_lock_lock(v14);
  swift_beginAccess();
  v15 = *(v13 + 16);
  v16 = v15;
  os_unfair_lock_unlock(v14);

  if (v15)
  {
    [v16 transform];
    v47 = v18;
    v49 = v17;
    v43 = v20;
    v45 = v19;

    v22 = v43;
    v21 = v45;
    v24 = v47;
    v23 = v49;
    v25 = 0;
  }

  else
  {
    v25 = 1;
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
  }

  v55[0] = v23;
  v55[1] = v24;
  v55[2] = v21;
  v55[3] = v22;
  v56 = v25;
  v26 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();
  v27 = *(a1 + v26);
  v28 = *(v27 + 24);

  os_unfair_lock_lock(v28);
  swift_beginAccess();
  v29 = *(v27 + 16);

  os_unfair_lock_unlock(v28);

  v30 = (a1 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence);
  swift_beginAccess();
  v31 = *v30;
  if (a2 == 2)
  {
    v32 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate;
    swift_beginAccess();
    a2 = *(a1 + v32);
  }

  v33 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
  swift_beginAccess();
  v34 = *(a1 + v33);
  v35 = *(v34 + 24);

  os_unfair_lock_lock(v35);
  swift_beginAccess();
  v36 = *(v34 + 16);
  os_unfair_lock_unlock(v35);

  [v36 transform];
  v48 = v38;
  v50 = v37;
  v44 = v40;
  v46 = v39;

  v57[0] = v50;
  v57[1] = v48;
  v57[2] = v46;
  v57[3] = v44;
  v58 = 0;
  type metadata accessor for WorldAnchor();
  v41 = swift_allocObject();
  WorldAnchor.init(transform:viewTransform:plane:confidence:shouldAutoUpdate:viewTarget:)(v55, v29, a2 & 1, v57, v54, v53, v52, v51, v31);
  return v41;
}

uint64_t sub_258405E2C(uint64_t a1)
{
  v2 = sub_258428D40();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_258405E88(void *a1, void *a2)
{
  v4 = sub_2584283F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B40);
  MEMORY[0x28223BE20](v35);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B48);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v36 = a1;
  v17 = [a1 identifier];
  sub_2584283D0();

  v18 = v5;
  v19 = *(v5 + 56);
  v20 = 1;
  v19(v16, 0, 1, v4);
  v34 = a2;
  if (a2)
  {
    v21 = [a2 identifier];
    sub_2584283D0();

    v20 = 0;
  }

  v19(v14, v20, 1, v4);
  v22 = *(v35 + 48);
  sub_258389808(v16, v8, &qword_27F928B48);
  sub_258389808(v14, &v8[v22], &qword_27F928B48);
  v23 = v18;
  v24 = *(v18 + 48);
  if (v24(v8, 1, v4) == 1)
  {
    sub_258385E40(v14, &qword_27F928B48);
    sub_258385E40(v16, &qword_27F928B48);
    if (v24(&v8[v22], 1, v4) == 1)
    {
      sub_258385E40(v8, &qword_27F928B48);
      return v36;
    }

    goto LABEL_8;
  }

  v25 = v33;
  sub_258389808(v8, v33, &qword_27F928B48);
  if (v24(&v8[v22], 1, v4) == 1)
  {
    sub_258385E40(v14, &qword_27F928B48);
    sub_258385E40(v16, &qword_27F928B48);
    (*(v23 + 8))(v25, v4);
LABEL_8:
    sub_258385E40(v8, &qword_27F928B40);
    goto LABEL_9;
  }

  v28 = v25;
  v29 = v32;
  (*(v23 + 32))(v32, &v8[v22], v4);
  sub_2584076A4(&qword_27F927FD0, MEMORY[0x277CC95F0]);
  LODWORD(v35) = sub_258428600();
  v30 = *(v23 + 8);
  v30(v29, v4);
  sub_258385E40(v14, &qword_27F928B48);
  sub_258385E40(v16, &qword_27F928B48);
  v30(v28, v4);
  sub_258385E40(v8, &qword_27F928B48);
  if (v35)
  {
    return v36;
  }

LABEL_9:
  sub_25840375C(v36);
  v26 = v34;
  if (v34)
  {
    v27 = v34;
    sub_2584031E0(v27);
  }

  return v26;
}

uint64_t type metadata accessor for WorldAnchor()
{
  result = qword_27F929378;
  if (!qword_27F929378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s17MeasureFoundation11WorldAnchorC6didAdd7anchorsySaySo8ARAnchorCG_tFZ_0()
{
  v0 = sub_2584283F0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v75 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v70 - v5;
  MEMORY[0x28223BE20](v4);
  v84 = &v70 - v7;
  if (qword_27F927B18 != -1)
  {
    goto LABEL_70;
  }

LABEL_2:
  v8 = off_27F929308;
  v9 = *(off_27F929308 + 3);

  os_unfair_lock_lock(v9);
  swift_beginAccess();
  v10 = v8[2];

  os_unfair_lock_unlock(v9);

  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v82 = v1 + 32;
  v83 = v1 + 16;
  v85 = (v1 + 8);
  v86 = v10;

  v16 = 0;
  v78 = v1;
  v79 = v0;
  v80 = v6;
  v81 = v15;
  while (v14)
  {
LABEL_12:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = v84;
    (*(v1 + 16))(v84, *(v86 + 48) + *(v1 + 72) * (v18 | (v16 << 6)), v0);
    (*(v1 + 32))(v6, v19, v0);
    v20 = off_27F929308;
    v21 = v6;
    v22 = *(off_27F929308 + 3);

    os_unfair_lock_lock(v22);
    swift_beginAccess();
    v23 = v20[2];

    os_unfair_lock_unlock(v22);

    if (!*(v23 + 16))
    {

      (*v85)(v21, v0);
      goto LABEL_21;
    }

    v24 = sub_258384260(v21);
    if (v25)
    {
      v26 = *(*(v23 + 56) + 8 * v24);

      v27 = v26 & 0xC000000000000001;
      if ((v26 & 0xC000000000000001) != 0)
      {
        v76 = v26 & 0xC000000000000001;
        if (v26 < 0)
        {
          v28 = v26;
        }

        else
        {
          v28 = v26 & 0xFFFFFFFFFFFFFF8;
        }

        v29 = sub_258428EB0();
        v31 = v30;
        v32 = sub_258428F60();
        v34 = MEMORY[0x259C7E7F0](v29, v31, v32, v33);

        if (v34)
        {
          v77 = v31;
LABEL_28:
          v0 = v79;
          v6 = v80;
          v27 = v76;
LABEL_29:
          sub_2583E3C34(v29, v77, v27 != 0);

          (*v85)(v6, v0);
LABEL_30:

          goto LABEL_31;
        }

        v87 = MEMORY[0x259C7E840](v29, v31, v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
        swift_dynamicCast();
        sub_2583E3C34(v29, v31, 1);

        v0 = v79;
      }

      else
      {
        v35 = 0;
        v36 = 0;
        v29 = 1 << *(v26 + 32);
        while (1)
        {
          v37 = *(v26 + 8 * v36 + 56);
          if (v37)
          {
            break;
          }

          ++v36;
          v35 -= 64;
          if ((v29 + 63) >> 6 == v36)
          {
            v77 = *(v26 + 36);

            v6 = v80;
            goto LABEL_29;
          }
        }

        v76 = v26 & 0xC000000000000001;
        v73 = v26 + 56;
        v74 = __clz(__rbit64(v37));
        v38 = v74 - v29;
        v77 = *(v26 + 36);

        if (v38 == v35)
        {
          goto LABEL_28;
        }

        v0 = v79;
        if (-v35 < 0 || (v40 = v74 - v35, v40 >= v29))
        {
          __break(1u);
LABEL_72:
          __break(1u);
          return result;
        }

        if (((*(v73 + 8 * (v36 & 0x3FFFFFFFFFFFFFFLL)) >> v74) & 1) == 0)
        {
          goto LABEL_72;
        }

        sub_2583E3C34(v40, v77, 0);
      }

      v6 = v80;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();

      if (Strong)
      {
        v42 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
        swift_beginAccess();
        v43 = *(Strong + v42);
        v44 = *(v43 + 24);

        os_unfair_lock_lock(v44);
        swift_beginAccess();
        v45 = *(v43 + 16);

        os_unfair_lock_unlock(v44);

        if (!v45)
        {
          v0 = v79;
          v6 = v80;
          (*v85)(v80, v79);
          goto LABEL_30;
        }

        if (*(v45 + 48) != 3)
        {
          v0 = v79;
          v6 = v80;
          (*v85)(v80, v79);

          goto LABEL_30;
        }

        swift_beginAccess();
        v46 = *(v45 + 16);
        v47 = *(v46 + 24);

        os_unfair_lock_lock(v47);
        swift_beginAccess();
        v48 = *(v46 + 16);
        os_unfair_lock_unlock(v47);

        v49 = [v48 identifier];

        v50 = v75;
        sub_2584283D0();

        sub_2584076A4(&qword_27F927FD0, MEMORY[0x277CC95F0]);
        v0 = v79;
        v21 = v80;
        LOBYTE(v49) = sub_258428600();

        v51 = v50;
        v6 = *v85;
        (*v85)(v51, v0);
        if (v49)
        {
          v71 = v6;
          if (v76)
          {
            swift_unknownObjectRetain();
            sub_258428EC0();
            v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
            sub_258406DAC();
            sub_258428A20();
            v52 = v90;
            v72 = v89;
            v53 = v91;
            v1 = v92;
            v54 = v93;
          }

          else
          {
            v55 = -1 << *(v26 + 32);
            v52 = v26 + 56;
            v53 = ~v55;
            v56 = -v55;
            if (v56 < 64)
            {
              v57 = ~(-1 << v56);
            }

            else
            {
              v57 = -1;
            }

            v58 = v57 & *(v26 + 56);

            v54 = v58;
            v1 = 0;
            v72 = v26;
          }

          v70 = v53;
          v59 = (v53 + 64) >> 6;
          v0 = v72;
          v73 = v59;
          v74 = v52;
          while (1)
          {
            v76 = v1;
            if (v0 < 0)
            {
              v63 = v0;
              v64 = v54;
              v62 = v63;
              v65 = sub_258428F40();
              if (!v65)
              {
                goto LABEL_65;
              }

              v87 = v65;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
              swift_dynamicCast();
              v6 = v88;
              v77 = v64;
            }

            else
            {
              v60 = v1;
              v61 = v54;
              if (!v54)
              {
                while (1)
                {
                  v1 = v60 + 1;
                  if (__OFADD__(v60, 1))
                  {
                    break;
                  }

                  if (v1 >= v59)
                  {
                    goto LABEL_65;
                  }

                  v61 = *(v52 + 8 * v1);
                  ++v60;
                  if (v61)
                  {
                    goto LABEL_58;
                  }
                }

LABEL_69:
                __break(1u);
LABEL_70:
                swift_once();
                goto LABEL_2;
              }

LABEL_58:
              v77 = (v61 - 1) & v61;
              v62 = v0;
              v6 = *(*(v0 + 48) + ((v1 << 9) | (8 * __clz(__rbit64(v61)))));
            }

            v0 = v62;
            v52 = v74;
            if (!v6)
            {
LABEL_65:
              sub_2583980BC();
              v0 = v79;
              v6 = v80;
              (v71)(v80, v79);
              goto LABEL_30;
            }

            swift_beginAccess();
            v66 = swift_weakLoadStrong();
            if (v66)
            {
              v67 = v66;
              v68 = v52;
              v69 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate;
              swift_beginAccess();
              if (*(v67 + v69))
              {
                WorldAnchor.update()();
              }

              v52 = v68;
              v0 = v72;
            }

            v54 = v77;
            v59 = v73;
          }
        }

        (v6)(v21, v0);

        v1 = v78;
LABEL_21:
        v6 = v21;
        v15 = v81;
      }

      else
      {

        (*v85)(v6, v0);
LABEL_31:
        v1 = v78;
        v15 = v81;
      }
    }

    else
    {
      v6 = v21;

      (*v85)(v21, v0);
      v15 = v81;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_69;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }
}

unint64_t sub_258406DAC()
{
  result = qword_27F929368;
  if (!qword_27F929368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F928AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929368);
  }

  return result;
}

uint64_t _s17MeasureFoundation11WorldAnchorC21resetPlanesConfidenceyyFZ_0()
{
  v0 = sub_2584283F0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v52 = &v47 - v5;
  if (qword_27F927B18 != -1)
  {
LABEL_47:
    swift_once();
  }

  v6 = off_27F929308;
  v7 = *(off_27F929308 + 3);

  os_unfair_lock_lock(v7);
  swift_beginAccess();
  v8 = v6[2];

  os_unfair_lock_unlock(v7);

  v9 = 0;
  v11 = v8 + 64;
  v10 = *(v8 + 64);
  v53 = v8;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10;
  v15 = (v12 + 63) >> 6;
  v51 = v1 + 16;
  v49 = v1 + 32;
  v48 = (v1 + 8);
  v50 = MEMORY[0x277D84F90];
  if ((v13 & v10) != 0)
  {
    do
    {
LABEL_11:
      while (1)
      {
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v18 = v52;
        (*(v1 + 16))(v52, *(v53 + 48) + *(v1 + 72) * (v17 | (v9 << 6)), v0);
        (*(v1 + 32))(v4, v18, v0);
        v19 = off_27F929308;
        v20 = *(off_27F929308 + 3);

        os_unfair_lock_lock(v20);
        swift_beginAccess();
        v21 = v19[2];

        os_unfair_lock_unlock(v20);

        if (*(v21 + 16))
        {
          v22 = sub_258384260(v4);
          if (v23)
          {
            break;
          }
        }

        (*v48)(v4, v0);
        if (!v14)
        {
          goto LABEL_7;
        }
      }

      v24 = *v48;
      v47 = *(*(v21 + 56) + 8 * v22);

      v24(v4, v0);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_25839DBBC(0, v50[2] + 1, 1, v50);
      }

      v26 = v50[2];
      v25 = v50[3];
      if (v26 >= v25 >> 1)
      {
        v50 = sub_25839DBBC((v25 > 1), v26 + 1, 1, v50);
      }

      v27 = v50;
      v50[2] = v26 + 1;
      v27[v26 + 4] = v47;
    }

    while (v14);
  }

  while (1)
  {
LABEL_7:
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v16 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v16);
    ++v9;
    if (v14)
    {
      v9 = v16;
      goto LABEL_11;
    }
  }

  v28 = v50;
  v49 = v50[2];
  if (v49)
  {
    v0 = 0;
    v48 = (v50 + 4);
    do
    {
      if (v0 >= v28[2])
      {
        goto LABEL_46;
      }

      v52 = v48[v0];
      if ((v52 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        sub_258428EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
        sub_258406DAC();
        sub_258428A20();
        v30 = v56;
        v29 = v57;
        v1 = v58;
        v31 = v59;
        v32 = v60;
      }

      else
      {
        v33 = -1 << *(v52 + 32);
        v29 = (v52 + 56);
        v1 = ~v33;
        v34 = -v33;
        if (v34 < 64)
        {
          v35 = ~(-1 << v34);
        }

        else
        {
          v35 = -1;
        }

        v32 = (v35 & *(v52 + 56));
        v30 = v52;
        swift_bridgeObjectRetain_n();
        v31 = 0;
      }

      v53 = ++v0;
      v51 = v1;
      v36 = (v1 + 64) >> 6;
      while ((v30 & 0x8000000000000000) != 0)
      {
        v41 = sub_258428F40();
        if (!v41)
        {
          goto LABEL_21;
        }

        v54 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AA0);
        swift_dynamicCast();
        v39 = v31;
        v4 = v32;
        if (!v55)
        {
          goto LABEL_21;
        }

LABEL_40:
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v43 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
          v1 = Strong;
          swift_beginAccess();
          v44 = *(v1 + v43);
          v0 = *(v44 + 24);

          os_unfair_lock_lock(v0);
          swift_beginAccess();
          v45 = *(v44 + 16);

          os_unfair_lock_unlock(v0);

          if (v45)
          {
            *(v45 + 52) = 0;
          }
        }

        v31 = v39;
        v32 = v4;
      }

      v37 = v31;
      v38 = v32;
      v39 = v31;
      if (!v32)
      {
        while (1)
        {
          v39 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v39 >= v36)
          {
            goto LABEL_21;
          }

          v38 = *&v29[8 * v39];
          ++v37;
          if (v38)
          {
            goto LABEL_36;
          }
        }

        __break(1u);
        goto LABEL_45;
      }

LABEL_36:
      v4 = ((v38 - 1) & v38);
      v40 = *(*(v30 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));

      if (v40)
      {
        goto LABEL_40;
      }

LABEL_21:
      sub_2583980BC();

      v0 = v53;
      v28 = v50;
    }

    while (v53 != v49);
  }
}

float sub_258407514@<S0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence);
  swift_beginAccess();
  result = *v3;
  *a2 = *v3;
  return result;
}

uint64_t sub_258407568(int *a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence);
  result = swift_beginAccess();
  *v3 = v2;
  return result;
}

uint64_t sub_2584075D0()
{
  result = sub_2584283F0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2584076A4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2584076F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE600000000000000;
  v6 = 0x6874676E656CLL;
  v7 = 0x6574616D69747365;
  v8 = 0xEE00726F72724564;
  if (a1 != 4)
  {
    v7 = 0xD000000000000016;
    v8 = 0x8000000258433AD0;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7472617473;
  if (a1 != 1)
  {
    v10 = 6581861;
    v9 = 0xE300000000000000;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x6874676E656CLL)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEE00726F72724564;
      if (v11 != 0x6574616D69747365)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0x8000000258433AD0;
      if (v11 != 0xD000000000000016)
      {
LABEL_33:
        v14 = sub_258429310();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x7472617473)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xE300000000000000;
      if (v11 != 6581861)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v11 != 25705)
    {
      goto LABEL_33;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_2584078C4()
{
  sub_2584293C0();
  sub_2584286C0();

  return sub_2584293F0();
}

uint64_t sub_2584079C0()
{
  sub_2584293C0();
  sub_2584286C0();

  return sub_2584293F0();
}

uint64_t WorldLine.lineType.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_lineType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorldLine.lineType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_lineType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_258407BB8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_center;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id WorldLine.center.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_center;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_258407C6C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t WorldLine.isOnVerticalGuide.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_isOnVerticalGuide;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorldLine.isOnVerticalGuide.setter(char a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_isOnVerticalGuide;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_258407F78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_identifiersOfObjectsComposedInto;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t WorldLine.isALineMeasurement.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_isALineMeasurement;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorldLine.isALineMeasurement.setter(char a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_isALineMeasurement;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double WorldLine.meanFPSDuringPlacement.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_meanFPSDuringPlacement;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorldLine.meanFPSDuringPlacement.setter(double a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_meanFPSDuringPlacement;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t WorldLine.init(end1:end2:initialState:)(char *a1, void *a2, char *a3, char a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC17MeasureFoundation9WorldLine_lineType] = 1;
  v4[OBJC_IVAR____TtC17MeasureFoundation9WorldLine_isOnVerticalGuide] = 0;
  *&v4[OBJC_IVAR____TtC17MeasureFoundation9WorldLine_identifiersOfObjectsComposedInto] = 0;
  v4[OBJC_IVAR____TtC17MeasureFoundation9WorldLine_isALineMeasurement] = 0;
  *&v4[OBJC_IVAR____TtC17MeasureFoundation9WorldLine_meanFPSDuringPlacement] = 0xBFF0000000000000;
  WorldPoint.type.setter(1);
  WorldPoint.type.setter(1);
  if (a4)
  {
    swift_beginAccess();
    a3 = static MeasureObjectState.default;
  }

  WorldPoint.state.setter(a3);
  WorldPoint.state.setter(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F928860);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25842DE60;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *&v4[OBJC_IVAR____TtC17MeasureFoundation9WorldLine_ends] = v10;
  v11 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  swift_beginAccess();
  v12 = *&a1[v11];
  v13 = *(v12 + 24);
  v75 = a1;
  v74 = a2;

  os_unfair_lock_lock(v13);
  swift_beginAccess();
  v14 = *(v12 + 16);

  os_unfair_lock_unlock(v13);

  v78 = *(v14 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 16);
  v79 = *(v14 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
  v76 = *(v14 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48);
  v77 = *(v14 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 32);

  type metadata accessor for WorldAnchor();
  v15 = swift_allocObject();
  _s17MeasureFoundation11WorldAnchorC10identifier0B04UUIDVvpfi_0();
  v16 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929310);
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *v18 = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = v18;
  *(v15 + v16) = v17;
  *(v15 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_maxTranslationForPlaneUpgrade) = 994352038;
  *(v15 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_minDotForPlaneUpgrade) = 1065289295;
  v19 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929320);
  v20 = swift_allocObject();
  v21 = swift_slowAlloc();
  *v21 = 0;
  *(v20 + 16) = 0;
  *(v20 + 24) = v21;
  *(v15 + v19) = v20;
  v22 = (v15 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v15 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
  *v23 = v79;
  v23[1] = v78;
  v23[2] = v77;
  v23[3] = v76;
  v24 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v25 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
  v26 = swift_allocObject();
  v27 = v24;
  v28 = swift_slowAlloc();
  *v28 = 0;
  *(v26 + 16) = v27;
  *(v26 + 24) = v28;
  *(v15 + v25) = v26;
  swift_endAccess();

  swift_beginAccess();

  v29 = swift_allocObject();
  v30 = swift_slowAlloc();
  *v30 = 0;
  *(v29 + 16) = 0;
  *(v29 + 24) = v30;
  *(v15 + v19) = v29;
  swift_endAccess();
  v31 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v32 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
  swift_beginAccess();
  v33 = swift_allocObject();
  v34 = v31;
  v35 = swift_slowAlloc();
  *v35 = 0;
  *(v33 + 16) = v34;
  *(v33 + 24) = v35;
  *(v15 + v32) = v33;
  swift_endAccess();

  v36 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();

  v37 = swift_allocObject();
  v38 = swift_slowAlloc();
  *v38 = 0;
  *(v37 + 16) = 0;
  *(v37 + 24) = v38;
  *(v15 + v36) = v37;
  swift_endAccess();
  *(v15 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate) = 0;
  *(v15 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence) = 0;
  v39 = *(v15 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor);
  v40 = *(v39 + 24);

  os_unfair_lock_lock(v40);
  swift_beginAccess();
  v41 = *(v39 + 16);
  os_unfair_lock_unlock(v40);

  sub_2584031E0(v41);

  v42 = *(v15 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor);
  v43 = *(v42 + 24);

  os_unfair_lock_lock(v43);
  swift_beginAccess();
  v44 = *(v42 + 16);
  os_unfair_lock_unlock(v43);

  sub_2584031E0(v44);

  v45 = *(v15 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor);
  v46 = *(v45 + 24);

  os_unfair_lock_lock(v46);
  swift_beginAccess();
  v47 = *(v45 + 16);
  v48 = v47;
  os_unfair_lock_unlock(v46);

  if (v47)
  {
    sub_2584031E0(v48);
  }

  if (qword_27F927B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_27F92F350)
  {
    sub_2583ACFA4(&static WorldAnchor.delegate, v80);
    v49 = v81;
    v50 = v82;
    __swift_project_boxed_opaque_existential_0(v80, v81);
    (*(v50 + 8))(v15, v49, v50);
    __swift_destroy_boxed_opaque_existential_0(v80);
  }

  swift_beginAccess();
  v51 = static MeasureObjectState.default;
  v52 = objc_allocWithZone(type metadata accessor for WorldPoint());
  *&v5[OBJC_IVAR____TtC17MeasureFoundation9WorldLine_center] = WorldPoint.init(anchor:type:state:)(v15, 2, v51);
  *&v5[OBJC_IVAR____TtC17MeasureFoundation9WorldLine_snappedPoints] = MEMORY[0x277D84F90];
  v53 = type metadata accessor for WorldLine();
  v83.receiver = v5;
  v83.super_class = v53;
  v54 = objc_msgSendSuper2(&v83, sel_init);
  v55 = *&v54[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state];
  v56 = *(v55 + 24);
  v57 = v54;

  os_unfair_lock_lock(v56);
  swift_beginAccess();
  *(v55 + 16) = a3;
  os_unfair_lock_unlock(v56);

  WorldLine.updateSubPoints()();
  v58 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_ends;
  swift_beginAccess();
  v59 = *&v57[v58];
  if ((v59 & 0xC000000000000001) != 0)
  {
    v60 = MEMORY[0x259C7E900](0);
  }

  else
  {
    if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v60 = *(v59 + 32);
  }

  v61 = v60;
  swift_endAccess();
  v62 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_lines;
  swift_beginAccess();
  v63 = v57;
  MEMORY[0x259C7E150](v63, v64);
  if (*((*(v61 + v62) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v61 + v62) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2584288B0();
  }

  sub_258428900();
  swift_endAccess();

  result = swift_beginAccess();
  v66 = *&v57[v58];
  if ((v66 & 0xC000000000000001) != 0)
  {
    v67 = MEMORY[0x259C7E900](1);
LABEL_17:
    v57 = v67;
    swift_endAccess();
    v68 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_lines;
    swift_beginAccess();
    a3 = v63;
    MEMORY[0x259C7E150](a3, v69);
    if (*((*&v57[v68] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v57[v68] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_18:
      sub_258428900();
      swift_endAccess();

      v70 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_center;
      swift_beginAccess();
      v71 = *&a3[v70];
      v72 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_parentLine;
      swift_beginAccess();
      v73 = *(v71 + v72);
      *(v71 + v72) = a3;

      return a3;
    }

LABEL_22:
    sub_2584288B0();
    goto LABEL_18;
  }

  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v67 = *(v66 + 40);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall WorldLine.cleanup()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_ends;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x259C7E900](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v4 = *(v3 + 32);
  }

  WorldPoint.removeLine(_:)(v1);

  v5 = *(v1 + v2);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x259C7E900](1, v5);
  }

  else
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_23;
    }

    v6 = *(v5 + 40);
  }

  WorldPoint.removeLine(_:)(v1);

  v7 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_center;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_parentLine;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = 0;

  v11 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_snappedPoints;
  swift_beginAccess();
  v1 = *(v1 + v11);
  if (!(v1 >> 62))
  {
    v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_20:
  v12 = sub_258428F10();
  if (!v12)
  {
    return;
  }

LABEL_9:
  if (v12 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v13 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x259C7E900](v13, v1);
    }

    else
    {
      v14 = *(v1 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    v16 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_snapLine;
    swift_beginAccess();
    v17 = *&v15[v16];
    *&v15[v16] = 0;
  }

  while (v12 != v13);
}

Swift::Void __swiftcall WorldLine.updateSubPoints()()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_center;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  swift_beginAccess();
  v4 = *&v2[v3];
  v5 = *(v4 + 24);
  v6 = v2;

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v7 = *(v4 + 16);

  os_unfair_lock_unlock(v5);

  v166 = *(v7 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 16);
  v169 = *(v7 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
  v164 = *(v7 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 32);

  v8 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_ends;
  swift_beginAccess();
  v159 = v0;
  v9 = *(v0 + v8);
  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_48;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = v9[4];
    goto LABEL_4;
  }

  __break(1u);
LABEL_51:

  v20 = MEMORY[0x259C7E900](0, v9);

LABEL_10:
  v21 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  swift_beginAccess();
  v22 = *&v20[v21];
  v23 = *(v22 + 24);

  os_unfair_lock_lock(v23);
  swift_beginAccess();
  v24 = *(v22 + 16);

  os_unfair_lock_unlock(v23);

  v152 = *(v24 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48);

  v25 = vsubq_f32(v155, v152);
  v156 = *v160.i32 + (0.5 * *v25.i32);
  v161 = vadd_f32(*&vextq_s8(v160, v160, 4uLL), vmul_f32(*&vextq_s8(v25, v25, 4uLL), 0x3F0000003F000000));
  v26 = *(v159 + v1);
  v27 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  swift_beginAccess();
  v28 = *&v26[v27];
  v9 = *(v28 + 24);
  v29 = v26;

  os_unfair_lock_lock(v9);
  swift_beginAccess();
  v30 = *(v28 + 16);

  os_unfair_lock_unlock(v9);

  v13 = &unk_27F929000;

  v153 = *(v30 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48);

  if (v156 != *v153.i32 || (v31 = vceq_f32(v161, *&vextq_s8(v153, v153, 4uLL)), (v31.i32[0] & v31.i32[1] & 1) == 0))
  {
    __asm { FMOV            V0.4S, #1.0 }

    _Q0.f32[0] = v156;
    *&_Q0.i32[1] = v161;
    v162 = _Q0;
    v37 = *(v159 + v1);
    type metadata accessor for WorldAnchor();
    v18 = swift_allocObject();
    v155.i64[0] = v37;
    _s17MeasureFoundation11WorldAnchorC10identifier0B04UUIDVvpfi_0();
    v38 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929310);
    v39 = swift_allocObject();
    v40 = swift_slowAlloc();
    *(&v18->_os_unfair_lock_opaque + v38) = v39;
    *v40 = 0;
    *(&v18->_os_unfair_lock_opaque + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_maxTranslationForPlaneUpgrade) = 994352038;
    *(v39 + 16) = 0;
    *(v39 + 24) = v40;
    *(&v18->_os_unfair_lock_opaque + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_minDotForPlaneUpgrade) = 1065289295;
    v41 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929320);
    v42 = swift_allocObject();
    v43 = swift_slowAlloc();
    *v43 = 0;
    *(&v18->_os_unfair_lock_opaque + v41) = v42;
    *(v42 + 16) = 0;
    *(v42 + 24) = v43;
    v44 = (&v18->_os_unfair_lock_opaque + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler);
    *v44 = 0;
    v44[1] = 0;
    v45 = (v18 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
    *v45 = v169;
    v45[1] = v166;
    v45[2] = v164;
    v45[3] = v162;
    v46 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
    v47 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
    v48 = swift_allocObject();
    v49 = v46;
    v50 = swift_slowAlloc();
    *v50 = 0;
    *(v48 + 16) = v49;
    *(v48 + 24) = v50;
    *(&v18->_os_unfair_lock_opaque + v47) = v48;
    swift_endAccess();

    swift_beginAccess();

    v51 = swift_allocObject();
    v52 = swift_slowAlloc();
    *v52 = 0;
    *(v51 + 16) = 0;
    *(v51 + 24) = v52;
    *(&v18->_os_unfair_lock_opaque + v41) = v51;
    swift_endAccess();
    v53 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
    v9 = &unk_27F929000;
    v54 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
    swift_beginAccess();
    v55 = swift_allocObject();
    v56 = v53;
    v57 = swift_slowAlloc();
    *v57 = 0;
    *(v55 + 16) = v56;
    *(v55 + 24) = v57;
    *(&v18->_os_unfair_lock_opaque + v54) = v55;
    swift_endAccess();

    v58 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
    swift_beginAccess();

    v59 = swift_allocObject();
    v60 = swift_slowAlloc();
    *v60 = 0;
    *(v59 + 16) = 0;
    *(v59 + 24) = v60;
    *(&v18->_os_unfair_lock_opaque + v58) = v59;
    swift_endAccess();
    *(&v18->_os_unfair_lock_opaque + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate) = 0;
    *(&v18->_os_unfair_lock_opaque + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence) = 0;
    v61 = *(&v18->_os_unfair_lock_opaque + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor);
    v62 = *(v61 + 24);

    os_unfair_lock_lock(v62);
    swift_beginAccess();
    v63 = *(v61 + 16);
    os_unfair_lock_unlock(v62);

    sub_2584031E0(v63);

    v64 = *(&v18->_os_unfair_lock_opaque + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor);
    v65 = *(v64 + 24);

    os_unfair_lock_lock(v65);
    swift_beginAccess();
    v66 = *(v64 + 16);
    os_unfair_lock_unlock(v65);

    sub_2584031E0(v66);

    v67 = *(&v18->_os_unfair_lock_opaque + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor);
    v68 = *(v67 + 24);

    os_unfair_lock_lock(v68);
    swift_beginAccess();
    v69 = *(v67 + 16);
    v70 = v69;
    os_unfair_lock_unlock(v68);

    if (v69)
    {
      sub_2584031E0(v70);
    }

    if (qword_27F927B20 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_15;
  }

LABEL_18:
  v76 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_snappedPoints;
  swift_beginAccess();
  v8 = *(v159 + v76);
  if (v8 >> 62)
  {
    goto LABEL_53;
  }

  v77 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
  v78 = &unk_27F929000;
  v79 = v149;
  if (!v77)
  {
    return;
  }

  if (v77 >= 1)
  {
    v148 = v8 & 0xC000000000000001;

    v1 = 0;
    v146 = v77;
    v147 = v8;
    while (1)
    {
      if (v148)
      {
        v81 = MEMORY[0x259C7E900](v1, v8);
      }

      else
      {
        v81 = *(v8 + 8 * v1 + 32);
      }

      v8 = *(v159 + v79);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = v81;

        v82 = MEMORY[0x259C7E900](0, v8);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:

          v10 = MEMORY[0x259C7E900](0, v9);

LABEL_4:
          v11 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
          swift_beginAccess();
          v12 = *&v10[v11];
          v13 = *(v12 + 24);

          os_unfair_lock_lock(v13);
          swift_beginAccess();
          v14 = *(v12 + 16);

          os_unfair_lock_unlock(v13);

          v160 = *(v14 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48);

          v9 = *(v159 + v8);
          if ((v9 & 0xC000000000000001) == 0)
          {
            if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
            {
              v15 = v9[5];
              goto LABEL_7;
            }

            __break(1u);
LABEL_53:
            v77 = sub_258428F10();
            goto LABEL_20;
          }

          v15 = MEMORY[0x259C7E900](1, v9);

LABEL_7:
          v16 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
          swift_beginAccess();
          v17 = *&v15[v16];
          v18 = *(v17 + 24);

          os_unfair_lock_lock(v18);
          swift_beginAccess();
          v19 = *(v17 + 16);

          os_unfair_lock_unlock(v18);

          v155 = *(v19 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48);

          v9 = *(v159 + v8);
          v149 = v8;
          if ((v9 & 0xC000000000000001) != 0)
          {
            goto LABEL_51;
          }

          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v20 = v9[4];
            goto LABEL_10;
          }

          __break(1u);
LABEL_55:
          swift_once();
LABEL_15:
          swift_beginAccess();
          if (qword_27F92F350)
          {
            sub_2583ACFA4(&static WorldAnchor.delegate, v172);
            v71 = v173;
            v72 = v174;
            __swift_project_boxed_opaque_existential_0(v172, v173);
            (*(v72 + 8))(v18, v71, v72);
            __swift_destroy_boxed_opaque_existential_0(v172);
          }

          v73 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
          swift_beginAccess();
          v74 = *(v155.i64[0] + v73);
          v75 = *(v74 + 24);

          os_unfair_lock_lock(v75);
          swift_beginAccess();
          *(v74 + 16) = v18;

          os_unfair_lock_unlock(v75);

          sub_25841430C();

          v13 = &unk_27F929000;
          goto LABEL_18;
        }

        v9 = v81;
        v82 = *(v8 + 32);
      }

      v83 = v78[146];
      swift_beginAccess();
      v84 = *&v82[v83];
      v85 = *(v84 + 24);

      os_unfair_lock_lock(v85);
      swift_beginAccess();
      v86 = *(v84 + 16);

      os_unfair_lock_unlock(v85);

      v169 = *(v86 + *&v13[204]._os_unfair_lock_opaque + 48);

      v8 = *(v159 + v79);
      if ((v8 & 0xC000000000000001) != 0)
      {

        v87 = MEMORY[0x259C7E900](1, v8);
      }

      else
      {
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_47;
        }

        v87 = *(v8 + 40);
      }

      v88 = v169;
      v88.i32[3] = 0;
      v170 = v88;
      v89 = v78[146];
      swift_beginAccess();
      v90 = *&v87[v89];
      v91 = *(v90 + 24);

      os_unfair_lock_lock(v91);
      swift_beginAccess();
      v92 = *(v90 + 16);

      os_unfair_lock_unlock(v91);

      v167 = *(v92 + *&v13[204]._os_unfair_lock_opaque + 48);

      v93 = v167;
      v93.i32[3] = 0;
      v168 = v93;
      v94 = v78[146];
      swift_beginAccess();
      v95 = *(v9 + v94);
      v96 = *(v95 + 24);

      os_unfair_lock_lock(v96);
      swift_beginAccess();
      v97 = *(v95 + 16);

      os_unfair_lock_unlock(v96);

      v165 = *(v97 + *&v13[204]._os_unfair_lock_opaque + 48);

      v98 = v165;
      v98.i32[3] = 0;
      *v99.i64 = closestPointOnLine(lineP1:lineP2:point:)(v170, v168, v98);
      v171 = v99;
      v100 = *(v9 + v94);
      v101 = *(v100 + 24);

      os_unfair_lock_lock(v101);
      swift_beginAccess();
      v102 = *(v100 + 16);

      os_unfair_lock_unlock(v101);

      v103 = (v102 + *&v13[204]._os_unfair_lock_opaque);
      v164 = v103[1];
      v166 = *v103;
      v163 = v103[2];

      v104 = v171;
      v104.i32[3] = 1.0;
      v169 = v104;
      v105 = *(v9 + v94);
      v106 = *(v105 + 24);

      os_unfair_lock_lock(v106);
      swift_beginAccess();
      v107 = *(v105 + 16);

      os_unfair_lock_unlock(v106);

      v108 = (v107 + *&v13[204]._os_unfair_lock_opaque);
      v150 = v108[1];
      v151 = *v108;
      v154 = v108[2];
      v157 = v108[3];

      if ((vminvq_u32(vandq_s8(vandq_s8(vandq_s8(vceqq_f32(v150, v164), vceqq_f32(v151, v166)), vceqq_f32(v154, v163)), vceqq_f32(v157, v169))) & 0x80000000) != 0)
      {

        v80 = v146;
        v8 = v147;
      }

      else
      {
        v158 = v9;
        type metadata accessor for WorldAnchor();
        v109 = swift_allocObject();
        _s17MeasureFoundation11WorldAnchorC10identifier0B04UUIDVvpfi_0();
        v110 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929310);
        v111 = swift_allocObject();
        v112 = swift_slowAlloc();
        *v112 = 0;
        *(v111 + 16) = 0;
        *(v111 + 24) = v112;
        *(v109 + v110) = v111;
        *(v109 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_maxTranslationForPlaneUpgrade) = 994352038;
        *(v109 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_minDotForPlaneUpgrade) = 1065289295;
        v113 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929320);
        v114 = swift_allocObject();
        v115 = swift_slowAlloc();
        *v115 = 0;
        *(v109 + v113) = v114;
        *(v114 + 16) = 0;
        *(v114 + 24) = v115;
        v116 = (v109 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler);
        *v116 = 0;
        v116[1] = 0;
        v117 = (v109 + *&v13[204]._os_unfair_lock_opaque);
        *v117 = v166;
        v117[1] = v164;
        v117[2] = v163;
        v117[3] = v169;
        v118 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
        v119 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
        v120 = swift_allocObject();
        v121 = v118;
        v122 = swift_slowAlloc();
        *v122 = 0;
        *(v120 + 16) = v121;
        *(v120 + 24) = v122;
        *(v109 + v119) = v120;
        swift_endAccess();

        swift_beginAccess();

        v123 = swift_allocObject();
        v124 = swift_slowAlloc();
        *v124 = 0;
        *(v123 + 16) = 0;
        *(v123 + 24) = v124;
        *(v109 + v113) = v123;
        swift_endAccess();
        v125 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
        v126 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
        swift_beginAccess();
        v127 = swift_allocObject();
        v128 = v125;
        v129 = swift_slowAlloc();
        *v129 = 0;
        *(v127 + 16) = v128;
        *(v127 + 24) = v129;
        *(v109 + v126) = v127;
        swift_endAccess();

        v130 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
        swift_beginAccess();

        v131 = swift_allocObject();
        v132 = swift_slowAlloc();
        *v132 = 0;
        *(v131 + 16) = 0;
        *(v131 + 24) = v132;
        *(v109 + v130) = v131;
        swift_endAccess();
        *(v109 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate) = 0;
        *(v109 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence) = 0;
        v133 = *(v109 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor);
        v134 = *(v133 + 24);

        os_unfair_lock_lock(v134);
        swift_beginAccess();
        v135 = *(v133 + 16);
        os_unfair_lock_unlock(v134);

        sub_2584031E0(v135);

        v136 = *(v109 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor);
        v137 = *(v136 + 24);

        os_unfair_lock_lock(v137);
        swift_beginAccess();
        v138 = *(v136 + 16);
        os_unfair_lock_unlock(v137);

        sub_2584031E0(v138);

        v139 = *(v109 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor);
        v140 = *(v139 + 24);

        os_unfair_lock_lock(v140);
        swift_beginAccess();
        v141 = *(v139 + 16);
        v142 = v141;
        os_unfair_lock_unlock(v140);

        if (v141)
        {
          sub_2584031E0(v142);
        }

        if (qword_27F927B20 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v80 = v146;
        v8 = v147;
        if (qword_27F92F350)
        {
          sub_2583ACFA4(&static WorldAnchor.delegate, v172);
          v143 = v173;
          v144 = v174;
          __swift_project_boxed_opaque_existential_0(v172, v173);
          (*(v144 + 8))(v109, v143, v144);
          __swift_destroy_boxed_opaque_existential_0(v172);
        }

        v145 = *&v158[v94];
        v9 = *(v145 + 24);

        os_unfair_lock_lock(v9);
        swift_beginAccess();
        *(v145 + 16) = v109;

        os_unfair_lock_unlock(v9);

        sub_25841430C();

        v78 = &unk_27F929000;
      }

      _ZF = v80 == ++v1;
      v13 = &unk_27F929000;
      v79 = v149;
      if (_ZF)
      {

        return;
      }
    }
  }

  __break(1u);
}

void WorldLine.replaceEnd1(with:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_ends;
  swift_beginAccess();
  v5 = *&v1[v4];
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x259C7E900](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v6 = *(v5 + 32);
  }

  WorldPoint.removeLine(_:)(v2);

  swift_beginAccess();
  v7 = *&v2[v4];
  v8 = a1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *&v2[v4] = v7;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    v7 = sub_2583A7C70(v7);
    *&v2[v4] = v7;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x20);
  *((v7 & 0xFFFFFFFFFFFFFF8) + 0x20) = v8;
  *&v2[v4] = v7;
  swift_endAccess();

  v11 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_lines;
  swift_beginAccess();
  v2;
  MEMORY[0x259C7E150]();
  if (*((*(v8 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v8 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_14:
    sub_2584288B0();
  }

  sub_258428900();
  swift_endAccess();
  WorldLine.updateSubPoints()();
}

void WorldLine.replaceEnd2(with:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_ends;
  swift_beginAccess();
  v5 = *&v1[v4];
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x259C7E900](1, v5);
  }

  else
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v6 = *(v5 + 40);
  }

  WorldPoint.removeLine(_:)(v2);

  swift_beginAccess();
  v7 = *&v2[v4];
  v8 = a1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *&v2[v4] = v7;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    v7 = sub_2583A7C70(v7);
    *&v2[v4] = v7;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x28);
  *((v7 & 0xFFFFFFFFFFFFFF8) + 0x28) = v8;
  *&v2[v4] = v7;
  swift_endAccess();

  v11 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_lines;
  swift_beginAccess();
  v2;
  MEMORY[0x259C7E150]();
  if (*((*(v8 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v8 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_14:
    sub_2584288B0();
  }

  sub_258428900();
  swift_endAccess();
  WorldLine.updateSubPoints()();
}

void WorldLine.replaceCenter(with:)(void *a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_center;
  swift_beginAccess();
  v4 = *&v1[v3];
  v5 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_parentLine;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = 0;

  v7 = *&v1[v3];
  *&v1[v3] = a1;
  v8 = a1;

  v9 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_parentLine;
  swift_beginAccess();
  v10 = *&v8[v9];
  *&v8[v9] = v1;
  v11 = v1;

  WorldLine.updateSubPoints()();
}

void WorldLine.addSnappedPoint(with:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_snappedPoints;
  swift_beginAccess();
  v5 = a1;
  MEMORY[0x259C7E150]();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2584288B0();
  }

  sub_258428900();
  swift_endAccess();
  v6 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_snapLine;
  swift_beginAccess();
  v7 = *&v5[v6];
  *&v5[v6] = v2;
  v8 = v2;
}

void WorldLine.removeSnappedPoint(with:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_snappedPoints;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
LABEL_17:
    v5 = sub_258428F10();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x259C7E900](v6, v4);
      swift_unknownObjectRelease();
      if (v8 == a1)
      {
LABEL_12:

        swift_beginAccess();
        v9 = sub_25838664C(v6);
        swift_endAccess();

        goto LABEL_14;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (*(v4 + 8 * v6 + 32) == a1)
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

LABEL_14:
  v10 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_snapLine;
  swift_beginAccess();
  v11 = *(a1 + v10);
  *(a1 + v10) = 0;
}

Swift::Float __swiftcall WorldLine.length()()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_ends;
  swift_beginAccess();
  v3 = *(v0 + v1);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x259C7E900](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_11;
    }

    v4 = *(v3 + 32);
  }

  v5 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  swift_beginAccess();
  v6 = *&v4[v5];
  v7 = *(v6 + 24);

  os_unfair_lock_lock(v7);
  swift_beginAccess();
  v8 = *(v6 + 16);

  os_unfair_lock_unlock(v7);

  v18 = *(v8 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48);

  v9 = *(v0 + v1);
  if ((v9 & 0xC000000000000001) != 0)
  {

    v10 = MEMORY[0x259C7E900](1, v9);

    goto LABEL_7;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v10 = *(v9 + 40);
LABEL_7:
    v11 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
    swift_beginAccess();
    v12 = *&v10[v11];
    v13 = *(v12 + 24);

    os_unfair_lock_lock(v13);
    swift_beginAccess();
    v14 = *(v12 + 16);

    os_unfair_lock_unlock(v13);

    v17 = *(v14 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48);

    v15 = vsubq_f32(v18, v17);
    v16 = vmulq_f32(v15, v15);
    return sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
  }

LABEL_11:
  __break(1u);
  return result;
}

Swift::Void __swiftcall WorldLine.markAsPartOfComposedObject(withId:)(Swift::String withId)
{
  object = withId._object;
  countAndFlagsBits = withId._countAndFlagsBits;
  v4 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_identifiersOfObjectsComposedInto;
  swift_beginAccess();
  if (!*(v1 + v4))
  {
    *(v1 + v4) = MEMORY[0x277D84F90];
  }

  v6 = sub_258407F18();
  v7 = *v5;
  if (!*v5)
  {
    (v6)(v20, 0);
    goto LABEL_9;
  }

  v8 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v11 = *(v7 + 2);
    v10 = *(v7 + 3);
    if (v11 >= v10 >> 1)
    {
      v7 = sub_25839DCF0((v10 > 1), v11 + 1, 1, v7);
      *v8 = v7;
    }

    *(v7 + 2) = v11 + 1;
    v12 = &v7[16 * v11];
    *(v12 + 4) = countAndFlagsBits;
    *(v12 + 5) = object;
    (v6)(v20, 0);
LABEL_9:
    v13 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_ends;
    swift_beginAccess();
    v8 = *(v1 + v13);
    if ((v8 & 0xC000000000000001) != 0)
    {

      v6 = MEMORY[0x259C7E900](0, v8);
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_19;
      }

      v6 = v8[4];
    }

    v14 = (v6 + OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_partOfRectangleId);
    swift_beginAccess();
    v7 = v14[1];
    *v14 = countAndFlagsBits;
    v14[1] = object;
    swift_bridgeObjectRetain_n();

    v8 = *(v1 + v13);
    if ((v8 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v15 = v8[5];
      goto LABEL_15;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    v7 = sub_25839DCF0(0, *(v7 + 2) + 1, 1, v7);
    *v8 = v7;
  }

  v15 = MEMORY[0x259C7E900](1, v8);

LABEL_15:
  v16 = &v15[OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_partOfRectangleId];
  swift_beginAccess();
  *v16 = countAndFlagsBits;
  v16[1] = object;

  v17 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_center;
  swift_beginAccess();
  v18 = (*(v1 + v17) + OBJC_IVAR____TtC17MeasureFoundation10WorldPoint_partOfRectangleId);
  swift_beginAccess();
  *v18 = countAndFlagsBits;
  v18[1] = object;

  v19 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_isALineMeasurement;
  swift_beginAccess();
  *(v1 + v19) = 0;
}

Swift::Bool __swiftcall WorldLine.isPartOfAComposedObject()()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_isALineMeasurement;
  swift_beginAccess();
  return (*(v0 + v1) & 1) == 0;
}

Swift::Bool __swiftcall WorldLine.isPartOfComposedObject(withId:)(Swift::String withId)
{
  object = withId._object;
  countAndFlagsBits = withId._countAndFlagsBits;
  v4 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_isALineMeasurement;
  swift_beginAccess();
  if (*(v1 + v4))
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_identifiersOfObjectsComposedInto;
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (v8)
  {
    v9 = (v8 + 40);
    v10 = *(v8 + 16) + 1;
    do
    {
      v5 = --v10 != 0;
      if (!v10)
      {
        break;
      }

      if (*(v9 - 1) == countAndFlagsBits && *v9 == object)
      {
        break;
      }

      v9 += 2;
    }

    while ((sub_258429310() & 1) == 0);
    return v5;
  }

  __break(1u);
  return result;
}

Swift::Float __swiftcall WorldLine.estimatedLengthError()()
{
  v6 = v0;
  v7 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_ends;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = MEMORY[0x259C7E900](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_41:

      v15 = MEMORY[0x259C7E900](1, v1);

      goto LABEL_8;
    }

    v9 = *(v8 + 32);
  }

  v2 = &unk_27F929000;
  v10 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
  swift_beginAccess();
  v11 = *(*&v9[v10] + 24);

  os_unfair_lock_lock(v11);
  swift_beginAccess();

  os_unfair_lock_unlock(v11);

  v4 = WorldAnchor.viewDirection.getter();
  v8 = v12;
  v14 = v13;

  v5 = -1.0;
  if (v14)
  {
    return v5;
  }

  v1 = *(v6 + v7);
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_41;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
LABEL_43:

    v27 = MEMORY[0x259C7E900](0, v3);
    v25 = &unk_27F929000;
    goto LABEL_12;
  }

  v15 = *(v1 + 40);
LABEL_8:
  v16 = v2[146];
  swift_beginAccess();
  v17 = *&v15[v16];
  v18 = *(v17 + 24);

  os_unfair_lock_lock(v18);
  swift_beginAccess();
  v19 = *(v17 + 16);

  os_unfair_lock_unlock(v18);

  v20 = WorldAnchor.viewDirection.getter();
  v22 = v21;
  v24 = v23;

  if (v24)
  {
    return v5;
  }

  v100 = v22;
  v103 = v20;
  v105 = v8;
  v3 = *(v6 + v7);
  v8 = v6;
  v108 = v4;
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  v25 = &unk_27F929000;
  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v3 + 32);

    v27 = v26;
LABEL_12:
    v28 = v25[146];
    swift_beginAccess();
    v29 = *&v27[v28];
    v30 = *(v29 + 24);

    os_unfair_lock_lock(v30);
    swift_beginAccess();
    v31 = *(v29 + 16);

    os_unfair_lock_unlock(v30);

    v20 = &unk_27F929000;
    v32 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
    swift_beginAccess();
    v33 = *(v31 + v32);
    v34 = *(v33 + 24);

    os_unfair_lock_lock(v34);
    swift_beginAccess();
    v19 = *(v33 + 16);

    os_unfair_lock_unlock(v34);

    if (!v19)
    {

      v99 = 0.0;
      v42 = v8;
      goto LABEL_19;
    }

    v34 = *(v8 + v7);
    if ((v34 & 0xC000000000000001) != 0)
    {
      goto LABEL_47;
    }

    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v35 = *(v34 + 32);

      for (i = v35; ; i = MEMORY[0x259C7E900](0, v34))
      {
        v37 = i;
        v38 = v25[146];
        swift_beginAccess();
        v39 = *(*&v37[v38] + 24);

        os_unfair_lock_lock(v39);
        swift_beginAccess();

        os_unfair_lock_unlock(v39);

        v40 = WorldAnchor.distanceToViewAnchor.getter();

        if ((v40 & 0x100000000) != 0)
        {
          break;
        }

        v99 = WorldPlane.estimatedErrorAlongNormal(distanceFromObservation:)(*&v40);

        v42 = v8;
        v25 = &unk_27F929000;
LABEL_19:
        v3 = *(v42 + v7);
        if ((v3 & 0xC000000000000001) != 0)
        {
          goto LABEL_45;
        }

        if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
        {
          v43 = *(v3 + 40);

          v44 = v43;
          goto LABEL_22;
        }

        __break(1u);
LABEL_47:
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_49:

    v56 = MEMORY[0x259C7E900](1, v31);
    v54 = &unk_27F929000;
    goto LABEL_26;
  }

  __break(1u);
LABEL_45:

  v44 = MEMORY[0x259C7E900](1, v3);
LABEL_22:
  v45 = v44;
  v46 = v25[146];
  swift_beginAccess();
  v47 = *&v45[v46];
  v48 = *(v47 + 24);

  os_unfair_lock_lock(v48);
  swift_beginAccess();
  v49 = *(v47 + 16);

  os_unfair_lock_unlock(v48);

  v50 = v20[99];
  swift_beginAccess();
  v51 = *(v49 + v50);
  v52 = *(v51 + 24);

  os_unfair_lock_lock(v52);
  swift_beginAccess();
  v53 = *(v51 + 16);

  os_unfair_lock_unlock(v52);

  if (!v53)
  {

    return v5;
  }

  v31 = *(v8 + v7);
  if ((v31 & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

  v54 = &unk_27F929000;
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    goto LABEL_51;
  }

  v55 = *(v31 + 40);

  v56 = v55;
LABEL_26:
  v57 = v54[146];
  swift_beginAccess();
  v58 = *(*&v56[v57] + 24);

  os_unfair_lock_lock(v58);
  swift_beginAccess();

  os_unfair_lock_unlock(v58);

  v59 = WorldAnchor.distanceToViewAnchor.getter();

  if ((v59 & 0x100000000) == 0)
  {

    v97 = WorldPlane.estimatedErrorAlongNormal(distanceFromObservation:)(*&v59);

    if (v19)
    {
      v51 = v8;
      v19 = *(v8 + v7);
      if ((v19 & 0xC000000000000001) == 0)
      {
        v60 = v108;
        v61 = &unk_27F929000;
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_54;
        }

        v62 = *(v19 + 32);
LABEL_31:
        v63 = v61[146];
        swift_beginAccess();
        v64 = *&v62[v63];
        v65 = *(v64 + 24);

        os_unfair_lock_lock(v65);
        swift_beginAccess();
        v66 = *(v64 + 16);

        os_unfair_lock_unlock(v65);

        v98 = *(v66 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48);

        v67 = *(v51 + v7);
        if ((v67 & 0xC000000000000001) != 0)
        {

          v68 = MEMORY[0x259C7E900](1, v67);

LABEL_34:
          v69.i64[0] = v60;
          v69.i64[1] = v105;
          v96 = v69;
          v69.i64[0] = v103;
          v69.i64[1] = v100;
          v106 = v69;
          v70 = OBJC_IVAR____TtC17MeasureFoundation10WorldPoint__anchor;
          swift_beginAccess();
          v71 = *&v68[v70];
          v72 = *(v71 + 24);

          os_unfair_lock_lock(v72);
          swift_beginAccess();
          v73 = *(v71 + 16);

          os_unfair_lock_unlock(v72);

          v101 = *(v73 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform + 48);

          v74 = vmuls_lane_f32(v99, v96, 2);
          v75 = v74 + *(&v98 + 2);
          v76 = *(&v98 + 2) - v74;
          v77 = vmuls_lane_f32(v97, v106, 2);
          v78 = v77 + *(&v101 + 2);
          v79 = *(&v101 + 2) - v77;
          v80 = v75 - (v77 + *(&v101 + 2));
          v81 = vmul_n_f32(__PAIR64__(v96.u32[1], v60), v99);
          v82.i32[3] = HIDWORD(v98);
          v83 = vsub_f32(*&v98, v81);
          v84 = vmul_n_f32(__PAIR64__(v106.u32[1], v103), v97);
          v85 = vsub_f32(*&v101, v84);
          v86 = vadd_f32(v81, *&v98);
          *v82.f32 = vsub_f32(v86, v85);
          v82.f32[2] = v75 - v79;
          v109 = vmulq_f32(v82, v82);
          v87 = vadd_f32(v84, *&v101);
          *v88.f32 = vsub_f32(v86, v87);
          v88.f32[2] = v80;
          v89 = vmulq_f32(v88, v88);
          *v88.f32 = vsub_f32(v83, v87);
          v88.f32[2] = v76 - v78;
          v90 = vmulq_f32(v88, v88);
          v102 = v90;
          *v90.f32 = vsub_f32(v83, v85);
          v90.f32[2] = v76 - v79;
          v104 = vmulq_f32(v90, v90);
          v107 = v89;
          *v91.i32 = WorldLine.length()();
          v92 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v107, v107, 8uLL), *&vextq_s8(v102, v102, 8uLL)), vadd_f32(vzip1_s32(*v107.i8, *v102.i8), vzip2_s32(*v107.i8, *v102.i8))));
          v93 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v109, v109, 8uLL), *&vextq_s8(v104, v104, 8uLL)), vadd_f32(vzip1_s32(*v109.i8, *v104.i8), vzip2_s32(*v109.i8, *v104.i8))));
          v94 = vdup_lane_s32(v91, 0);
          v95 = vbsl_s8(vcage_f32(vsub_f32(v93, v94), vsub_f32(v92, v94)), vabd_f32(v93, v94), vabd_f32(v92, v94));
          if (*v95.i32 > *&v95.i32[1])
          {
            return *v95.i32;
          }

          else
          {
            return *&v95.i32[1];
          }
        }

        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
        {
          v68 = *(v67 + 40);
          goto LABEL_34;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_51:

      v62 = MEMORY[0x259C7E900](0, v19);

      v60 = v108;
      v61 = &unk_27F929000;
      goto LABEL_31;
    }

    return v5;
  }

LABEL_56:
  __break(1u);
  return result;
}

id WorldLine.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_25840B75C()
{
}

id WorldLine.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorldLine();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25840B870()
{
  sub_2584286C0();
}

uint64_t sub_25840B95C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25840C030();
  *a1 = result;
  return result;
}

void sub_25840B98C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE600000000000000;
  v6 = 0x6874676E656CLL;
  v7 = 0xEE00726F72724564;
  v8 = 0x6574616D69747365;
  if (v2 != 4)
  {
    v8 = 0xD000000000000016;
    v7 = 0x8000000258433AD0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7472617473;
  if (v2 != 1)
  {
    v10 = 6581861;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_25840BA40()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6874676E656CLL;
  v4 = 0x6574616D69747365;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7472617473;
  if (v1 != 1)
  {
    v5 = 6581861;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25840BAF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25840C030();
  *a1 = result;
  return result;
}

uint64_t sub_25840BB24(uint64_t a1)
{
  v2 = sub_25840BFDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25840BB60(uint64_t a1)
{
  v2 = sub_25840BFDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorldLine.ResultRepresentation.encode(to:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9293D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25840BFDC();
  sub_258429440();
  swift_beginAccess();
  v20[0].n128_u8[0] = 0;

  sub_258429250();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  v10 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_ends;
  swift_beginAccess();
  v11 = *(a2 + v10);
  if ((v11 & 0xC000000000000001) != 0)
  {

    v16 = MEMORY[0x259C7E900](0, v11);

    v12 = v16;
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_12;
    }

    v12 = *(v11 + 32);
  }

  sub_258414E40(v12, v20);
  v19 = 1;
  sub_25840C07C();
  result = sub_258429280();
  v11 = *(a2 + v10);
  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_12:

    v17 = MEMORY[0x259C7E900](1, v11);

    v13 = v17;
    goto LABEL_9;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v13 = *(v11 + 40);
LABEL_9:
    sub_258414E40(v13, v20);
    v19 = 2;
    sub_258429280();
    WorldLine.length()();
    v14 = [objc_opt_self() standardUserDefaults];
    v15 = sub_258428630();
    [v14 floatForKey_];

    v20[0].n128_u8[0] = 3;
    sub_258429270();
    WorldLine.estimatedLengthError()();
    v20[0].n128_u8[0] = 4;
    sub_258429270();
    swift_beginAccess();
    v19 = 5;
    sub_258429260();
    return (*(v6 + 8))(v8, v5);
  }

  __break(1u);
  return result;
}

id sub_25840BFAC@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

unint64_t sub_25840BFDC()
{
  result = qword_27F9293D8;
  if (!qword_27F9293D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9293D8);
  }

  return result;
}

uint64_t sub_25840C030()
{
  v0 = sub_258429200();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25840C07C()
{
  result = qword_27F9293E0;
  if (!qword_27F9293E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9293E0);
  }

  return result;
}

unint64_t sub_25840C0D4()
{
  result = qword_27F9293E8;
  if (!qword_27F9293E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9293E8);
  }

  return result;
}

id sub_25840C154@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_center;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t keypath_getTm_1@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t sub_25840C244@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC17MeasureFoundation9WorldLine_identifiersOfObjectsComposedInto;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t getEnumTagSinglePayload for WorldLine.ResultRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorldLine.ResultRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25840C408()
{
  result = qword_27F9293F0;
  if (!qword_27F9293F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9293F0);
  }

  return result;
}

unint64_t sub_25840C460()
{
  result = qword_27F9293F8;
  if (!qword_27F9293F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9293F8);
  }

  return result;
}

unint64_t sub_25840C4B8()
{
  result = qword_27F929400;
  if (!qword_27F929400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F929400);
  }

  return result;
}

uint64_t Segment.isEqual(to:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vsubq_f32(a3, a1);
  v5 = vmulq_f32(v4, v4);
  v6 = vsubq_f32(a4, a2);
  v7 = vmulq_f32(v6, v6);
  *v5.i8 = vcgt_f32(0x3400000034000000, vadd_f32(vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v5, v5, 8uLL)), vadd_f32(vzip1_s32(*v7.i8, *v5.i8), vzip2_s32(*v7.i8, *v5.i8))));
  return v5.i32[1] & v5.i32[0] & 1;
}

__n128 GuideSegments.primary.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 GuideSegments.primary.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

__n128 GuideSegments.visible.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 GuideSegments.visible.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v3;
  *(v1 + 80) = *(a1 + 32);
  return result;
}

uint64_t GuideAnchorState.hashValue.getter(char a1)
{
  sub_2584293C0();
  MEMORY[0x259C7ECE0](a1 & 1);
  return sub_2584293F0();
}

uint64_t WorldLineGuide.backingPlanes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_backingPlanes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t WorldLineGuide.anchorState.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_anchorState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorldLineGuide.anchorState.setter(char a1)
{
  v3 = OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_anchorState;
  result = swift_beginAccess();
  *(v1 + v3) = a1 & 1;
  return result;
}

uint64_t WorldLineGuide.guideType.getter()
{
  v1 = OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_guideType;
  swift_beginAccess();
  return *(v0 + v1);
}

__n128 WorldLineGuide.segments.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_segments;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = *(v3 + 80);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  return result;
}

char *WorldLineGuide.__allocating_init(guideType:end1:end2:primarySegmentEnd1:primarySegmentEnd2:backingPlanes:anchorState:)(char a1, unint64_t a2, unint64_t a3, char a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14, __n128 a15, __n128 a16, char a17)
{
  v18 = v17;
  v111 = v18;
  v20 = objc_allocWithZone(v18);
  v108 = OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_backingPlanes;
  *&v20[OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_backingPlanes] = 0;
  v21 = OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_anchorState;
  v20[OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_anchorState] = 0;
  v22 = &v20[OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_segments];
  v128 = 1;
  v127 = 1;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  v107 = v22;
  v22[80] = 1;
  swift_beginAccess();
  v20[v21] = a17 & 1;
  v115 = v20;
  v20[OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_guideType] = a1;
  type metadata accessor for WorldAnchor();
  v23 = swift_allocObject();
  _s17MeasureFoundation11WorldAnchorC10identifier0B04UUIDVvpfi_0();
  v24 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929310);
  v25 = swift_allocObject();
  v26 = swift_slowAlloc();
  *v26 = 0;
  *(v25 + 16) = 0;
  *(v25 + 24) = v26;
  *(v23 + v24) = v25;
  *(v23 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_maxTranslationForPlaneUpgrade) = 994352038;
  *(v23 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_minDotForPlaneUpgrade) = 1065289295;
  v27 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F929320);
  v28 = swift_allocObject();
  v29 = swift_slowAlloc();
  *v29 = 0;
  *(v28 + 16) = 0;
  *(v28 + 24) = v29;
  *(v23 + v27) = v28;
  v30 = (v23 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v23 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
  *v31 = a9;
  v31[1] = a10;
  v31[2] = a11;
  v31[3] = a12;
  v32 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v33 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
  v34 = swift_allocObject();
  v35 = v32;
  v36 = swift_slowAlloc();
  *v36 = 0;
  *(v34 + 16) = v35;
  *(v34 + 24) = v36;
  *(v23 + v33) = v34;
  swift_endAccess();

  swift_beginAccess();

  v37 = swift_allocObject();
  v38 = swift_slowAlloc();
  *v38 = 0;
  *(v37 + 16) = 0;
  *(v37 + 24) = v38;
  *(v23 + v27) = v37;
  swift_endAccess();
  v39 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v40 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
  swift_beginAccess();
  v41 = swift_allocObject();
  v42 = v39;
  v43 = swift_slowAlloc();
  *v43 = 0;
  *(v41 + 16) = v42;
  *(v41 + 24) = v43;
  *(v23 + v40) = v41;
  swift_endAccess();

  v44 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();

  v45 = swift_allocObject();
  v46 = swift_slowAlloc();
  *v46 = 0;
  *(v45 + 16) = 0;
  *(v45 + 24) = v46;
  *(v23 + v44) = v45;
  swift_endAccess();
  *(v23 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate) = 1;
  *(v23 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence) = 0;
  v47 = *(v23 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor);
  v48 = *(v47 + 24);

  os_unfair_lock_lock(v48);
  swift_beginAccess();
  v49 = *(v47 + 16);
  os_unfair_lock_unlock(v48);

  sub_2584031E0(v49);

  v50 = *(v23 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor);
  v51 = *(v50 + 24);

  os_unfair_lock_lock(v51);
  swift_beginAccess();
  v52 = *(v50 + 16);
  os_unfair_lock_unlock(v51);

  sub_2584031E0(v52);

  v53 = *(v23 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor);
  v54 = *(v53 + 24);

  os_unfair_lock_lock(v54);
  swift_beginAccess();
  v55 = *(v53 + 16);
  v56 = v55;
  os_unfair_lock_unlock(v54);

  if (v55)
  {
    sub_2584031E0(v56);
  }

  if (qword_27F927B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_27F92F350)
  {
    sub_2583ACFA4(&static WorldAnchor.delegate, v123);
    v57 = v124;
    v58 = v125;
    __swift_project_boxed_opaque_existential_0(v123, v124);
    (*(v58 + 8))(v23, v57, v58);
    __swift_destroy_boxed_opaque_existential_0(v123);
  }

  *&v115[OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_end1Anchor] = v23;
  v59 = swift_allocObject();
  _s17MeasureFoundation11WorldAnchorC10identifier0B04UUIDVvpfi_0();
  v60 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  v61 = swift_allocObject();
  v62 = swift_slowAlloc();
  *(v59 + v60) = v61;
  *v62 = 0;
  *(v59 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_maxTranslationForPlaneUpgrade) = 994352038;
  *(v61 + 16) = 0;
  *(v61 + 24) = v62;
  *(v59 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_minDotForPlaneUpgrade) = 1065289295;
  v63 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor;
  v64 = swift_allocObject();
  v65 = swift_slowAlloc();
  *v65 = 0;
  *(v59 + v63) = v64;
  *(v64 + 16) = 0;
  *(v64 + 24) = v65;
  v66 = (v59 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_updateHandler);
  *v66 = 0;
  v66[1] = 0;
  v67 = (v59 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_lastTransform);
  *v67 = a13;
  v67[1] = a14;
  v67[2] = a15;
  v67[3] = a16;
  v68 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v69 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor;
  swift_beginAccess();
  v70 = swift_allocObject();
  v71 = v68;
  v72 = swift_slowAlloc();
  *v72 = 0;
  *(v70 + 16) = v71;
  *(v70 + 24) = v72;
  *(v59 + v69) = v70;
  swift_endAccess();

  swift_beginAccess();

  v73 = swift_allocObject();
  v74 = swift_slowAlloc();
  *v74 = 0;
  *(v73 + 16) = 0;
  *(v73 + 24) = v74;
  *(v59 + v63) = v73;
  swift_endAccess();
  v75 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  v76 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor;
  swift_beginAccess();
  v77 = swift_allocObject();
  v78 = v75;
  v79 = swift_slowAlloc();
  *v79 = 0;
  *(v77 + 16) = v78;
  *(v77 + 24) = v79;
  *(v59 + v76) = v77;
  swift_endAccess();

  v80 = OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__plane;
  swift_beginAccess();

  v81 = swift_allocObject();
  v82 = swift_slowAlloc();
  *v82 = 0;
  *(v81 + 16) = 0;
  *(v81 + 24) = v82;
  *(v59 + v80) = v81;
  swift_endAccess();
  *(v59 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_autoUpdate) = 1;
  *(v59 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor_confidence) = 0;
  v83 = *(v59 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__pointAnchor);
  v84 = *(v83 + 24);

  os_unfair_lock_lock(v84);
  swift_beginAccess();
  v85 = *(v83 + 16);
  os_unfair_lock_unlock(v84);

  sub_2584031E0(v85);

  v86 = *(v59 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__targetAnchor);
  v87 = *(v86 + 24);

  os_unfair_lock_lock(v87);
  swift_beginAccess();
  v88 = *(v86 + 16);
  os_unfair_lock_unlock(v87);

  sub_2584031E0(v88);

  v89 = *(v59 + OBJC_IVAR____TtC17MeasureFoundation11WorldAnchor__viewAnchor);
  v90 = *(v89 + 24);

  os_unfair_lock_lock(v90);
  swift_beginAccess();
  v91 = *(v89 + 16);
  v92 = v91;
  os_unfair_lock_unlock(v90);

  if (v91)
  {
    sub_2584031E0(v92);
  }

  if (qword_27F92F350)
  {
    sub_2583ACFA4(&static WorldAnchor.delegate, v123);
    v93 = v124;
    v94 = v125;
    __swift_project_boxed_opaque_existential_0(v123, v124);
    (*(v94 + 8))(v59, v93, v94);
    __swift_destroy_boxed_opaque_existential_0(v123);
  }

  *&v115[OBJC_IVAR____TtC17MeasureFoundation14WorldLineGuide_end2Anchor] = v59;
  swift_beginAccess();
  *&v115[v108] = a8;

  if ((a4 & 1) == 0 && (a7 & 1) == 0)
  {
    swift_beginAccess();
    v107->n128_u64[0] = a2;
    v107->n128_u64[1] = a3;
    v107[1].n128_u64[0] = a5;
    v107[1].n128_u64[1] = a6;
    v107[2].n128_u8[0] = 0;
  }

  v95 = a12;
  v95.n128_u32[3] = 0;
  v120 = v95;
  v96 = a16;
  v96.n128_u32[3] = 0;
  v122 = v96;
  swift_beginAccess();
  v107[3] = v120;
  v107[4] = v122;
  v107[5].n128_u8[0] = 0;
  v126.receiver = v115;
  v126.super_class = v111;
  v97 = objc_msgSendSuper2(&v126, sel_init);
  v98 = *&v97[OBJC_IVAR____TtC17MeasureFoundation13MeasureObject__state];
  v99 = *(v98 + 24);
  v100 = v97;

  os_unfair_lock_lock(v99);
  swift_beginAccess();
  *(v98 + 16) = 8;
  os_unfair_lock_unlock(v99);

  return v100;
}