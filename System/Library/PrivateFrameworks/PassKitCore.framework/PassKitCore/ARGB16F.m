@interface ARGB16F
@end

@implementation ARGB16F

vImage_Error __vImageGaussianBlur_ARGB16F_block_invoke(uint64_t a1, uint64_t a2, vImage_Buffer *dest)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) == 0.0)
  {
    v8 = (*(a2 + 4) + 7) >> 3;
    vImageCopyBuffer(*(a1 + 40), dest, v8, 0x10u);
    rowBytes = dest->rowBytes;
    data = dest->data;
    height = dest->height;
    backgroundColor.data = dest->data + *(a1 + 56) * v8 + *(a1 + 64) * rowBytes;
    *&backgroundColor.height = *(a1 + 72);
    backgroundColor.rowBytes = rowBytes;
    if (backgroundColor.data + backgroundColor.height * rowBytes > &data[height * rowBytes])
    {
      __break(1u);
    }

    return vImageCopyBuffer(&backgroundColor, *(a1 + 48), v8, 0x10u);
  }

  else
  {
    v5 = (2 * fmax(ceilf(*(a1 + 88) * 3.0), 1.0)) | 1;
    v6 = (&v12 - ((4 * v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    make1DGaussianKernel(v5, v6, *(a1 + 88), 1.0);
    backgroundColor.data = 0;
    vImageConvolve_ARGB16F(*(a1 + 40), dest, 0, 0, 0, v6, 1u, v5, &backgroundColor, 0x1018u);
    return vImageConvolve_ARGB16F(dest, *(a1 + 48), 0, *(a1 + 56), *(a1 + 64), v6, v5, 1u, &backgroundColor, 0x1018u);
  }
}

uint64_t __vImageGaussianBlur_ARGB16F_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __vImageGaussianBlur_ARGB16F_block_invoke_3;
  v7[3] = &__block_descriptor_103_e79_v24__0r__vImage_CGImageFormat_II__CGColorSpace_II_di_8r__vImage_Buffer__vQQQ_16l;
  v7[4] = a3;
  v13 = *(a1 + 100);
  v4 = *(a1 + 40);
  v14 = *(a1 + 101);
  v12 = *(a1 + 96);
  v5 = *(a1 + 56);
  v8 = v4;
  v9 = v5;
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  return [v3 accessData:v7];
}

vImage_Error __vImageGaussianBlur_ARGB16F_block_invoke_3(uint64_t a1, int a2, vImage_Buffer *dest)
{
  v3 = dest;
  v19 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = dest;
  v17 = v6;
  if (*(a1 + 100) == 1)
  {
    vImageScale_ARGB16F(v5, dest, 0, 0x1030u);
  }

  else
  {
    vImageCopyBuffer(v5, dest, (*(*(a1 + 48) + 4) + 7) >> 3, 0x10u);
  }

  if (*(a1 + 101) == 1)
  {
    vImageRotate90_ARGB16F(v3, v6, 2u, 0, 0x10u);
    v7 = &v17;
    v8 = &v16;
    v9 = v3;
    v3 = v6;
  }

  else
  {
    v7 = &v16;
    v8 = &v17;
    v9 = v6;
  }

  if (*(a1 + 102) == 1)
  {
    v10 = (2 * fmax(ceilf(*(a1 + 96) * 3.0), 1.0)) | 1;
    v11 = (&desta - ((4 * v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    make1DGaussianKernel(v10, v11, *(a1 + 96), 1.0);
    *backgroundColor = 0;
    vImageConvolve_ARGB16F(v3, v9, 0, 0, 0, v11, 1u, v10, backgroundColor, 0x1018u);
    v12 = *v8;
    v3 = *v7;
    desta.data = **v7;
    *&desta.height = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
    desta.rowBytes = v3->rowBytes;
    vImageConvolve_ARGB16F(v12, &desta, 0, *(a1 + 72), *(a1 + 80), v11, v10, 1u, backgroundColor, 0x1018u);
  }

  memset(&desta, 0, sizeof(desta));
  desta.data = v3->data;
  *&desta.height = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
  desta.rowBytes = v3->rowBytes;
  v13 = *(a1 + 88);
  if (*(a1 + 100) == 1)
  {
    return vImageScale_ARGB16F(&desta, v13, 0, 0x1030u);
  }

  else
  {
    return vImageCopyBuffer(&desta, v13, (*(*(a1 + 48) + 4) + 7) >> 3, 0x10u);
  }
}

vImage_Error __vImageSaturate_ARGB16F_block_invoke_2(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((a2[4] & 0x1F) != 1 || *a2 != 32 || ((v3 = *(a3 + 8), v3.i64[0]) ? (v4 = v3.i64[1] == 0) : (v4 = 1), v4))
  {
    __break(1u);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *a3 + *(a1 + 40) * ((a2[1] + 7) >> 3);
  matrix = (v5 * 0.9278) + 0.0722;
  v13 = (v5 * -0.0722) + 0.0722;
  v14 = v13;
  v15 = 0;
  v16 = vmla_n_f32(vdup_n_s32(0x3F371759u), 0x3E91D14EBF371759, v5);
  v17 = v16.i32[0];
  v18 = 0;
  v8 = vmla_n_f32(vdup_n_s32(0x3E59B3D0u), 0x3F498C7EBE59B3D0, v5);
  v19 = v8.i32[0];
  v20 = v8;
  v22 = 0;
  v21 = 0;
  v23 = 1065353216;
  v9 = *(a3 + 24);
  dest.data = (v7 + v6 * v9);
  *&dest.height = vsubq_s64(v3, *(a1 + 56));
  dest.rowBytes = v9;
  return vImageMatrixMultiply_ARGBFFFF(&dest, &dest, &matrix, 0, 0, 0x10u);
}

uint64_t __vImageSaturate_ARGB16F_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __vImageSaturate_ARGB16F_block_invoke_5;
  v6[3] = &__block_descriptor_80_e79_v24__0r__vImage_CGImageFormat_II__CGColorSpace_II_di_8r__vImage_Buffer__vQQQ_16l;
  v6[4] = a2;
  v6[5] = a3;
  v4 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v4;
  return [v3 accessData:v6];
}

void *__vImageSaturate_ARGB16F_block_invoke_5(void *result, uint64_t a2, void *a3)
{
  v5 = result[4];
  if (*v5 == *a2 && (v6 = *(v5 + 4), v6 == *(a2 + 4)) && *(v5 + 8) == *(a2 + 8) && *(v5 + 16) == *(a2 + 16) && (v7 = result[5], v8 = v7[1], v8 == a3[1]) && (v9 = v7[2], v9 == a3[2]) && (v10 = v7[3], v10 == a3[3]))
  {
    v18 = v3;
    v19 = v4;
    v11 = (v6 + 7) >> 3;
    v12 = result[9];
    v13 = v8 - result[8];
    v14 = result[6] * v11;
    v15 = result[7] * v10;
    src.data = (*v7 + v15 + v14);
    src.height = v13;
    src.width = v9 - v12;
    src.rowBytes = v10;
    v16.data = (*a3 + v15 + v14);
    v16.height = v13;
    v16.width = v9 - v12;
    v16.rowBytes = v10;
    return vImageCopyBuffer(&src, &v16, v11, 0x10u);
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end