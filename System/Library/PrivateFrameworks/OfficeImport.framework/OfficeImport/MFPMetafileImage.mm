@interface MFPMetafileImage
- (MFPMetafileImage)initWithMetafileData:(id)a3;
- (void)drawInRect:(CGRect)a3 fromRect:(CGRect)a4 unit:(int)a5 effect:(id)a6;
@end

@implementation MFPMetafileImage

- (MFPMetafileImage)initWithMetafileData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFPMetafileImage;
  v6 = [(MFPMetafileImage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mMetafileData, a3);
  }

  return v7;
}

- (void)drawInRect:(CGRect)a3 fromRect:(CGRect)a4 unit:(int)a5 effect:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a6;
  v12 = [(NSData *)self->mMetafileData bytes];
  v13 = [(NSData *)self->mMetafileData length];
  if (v13 < 0x58)
  {
    if (v13 < 0x16)
    {
      goto LABEL_20;
    }
  }

  else if (v12[10] == 1179469088)
  {
    v15 = v12[18];
    v14 = v12[19];
    v17 = v12[20];
    v16 = v12[21];
    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    MinX = CGRectGetMinX(v72);
    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    MinY = CGRectGetMinY(v73);
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    MaxX = CGRectGetMaxX(v74);
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    MaxY = CGRectGetMaxY(v75);
    v22 = v17 * 100.0 / v15;
    v23 = v16 * 100.0 / v14;
    v12[6] = (MinX * v22);
    v12[7] = (v23 * MinY);
    v12[8] = (v22 * MaxX);
    v12[9] = (v23 * MaxY);
LABEL_19:
    v56 = TCCurrentGraphicsContext();
    CGContextSaveGState(v56);
    [MFConverter playInCurrentContext:self->mMetafileData frame:0 colorMap:0 fillMap:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    CGContextRestoreGState(v56);
    goto LABEL_20;
  }

  if (*v12 == -1698247209)
  {
    v65 = v11;
    v64 = [(NSData *)self->mMetafileData mutableCopy];
    [v64 replaceBytesInRange:22 withBytes:2 length:{0, 0}];
    objc_storeStrong(&self->mMetafileData, v64);
    v24 = [(NSData *)self->mMetafileData bytes];
    v25 = [(NSData *)self->mMetafileData length];
    v59 = self;
    v26 = v24[6];
    v27 = v24[7];
    v28 = v24[8];
    v29 = v24[9];
    v60 = v24[10];
    v30 = v24[11];
    v62 = v24[12];
    v31 = v24[13];
    v32 = &v24[v25 - 10];
    TCVerifyInputMeetsCondition(v24 <= v32);
    v33 = 0;
    v34 = 0;
    v35 = (v27 << 8) | v26;
    v36 = (v29 << 8) | v28;
    v37 = v35;
    v38 = v36;
    v39 = (((v30 << 8) | v60) - v35);
    v40 = (((v31 << 8) | v62) - v36);
    v41 = v24 + 40;
    while (v41 <= v32)
    {
      TCVerifyInputMeetsCondition(v41 > v24);
      v42 = *v41;
      v43 = v41[1];
      v44 = v41[2];
      v45 = v41[3];
      TCVerifyInputMeetsCondition((v45 >> 7) ^ 1);
      v46 = (2 * v42) | (v43 << 9) | (v44 << 17) | (v45 << 25);
      if (!v46)
      {
        break;
      }

      v47 = *(v41 + 2);
      if (v47 == 523)
      {
        v34 = (v41 + 6);
      }

      if (v47 == 524)
      {
        v33 = (v41 + 6);
      }

      v41 += v46;
      if (v34)
      {
        if (v33)
        {
          break;
        }
      }
    }

    v11 = v65;
    self = v59;
    if (v34 && v33)
    {
      v57 = v40;
      v58 = v39;
      v61 = v38;
      v63 = v37;
      v48 = v34[1];
      v49 = *v34;
      v50 = v33[1];
      v51 = *v33;
      memset(&v71, 0, sizeof(v71));
      mapSrcRectOntoDstRect(&v71, v48, v49, v50, v51, x, y, width, height);
      memset(&v70, 0, sizeof(v70));
      mapSrcRectOntoDstRect(&v70, v63, v61, v58, v57, v48, v49, v50, v51);
      t1 = v71;
      memset(&v69, 0, sizeof(v69));
      t2 = v70;
      CGAffineTransformConcat(&v69, &t1, &t2);
      t1 = v69;
      v76.origin.x = transformRect(&t1.a, v48, v49);
      v52 = v76.origin.x;
      v53 = v76.origin.y;
      v54 = v76.size.width;
      v55 = v76.size.height;
      v34[1] = CGRectGetMinX(v76);
      v77.origin.x = v52;
      v77.origin.y = v53;
      v77.size.width = v54;
      v77.size.height = v55;
      *v34 = CGRectGetMinY(v77);
      v78.origin.x = v52;
      v78.origin.y = v53;
      v78.size.width = v54;
      v78.size.height = v55;
      v33[1] = CGRectGetWidth(v78);
      v79.origin.x = v52;
      v79.origin.y = v53;
      v79.size.width = v54;
      v79.size.height = v55;
      *v33 = CGRectGetHeight(v79);
    }

    goto LABEL_19;
  }

LABEL_20:
}

@end