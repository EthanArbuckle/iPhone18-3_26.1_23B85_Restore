@interface SaveImage
- (BOOL)canPerformWithActivityItems:(id)a3;
- (void)performActivity;
@end

@implementation SaveImage

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = sub_24FEDE324();
  if (*(v3 + 16))
  {
    sub_24FE72CC0(v3 + 32, v7);

    sub_24FE62F4C(0, &qword_27F3A63D0, 0x277CCAA88);
    LODWORD(v3) = swift_dynamicCast();
    if (v3)
    {
      sub_24FE62F4C(0, &qword_27F3A75F0, 0x277D755B8);
      v4 = [v6 canLoadObjectOfClass_];

      LOBYTE(v3) = v4;
    }
  }

  else
  {
    __break(1u);
  }

  return v3;
}

- (void)performActivity
{
  v2 = self;
  sub_24FECB748();
}

@end