@interface LTMGeometryDataV2
- (CGAffineTransform)sensorSpaceToValidBufferSpaceTransform;
- (CGPoint)deepZoomOrigin;
- (CGRect)cropRect;
- (CGRect)sourceRect;
- (CGSize)inputTextureSize;
- (LTMGeometryDataV2)initWithInputTextureWidth:(unint64_t)a3 height:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setCropRect:(CGRect)a3 sourceRect:(CGRect)a4;
- (void)setSensorSpaceToValidBufferSpaceTransform:(CGAffineTransform *)a3;
@end

@implementation LTMGeometryDataV2

- (LTMGeometryDataV2)initWithInputTextureWidth:(unint64_t)a3 height:(unint64_t)a4
{
  v17.receiver = self;
  v17.super_class = LTMGeometryDataV2;
  v6 = [(LTMGeometryDataV2 *)&v17 init];
  v7 = v6;
  if (!v6)
  {
    [LTMGeometryDataV2 initWithInputTextureWidth:height:];
LABEL_8:
    v15 = 0;
    goto LABEL_5;
  }

  if (a3 < 0x1E0 || a4 <= 0x13F)
  {
    [LTMGeometryDataV2 initWithInputTextureWidth:height:];
    goto LABEL_8;
  }

  *(v6 + 13) = a3;
  *(v6 + 14) = a4;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = a3;
  *(v6 + 4) = a4;
  *(v6 + 5) = ((a3 - 480) >> 1);
  *(v6 + 6) = ((a4 - 320) >> 1);
  *(v6 + 56) = xmmword_1C9335BB0;
  *(v6 + 11) = 0;
  *(v6 + 12) = 0;
  v8 = MEMORY[0x1E695EFD0];
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *(v6 + 184) = *MEMORY[0x1E695EFD0];
  *(v6 + 200) = v9;
  *(v6 + 216) = *(v8 + 32);
  __asm { FMOV            V0.2S, #1.0 }

  *(v6 + 9) = _D0;
  *(v6 + 10) = 0;
  v15 = v6;
LABEL_5:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[LTMGeometryDataV2 alloc] initWithInputTextureWidth:self->_inputTextureSize.width height:self->_inputTextureSize.height];
  [(LTMGeometryDataV2 *)v4 setCropRect:self->_cropRect.origin.x sourceRect:self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height, self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height];
  [(LTMGeometryDataV2 *)self inputTextureDownsampleRatio];
  [(LTMGeometryDataV2 *)v4 setInputTextureDownsampleRatio:?];
  [(LTMGeometryDataV2 *)self deepZoomOrigin];
  [(LTMGeometryDataV2 *)v4 setDeepZoomOrigin:?];
  return v4;
}

