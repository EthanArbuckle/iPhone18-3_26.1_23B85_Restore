@interface CHBView3D
+ (XlChart3D)xlChart3DFrom:(id)from;
+ (id)readFrom:(const XlChart3D *)from;
@end

@implementation CHBView3D

+ (id)readFrom:(const XlChart3D *)from
{
  if (from)
  {
    v4 = objc_alloc_init(CHDView3D);
    [(CHDView3D *)v4 setRotationX:from->var3];
    [(CHDView3D *)v4 setRotationY:from->var2];
    [(CHDView3D *)v4 setPerspective:from->var4];
    [(CHDView3D *)v4 setRightAngleAxes:XlChart3D::isPerspective(from) ^ 1];
    [(CHDView3D *)v4 setDepthPercent:from->var6];
    [(CHDView3D *)v4 setGapDepthPercent:from->var7];
    [(CHDView3D *)v4 setHeightPercent:from->var5];
    [(CHDView3D *)v4 setAutoscale:XlChart3D::is3DScaling(from)];
    [(CHDView3D *)v4 setCluster:XlChart3D::isCluster(from)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (XlChart3D)xlChart3DFrom:(id)from
{
  if (from)
  {
    operator new();
  }

  return 0;
}

@end