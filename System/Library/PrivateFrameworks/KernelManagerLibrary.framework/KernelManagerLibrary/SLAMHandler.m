@interface SLAMHandler
- (id)transceive:(id)a3 error:(id *)a4;
- (void)log:(id)a3;
@end

@implementation SLAMHandler

- (void)log:(id)a3
{
  v3 = sub_2557B0C38();
  v5 = v4;

  sub_25579E460(v3, v5);
}

- (id)transceive:(id)a3 error:(id *)a4
{
  v4 = a3;

  v5 = sub_2557B09F8();
  v7 = v6;

  v8 = sub_25579BEF4(v5, v7);
  v10 = v9;

  sub_25578AAE0(v5, v7);
  v11 = sub_2557B09E8();
  sub_25578AAE0(v8, v10);

  return v11;
}

@end