@interface VFXREDrawCallContextImpl
- (BOOL)constantOffsetAndSize:(int)a3 :(id)a4 :(int64_t *)a5 :(int64_t *)a6;
- (BOOL)depthOnly;
- (BOOL)enableClipping;
- (BOOL)isDrawingDepthOnly;
- (BOOL)useDitherFade;
- (VFXRenderTargetInfo)renderTargetInfo;
- (VFXStencilInfo)stencilInfo;
- (const)constantData:(int)a3;
- (id).cxx_construct;
- (id)buffer:(int)a3 :(id)a4 :(int64_t *)a5 :(int64_t *)a6;
- (id)texture:(int)a3 :(id)a4;
- (int)portalClippingMode;
- (int)renderPassOptions;
- (int)systemTreatmentsRenderOptions;
- (int64_t)statsDrawcallCount;
- (int64_t)statsPrimitiveCount;
- (int64_t)statsVertexCount;
- (void)setLateLatchingPatchHandler:(id)a3;
- (void)setStatsDrawcallCount:(int64_t)a3;
- (void)setStatsPrimitiveCount:(int64_t)a3;
- (void)setStatsVertexCount:(int64_t)a3;
- (void)set_stencilInfo:(StencilInfo *)a3;
@end

@implementation VFXREDrawCallContextImpl

