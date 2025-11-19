@interface CDMAutoBugCapture
+ (void)reportUnsafeWithType:(id)a3 subType:(id)a4;
@end

@implementation CDMAutoBugCapture

+ (void)reportUnsafeWithType:(id)a3 subType:(id)a4
{
  v4 = sub_1DC51772C();
  v6 = v5;
  v7 = sub_1DC51772C();
  v9 = v8;
  swift_getObjCClassMetadata();
  sub_1DC3BA5EC(v4, v6, v7, v9);
}

@end