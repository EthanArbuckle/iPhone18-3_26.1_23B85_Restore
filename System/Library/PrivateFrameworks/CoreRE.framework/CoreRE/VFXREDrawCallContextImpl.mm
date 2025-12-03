@interface VFXREDrawCallContextImpl
- (BOOL)constantOffsetAndSize:(int)size :(id)a4 :(int64_t *)a5 :(int64_t *)a6;
- (BOOL)depthOnly;
- (BOOL)enableClipping;
- (BOOL)isDrawingDepthOnly;
- (BOOL)useDitherFade;
- (VFXRenderTargetInfo)renderTargetInfo;
- (VFXStencilInfo)stencilInfo;
- (const)constantData:(int)data;
- (id).cxx_construct;
- (id)buffer:(int)buffer :(id)a4 :(int64_t *)a5 :(int64_t *)a6;
- (id)texture:(int)texture :(id)a4;
- (int)portalClippingMode;
- (int)renderPassOptions;
- (int)systemTreatmentsRenderOptions;
- (int64_t)statsDrawcallCount;
- (int64_t)statsPrimitiveCount;
- (int64_t)statsVertexCount;
- (void)setLateLatchingPatchHandler:(id)handler;
- (void)setStatsDrawcallCount:(int64_t)count;
- (void)setStatsPrimitiveCount:(int64_t)count;
- (void)setStatsVertexCount:(int64_t)count;
- (void)set_stencilInfo:(StencilInfo *)info;
@end

@implementation VFXREDrawCallContextImpl

