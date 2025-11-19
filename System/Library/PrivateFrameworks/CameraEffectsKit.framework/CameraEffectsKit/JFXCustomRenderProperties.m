@interface JFXCustomRenderProperties
+ (id)newCustomRenderProperties:(id)a3 metadata:(id)a4;
@end

@implementation JFXCustomRenderProperties

+ (id)newCustomRenderProperties:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  v9 = v8[2];
  v8[2] = v6;
  v10 = v6;

  v11 = v8[3];
  v8[3] = v7;

  *(v8 + 8) = 0;
  return v8;
}

@end