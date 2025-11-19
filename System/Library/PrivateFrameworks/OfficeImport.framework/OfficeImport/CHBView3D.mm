@interface CHBView3D
+ (XlChart3D)xlChart3DFrom:(id)a3;
+ (id)readFrom:(const XlChart3D *)a3;
@end

@implementation CHBView3D

+ (id)readFrom:(const XlChart3D *)a3
{
  if (a3)
  {
    v4 = objc_alloc_init(CHDView3D);
    [(CHDView3D *)v4 setRotationX:a3->var3];
    [(CHDView3D *)v4 setRotationY:a3->var2];
    [(CHDView3D *)v4 setPerspective:a3->var4];
    [(CHDView3D *)v4 setRightAngleAxes:XlChart3D::isPerspective(a3) ^ 1];
    [(CHDView3D *)v4 setDepthPercent:a3->var6];
    [(CHDView3D *)v4 setGapDepthPercent:a3->var7];
    [(CHDView3D *)v4 setHeightPercent:a3->var5];
    [(CHDView3D *)v4 setAutoscale:XlChart3D::is3DScaling(a3)];
    [(CHDView3D *)v4 setCluster:XlChart3D::isCluster(a3)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (XlChart3D)xlChart3DFrom:(id)a3
{
  if (a3)
  {
    operator new();
  }

  return 0;
}

@end