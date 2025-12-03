@interface AlchemistWrapper
+ (BOOL)generateAlchemistResultWithSourceURL:(id)l outputURL:(id)rL outputColorSpace:(CGColorSpace *)space error:(id *)error;
@end

@implementation AlchemistWrapper

+ (BOOL)generateAlchemistResultWithSourceURL:(id)l outputURL:(id)rL outputColorSpace:(CGColorSpace *)space error:(id *)error
{
  v7 = sub_100021780();
  v8 = sub_100007380(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v8);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v21[-v16];
  sub_100021760();
  sub_100021760();
  spaceCopy = space;
  static AlchemistWrapper.generateAlchemistResult(sourceURL:outputURL:outputColorSpace:)(v17, v15, space);

  v19 = *(v10 + 8);
  v19(v15, v7);
  v19(v17, v7);
  return 1;
}

@end