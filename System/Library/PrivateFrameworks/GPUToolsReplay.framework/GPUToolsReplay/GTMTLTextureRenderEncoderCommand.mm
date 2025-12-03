@interface GTMTLTextureRenderEncoderCommand
- (CGPoint)anchor;
- (CGRect)bounds;
- (GTMTLTextureRenderEncoderCommand)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation GTMTLTextureRenderEncoderCommand

- (CGPoint)anchor
{
  objc_copyStruct(v4, &self->_anchor, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)bounds
{
  objc_copyStruct(v6, &self->_bounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(GTMTLTextureRenderEncoderCommand);
  v5 = *&self->_transform.m33;
  v10[4] = *&self->_transform.m31;
  v10[5] = v5;
  v6 = *&self->_transform.m43;
  v10[6] = *&self->_transform.m41;
  v10[7] = v6;
  v7 = *&self->_transform.m13;
  v10[0] = *&self->_transform.m11;
  v10[1] = v7;
  v8 = *&self->_transform.m23;
  v10[2] = *&self->_transform.m21;
  v10[3] = v8;
  [(GTMTLTextureRenderEncoderCommand *)v4 setTransform:v10];
  [(GTMTLTextureRenderEncoderCommand *)v4 setBounds:self->_bounds.origin.x, self->_bounds.origin.y, self->_bounds.size.width, self->_bounds.size.height];
  [(GTMTLTextureRenderEncoderCommand *)v4 setAnchor:self->_anchor.x, self->_anchor.y];
  [(GTMTLTextureRenderEncoderCommand *)v4 setTexture:self->_texture];
  [(GTMTLTextureRenderEncoderCommand *)v4 setWaitEvent:self->_waitEvent];
  [(GTMTLTextureRenderEncoderCommand *)v4 setWaitEventValue:self->_waitEventValue];
  [(GTMTLTextureRenderEncoderCommand *)v4 setContentsScale:self->_contentsScale];
  [(GTMTLTextureRenderEncoderCommand *)v4 setRgb:self->_rgb];
  [(GTMTLTextureRenderEncoderCommand *)v4 setDepthStencil:self->_depthStencil];
  [(GTMTLTextureRenderEncoderCommand *)v4 setOverlay:self->_overlay];
  [(GTMTLTextureRenderEncoderCommand *)v4 setShrinkToFit:self->_shrinkToFit];
  return v4;
}

- (GTMTLTextureRenderEncoderCommand)init
{
  v13.receiver = self;
  v13.super_class = GTMTLTextureRenderEncoderCommand;
  v2 = [(GTMTLTextureRenderEncoderCommand *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CD9DE8];
    v5 = *(MEMORY[0x277CD9DE8] + 80);
    *(v2 + 72) = *(MEMORY[0x277CD9DE8] + 64);
    *(v2 + 88) = v5;
    v6 = v4[7];
    *(v2 + 104) = v4[6];
    *(v2 + 120) = v6;
    v7 = v4[1];
    *(v2 + 8) = *v4;
    *(v2 + 24) = v7;
    v8 = v4[3];
    *(v2 + 40) = v4[2];
    *(v2 + 56) = v8;
    v9 = *MEMORY[0x277CBF3A0];
    *(v2 + 152) = *(MEMORY[0x277CBF3A0] + 16);
    *(v2 + 136) = v9;
    *(v2 + 168) = *MEMORY[0x277CBF348];
    v10 = *(v2 + 23);
    *(v2 + 23) = 0;

    waitEvent = v3->_waitEvent;
    v3->_waitEvent = 0;

    v3->_waitEventValue = 0;
    v3->_contentsScale = 1.0;
    v3->_rgb = -1;
    *&v3->_depthStencil = 0;
  }

  return v3;
}

@end