- (id)texture:(int)texture :(id)a4
{
  v6 = a4;
  _textureTable = [(VFXREDrawCallContextImpl *)self _textureTable];
  v8 = _textureTable;
  var10 = 0;
  if (texture > 3)
  {
    if (texture > 5)
    {
      if (texture == 6)
      {
        var9 = _textureTable->var0.var0.var9;
        uTF8String = [v6 UTF8String];
        if (uTF8String)
        {
          v52 = *uTF8String;
          if (*uTF8String)
          {
            v53 = uTF8String[1];
            if (v53)
            {
              v54 = (uTF8String + 2);
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

      if (texture != 7)
      {
        goto LABEL_87;
      }

      var10 = _textureTable->var0.var0.var10;
      if (!var10)
      {
        goto LABEL_87;
      }

      uTF8String2 = [v6 UTF8String];
      if (uTF8String2)
      {
        v28 = *uTF8String2;
        if (*uTF8String2)
        {
          v29 = uTF8String2[1];
          if (v29)
          {
            v30 = (uTF8String2 + 2);
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
      if (texture == 4)
      {
        var4 = _textureTable->var0.var0.var4;
        uTF8String3 = [v6 UTF8String];
        if (uTF8String3)
        {
          v40 = *uTF8String3;
          if (*uTF8String3)
          {
            v41 = uTF8String3[1];
            if (v41)
            {
              v42 = (uTF8String3 + 2);
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

      var10 = _textureTable->var0.var0.var5;
      if (!var10)
      {
        goto LABEL_87;
      }

      uTF8String4 = [v6 UTF8String];
      if (uTF8String4)
      {
        v17 = *uTF8String4;
        if (*uTF8String4)
        {
          v18 = uTF8String4[1];
          if (v18)
          {
            v19 = (uTF8String4 + 2);
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
    if (texture <= 1)
    {
      if (texture)
      {
        if (texture != 1)
        {
          goto LABEL_87;
        }

        var1 = _textureTable->var0.var0.var1;
        uTF8String5 = [v6 UTF8String];
        if (uTF8String5)
        {
          v12 = *uTF8String5;
          if (*uTF8String5)
          {
            v13 = uTF8String5[1];
            if (v13)
            {
              v14 = (uTF8String5 + 2);
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
        var0 = _textureTable->var0.var0.var0;
        uTF8String6 = [v6 UTF8String];
        if (uTF8String6)
        {
          v34 = *uTF8String6;
          if (*uTF8String6)
          {
            v35 = uTF8String6[1];
            if (v35)
            {
              v36 = (uTF8String6 + 2);
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

    if (texture == 2)
    {
      var2 = _textureTable->var0.var0.var2;
      uTF8String7 = [v6 UTF8String];
      if (uTF8String7)
      {
        v46 = *uTF8String7;
        if (*uTF8String7)
        {
          v47 = uTF8String7[1];
          if (v47)
          {
            v48 = (uTF8String7 + 2);
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

    var3 = _textureTable->var0.var0.var3;
    uTF8String8 = [v6 UTF8String];
    if (uTF8String8)
    {
      v23 = *uTF8String8;
      if (*uTF8String8)
      {
        v24 = uTF8String8[1];
        if (v24)
        {
          v25 = (uTF8String8 + 2);
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

- (id)buffer:(int)buffer :(id)a4 :(int64_t *)a5 :(int64_t *)a6
{
  v10 = a4;
  _bufferTable = [(VFXREDrawCallContextImpl *)self _bufferTable];
  if (buffer > 7)
  {
    goto LABEL_12;
  }

  v12 = _bufferTable + qword_1E30A1F80[buffer];
  v13 = *(v12 + 40);
  if (!v13)
  {
    goto LABEL_12;
  }

  uTF8String = [v10 UTF8String];
  if (uTF8String)
  {
    v15 = *uTF8String;
    if (*uTF8String)
    {
      v16 = uTF8String[1];
      if (v16)
      {
        v17 = (uTF8String + 2);
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

- (const)constantData:(int)data
{
  if (data <= 7)
  {
    if (data == 1)
    {
      _constantTable = [(VFXREDrawCallContextImpl *)self _constantTable];
      goto LABEL_12;
    }

    if (data == 5)
    {
      _constantTable = [(VFXREDrawCallContextImpl *)self _constantTable]+ 48;
      goto LABEL_12;
    }

    return 0;
  }

  if (data == 8)
  {
    _constantTable = [(VFXREDrawCallContextImpl *)self _constantTable]+ 8;
    goto LABEL_12;
  }

  if (data == 9)
  {
    _constantTable = [(VFXREDrawCallContextImpl *)self _constantTable]+ 16;
    goto LABEL_12;
  }

  if (data != 10)
  {
    return 0;
  }

  _constantTable = [(VFXREDrawCallContextImpl *)self _constantTable]+ 24;
LABEL_12:
  v4 = *(**_constantTable + 16);

  return v4();
}

- (BOOL)constantOffsetAndSize:(int)size :(id)a4 :(int64_t *)a5 :(int64_t *)a6
{
  v10 = a4;
  v11 = 0;
  if (size <= 7)
  {
    if (size == 1)
    {
      v12 = *[(VFXREDrawCallContextImpl *)self _constantTable];
      uTF8String = [v10 UTF8String];
      if (uTF8String)
      {
        v14 = *uTF8String;
        if (!*uTF8String)
        {
          goto LABEL_38;
        }

        v31 = uTF8String[1];
        if (v31)
        {
          v32 = (uTF8String + 2);
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
      if (size != 5)
      {
        goto LABEL_41;
      }

      v12 = *([(VFXREDrawCallContextImpl *)self _constantTable]+ 48);
      uTF8String2 = [v10 UTF8String];
      if (uTF8String2)
      {
        v14 = *uTF8String2;
        if (!*uTF8String2)
        {
          goto LABEL_38;
        }

        v19 = uTF8String2[1];
        if (v19)
        {
          v20 = (uTF8String2 + 2);
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
    switch(size)
    {
      case 8:
        v12 = *([(VFXREDrawCallContextImpl *)self _constantTable]+ 8);
        uTF8String3 = [v10 UTF8String];
        if (uTF8String3)
        {
          v14 = *uTF8String3;
          if (!*uTF8String3)
          {
            goto LABEL_38;
          }

          v23 = uTF8String3[1];
          if (v23)
          {
            v24 = (uTF8String3 + 2);
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
        uTF8String4 = [v10 UTF8String];
        if (uTF8String4)
        {
          v14 = *uTF8String4;
          if (!*uTF8String4)
          {
            goto LABEL_38;
          }

          v27 = uTF8String4[1];
          if (v27)
          {
            v28 = (uTF8String4 + 2);
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
        uTF8String5 = [v10 UTF8String];
        if (uTF8String5)
        {
          v14 = *uTF8String5;
          if (!*uTF8String5)
          {
            goto LABEL_38;
          }

          v15 = uTF8String5[1];
          if (v15)
          {
            v16 = (uTF8String5 + 2);
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

- (void)setLateLatchingPatchHandler:(id)handler
{
  handlerCopy = handler;
  if ([(VFXREDrawCallContextImpl *)self _patchHandler])
  {
    re::PatchHandler::setHandler([(VFXREDrawCallContextImpl *)self _patchHandler], handlerCopy);
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
  _dynamicFunctionConstants = [(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants];
  if (_dynamicFunctionConstants)
  {
    LOWORD(_dynamicFunctionConstants) = *([(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants]+ 88) & 1;
  }

  return _dynamicFunctionConstants;
}

- (BOOL)enableClipping
{
  _dynamicFunctionConstants = [(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants];
  if (_dynamicFunctionConstants)
  {
    LODWORD(_dynamicFunctionConstants) = (*([(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants]+ 88) >> 1) & 1;
  }

  return _dynamicFunctionConstants;
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

  _dynamicFunctionConstants = [(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants];
  v4 = (*(_dynamicFunctionConstants + 44) >> 1) & 1 | (4 * (_dynamicFunctionConstants[11] & 1)) & 0xFFFFFFDF | (32 * ((*(_dynamicFunctionConstants + 44) >> 2) & 1));
  if (*_dynamicFunctionConstants)
  {
  }

  v5 = _dynamicFunctionConstants[1];
  if (v5)
  {
  }

  v6 = _dynamicFunctionConstants[2];
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

  _dynamicFunctionConstants = [(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants];
  if (_dynamicFunctionConstants)
  {
    v4 = *[(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants];
    if ((!v4 || (v9 = qword_1EE1B8650, _dynamicFunctionConstants = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4, &v9), _dynamicFunctionConstants == -1)) && ((v4 = *([(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants]+ 8)) == 0 || (v9 = qword_1EE1B8650, _dynamicFunctionConstants = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4, &v9), _dynamicFunctionConstants == -1)))
    {
      v6 = *([(VFXREDrawCallContextImpl *)self _dynamicFunctionConstants]+ 16);
      if (!v6 || (v9 = qword_1EE1B8650, _dynamicFunctionConstants = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v6, &v9), _dynamicFunctionConstants == -1))
      {
        LODWORD(_dynamicFunctionConstants) = 0;
        return _dynamicFunctionConstants;
      }

      v5 = v6[1];
    }

    else
    {
      v5 = v4[1];
    }

    LODWORD(_dynamicFunctionConstants) = *(v5 + 16 * _dynamicFunctionConstants + 8);
  }

  return _dynamicFunctionConstants;
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

- (void)setStatsVertexCount:(int64_t)count
{
  countCopy = count;
  _meshStats = [(VFXREDrawCallContextImpl *)self _meshStats];
  if (_meshStats)
  {
    _meshStats->var16 = countCopy;
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

- (void)setStatsPrimitiveCount:(int64_t)count
{
  countCopy = count;
  _meshStats = [(VFXREDrawCallContextImpl *)self _meshStats];
  if (_meshStats)
  {
    _meshStats->var15 = countCopy;
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

- (void)setStatsDrawcallCount:(int64_t)count
{
  countCopy = count;
  _meshStats = [(VFXREDrawCallContextImpl *)self _meshStats];
  if (_meshStats)
  {
    _meshStats->var14 = countCopy;
  }
}

- (void)set_stencilInfo:(StencilInfo *)info
{
  state = info->state;
  self->__stencilInfo.referenceValue = info->referenceValue;
  self->__stencilInfo.state = state;
}

- (id).cxx_construct
{
  *(self + 11) = 134217472;
  *(self + 12) = 134217472;
  return self;
}

@end