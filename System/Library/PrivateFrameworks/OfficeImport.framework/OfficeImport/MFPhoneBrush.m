@interface MFPhoneBrush
- (BOOL)fillWithROP:(id)a3 in_path:(id)a4;
- (void)setPolyFillMode:(id)a3 in_path:(id)a4;
@end

@implementation MFPhoneBrush

- (void)setPolyFillMode:(id)a3 in_path:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v8 getPolyFillMode];
  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_6;
    }

    v7 = 0;
  }

  [v5 setWindingRule:v7];
LABEL_6:
}

- (BOOL)fillWithROP:(id)a3 in_path:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MFPhoneDeviceDriver getROP:v5];
  if (!v7)
  {
    v9 = +[OITSUColor blackColor];
    [v9 set];
    goto LABEL_6;
  }

  if (v7 == 1)
  {
    v9 = +[OITSUColor whiteColor];
    [v9 set];
LABEL_6:

    [v6 fill];
    v8 = 1;
    goto LABEL_7;
  }

  v8 = v7 == 3;
LABEL_7:

  return v8;
}

@end