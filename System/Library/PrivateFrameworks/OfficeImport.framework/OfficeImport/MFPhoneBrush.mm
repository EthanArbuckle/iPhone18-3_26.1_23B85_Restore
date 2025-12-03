@interface MFPhoneBrush
- (BOOL)fillWithROP:(id)p in_path:(id)in_path;
- (void)setPolyFillMode:(id)mode in_path:(id)in_path;
@end

@implementation MFPhoneBrush

- (void)setPolyFillMode:(id)mode in_path:(id)in_path
{
  modeCopy = mode;
  in_pathCopy = in_path;
  getPolyFillMode = [modeCopy getPolyFillMode];
  if (getPolyFillMode == 1)
  {
    v7 = 1;
  }

  else
  {
    if (getPolyFillMode != 2)
    {
      goto LABEL_6;
    }

    v7 = 0;
  }

  [in_pathCopy setWindingRule:v7];
LABEL_6:
}

- (BOOL)fillWithROP:(id)p in_path:(id)in_path
{
  pCopy = p;
  in_pathCopy = in_path;
  v7 = [MFPhoneDeviceDriver getROP:pCopy];
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

    [in_pathCopy fill];
    v8 = 1;
    goto LABEL_7;
  }

  v8 = v7 == 3;
LABEL_7:

  return v8;
}

@end