- (void)setCropRect:(CGRect)a3 sourceRect:(CGRect)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v46 = CGRectIntegral(a4);
  v9 = v46.origin.x;
  v34 = v46.origin.y;
  rect2 = v46.origin.x;
  v10 = v46.origin.y;
  v39 = v46.size.width;
  v11 = v46.size.height;
  v33 = v46.size.height;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v47 = CGRectIntegral(v46);
  v12 = v47.origin.x;
  v13 = v47.origin.y;
  v14 = v47.size.width;
  v15 = v47.size.height;
  v53.origin.x = v9;
  v53.origin.y = v10;
  v53.size.width = v39;
  v53.size.height = v11;
  v48 = CGRectIntersection(self->_inputTextureRect, v53);
  v16 = v48.origin.x;
  rect1 = v48.origin.y;
  v17 = v48.size.width;
  v18 = v48.size.height;
  v54.origin.x = v12;
  v54.origin.y = v13;
  v54.size.width = v14;
  v54.size.height = v15;
  v49 = CGRectIntersection(self->_inputTextureRect, v54);
  v40 = v49.origin.x;
  v37 = v49.size.width;
  v38 = v49.origin.y;
  v36 = v49.size.height;
  v43 = v16;
  v49.origin.x = v16;
  v55.origin.y = v34;
  v49.origin.y = rect1;
  v49.size.width = v17;
  v49.size.height = v18;
  v55.origin.x = rect2;
  v55.size.width = v39;
  v55.size.height = v33;
  if (!CGRectEqualToRect(v49, v55))
  {
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v50.origin.x = v40;
  v56.origin.x = v12;
  v50.size.width = v37;
  v50.origin.y = v38;
  v50.size.height = v36;
  v56.origin.y = v13;
  v56.size.width = v14;
  v56.size.height = v15;
  r1 = v18;
  if (!CGRectEqualToRect(v50, v56))
  {
    v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v39 < 480.0 || v33 < 320.0)
  {
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v22 = self->_minimumRect.origin.x;
    rect1 = self->_minimumRect.origin.y;
    v17 = self->_minimumRect.size.width;
    r1 = self->_minimumRect.size.height;
    v21 = v40;
  }

  else
  {
    v21 = v40;
    v22 = v43;
  }

  if (v14 < 480.0 || v15 < 320.0)
  {
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v21 = self->_minimumRect.origin.x;
    v25 = self->_minimumRect.origin.y;
    v26 = self->_minimumRect.size.width;
    v24 = self->_minimumRect.size.height;
  }

  else
  {
    v24 = v36;
    v26 = v37;
    v25 = v38;
  }

  v44 = v22;
  v51.origin.x = v22;
  v51.origin.y = rect1;
  v41 = v17;
  v51.size.width = v17;
  v51.size.height = r1;
  v57.origin.x = v21;
  v57.origin.y = v25;
  v57.size.width = v26;
  v57.size.height = v24;
  v52 = CGRectIntersection(v51, v57);
  v28 = v52.origin.x;
  v29 = v52.origin.y;
  v30 = v52.size.width;
  v31 = v52.size.height;
  v52.origin.x = v21;
  v52.origin.y = v25;
  v52.size.width = v26;
  v52.size.height = v24;
  v58.origin.x = v28;
  v58.origin.y = v29;
  v58.size.width = v30;
  v58.size.height = v31;
  if (!CGRectEqualToRect(v52, v58))
  {
    v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_cropRect.origin.x = v28;
  self->_cropRect.origin.y = v29;
  self->_cropRect.size.width = v30;
  self->_cropRect.size.height = v31;
  self->_sourceRect.origin.x = v44;
  self->_sourceRect.origin.y = rect1;
  self->_sourceRect.size.width = v41;
  self->_sourceRect.size.height = r1;
}

- (CGPoint)deepZoomOrigin
{
  x = self->_deepZoomOrigin.x;
  y = self->_deepZoomOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)inputTextureSize
{
  width = self->_inputTextureSize.width;
  height = self->_inputTextureSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)sensorSpaceToValidBufferSpaceTransform
{
  v3 = *&self[4].b;
  *&retstr->a = *&self[3].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].d;
  return self;
}

- (void)setSensorSpaceToValidBufferSpaceTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_sensorSpaceToValidBufferSpaceTransform.tx = *&a3->tx;
  *&self->_sensorSpaceToValidBufferSpaceTransform.c = v4;
  *&self->_sensorSpaceToValidBufferSpaceTransform.a = v3;
}

- (void)initWithInputTextureWidth:height:.cold.1()
{
  LODWORD(v12) = 0;
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  if (OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v12, v2, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14)))
  {
    v11 = v1;
  }

  else
  {
    v11 = v1 & 0xFFFFFFFE;
  }

  if (v11)
  {
    OUTLINED_FUNCTION_3("[LTMGeometryDataV2 initWithInputTextureWidth:height:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)initWithInputTextureWidth:height:.cold.2()
{
  LODWORD(v12) = 0;
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  if (OUTLINED_FUNCTION_5(v3, v4, v5, v6, v7, v8, v9, v10, v12, v2, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14)))
  {
    v11 = v1;
  }

  else
  {
    v11 = v1 & 0xFFFFFFFE;
  }

  if (v11)
  {
    OUTLINED_FUNCTION_3("[LTMGeometryDataV2 initWithInputTextureWidth:height:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

@end