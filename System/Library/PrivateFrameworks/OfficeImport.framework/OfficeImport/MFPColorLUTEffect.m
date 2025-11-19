@interface MFPColorLUTEffect
- (MFPColorLUTEffect)initWithLUTA:(unsigned __int8)a3[256] LUTR:(unsigned __int8)a4[256] LUTG:(unsigned __int8)a5[256] LUTB:(unsigned __int8)a6[256];
@end

@implementation MFPColorLUTEffect

- (MFPColorLUTEffect)initWithLUTA:(unsigned __int8)a3[256] LUTR:(unsigned __int8)a4[256] LUTG:(unsigned __int8)a5[256] LUTB:(unsigned __int8)a6[256]
{
  v59.receiver = self;
  v59.super_class = MFPColorLUTEffect;
  result = [(MFPColorLUTEffect *)&v59 init];
  if (result)
  {
    v11 = *(a3 + 3);
    v13 = *a3;
    v12 = *(a3 + 1);
    *&result->mLutA[32] = *(a3 + 2);
    *&result->mLutA[48] = v11;
    *result->mLutA = v13;
    *&result->mLutA[16] = v12;
    v14 = *(a3 + 7);
    v16 = *(a3 + 4);
    v15 = *(a3 + 5);
    *&result->mLutA[96] = *(a3 + 6);
    *&result->mLutA[112] = v14;
    *&result->mLutA[64] = v16;
    *&result->mLutA[80] = v15;
    v17 = *(a3 + 11);
    v19 = *(a3 + 8);
    v18 = *(a3 + 9);
    *&result->mLutA[160] = *(a3 + 10);
    *&result->mLutA[176] = v17;
    *&result->mLutA[128] = v19;
    *&result->mLutA[144] = v18;
    v20 = *(a3 + 15);
    v22 = *(a3 + 12);
    v21 = *(a3 + 13);
    *&result->mLutA[224] = *(a3 + 14);
    *&result->mLutA[240] = v20;
    *&result->mLutA[192] = v22;
    *&result->mLutA[208] = v21;
    v23 = *(a4 + 3);
    v25 = *a4;
    v24 = *(a4 + 1);
    *&result->mLutR[32] = *(a4 + 2);
    *&result->mLutR[48] = v23;
    *result->mLutR = v25;
    *&result->mLutR[16] = v24;
    v26 = *(a4 + 7);
    v28 = *(a4 + 4);
    v27 = *(a4 + 5);
    *&result->mLutR[96] = *(a4 + 6);
    *&result->mLutR[112] = v26;
    *&result->mLutR[64] = v28;
    *&result->mLutR[80] = v27;
    v29 = *(a4 + 11);
    v31 = *(a4 + 8);
    v30 = *(a4 + 9);
    *&result->mLutR[160] = *(a4 + 10);
    *&result->mLutR[176] = v29;
    *&result->mLutR[128] = v31;
    *&result->mLutR[144] = v30;
    v32 = *(a4 + 15);
    v34 = *(a4 + 12);
    v33 = *(a4 + 13);
    *&result->mLutR[224] = *(a4 + 14);
    *&result->mLutR[240] = v32;
    *&result->mLutR[192] = v34;
    *&result->mLutR[208] = v33;
    v35 = *(a5 + 3);
    v37 = *a5;
    v36 = *(a5 + 1);
    *&result->mLutG[32] = *(a5 + 2);
    *&result->mLutG[48] = v35;
    *result->mLutG = v37;
    *&result->mLutG[16] = v36;
    v38 = *(a5 + 7);
    v40 = *(a5 + 4);
    v39 = *(a5 + 5);
    *&result->mLutG[96] = *(a5 + 6);
    *&result->mLutG[112] = v38;
    *&result->mLutG[64] = v40;
    *&result->mLutG[80] = v39;
    v41 = *(a5 + 11);
    v43 = *(a5 + 8);
    v42 = *(a5 + 9);
    *&result->mLutG[160] = *(a5 + 10);
    *&result->mLutG[176] = v41;
    *&result->mLutG[128] = v43;
    *&result->mLutG[144] = v42;
    v44 = *(a5 + 15);
    v46 = *(a5 + 12);
    v45 = *(a5 + 13);
    *&result->mLutG[224] = *(a5 + 14);
    *&result->mLutG[240] = v44;
    *&result->mLutG[192] = v46;
    *&result->mLutG[208] = v45;
    v47 = *(a6 + 3);
    v49 = *a6;
    v48 = *(a6 + 1);
    *&result->mLutB[32] = *(a6 + 2);
    *&result->mLutB[48] = v47;
    *result->mLutB = v49;
    *&result->mLutB[16] = v48;
    v50 = *(a6 + 7);
    v52 = *(a6 + 4);
    v51 = *(a6 + 5);
    *&result->mLutB[96] = *(a6 + 6);
    *&result->mLutB[112] = v50;
    *&result->mLutB[64] = v52;
    *&result->mLutB[80] = v51;
    v53 = *(a6 + 11);
    v55 = *(a6 + 8);
    v54 = *(a6 + 9);
    *&result->mLutB[160] = *(a6 + 10);
    *&result->mLutB[176] = v53;
    *&result->mLutB[128] = v55;
    *&result->mLutB[144] = v54;
    v56 = *(a6 + 15);
    v58 = *(a6 + 12);
    v57 = *(a6 + 13);
    *&result->mLutB[224] = *(a6 + 14);
    *&result->mLutB[240] = v56;
    *&result->mLutB[192] = v58;
    *&result->mLutB[208] = v57;
  }

  return result;
}

@end