- (id)texture:(int)a3 :(id)a4
{
  v6 = a4;
  v7 = [(VFXREDrawCallContextImpl *)self _textureTable];
  v8 = v7;
  var10 = 0;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        var9 = v7->var0.var0.var9;
        v51 = [v6 UTF8String];
        if (v51)
        {
          v52 = *v51;
          if (*v51)
          {
            v53 = v51[1];
            if (v53)
            {
              v54 = (v51 + 2);
              do
              {
                v52 = 31 * v52 + v53;
                v55 = *v54++;
                v53 = v55;
              }

              while (v55);
            }

            v52 &= ~0x8000000000000000;
          }
        }

        else
        {
          v52 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v59 = v52;
        (*(*var9 + 32))(&v60, var9, &v59);
        if (v60)
        {
          var5 = v8->var0.var0.var9;
          goto LABEL_84;
        }

        goto LABEL_86;
      }

      if (a3 != 7)
      {
        goto LABEL_87;
      }

      var10 = v7->var0.var0.var10;
      if (!var10)
      {
        goto LABEL_87;
      }

      v27 = [v6 UTF8String];
      if (v27)
      {
        v28 = *v27;
        if (*v27)
        {
          v29 = v27[1];
          if (v29)
          {
            v30 = (v27 + 2);
            do
            {
              v28 = 31 * v28 + v29;
              v31 = *v30++;
              v29 = v31;
            }

            while (v31);
          }

          v28 &= ~0x8000000000000000;
        }
      }

      else
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v59 = v28;
      (*(*var10 + 32))(&v60, var10, &v59);
      if ((v60 & 1) == 0)
      {
        goto LABEL_86;
      }

      var5 = v8->var0.var0.var10;
    }

    else
    {
      if (a3 == 4)
      {
        var4 = v7->var0.var0.var4;
        v39 = [v6 UTF8String];
        if (v39)
        {
          v40 = *v39;
          if (*v39)
          {
            v41 = v39[1];
            if (v41)
            {
              v42 = (v39 + 2);
              do
              {
                v40 = 31 * v40 + v41;
                v43 = *v42++;
                v41 = v43;
              }

              while (v43);
            }

            v40 &= ~0x8000000000000000;
          }
        }

        else
        {
          v40 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v59 = v40;
        (*(*var4 + 32))(&v60, var4, &v59);
        if (v60)
        {
          var5 = v8->var0.var0.var4;
          goto LABEL_84;
        }

        goto LABEL_86;
      }

      var10 = v7->var0.var0.var5;
      if (!var10)
      {
        goto LABEL_87;
      }

      v16 = [v6 UTF8String];
      if (v16)
      {
        v17 = *v16;
        if (*v16)
        {
          v18 = v16[1];
          if (v18)
          {
            v19 = (v16 + 2);
            do
            {
              v17 = 31 * v17 + v18;
              v20 = *v19++;
              v18 = v20;
            }

            while (v20);
          }

          v17 &= ~0x8000000000000000;
        }
      }

      else
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v59 = v17;
      (*(*var10 + 32))(&v60, var10, &v59);
      if ((v60 & 1) == 0)
      {
        goto LABEL_86;
      }

      var5 = v8->var0.var0.var5;
    }
  }

  else
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          goto LABEL_87;
        }

        var1 = v7->var0.var0.var1;
        v11 = [v6 UTF8String];
        if (v11)
        {
          v12 = *v11;
          if (*v11)
          {
            v13 = v11[1];
            if (v13)
            {
              v14 = (v11 + 2);
              do
              {
                v12 = 31 * v12 + v13;
                v15 = *v14++;
                v13 = v15;
              }

              while (v15);
            }

            v12 &= ~0x8000000000000000;
          }
        }

        else
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v59 = v12;
        (*(*var1 + 32))(&v60, var1, &v59);
        if (v60)
        {
          var5 = v8->var0.var0.var1;
          goto LABEL_84;
        }
      }

      else
      {
        var0 = v7->var0.var0.var0;
        v33 = [v6 UTF8String];
        if (v33)
        {
          v34 = *v33;
          if (*v33)
          {
            v35 = v33[1];
            if (v35)
            {
              v36 = (v33 + 2);
              do
              {
                v34 = 31 * v34 + v35;
                v37 = *v36++;
                v35 = v37;
              }

              while (v37);
            }

            v34 &= ~0x8000000000000000;
          }
        }

        else
        {
          v34 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v59 = v34;
        (*(*var0 + 32))(&v60, var0, &v59);
        if (v60)
        {
          var5 = v8->var0.var0.var0;
          goto LABEL_84;
        }
      }

LABEL_86:
      var10 = 0;
      goto LABEL_87;
    }

    if (a3 == 2)
    {
      var2 = v7->var0.var0.var2;
      v45 = [v6 UTF8String];
      if (v45)
      {
        v46 = *v45;
        if (*v45)
        {
          v47 = v45[1];
          if (v47)
          {
            v48 = (v45 + 2);
            do
            {
              v46 = 31 * v46 + v47;
              v49 = *v48++;
              v47 = v49;
            }

            while (v49);
          }

          v46 &= ~0x8000000000000000;
        }
      }

      else
      {
        v46 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v59 = v46;
      (*(*var2 + 32))(&v60, var2, &v59);
      if (v60)
      {
        var5 = v8->var0.var0.var2;
        goto LABEL_84;
      }

      goto LABEL_86;
    }

    var3 = v7->var0.var0.var3;
    v22 = [v6 UTF8String];
    if (v22)
    {
      v23 = *v22;
      if (*v22)
      {
        v24 = v22[1];
        if (v24)
        {
          v25 = (v22 + 2);
          do
          {
            v23 = 31 * v23 + v24;
            v26 = *v25++;
            v24 = v26;
          }

          while (v26);
        }

        v23 &= ~0x8000000000000000;
      }
    }

    else
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v59 = v23;
    (*(*var3 + 32))(&v60, var3, &v59);
    if ((v60 & 1) == 0)
    {
      goto LABEL_86;
    }

    var5 = v8->var0.var0.var3;
  }

LABEL_84:
  (*(*var5 + 24))(&v59);
  v57 = v59;
  var10 = v57;
  if (v57)
  {
  }

LABEL_87:

  return var10;
}

