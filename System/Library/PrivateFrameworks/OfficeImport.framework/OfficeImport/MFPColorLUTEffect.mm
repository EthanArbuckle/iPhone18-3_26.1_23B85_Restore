@interface MFPColorLUTEffect
- (MFPColorLUTEffect)initWithLUTA:(unsigned __int8)a[256] LUTR:(unsigned __int8)r[256] LUTG:(unsigned __int8)g[256] LUTB:(unsigned __int8)b[256];
@end

@implementation MFPColorLUTEffect

- (MFPColorLUTEffect)initWithLUTA:(unsigned __int8)a[256] LUTR:(unsigned __int8)r[256] LUTG:(unsigned __int8)g[256] LUTB:(unsigned __int8)b[256]
{
  v59.receiver = self;
  v59.super_class = MFPColorLUTEffect;
  result = [(MFPColorLUTEffect *)&v59 init];
  if (result)
  {
    v11 = *(a + 3);
    v13 = *a;
    v12 = *(a + 1);
    *&result->mLutA[32] = *(a + 2);
    *&result->mLutA[48] = v11;
    *result->mLutA = v13;
    *&result->mLutA[16] = v12;
    v14 = *(a + 7);
    v16 = *(a + 4);
    v15 = *(a + 5);
    *&result->mLutA[96] = *(a + 6);
    *&result->mLutA[112] = v14;
    *&result->mLutA[64] = v16;
    *&result->mLutA[80] = v15;
    v17 = *(a + 11);
    v19 = *(a + 8);
    v18 = *(a + 9);
    *&result->mLutA[160] = *(a + 10);
    *&result->mLutA[176] = v17;
    *&result->mLutA[128] = v19;
    *&result->mLutA[144] = v18;
    v20 = *(a + 15);
    v22 = *(a + 12);
    v21 = *(a + 13);
    *&result->mLutA[224] = *(a + 14);
    *&result->mLutA[240] = v20;
    *&result->mLutA[192] = v22;
    *&result->mLutA[208] = v21;
    v23 = *(r + 3);
    v25 = *r;
    v24 = *(r + 1);
    *&result->mLutR[32] = *(r + 2);
    *&result->mLutR[48] = v23;
    *result->mLutR = v25;
    *&result->mLutR[16] = v24;
    v26 = *(r + 7);
    v28 = *(r + 4);
    v27 = *(r + 5);
    *&result->mLutR[96] = *(r + 6);
    *&result->mLutR[112] = v26;
    *&result->mLutR[64] = v28;
    *&result->mLutR[80] = v27;
    v29 = *(r + 11);
    v31 = *(r + 8);
    v30 = *(r + 9);
    *&result->mLutR[160] = *(r + 10);
    *&result->mLutR[176] = v29;
    *&result->mLutR[128] = v31;
    *&result->mLutR[144] = v30;
    v32 = *(r + 15);
    v34 = *(r + 12);
    v33 = *(r + 13);
    *&result->mLutR[224] = *(r + 14);
    *&result->mLutR[240] = v32;
    *&result->mLutR[192] = v34;
    *&result->mLutR[208] = v33;
    v35 = *(g + 3);
    v37 = *g;
    v36 = *(g + 1);
    *&result->mLutG[32] = *(g + 2);
    *&result->mLutG[48] = v35;
    *result->mLutG = v37;
    *&result->mLutG[16] = v36;
    v38 = *(g + 7);
    v40 = *(g + 4);
    v39 = *(g + 5);
    *&result->mLutG[96] = *(g + 6);
    *&result->mLutG[112] = v38;
    *&result->mLutG[64] = v40;
    *&result->mLutG[80] = v39;
    v41 = *(g + 11);
    v43 = *(g + 8);
    v42 = *(g + 9);
    *&result->mLutG[160] = *(g + 10);
    *&result->mLutG[176] = v41;
    *&result->mLutG[128] = v43;
    *&result->mLutG[144] = v42;
    v44 = *(g + 15);
    v46 = *(g + 12);
    v45 = *(g + 13);
    *&result->mLutG[224] = *(g + 14);
    *&result->mLutG[240] = v44;
    *&result->mLutG[192] = v46;
    *&result->mLutG[208] = v45;
    v47 = *(b + 3);
    v49 = *b;
    v48 = *(b + 1);
    *&result->mLutB[32] = *(b + 2);
    *&result->mLutB[48] = v47;
    *result->mLutB = v49;
    *&result->mLutB[16] = v48;
    v50 = *(b + 7);
    v52 = *(b + 4);
    v51 = *(b + 5);
    *&result->mLutB[96] = *(b + 6);
    *&result->mLutB[112] = v50;
    *&result->mLutB[64] = v52;
    *&result->mLutB[80] = v51;
    v53 = *(b + 11);
    v55 = *(b + 8);
    v54 = *(b + 9);
    *&result->mLutB[160] = *(b + 10);
    *&result->mLutB[176] = v53;
    *&result->mLutB[128] = v55;
    *&result->mLutB[144] = v54;
    v56 = *(b + 15);
    v58 = *(b + 12);
    v57 = *(b + 13);
    *&result->mLutB[224] = *(b + 14);
    *&result->mLutB[240] = v56;
    *&result->mLutB[192] = v58;
    *&result->mLutB[208] = v57;
  }

  return result;
}

@end