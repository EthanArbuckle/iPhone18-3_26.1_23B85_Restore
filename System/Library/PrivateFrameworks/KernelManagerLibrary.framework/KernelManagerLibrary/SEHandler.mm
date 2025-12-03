@interface SEHandler
- (id)transceive:(id)transceive error:(id *)error;
- (void)log:(id)log;
@end

@implementation SEHandler

- (void)log:(id)log
{
  v3 = sub_2557B0C38();
  v5 = v4;

  sub_255792C4C(v3, v5);
}

- (id)transceive:(id)transceive error:(id *)error
{
  transceiveCopy = transceive;

  v5 = sub_2557B09F8();
  v7 = v6;

  v8 = sub_255792D68();
  v10 = v9;

  sub_25578AAE0(v5, v7);
  v11 = sub_2557B09E8();
  sub_25578AAE0(v8, v10);

  return v11;
}

@end