- (id)buffer:(int)a3 :(id)a4 :(int64_t *)a5 :(int64_t *)a6
{
  v10 = a4;
  v11 = [(VFXREDrawCallContextImpl *)self _bufferTable];
  if (a3 > 7)
  {
    goto LABEL_12;
  }

  v12 = v11 + qword_1E30A1F80[a3];
  v13 = *(v12 + 40);
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = [v10 UTF8String];
  if (v14)
  {
    v15 = *v14;
    if (*v14)
    {
      v16 = v14[1];
      if (v16)
      {
        v17 = (v14 + 2);
        do
        {
          v15 = 31 * v15 + v16;
          v18 = *v17++;
          v16 = v18;
        }

        while (v18);
      }

      v15 &= ~0x8000000000000000;
    }
  }

  else
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v23[0] = v15;
  v19 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v13, v23);
  if (v19 == -1)
  {
LABEL_12:
    v20 = 0;
  }

  else
  {
    re::BufferTableReference::getBuffer(v12, *(v13[1] + 16 * v19 + 8), v23);
    v20 = v23[0];
    v21 = v25;
    *a5 = v24;
    *a6 = v21;
  }

  return v20;
}

- (const)constantData:(int)a3
{
  if (a3 <= 7)
  {
    if (a3 == 1)
    {
      v3 = [(VFXREDrawCallContextImpl *)self _constantTable];
      goto LABEL_12;
    }

    if (a3 == 5)
    {
      v3 = [(VFXREDrawCallContextImpl *)self _constantTable]+ 48;
      goto LABEL_12;
    }

    return 0;
  }

  if (a3 == 8)
  {
    v3 = [(VFXREDrawCallContextImpl *)self _constantTable]+ 8;
    goto LABEL_12;
  }

  if (a3 == 9)
  {
    v3 = [(VFXREDrawCallContextImpl *)self _constantTable]+ 16;
    goto LABEL_12;
  }

  if (a3 != 10)
  {
    return 0;
  }

  v3 = [(VFXREDrawCallContextImpl *)self _constantTable]+ 24;
LABEL_12:
  v4 = *(**v3 + 16);

  return v4();
}

- (BOOL)constantOffsetAndSize:(int)a3 :(id)a4 :(int64_t *)a5 :(int64_t *)a6
{
  v10 = a4;
  v11 = 0;
  if (a3 <= 7)
  {
    if (a3 == 1)
    {
      v12 = *[(VFXREDrawCallContextImpl *)self _constantTable];
      v30 = [v10 UTF8String];
      if (v30)
      {
        v14 = *v30;
        if (!*v30)
        {
          goto LABEL_38;
        }

        v31 = v30[1];
        if (v31)
        {
          v32 = (v30 + 2);
          do
          {
            v14 = 31 * v14 + v31;
            v33 = *v32++;
            v31 = v33;
          }

          while (v33);
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_41;
      }

      v12 = *([(VFXREDrawCallContextImpl *)self _constantTable]+ 48);
      v18 = [v10 UTF8String];
      if (v18)
      {
        v14 = *v18;
        if (!*v18)
        {
          goto LABEL_38;
        }

        v19 = v18[1];
        if (v19)
        {
          v20 = (v18 + 2);
          do
          {
            v14 = 31 * v14 + v19;
            v21 = *v20++;
            v19 = v21;
          }

          while (v21);
        }

        goto LABEL_36;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 8:
        v12 = *([(VFXREDrawCallContextImpl *)self _constantTable]+ 8);
        v22 = [v10 UTF8String];
        if (v22)
        {
          v14 = *v22;
          if (!*v22)
          {
            goto LABEL_38;
          }

          v23 = v22[1];
          if (v23)
          {
            v24 = (v22 + 2);
            do
            {
              v14 = 31 * v14 + v23;
              v25 = *v24++;
              v23 = v25;
            }

            while (v25);
          }

          goto LABEL_36;
        }

        break;
      case 9:
        v12 = *([(VFXREDrawCallContextImpl *)self _constantTable]+ 16);
        v26 = [v10 UTF8String];
        if (v26)
        {
          v14 = *v26;
          if (!*v26)
          {
            goto LABEL_38;
          }

          v27 = v26[1];
          if (v27)
          {
            v28 = (v26 + 2);
            do
            {
              v14 = 31 * v14 + v27;
              v29 = *v28++;
              v27 = v29;
            }

            while (v29);
          }

          goto LABEL_36;
        }

        break;
      case 10:
        v12 = *([(VFXREDrawCallContextImpl *)self _constantTable]+ 24);
        v13 = [v10 UTF8String];
        if (v13)
        {
          v14 = *v13;
          if (!*v13)
          {
            goto LABEL_38;
          }

          v15 = v13[1];
          if (v15)
          {
            v16 = (v13 + 2);
            do
            {
              v14 = 31 * v14 + v15;
              v17 = *v16++;
              v15 = v17;
            }

            while (v17);
          }

LABEL_36:
          v14 &= ~0x8000000000000000;
          goto LABEL_38;
        }

        break;
      default:
        goto LABEL_41;
    }
  }

  v14 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_38:
  v36 = v14;
  v34 = (**v12)(v12, &v36);
  if (v34)
  {
    *a5 = *v34;
    *a6 = *(v34 + 2);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_41:

  return v11;
}

- (void)setLateLatchingPatchHandler:(id)a3
{
  v4 = a3;
  if ([(VFXREDrawCallContextImpl *)self _patchHandler])
  {
    re::PatchHandler::setHandler([(VFXREDrawCallContextImpl *)self _patchHandler], v4);
  }
}

- (VFXRenderTargetInfo)renderTargetInfo
{
  v3 = objc_alloc_init(VFXRERenderTargetInfoImpl);
  [(VFXRERenderTargetInfoImpl *)v3 set_renderTargetInfo:[(VFXREDrawCallContextImpl *)self _renderTargetInfo]];

  return v3;
}

- (BOOL)isDrawingDepthOnly
{
  if ([(VFXREDrawCallContextImpl *)self _isDepthOnly])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return ([(VFXREDrawCallContextImpl *)self _stateOverride]>> 1) & 1;
  }

  return v3;
}

- (VFXStencilInfo)stencilInfo
{
  [(VFXREDrawCallContextImpl *)self _stencilInfo];
  if (v8[0] & 1) != 0 || ([(VFXREDrawCallContextImpl *)self _stencilInfo], (v7))
  {
    v3 = objc_alloc_init(VFXREStencilInfoImpl);
    [(VFXREDrawCallContextImpl *)self _stencilInfo];
    v4 = __39__VFXREDrawCallContextImpl_stencilInfo__block_invoke(v8);
    [(VFXREStencilInfoImpl *)v3 set_frontFaceTest:v4];

    [(VFXREDrawCallContextImpl *)self _stencilInfo];
    v5 = __39__VFXREDrawCallContextImpl_stencilInfo__block_invoke(v9);
    [(VFXREStencilInfoImpl *)v3 set_backFaceTest:v5];

    [(VFXREDrawCallContextImpl *)self _stencilInfo];
    [(VFXREStencilInfoImpl *)v3 set_frontReferenceValue:v10];
    [(VFXREDrawCallContextImpl *)self _stencilInfo];
    [(VFXREStencilInfoImpl *)v3 set_backReferenceValue:v10];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __39__VFXREDrawCallContextImpl_stencilInfo__block_invoke(unsigned __int8 *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E6974190]);
  [v2 setStencilCompareFunction:a1[3]];
  [v2 setStencilFailureOperation:a1[4]];
  [v2 setDepthFailureOperation:a1[5]];
  [v2 setDepthStencilPassOperation:a1[6]];
  [v2 setReadMask:a1[1]];
  [v2 setWriteMask:a1[2]];

  return v2;
}

- (BOOL)useDitherFade
{
  v3 = [(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants];
  if (v3)
  {
    LOWORD(v3) = *([(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants]+ 88) & 1;
  }

  return v3;
}

- (BOOL)enableClipping
{
  v3 = [(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants];
  if (v3)
  {
    LODWORD(v3) = (*([(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants]+ 88) >> 1) & 1;
  }

  return v3;
}

- (int)renderPassOptions
{
  if ([(VFXREDrawCallContextImpl *)self _isDepthOnly])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if ([(VFXREDrawCallContextImpl *)self _isFadeOpaque])
  {
    v3 |= 8u;
  }

  if ([(VFXREDrawCallContextImpl *)self _isDrawingBlur])
  {
    return v3 | 4;
  }

  else
  {
    return v3;
  }
}

- (int)systemTreatmentsRenderOptions
{
  if (![(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants])
  {
    return 0;
  }

  v3 = [(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants];
  v4 = (*(v3 + 44) >> 1) & 1 | (4 * (v3[11] & 1)) & 0xFFFFFFDF | (32 * ((*(v3 + 44) >> 2) & 1));
  if (*v3)
  {
  }

  v5 = v3[1];
  if (v5)
  {
  }

  v6 = v3[2];
  if (v6)
  {
  }

  return v4;
}

- (int)portalClippingMode
{
  if ((atomic_load_explicit(&qword_1EE1B8658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8658))
  {
    qword_1EE1B8650 = re::hashString("PortalClippingMode", v7);
    __cxa_guard_release(&qword_1EE1B8658);
  }

  v3 = [(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants];
  if (v3)
  {
    v4 = *[(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants];
    if ((!v4 || (v9 = qword_1EE1B8650, v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4, &v9), v3 == -1)) && ((v4 = *([(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants]+ 8)) == 0 || (v9 = qword_1EE1B8650, v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4, &v9), v3 == -1)))
    {
      v6 = *([(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants]+ 16);
      if (!v6 || (v9 = qword_1EE1B8650, v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v6, &v9), v3 == -1))
      {
        LODWORD(v3) = 0;
        return v3;
      }

      v5 = v6[1];
    }

    else
    {
      v5 = v4[1];
    }

    LODWORD(v3) = *(v5 + 16 * v3 + 8);
  }

  return v3;
}

- (BOOL)depthOnly
{
  if ([(VFXREDrawCallContextImpl *)self _isDepthOnly])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return ([(VFXREDrawCallContextImpl *)self _stateOverride]>> 1) & 1;
  }

  return v3;
}

- (int64_t)statsVertexCount
{
  result = [(VFXREDrawCallContextImpl *)self _meshStats];
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)setStatsVertexCount:(int64_t)a3
{
  v3 = a3;
  v4 = [(VFXREDrawCallContextImpl *)self _meshStats];
  if (v4)
  {
    v4->var16 = v3;
  }
}

- (int64_t)statsPrimitiveCount
{
  result = [(VFXREDrawCallContextImpl *)self _meshStats];
  if (result)
  {
    return *(result + 60);
  }

  return result;
}

- (void)setStatsPrimitiveCount:(int64_t)a3
{
  v3 = a3;
  v4 = [(VFXREDrawCallContextImpl *)self _meshStats];
  if (v4)
  {
    v4->var15 = v3;
  }
}

- (int64_t)statsDrawcallCount
{
  result = [(VFXREDrawCallContextImpl *)self _meshStats];
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (void)setStatsDrawcallCount:(int64_t)a3
{
  v3 = a3;
  v4 = [(VFXREDrawCallContextImpl *)self _meshStats];
  if (v4)
  {
    v4->var14 = v3;
  }
}

- (void)set_stencilInfo:(StencilInfo *)a3
{
  state = a3->state;
  self->__stencilInfo.referenceValue = a3->referenceValue;
  self->__stencilInfo.state = state;
}

- (id).cxx_construct
{
  *(self + 11) = 134217472;
  *(self + 12) = 134217472;
  return self;
}

@end