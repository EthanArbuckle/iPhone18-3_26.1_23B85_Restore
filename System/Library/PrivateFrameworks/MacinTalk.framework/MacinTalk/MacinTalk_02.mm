float MT3FInsertPlosiveRelease::VisitSentence(MT3FInsertPlosiveRelease *this, MTFESpeechElement *a2)
{
  *(this + 8) = 0;
  MTFESpeechElement::VisitChildren(a2, this);
  result = *(this + 8) + *(&a2[1].var0 + 1);
  *(&a2[1].var0 + 1) = result;
  return result;
}

uint64_t MT3FInsertPlosiveRelease::VisitPhoneme(MT3FInsertPlosiveRelease *this, MTFEPhoneme *a2)
{
  result = MTFETrackingVisitor::VisitPhoneme(this, a2);
  var6 = a2->var6;
  if (!var6)
  {
    var6 = &MTFEPhonemeFlags::sSIL;
  }

  if (!BYTE2(var6[1].var0) && (*(MEMORY[0x277D65568] + 4 * a2->var9) & 0x800000) != 0)
  {
    operator new();
  }

  return result;
}

void MT3FInsertPlosiveRelease::~MT3FInsertPlosiveRelease(MT3FInsertPlosiveRelease *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFEDuration::MTFEDuration(uint64_t a1, MTFEDuration *this)
{
  *a1 = &unk_2868F6008;
  *(a1 + 8) = this;
  UsePostDurMod = MTBEParam::GetUsePostDurMod(this);
  v4 = *(a1 + 8);
  if (UsePostDurMod)
  {
    DurModFakeRate = MTBEParam::GetDurModFakeRate(v4);
  }

  else
  {
    DurModFakeRate = MTBEParam::GetRate(v4);
  }

  *(a1 + 48) = DurModFakeRate;
}

MTFESpeechElement *MTFEDuration::VisitIntonationalPhrase(MTFEDuration *this, MTFESpeechElement *a2)
{
  if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
  {
    puts("MTFEDuration::VisitIntonationalPhrase()");
    v4 = (MTBEDebugFlags::sMTXDebug & 0x10) == 0;
  }

  else
  {
    v4 = 1;
  }

  *(this + 2) = a2;
  v5 = fminf(floorf(logf(SWORD1(a2[2].var7)) * 2.1276) + 1.0, 5.0);
  *(this + 17) = v5;
  if (!v4)
  {
    printf("%s = %g\n", "fNumWrdsInIntonPhrase", v5);
  }

  return MTFESpeechElement::VisitChildren(a2, this);
}

MTFESpeechElement *MTFEDuration::VisitIntermediatePhrase(MTFEDuration *this, MTFESpeechElement *a2)
{
  if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
  {
    puts("MTFEDuration::VisitIntermediatePhrase()");
    v4 = (MTBEDebugFlags::sMTXDebug & 0x10) == 0;
  }

  else
  {
    v4 = 1;
  }

  *(this + 3) = a2;
  v5 = fminf(floorf(logf(SWORD1(a2[1].var4)) * 2.1276) + 1.0, 5.0);
  *(this + 16) = v5;
  if (!v4)
  {
    printf("%s = %g\n", "fNumWrdsInInterPhrase", v5);
  }

  *(this + 82) = 0;
  *(this + 21) = -1;

  return MTFESpeechElement::VisitChildren(a2, this);
}

void MTFEDuration::VisitWord(MTFEDuration *this, MTFESpeechElement *a2)
{
  if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
  {
    puts("MTFEDuration::VisitWord()");
  }

  v4 = *&a2[3].var2;
  if (*&a2[3].var2)
  {
    v5 = *(this + 1);
    if (v5[6].i8[0] == 1)
    {
      MTBEParam::SetTempo(v5, v4);
    }

    else
    {
      MTBEParam::SetRate(v5, v4);
    }

    *(this + 12) = *&a2[3].var2;
  }

  if ((a2[1].var0 & 1) == 0)
  {
    *(this + 4) = a2;

    MTFESpeechElement::VisitChildren(a2, this);
  }
}

void MTFEDuration::VisitSyllable(float32x2_t *this, MTFESpeechElement *a2)
{
  if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
  {
    puts("MTFEDuration::VisitSyllable()");
  }

  this[5] = a2;
  var0_low = SLOWORD(a2[1].var0);
  v5 = this[4];
  this[6].f32[1] = floorf(logf((var0_low - *(*&v5 + 170) + 1)) * 2.1276);
  v6 = *(*&v5 + 174);
  v7 = 0.0;
  if (v6 != var0_low)
  {
    v7 = floorf(logf((v6 - var0_low)) * 2.1276);
  }

  this[7].f32[0] = v7;
  this[7].f32[1] = fminf(floorf(logf((*(*&this[3] + 62) - var0_low)) * 2.1276), 3.0);
  v8 = &unk_2868F6078;
  v9 = 0;
  MTFESpeechElement::VisitChildren(a2, &v8);
  this[9] = vminnm_f32(vcvt_f32_s32(v9), 0x4000000040000000);
  if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
  {
    printf("%s = %g\n", "fromWdStartSyls", this[6].f32[1]);
    if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
    {
      printf("%s = %g\n", "fromWdEndSyls", this[7].f32[0]);
      if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
      {
        printf("%s = %g\n", "fromPhEndSyls", this[7].f32[1]);
        if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
        {
          printf("%s = %g\n", "fNumPhnsInOnset", this[9].f32[0]);
          if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
          {
            printf("%s = %g\n", "fNumPhnsInCoda", this[9].f32[1]);
          }
        }
      }
    }
  }

  MTFESpeechElement::VisitChildren(a2, this);
  MTFESpeechVisitor::~MTFESpeechVisitor(&v8);
}

void sub_257B2E284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MTFESpeechVisitor::~MTFESpeechVisitor(va);
  _Unwind_Resume(a1);
}

void SyllPhnCounter::SyllPhnCounter(SyllPhnCounter *this)
{
  *this = &unk_2868F6078;
  *(this + 1) = 0;
}

{
  *this = &unk_2868F6078;
  *(this + 1) = 0;
}

void MTFEDuration::VisitPhoneme(MTFEDuration *this, MTFEPhoneme *a2)
{
  if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
  {
    puts("MTFEDuration::VisitPhoneme()");
  }

  if (a2->var9)
  {
    var15 = a2->var15;
    v5 = *(this + 82);
    if ((v5 & 1) == 0)
    {
      *(this + 21) = a2->var8;
      *(this + 82) = 1;
    }

    v6 = *(this + 3);
    var7 = v6->var7;
    if (var7)
    {
      v8 = *(MTFELastPhoneme(v6->var7) + 58) != 0;
      v6 = *(this + 3);
    }

    else
    {
      v8 = 1;
    }

    v9 = MTFELastPhoneme(v6);
    v10 = &MTFEPhonemeFlags::sSIL;
    var6 = a2->var6;
    v12 = a2->var7;
    if (v12)
    {
      v13 = a2->var7;
    }

    else
    {
      v13 = &MTFEPhonemeFlags::sSIL;
    }

    if (var6)
    {
      v14 = a2->var6;
    }

    else
    {
      v14 = &MTFEPhonemeFlags::sSIL;
    }

    v15 = v13->var7;
    if (!v15)
    {
      v15 = &MTFEPhonemeFlags::sSIL;
    }

    v16 = MTFEDuration::sPhonToLCClass[BYTE2(v13[1].var0)];
    if (v14->var6)
    {
      v10 = v14->var6;
    }

    v17 = MTFEDuration::sPhonToLCClass[BYTE2(v15[1].var0)];
    v18 = MTFEDuration::sPhonToRCClass[BYTE2(v14[1].var0)];
    v19 = MTFEDuration::sPhonToRCClass[BYTE2(v10[1].var0)];
    if (v5)
    {
      if (*(this + 82) == 1)
      {
        v20 = var7 && *(this + 21) + 1 == a2->var8;
        v21 = v20;
        if (v21 && v8)
        {
          v17 = 4;
        }
      }
    }

    else if (var7 != 0 && v8)
    {
      v17 = v16;
      v16 = 4;
    }

    var8 = a2->var8;
    if (!v9[58])
    {
      goto LABEL_40;
    }

    v23 = *(v9 + 28);
    if (v23 == var8 && *(*(this + 3) + 40))
    {
      v24 = 4;
      goto LABEL_41;
    }

    if (v23 - 1 == var8)
    {
      v24 = v18;
      if (*(*(this + 3) + 40))
      {
        v18 = 4;
      }

      else
      {
        v18 = v19;
      }
    }

    else
    {
LABEL_40:
      v24 = v18;
      v18 = v19;
    }

LABEL_41:
    *(this + 40) = 0;
    v25 = 0.0;
    if (*(this + 21) < var8 && (a2->var9 == BYTE2(v12[1].var0) || MTFEDuration::sPhonToDClass[a2->var9] == 5 && MTFEDuration::sPhonToDClass[BYTE2(v12[1].var0)] == 5 || (MTFEDuration::sPhonToPhon[a2->var9] & 0xFE) == 0x26 && MTFEDuration::sPhonToDClass[BYTE2(var6[1].var0)] == 5))
    {
      *(this + 80) = 1;
      v25 = 1.0;
    }

    if (var8 < *(v9 + 28))
    {
      v26 = BYTE2(var6[1].var0);
      if (a2->var9 == v26 || MTFEDuration::sPhonToDClass[a2->var9] == 5 && (MTFEDuration::sPhonToDClass[v26] == 5 || (MTFEDuration::sPhonToPhon[v26] & 0xFE) == 0x26))
      {
        *(this + 81) = 1;
      }
    }

    v27 = var15 & 0x60000000;
    if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
    {
      printf("%s = %g\n", "(float)fGeminationToTheLeft", v25);
      if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
      {
        LOBYTE(v28) = *(this + 81);
        printf("%s = %g\n", "(float)fGeminationToTheRight", v28);
      }
    }

    MTFEDuration::ModelPhoneme(this, a2->var9, a2->var10 != 0, v16, v24, v17, v18, v27 == 0, v27 == 0x40000000, &a2->var13);
    a2->var14 = 0.5;
    v29 = a2->var13 * 0.0090703;
    a2->var13 = v29;
    if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
    {
      printf("\nDuration = %5.2fms, %3.0f frames\n", (v29 * 5.0), v29);
    }
  }
}

void MTFEDuration::ModelPhoneme(MTFEDuration *this, unsigned int a2, int a3, int a4, int a5, int a6, int a7, int a8, BOOL a9, float *a10)
{
  v15 = MTFEDuration::sPhonToPhon[a2];
  v16 = MTFEDuration::sPhonToPClass[a2];
  v17 = MTFEDuration::sPhonToGClass[a2];
  v18 = *(*(this + 5) + 62);
  v19 = MTFEDuration::sPhonToDClass[a2];
  v20 = MTBEDebugFlags::sMTXDebug;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
  {
    printf("Dur[%s]    xph %d, acc %d, pho %d, pcl %d, gencl %d, dcl %d, lcl %d rcl %d lc2 %d rc2 %d", *(MEMORY[0x277D65550] + 8 * a2), a3, v18 != 0, v15, v16, v17, v19, a4, a5, a6, a7);
    v20 = MTBEDebugFlags::sMTXDebug;
  }

  v21 = 3395.6 + 0.0;
  v86 = v15;
  if ((v20 & 0x10) == 0)
  {
    v22 = v15;
    v23 = 0;
    v24 = *&MTFEDuration::sCoeffs[4 * v22 + 4];
LABEL_7:
    v85 = a4;
    v25 = (v21 + v24) + *&MTFEDuration::sCoeffs[4 * a4 + 196];
LABEL_8:
    v26 = v25 + *&MTFEDuration::sCoeffs[4 * a6 + 172];
LABEL_9:
    v27 = a5;
    v28 = v26 + *&MTFEDuration::sCoeffs[4 * a5 + 244];
LABEL_10:
    v29 = v28 + *&MTFEDuration::sCoeffs[4 * a7 + 220];
LABEL_11:
    v30 = v29 + (-59.82 * *(this + 17));
LABEL_12:
    v31 = v30 + (22.677 * *(this + 16));
LABEL_13:
    v32 = 1;
    goto LABEL_14;
  }

  printf("\nDur ");
  printf(" %5.2f(%5.2f)", ((3395.6 * 1000.0) / 22050.0), 3395.6);
  v24 = *&MTFEDuration::sCoeffs[4 * v15 + 4];
  if ((MTBEDebugFlags::sMTXDebug & 0x10) == 0)
  {
    v23 = 1;
    goto LABEL_7;
  }

  printf(" %5.2f(%5.2f)", ((v24 * 1000.0) / 22050.0), v24);
  v85 = a4;
  v64 = *&MTFEDuration::sCoeffs[4 * a4 + 196];
  v25 = (v21 + v24) + v64;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) == 0)
  {
    v23 = 2;
    goto LABEL_8;
  }

  printf(" %5.2f(%5.2f)", ((v64 * 1000.0) / 22050.0), v64);
  v79 = *&MTFEDuration::sCoeffs[4 * a6 + 172];
  v26 = v25 + v79;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) == 0)
  {
    v23 = 3;
    goto LABEL_9;
  }

  printf(" %5.2f(%5.2f)", ((v79 * 1000.0) / 22050.0), v79);
  v27 = a5;
  v80 = *&MTFEDuration::sCoeffs[4 * a5 + 244];
  v28 = v26 + v80;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) == 0)
  {
    v23 = 4;
    goto LABEL_10;
  }

  printf(" %5.2f(%5.2f)", ((v80 * 1000.0) / 22050.0), v80);
  v81 = *&MTFEDuration::sCoeffs[4 * a7 + 220];
  v29 = v28 + v81;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) == 0)
  {
    v23 = 5;
    goto LABEL_11;
  }

  printf(" %5.2f(%5.2f)", ((v81 * 1000.0) / 22050.0), v81);
  v82 = -59.82 * *(this + 17);
  v30 = v29 + v82;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) == 0)
  {
    v23 = 6;
    goto LABEL_12;
  }

  printf(" %5.2f(%5.2f)", ((v82 * 1000.0) / 22050.0), v82);
  v83 = 22.677 * *(this + 16);
  v31 = v30 + v83;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) == 0)
  {
    v23 = 7;
    goto LABEL_13;
  }

  printf(" %5.2f(%5.2f)", ((v83 * 1000.0) / 22050.0), v83);
  v32 = (MTBEDebugFlags::sMTXDebug & 0x10) == 0;
  v23 = 8;
LABEL_14:
  v33 = 0.0;
  if (*(*(this + 5) + 62) == 8)
  {
    v34 = 1.0;
  }

  else
  {
    v34 = 0.0;
  }

  v35 = 122.51 * v34;
  v36 = v31 + (122.51 * v34);
  if (v32)
  {
    v37 = v17;
    if (*(this + 80))
    {
      v33 = 1.0;
    }

    v38 = v36 + (*&MTFEDuration::sCoeffs[4 * v17 + 280] * v33);
    goto LABEL_28;
  }

  v37 = v17;
  if (!v23)
  {
    printf("\nDur ");
  }

  printf(" %5.2f(%5.2f)", ((v35 * 1000.0) / 22050.0), v35);
  v39 = &MTFEDuration::sCoeffs[4 * v17];
  if (*(this + 80))
  {
    v40 = 1.0;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = *(v39 + 70) * v40;
  v38 = v36 + v41;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) == 0)
  {
    ++v23;
LABEL_28:
    v42 = 0.0;
    if (*(this + 81))
    {
      v42 = 1.0;
    }

    v43 = v38 + (*&MTFEDuration::sCoeffs[4 * v37 + 300] * v42);
    v44 = v23;
    goto LABEL_31;
  }

  v44 = v23 + 2;
  printf(" %5.2f(%5.2f)", ((v41 * 1000.0) / 22050.0), v41);
  v65 = *(v39 + 75);
  if (*(this + 81))
  {
    v66 = 1.0;
  }

  else
  {
    v66 = 0.0;
  }

  v67 = v65 * v66;
  v43 = v38 + (v65 * v66);
  if ((MTBEDebugFlags::sMTXDebug & 0x10) == 0)
  {
LABEL_31:
    v45 = v19;
    if (v18)
    {
      v46 = 1.0;
    }

    else
    {
      v46 = 0.0;
    }

    v47 = v43 + (v46 * *&MTFEDuration::sCoeffs[4 * v19 + 392]);
    v48 = v44;
    goto LABEL_35;
  }

  v45 = v19;
  v48 = v23 + 3;
  v68 = v23 - 8;
  if (v44 < 0xA)
  {
    v68 = v23 + 2;
  }

  if (!v68)
  {
    printf("\nDur ");
  }

  printf(" %5.2f(%5.2f)", ((v67 * 1000.0) / 22050.0), v67);
  v69 = *&MTFEDuration::sCoeffs[4 * v19 + 392];
  if (v18)
  {
    v46 = 1.0;
  }

  else
  {
    v46 = 0.0;
  }

  v70 = v46 * v69;
  v47 = v43 + (v46 * v69);
  if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
  {
    v71 = v23 - 7;
    if (v48 < 0xA)
    {
      v71 = v23 + 3;
    }

    if (!v71)
    {
      printf("\nDur ");
    }

    printf(" %5.2f(%5.2f)", ((v70 * 1000.0) / 22050.0), v70);
    v48 = v23 + 4;
  }

LABEL_35:
  v49 = 0.0;
  if (a8)
  {
    v49 = *&MTFEDuration::sCoeffs[4 * v45 + 320] * *(this + 18);
  }

  if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
  {
    v50 = v48 - 10;
    if (v48 < 0xA)
    {
      v50 = v48;
    }

    if (!v50)
    {
      printf("\nDur ");
    }

    printf(" %5.2f(%5.2f)", ((v49 * 1000.0) / 22050.0), v49);
    ++v48;
  }

  v51 = 0.0;
  if (a9)
  {
    v51 = *&MTFEDuration::sCoeffs[4 * v45 + 356] * *(this + 19);
  }

  v52 = (v47 + v49) + v51;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) == 0)
  {
    v53 = *(this + 15);
    v54 = v52 + (*&MTFEDuration::sCoeffs[4 * v45 + 428] * v53);
LABEL_52:
    v58 = v54 + (v46 * (*&MTFEDuration::sCoeffs[4 * v45 + 464] * v53));
LABEL_53:
    v59 = v86;
    v60 = v16;
    v61 = v58 + *&MTFEDuration::sCoeffs[24 * v16 + 500 + 4 * v85];
LABEL_54:
    v62 = v61 + *&MTFEDuration::sCoeffs[24 * v60 + 668 + 4 * v27];
    goto LABEL_55;
  }

  v55 = v48 - 10;
  if (v48 < 0xA)
  {
    v55 = v48;
  }

  if (!v55)
  {
    printf("\nDur ");
  }

  printf(" %5.2f(%5.2f)", ((v51 * 1000.0) / 22050.0), v51);
  v56 = &MTFEDuration::sCoeffs[4 * v45];
  v53 = *(this + 15);
  v57 = *(v56 + 107) * v53;
  v54 = v52 + v57;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) == 0)
  {
    goto LABEL_52;
  }

  v72 = v48 + 1;
  if (v48 + 1 >= 0xA)
  {
    v72 = v48 - 9;
  }

  if (!v72)
  {
    printf("\nDur ");
  }

  printf(" %5.2f(%5.2f)", ((v57 * 1000.0) / 22050.0), v57);
  v73 = v46 * (*(v56 + 116) * *(this + 15));
  v58 = v54 + v73;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) == 0)
  {
    goto LABEL_53;
  }

  v59 = v86;
  v60 = v16;
  v74 = v48 + 2;
  if (v48 + 2 >= 0xA)
  {
    v74 = v48 - 8;
  }

  if (!v74)
  {
    printf("\nDur ");
  }

  printf(" %5.2f(%5.2f)", ((v73 * 1000.0) / 22050.0), v73);
  v75 = *&MTFEDuration::sCoeffs[24 * v16 + 500 + 4 * v85];
  v61 = v58 + v75;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) == 0)
  {
    goto LABEL_54;
  }

  v76 = v48 + 3;
  if (v48 + 3 >= 0xA)
  {
    v76 = v48 - 7;
  }

  if (!v76)
  {
    printf("\nDur ");
  }

  printf(" %5.2f(%5.2f)", ((v75 * 1000.0) / 22050.0), v75);
  v77 = *&MTFEDuration::sCoeffs[24 * v16 + 668 + 4 * v27];
  v62 = v61 + v77;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
  {
    v78 = v48 + 4;
    if (v48 + 4 >= 0xA)
    {
      v78 = v48 - 6;
    }

    if (!v78)
    {
      printf("\nDur ");
    }

    printf(" %5.2f(%5.2f)", ((v77 * 1000.0) / 22050.0), v77);
  }

LABEL_55:
  v63 = MTFEDuration::Transform(v59, v62);
  *a10 = v63;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
  {
    printf("\nPhoneme: %.2f --> %.2f", (v62 / 22.05), (v63 / 22.05));
  }
}

float MTFEDuration::Transform(MTFEDuration *this, float a2)
{
  v3 = &MTFEDuration::sCoeffs[4 * this];
  v4 = *(v3 + 211);
  v5 = *(v3 + 253);
  if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
  {
    printf("\nTransform: phone = %d, duration = %5.3f, center = %5.3f, gain = %5.3f, valA = %5.3f, valB = %5.3f", this, a2, 0.3, 1.0, v4, v5);
  }

  v6 = v4 + ((v5 - v4) * (sinhf(1.0 * (((a2 - v4) / (v5 - v4)) - 0.3)) + 0.3));
  if (v6 >= v4)
  {
    v4 = v6;
    if (v6 > v5)
    {
      return v5;
    }
  }

  return v4;
}

uint64_t MTFEDuration::AdjustDurationForFlap(uint64_t this, MTFEPhoneme *a2)
{
  v2 = (*(this + 64) / 0.0090703) + -900.61;
  v3 = 401.0;
  if (v2 >= 401.0)
  {
    v3 = (*(this + 64) / 0.0090703) + -900.61;
    if (v2 > 3776.0)
    {
      v3 = 3776.0;
    }
  }

  *(this + 64) = v3 * 0.0090703;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
  {
    return printf("New Duration for DX = %5.2fms, %3.0f frames\n", ((v3 * 0.0090703) * 5.0), (v3 * 0.0090703));
  }

  return this;
}

uint64_t MTFEDuration::AdjustDurationForAspiration(uint64_t this, MTFEPhoneme *a2)
{
  v2 = (*(this + 64) / 0.0090703) + -636.68;
  v3 = *(this + 58);
  v4 = &MTFEDuration::sCoeffs[4 * MTFEDuration::sPhonToPhon[v3]];
  v5 = *(v4 + 211);
  if (v2 >= v5)
  {
    v5 = (*(this + 64) / 0.0090703) + -636.68;
    if (v2 > *(v4 + 253))
    {
      v5 = *(v4 + 253);
    }
  }

  *(this + 64) = v5 * 0.0090703;
  if ((MTBEDebugFlags::sMTXDebug & 0x10) != 0)
  {
    return printf("New Duration for aspirated %s = %5.2fms, %3.0f frames\n", *(MEMORY[0x277D65550] + 8 * v3), ((v5 * 0.0090703) * 5.0), (v5 * 0.0090703));
  }

  return this;
}

void SyllPhnCounter::~SyllPhnCounter(SyllPhnCounter *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t SyllPhnCounter::VisitPhoneme(uint64_t this, MTFEPhoneme *a2)
{
  v2 = a2->var15 & 0x60000000;
  if (v2 == 0x40000000)
  {
    ++*(this + 12);
  }

  else if (!v2)
  {
    ++*(this + 8);
  }

  return this;
}

void MTFEDuration::~MTFEDuration(MTFEDuration *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

MTFESpeechElement *MTFECount::VisitSentence(MTFECount *this, MTFESpeechElement *a2)
{
  *(this + 23) = 0;
  result = MTFESpeechElement::VisitChildren(a2, this);
  a2[1].var1 = *(this + 23);
  return result;
}

uint64_t MTFECount::VisitIntonationalPhrase(MTFEPosition *this, MTFESpeechElement *a2)
{
  var1 = this[11].var1;
  this[6] = 0;
  this[10] = 0;
  this[11].var0 = 0;
  MTFESpeechElement::VisitChildren(a2, this);
  result = MTFECommands::Visit(&a2[1].var1, this);
  *(&a2[2].var2 + 2) = this[6];
  *&a2[2].var1 = this[10];
  LOWORD(a2[2].var7) = this[11].var0;
  WORD1(a2[2].var7) = this[11].var1 - var1;
  return result;
}

MTFESpeechElement *MTFECount::VisitIntermediatePhrase(MTFEPosition *this, MTFESpeechElement *a2)
{
  var1 = this[11].var1;
  this[12].var0 = 8;
  this[13] = 0;
  LODWORD(a2[1].var0) = this[6];
  result = MTFESpeechElement::VisitChildren(a2, this);
  HIDWORD(a2[1].var0) = this[6];
  *&a2[1].var1 = this[10];
  WORD1(a2[1].var4) = this[11].var1 - var1;
  return result;
}

MTFESpeechElement *MTFECount::VisitWord(MTFECount *this, MTFESpeechElement *a2)
{
  *(this + 56) = 0;
  LODWORD(a2[1].var0) &= ~0x40u;
  *(this + 4) = 0;
  MTFECommands::Visit(&a2[2], this);
  LODWORD(a2[3].var0) = *(this + 6);
  result = MTFESpeechElement::VisitChildren(a2, this);
  HIDWORD(a2[3].var0) = *(this + 6);
  v5 = *(this + 56);
  *(this + 23) += v5;
  LODWORD(a2[1].var0) |= (v5 << 6) ^ 0x40;
  return result;
}

MTFESpeechElement *MTFECount::VisitSyllable(MTFECount *this, MTFESpeechElement *a2)
{
  *(this + 1) = a2;
  HIDWORD(v4) = *(this + 6);
  LODWORD(v4) = HIDWORD(v4);
  LODWORD(a2[1].var0) = v4 >> 16;
  result = MTFESpeechElement::VisitChildren(a2, this);
  WORD2(a2[1].var0) = *(this + 12);
  if (HIWORD(a2[1].var0))
  {
    *(this + 21) = a2[1].var0;
    *(this + 20) = *(*(this + 2) + 56);
    ++*(this + 22);
  }

  return result;
}

float MTFECount::VisitCommand(MTFECount *this, MTFECommand *a2)
{
  if (a2->var8 == 1953456745)
  {
    var9 = a2->var9;
    if ((var9 >> 24) <= 12)
    {
      *(this + 24) = var9 >> 24;
      result = vcvts_n_f32_u64(var9 & 0xFFFFFF, 0x10uLL);
      *(this + 13) = result;
    }
  }

  return result;
}

float MTFECount::VisitPhoneme(MTFECount *this, MTFEPhoneme *a2)
{
  var9 = a2->var9;
  if (a2->var9)
  {
    *(this + 56) = 1;
  }

  var15 = a2->var15;
  if ((var15 & 0x10000000) != 0)
  {
    v4 = 0;
    *(this + 4) = 0;
    ++*(this + 13);
  }

  else
  {
    v4 = *(this + 4);
  }

  v5 = *(this + 12);
  *(this + 12) = v5 + 1;
  a2->var8 = v5;
  v6 = var15 & 0x9FFFFFFF;
  if (!v4 && (*(MEMORY[0x277D65568] + 4 * var9) & 1) != 0)
  {
    a2->var15 = v6 | 0x20000000;
    *(this + 4) = 0x40000000;
    if ((var15 & 0x1400) != 0)
    {
      v7 = *(this + 1);
      *(v7 + 62) = *(this + 24);
      result = *(this + 13);
      *(v7 + 64) = result;
      *(this + 24) = 10;
      *(this + 13) = 0;
      *(this + 2) = a2;
    }
  }

  else
  {
    a2->var15 = v6 | v4;
  }

  return result;
}

void MTFECount::~MTFECount(MTFECount *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MTFEToBIPitch::Token::Token(uint64_t this, const MTFEToBIPitch::Token *a2, MTFEToBIPitch::Token *a3)
{
  *this = *a2;
  *(this + 16) = a3;
  *(this + 24) = *(a2 + 24);
  *(this + 40) = *(a2 + 5);
  *(this + 48) = *(a2 + 6);
  *(this + 56) = *(a2 + 7);
  *(this + 64) = *(a2 + 16);
  if (*(a2 + 1))
  {
    operator new();
  }

  *(this + 8) = 0;
  return this;
}

uint64_t Intersection(float *a1, float *a2)
{
  if (*a1 == *a2)
  {
    return 0;
  }

  LOBYTE(v3) = 1;
  *(&v3 + 1) = (a2[1] - a1[1]) / (*a1 - *a2);
  return v3;
}

uint64_t MTFEToBIPitch::MTFEToBIPitch(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *result = &unk_2868F6200;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 40) = a6;
  *(result + 48) = a7;
  *(result + 160) = *(a5 + 404);
  return result;
}

{
  *result = &unk_2868F6200;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 40) = a6;
  *(result + 48) = a7;
  *(result + 160) = *(a5 + 404);
  return result;
}

uint64_t MTFEToBIPitch::BeginBoost(uint64_t this, float a2, char a3)
{
  v3 = *(this + 16);
  v4 = *(v3 + 28);
  if (v4 <= 3)
  {
    *(v3 + 4 * v4 + 8) = a2;
    *(v3 + v4 + 24) = a3;
    v3 = *(this + 16);
    *(v3 + 4) = *(v3 + 4) * a2;
    LODWORD(v4) = *(v3 + 28);
  }

  *(v3 + 28) = v4 + 1;
  return this;
}

float MTFEToBIPitch::DownStepBoost(MTFEToBIPitch *this)
{
  v1 = *(this + 2);
  v2 = *(v1 + 28);
  v3 = __OFSUB__(v2, 1);
  v4 = (v2 - 1);
  if (v4 < 0 == v3 && *(v1 + v4 + 24) == 2)
  {
    v5 = v1 + 4 * v4;
    v6 = *(v5 + 8);
    v7 = *(v1 + 4) / v6;
    result = ((v6 + -1.0) * *(*(this + 4) + 524)) + 1.0;
    *(v1 + 4) = v7 * result;
    *(v5 + 8) = result;
  }

  return result;
}

float MTFEToBIPitch::EndBoost(MTFEToBIPitch *this)
{
  v1 = *(this + 2);
  v2 = *(v1 + 28) - 1;
  *(v1 + 28) = v2;
  if (v2 <= 3)
  {
    result = *(v1 + 4) / *(v1 + 4 * v2 + 8);
    *(v1 + 4) = result;
  }

  return result;
}

void MTFEToBIPitch::SetupInitialRaising(float **this, MTFESentence *a2, float *a3)
{
  if ((MTBEDebugFlags::sMTXDebug & 0x400) == 0)
  {
    var8 = a2->var8;
    if (var8)
    {
      if (kMTFEParagraphInitialBoost)
      {
        MTBEDebugParams::GetParam(kMTFEParagraphInitialBoost, &dword_27F8F0A70, a3, *&dword_27F8F0A70);
        kMTFEParagraphInitialBoost = 0;
        var8 = a2->var8;
      }

      v6 = *&dword_27F8F0A70;
      if ((var8 & 2) != 0)
      {
        if (kMTFEParagraphRangePhrasalDownStep)
        {
          MTBEDebugParams::GetParam(kMTFEParagraphRangePhrasalDownStep, &dword_27F8F0A80, a3, *&dword_27F8F0A80);
          kMTFEParagraphRangePhrasalDownStep = 0;
        }

        v7 = *&dword_27F8F0A80;
        if (a2->var10 <= 3)
        {
          v7 = *&dword_27F8F0A80 * *&dword_27F8F0A80;
        }

        v6 = ((v6 + -1.0) * v7) + 1.0;
      }

      *this[2] = v6;
      if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
      {
        fprintf(*MEMORY[0x277D85DF8], "IR %5.3f\n", v6);
      }
    }
  }
}

float MTFEToBIPitch::SetupFinalLowering(MTFEToBIPitch *this, MTFESentence *a2)
{
  if ((MTBEDebugFlags::sMTXDebug & 0x800) != 0)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = (a2->var8 >> 1) & 1;
  }

  *(this + 105) = v2;
  result = a2->var9;
  *(this + 38) = result;
  return result;
}

MTFESpeechElement *MTFEToBIPitch::VisitSentence(MTFEToBIPitch *this, MTFESentence *a2, float *a3)
{
  *(this + 21) = a2;
  MTFEToBIPitch::SetupInitialRaising(this, a2, a3);
  v5 = (a2->var8 >> 1) & 1;
  v6 = (MTBEDebugFlags::sMTXDebug & 0x800) == 0 && (a2->var8 & 2) != 0;
  *(this + 105) = v6;
  *(this + 38) = a2->var9;
  *(this + 164) = v5;
  MTBEParam::GetPitchFloorRange(*(this + 1), this + 35, this + 36);
  *(this + 165) = (a2->var8 & 0x20) != 0;
  *(this + 104) = 1;
  MTFESpeechElement::VisitChildren(a2, this);
  *(this + 104) = 0;

  return MTFESpeechElement::VisitChildren(a2, this);
}

uint64_t MTFEToBIPitch::VisitIntonationalPhrase(uint64_t this, MTFESpeechElement *a2, float *a3)
{
  v4 = this;
  if (*(this + 104) == 1)
  {
    *(this + 52) = 0;
    *(this + 72) = 0;
    *(this + 80) = 0;
    *(this + 64) = 0;
    *(this + 111) = 1;
    *(this + 116) = 0;
    var7 = a2[2].var7;
    *(this + 114) = var7;
    *(this + 118) = var7 - 1;
    v6 = BYTE6(a2[2].var6);
    *(this + 148) = v6;
    if (v6 == 71)
    {
      *(this + 105) = 0;
    }

    if (*(*(this + 8) + 48))
    {
      a2[2].var5 = 0;
      operator new[]();
    }

    if (a2[3].var1 >= 1)
    {
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = byte_27F8F0A90;
        if (kMTFEDownStepMonosyllabicPhrases)
        {
          MTBEDebugParams::GetParam(kMTFEDownStepMonosyllabicPhrases, &byte_27F8F0A90, (byte_27F8F0A90 & 1));
          kMTFEDownStepMonosyllabicPhrases = 0;
          v11 = byte_27F8F0A90;
        }

        v12 = 1.0;
        if ((v11 & 1) != 0 && *(&a2[2].var2 + 2) <= 1)
        {
          v12 = *&dword_27F8F0A80;
          if (kMTFEParagraphRangePhrasalDownStep)
          {
            MTBEDebugParams::GetParam(kMTFEParagraphRangePhrasalDownStep, &dword_27F8F0A80, a3, *&dword_27F8F0A80);
            kMTFEParagraphRangePhrasalDownStep = 0;
            v12 = *&dword_27F8F0A80;
          }
        }

        v13 = (a2[3].var3 >> v9) & 3;
        if (((a2[3].var3 >> v9) & 3) <= 1)
        {
          break;
        }

        if (v13 == 2)
        {
          v14 = *(v4 + 16);
          v15 = *(v14 + 28);
          if (a2->var1 >= 3)
          {
            if (v15 <= 3)
            {
              v17 = *(*(v4 + 32) + 116);
              goto LABEL_33;
            }

LABEL_34:
            *(v14 + 28) = v15 + 1;
            goto LABEL_35;
          }

          if (v15 > 3)
          {
            goto LABEL_34;
          }

          v16 = *(*(v4 + 32) + 488);
LABEL_32:
          v17 = v12 * v16;
LABEL_33:
          *(v14 + 4 * v15 + 8) = v17;
          *(v14 + v15 + 24) = v13;
          v14 = *(v4 + 16);
          *(v14 + 4) = v17 * *(v14 + 4);
          v15 = *(v14 + 28);
          goto LABEL_34;
        }

LABEL_35:
        ++v10;
        v9 += 2;
        if (v10 >= a2[3].var1)
        {
          goto LABEL_36;
        }
      }

      if (v13)
      {
        v14 = *(v4 + 16);
        v15 = *(v14 + 28);
        if (v15 > 3)
        {
          goto LABEL_34;
        }

        v16 = *(*(v4 + 32) + 452);
      }

      else
      {
        v14 = *(v4 + 16);
        v15 = *(v14 + 28);
        if (v15 > 3)
        {
          goto LABEL_34;
        }

        v16 = *(*(v4 + 32) + 184);
      }

      goto LABEL_32;
    }

LABEL_36:
    MTFESpeechElement::VisitChildren(a2, v4);
    MTFECommands::Visit(&a2[1].var1, v4);
    v19 = *&a2[3].var2;
    v20 = *(v4 + 16);
    if (v19 <= 0)
    {
      v21 = *(v20 + 28);
    }

    else
    {
      v21 = *(v20 + 28);
      do
      {
        if (--v21 <= 3)
        {
          *(v20 + 4) = *(v20 + 4) / *(v20 + 8 + 4 * v21);
        }

        --v19;
      }

      while (v19);
      *(v20 + 28) = v21;
    }

    if (v21 > 6)
    {
      *(v20 + 28) = 0;
    }

    v22 = *(v4 + 148);
    if (v22 > 0x46)
    {
      if (v22 == 71)
      {
        v23 = *(*(v4 + 32) + 444);
        if (*(v4 + 72))
        {
LABEL_66:
          v25 = *(v4 + 72);
          if (*v25 == 3)
          {
            v23 = v23 + *(v25 + 24);
          }
        }

LABEL_82:
        v24 = 6;
LABEL_83:
        v30 = BYTE5(a2[2].var6);
        if (!v30)
        {
          BYTE5(a2[2].var6) = v24;
          v30 = v24;
        }

        v31 = *&a2[3].var5;
        if (v31 == 0.0)
        {
          *&a2[3].var5 = v23;
          v31 = v23;
        }

        MTFEToBIPitch::AddProsodicToken(v4, v30, v31, *(v4 + 80), *(v4 + 100), 0, 0);
      }

      if (v22 == 72)
      {
        v23 = *(*(v4 + 32) + 28);
LABEL_64:
        v24 = 5;
        goto LABEL_83;
      }
    }

    else
    {
      if (v22 - 68 < 2)
      {
        if (*(v4 + 72))
        {
          if (kMTFEHighFinalProm)
          {
            MTBEDebugParams::GetParam(kMTFEHighFinalProm, &dword_27F8F0AA0, v18, *&dword_27F8F0AA0);
            kMTFEHighFinalProm = 0;
          }

          v23 = *&dword_27F8F0AA0;
          if (*&dword_27F8F0AA0 == 0.0)
          {
            v23 = *(*(v4 + 32) + 60);
          }

          goto LABEL_66;
        }

        v23 = *(*(v4 + 32) + 16);
        goto LABEL_82;
      }

      if (v22 == 70)
      {
        v23 = *(*(v4 + 32) + 188);
        goto LABEL_64;
      }
    }

    (*(*v4 + 96))(v4);
    v32 = *(v4 + 52);
    LODWORD(a2[2].var5) = 200;
    HIDWORD(a2[2].var5) = v32 + 200;
    LODWORD(a2[2].var6) = *(v4 + 152);
    operator new[]();
  }

  if ((*(*(this + 8) + 48) & 1) == 0)
  {
    *(this + 64) = a2[3].var0;
    *(this + 120) = a2[2].var3;
    *(this + 52) = HIDWORD(a2[2].var5) - 200;
    a2[3].var0 = 0;
    v7 = *(this + 148);
    if (v7 == 72)
    {
      if (kMTFEExclamFinalRaisingRatio)
      {
        MTBEDebugParams::GetParam(kMTFEExclamFinalRaisingRatio, a333, a3, *a333);
        kMTFEExclamFinalRaisingRatio = 0;
      }

      *(v4 + 176) = *a333;
      v8 = &kMTFEExclamFinalRaisingDuration;
    }

    else if (v7 == 71)
    {
      if (kMTFEQuestFinalRaisingRatio)
      {
        MTBEDebugParams::GetParam(kMTFEQuestFinalRaisingRatio, &dword_27F8F0AB0, a3, *&dword_27F8F0AB0);
        kMTFEQuestFinalRaisingRatio = 0;
      }

      *(v4 + 176) = dword_27F8F0AB0;
      v8 = &kMTFEQuestFinalRaisingDuration;
    }

    else if (*(this + 165) == 1)
    {
      if (kMTFEWHQuestFinalRaisingRatio)
      {
        MTBEDebugParams::GetParam(kMTFEWHQuestFinalRaisingRatio, &dword_27F8F0AF0, a3, *&dword_27F8F0AF0);
        kMTFEWHQuestFinalRaisingRatio = 0;
      }

      *(v4 + 176) = dword_27F8F0AF0;
      v8 = &kMTFEWHQuestFinalRaisingDuration;
    }

    else
    {
      if (kMTFEDeclFinalRaisingRatio)
      {
        MTBEDebugParams::GetParam(kMTFEDeclFinalRaisingRatio, &dword_27F8F0B10, a3, *&dword_27F8F0B10);
        kMTFEDeclFinalRaisingRatio = 0;
      }

      *(v4 + 176) = dword_27F8F0B10;
      v8 = &kMTFEDeclFinalRaisingDuration;
    }

    v26 = (v8 + 1);
    if (*v8)
    {
      v26 = (v8 + 1);
      MTBEDebugParams::GetParam(*v8, (v8 + 1), a3, *(v8 + 2));
      *v8 = 0;
    }

    v27 = *v26;
    *(v4 + 180) = v27;
    v28 = LODWORD(a2[2].var6) - *(v4 + 100) - v27;
    *(v4 + 156) = v28;
    if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
    {
      fprintf(*MEMORY[0x277D85DF8], "FL %5.3f %d %d\n", *(v4 + 176), v27, v28);
    }

    if (*(v4 + 48) == 1)
    {
      MTFEToBIPitch::GeneratePitch(v4);
    }

    else
    {
      MTFEToBIPitch::GenerateMonotone(v4);
    }

    this = *(v4 + 64);
    if (this)
    {
      do
      {
        v29 = *(this + 8);
        MEMORY[0x259C6DA90]();
        this = v29;
      }

      while (v29);
    }
  }

  return this;
}

void MTFEToBIPitch::GeneratePitch(MTFEToBIPitch *this)
{
  *(this + 16) = *(this + 15);
  v3 = MTFEToBIPitch::Ref(this, 0, *(this + 8));
  *(this + 34) = v3;
  v4 = *(this + 16);
  *v4 = v3;
  *(this + 16) = v4 + 1;
  v5 = *(this + 8);
  if (v5)
  {
    v6 = 0x27F8F0000uLL;
    v7 = 0x27F8F0000uLL;
    do
    {
      v8 = *(v5 + 12);
      v9 = *(this + 15);
      v10 = v9 + 4 * v8;
      v11 = v10 + 800;
      v12 = *v5;
      if (v12 > 7)
      {
        if (*v5 <= 9u)
        {
          if (v12 == 8)
          {
            v28 = v6;
            v29 = *(v5 + 1);
            if (v29)
            {
              if (*v29 == 3)
              {
                v30 = *(v29 + 8);
                if (v30)
                {
                  if (*v30 == 6)
                  {
                    *(v5 + 6) = *(v5 + 6) * 0.5;
                  }
                }
              }
            }

            v31 = *(this + 4);
            v32 = *(v31 + 128);
            v33 = *(v31 + 428);
            v34 = *(v5 + 13);
            if (v8 <= v34 + v32)
            {
              v64 = MTFEToBIPitch::LowPlus(this, ~v32, v5);
              MTFEToBIPitch::Slope(this, (v11 - 4 * *(this + 40) - 4 * v32), v64);
              MTFEToBIPitch::Plateau(this, (v11 - 4 * v32 - 4), v64);
              v65 = ~v33;
              v66 = MTFEToBIPitch::PlusHighStarLeg(this, ~v33, v5);
              MTFEToBIPitch::Slope(this, (v11 - 4 * v33 - 4), v66);
              v67 = MTFEToBIPitch::High(this, -1, v5);
              MTFEToBIPitch::Slope(this, (v11 - 4 * *(this + 40) + 4), v67);
              MTFEToBIPitch::Plateau(this, (v10 + 796), v67);
              v6 = v28;
              v7 = 0x27F8F0000;
              if ((MTBEDebugFlags::sMTXDebug & 0x200) == 0)
              {
                goto LABEL_111;
              }

              TheoreticalAccentShape::TheoreticalAccentShape(&v100, MTFEToBI::sTone[*v5]);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - *(this + 40) - v32, v64, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) + ~v32, v64, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) + v65, v66, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - *(this + 40) + 1, v67, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - 1, v67, 1);
            }

            else
            {
              v35 = (v9 + 4 * v34 + 800);
              v36 = MTFEToBIPitch::LowPlus(this, (v35 - v11) >> 2, v5);
              MTFEToBIPitch::Slope(this, &v35[-*(this + 40)], v36);
              MTFEToBIPitch::Plateau(this, v35, v36);
              v37 = v32 - v33;
              v38 = MTFEToBIPitch::PlusHighStarLeg(this, (&v35[(v32 - v33)] - v11) >> 2, v5);
              MTFEToBIPitch::Slope(this, &v35[v32 - v33], v38);
              v39 = MTFEToBIPitch::High(this, -1, v5);
              MTFEToBIPitch::Slope(this, (v11 - 4 * *(this + 40) + 4), v39);
              MTFEToBIPitch::Plateau(this, (v10 + 796), v39);
              v6 = v28;
              v7 = 0x27F8F0000;
              if ((MTBEDebugFlags::sMTXDebug & 0x200) == 0)
              {
                goto LABEL_111;
              }

              TheoreticalAccentShape::TheoreticalAccentShape(&v100, MTFEToBI::sTone[*v5]);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 13) - *(this + 40), v36, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 13), v36, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 13) + v37, v38, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - *(this + 40) + 1, v39, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - 1, v39, 1);
            }

LABEL_107:
            TheoreticalAccentShape::print(&v100, *MEMORY[0x277D85DF8]);
            if (v103 < 0)
            {
              operator delete(__p);
            }

            if (v100)
            {
              *(&v100 + 1) = v100;
              operator delete(v100);
            }

            goto LABEL_111;
          }

          if (v12 == 9)
          {
            v24 = MTFEToBIPitch::Low(this, -1, v5);
            MTFEToBIPitch::Slope(this, (v11 - 4 * *(this + 40) - 4), v24);
            MTFEToBIPitch::Plateau(this, (v10 + 796), v24);
            v25 = MTFEToBIPitch::LowStarPlusLeg(this, *(*(this + 4) + 152) - 1, v5);
            MTFEToBIPitch::Slope(this, (v11 + 4 * *(*(this + 4) + 156) - 4), v25);
            v26 = MTFEToBIPitch::PlusHigh(this, -1, v5);
            MTFEToBIPitch::Slope(this, (v11 + 4 * *(*(this + 4) + 152) - 4 * *(this + 40) - 4), v26);
            MTFEToBIPitch::Plateau(this, (v11 + 4 * *(*(this + 4) + 152) - 4), v26);
            if ((MTBEDebugFlags::sMTXDebug & 0x200) == 0)
            {
              goto LABEL_111;
            }

            TheoreticalAccentShape::TheoreticalAccentShape(&v100, MTFEToBI::sTone[*v5]);
            TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) + ~*(this + 40), v24, 0);
            TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - 1, v24, 1);
            TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) + *(*(this + 4) + 156) - 1, v25, 0);
            TheoreticalAccentShape::addPoint(&v100, *(*(this + 4) + 152) + *(v5 + 12) + ~*(this + 40), v26, 0);
            TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) + *(*(this + 4) + 152) - 1, v26, 0);
            goto LABEL_107;
          }
        }

        else
        {
          switch(v12)
          {
            case 0xAu:
              v55 = *(v5 + 1);
              if (v55)
              {
                if (*v55 == 3)
                {
                  v56 = *(v55 + 8);
                  if (v56)
                  {
                    if (*v56 == 6)
                    {
                      *(v5 + 6) = *(v5 + 6) * 0.5;
                    }
                  }
                }
              }

              v57 = MTFEToBIPitch::HighStarLeg(this, -1, v5);
              MTFEToBIPitch::Slope(this, (v11 - 4 * *(*(this + 4) + 100)), v57);
              v58 = MTFEToBIPitch::High(this, -1, v5);
              MTFEToBIPitch::Slope(this, (v11 - 4 * *(this + 40) + 4), v58);
              MTFEToBIPitch::Plateau(this, (v10 + 796), v58);
              if ((MTBEDebugFlags::sMTXDebug & 0x200) == 0)
              {
                goto LABEL_111;
              }

              TheoreticalAccentShape::TheoreticalAccentShape(&v100, MTFEToBI::sTone[*v5]);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - *(*(this + 4) + 100), v57, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - *(this + 40) + 1, v58, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - 1, v58, 1);
              goto LABEL_107;
            case 0xBu:
              v40 = *(this + 4);
              v41 = *(v40 + 128);
              v42 = *(v40 + 432);
              v43 = MTFEToBIPitch::HighPlus(this, ~v41, v5);
              MTFEToBIPitch::Slope(this, (v11 - 4 * *(this + 40) - 4 * v41), v43);
              MTFEToBIPitch::Plateau(this, (v11 - 4 * v41 - 4), v43);
              v44 = MTFEToBIPitch::PlusLowStarLeg(this, -1, v5);
              MTFEToBIPitch::Slope(this, (v11 - 4 * v42 - 4), v44);
              v45 = MTFEToBIPitch::Low(this, -1, v5);
              MTFEToBIPitch::Slope(this, (v11 - 4 * *(this + 40) + 4), v45);
              MTFEToBIPitch::Plateau(this, (v10 + 796), v45);
              if ((MTBEDebugFlags::sMTXDebug & 0x200) == 0)
              {
                goto LABEL_111;
              }

              TheoreticalAccentShape::TheoreticalAccentShape(&v100, MTFEToBI::sTone[*v5]);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - *(this + 40) - v41, v43, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) + ~v41, v43, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) + ~v42, v44, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - *(this + 40) + 1, v45, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - 1, v45, 1);
              goto LABEL_107;
            case 0xCu:
              v16 = *(this + 4);
              v17 = *(v16 + 76);
              v18 = *(v16 + 408);
              v19 = MTFEToBIPitch::HighPlusDownstep(this, -1, v5);
              MTFEToBIPitch::Slope(this, (v11 - 4 * *(this + 40) - 4 * v17), v19);
              MTFEToBIPitch::Plateau(this, (v11 - 4 * v17 - 4), v19);
              v20 = MTFEToBIPitch::DownsteppedHighStarLeg(this, -1, v5);
              MTFEToBIPitch::Slope(this, (v11 - 4 * v18 - 4), v20);
              v21 = MTFEToBIPitch::High(this, -1, v5);
              MTFEToBIPitch::Slope(this, (v11 - 4 * *(this + 40) + 4), v21);
              MTFEToBIPitch::Plateau(this, (v10 + 796), v21);
              if ((MTBEDebugFlags::sMTXDebug & 0x200) == 0)
              {
                goto LABEL_111;
              }

              TheoreticalAccentShape::TheoreticalAccentShape(&v100, MTFEToBI::sTone[*v5]);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - *(this + 40) - v17, v19, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) + ~v17, v19, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) + ~v18, v20, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - *(this + 40) + 1, v21, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - 1, v21, 1);
              goto LABEL_107;
          }
        }
      }

      else if (*v5 > 4u)
      {
        switch(v12)
        {
          case 5u:
            if (**(v5 + 2) == 3)
            {
              MTFEToBIPitch::Slope(this, (v10 + 796), *(this + 34));
              if ((MTBEDebugFlags::sMTXDebug & 0x200) == 0)
              {
                goto LABEL_111;
              }

              TheoreticalAccentShape::TheoreticalAccentShape(&v100, MTFEToBI::sTone[*v5]);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - 1, *(this + 34), 1);
            }

            else
            {
              if (kMTFELowFinalProm)
              {
                MTBEDebugParams::GetParam(kMTFELowFinalProm, &dword_27F8F0B80, v2, *&dword_27F8F0B80);
                kMTFELowFinalProm = 0;
              }

              if (*&dword_27F8F0B80 == 0.0)
              {
                v68 = MTFEToBIPitch::Low(this, -1, v5);
              }

              else
              {
                v68 = MTFEToBIPitch::LowForProm(this, -1, v5, *&dword_27F8F0B80);
              }

              v80 = v68;
              MTFEToBIPitch::Slope(this, (v11 - 4 * *(this + 40) + 4), v68);
              MTFEToBIPitch::Plateau(this, (v10 + 796), v80);
              if ((MTBEDebugFlags::sMTXDebug & 0x200) == 0)
              {
                goto LABEL_111;
              }

              TheoreticalAccentShape::TheoreticalAccentShape(&v100, MTFEToBI::sTone[*v5]);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - *(this + 40) + 1, v80, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - 1, v80, 1);
            }

            goto LABEL_107;
          case 6u:
            v46 = *(v5 + 2);
            if (*v46 - 1 >= 3)
            {
              MTBEAbort(*(this + 21));
            }

            v48 = MTFEToBIPitch::High(this, -1, v5);
            if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
            {
              TheoreticalAccentShape::TheoreticalAccentShape(&v100, MTFEToBI::sTone[*v5]);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - *(this + 40) + 1, v48, 0);
              TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - 1, v48, 1);
              TheoreticalAccentShape::print(&v100, *MEMORY[0x277D85DF8]);
              if (v103 < 0)
              {
                operator delete(__p);
              }

              if (v100)
              {
                *(&v100 + 1) = v100;
                operator delete(v100);
              }
            }

            v49 = *(v46 + 2);
            v50 = *(v46 + 12);
            v51 = *(v5 + 12);
            if (kMTFEHighBoundaryWidth)
            {
              MTBEDebugParams::GetParam(kMTFEHighBoundaryWidth, &dword_27F8F0B90, v47, *&dword_27F8F0B90);
              kMTFEHighBoundaryWidth = 0;
            }

            v52 = *&dword_27F8F0B90;
            if ((v51 - *&dword_27F8F0B90) < v50 && v49 != 0)
            {
              v69 = *v49;
              if (v69 <= 0xC)
              {
                if (((1 << v69) & 0x1500) != 0)
                {
                  v78 = *(v49 + 12);
                  v79 = MTFEToBIPitch::High(this, -1, v49);
                  goto LABEL_117;
                }

                if (((1 << v69) & 0x880) != 0)
                {
                  v70 = *(v5 + 12);
                  v71 = *(v49 + 12);
                  if ((v70 - *&dword_27F8F0B90) < v71)
                  {
                    if (v70 - *(this + 40) < v71)
                    {
                      *(this + 34) = v48;
                      v72 = *(this + 15) + 4 * v71;
                      goto LABEL_126;
                    }

                    *(this + 34) = MTFEToBIPitch::Low(this, -1, v49);
                    v94 = *(this + 15) + 4 * *(v49 + 12);
LABEL_124:
                    *(this + 16) = v94 + 800;
                    goto LABEL_56;
                  }

                  v54 = MTFEToBIPitch::Low(this, -1, v49);
                  *(this + 34) = v54;
                  *(this + 16) = *(this + 15) + 4 * *(v49 + 12) + 800;
                  if (kMTFEHighBoundaryWidth)
                  {
                    MTBEDebugParams::GetParam(kMTFEHighBoundaryWidth, &dword_27F8F0B90, v95, *&dword_27F8F0B90);
                    kMTFEHighBoundaryWidth = 0;
                    v54 = *(this + 34);
                  }

                  v52 = *&dword_27F8F0B90;
LABEL_55:
                  MTFEToBIPitch::Plateau(this, (v11 - 4 * v52), v54);
                  goto LABEL_56;
                }

                if (v69 == 9)
                {
                  v78 = *(*(this + 4) + 152) + *(v49 + 12);
                  v79 = MTFEToBIPitch::PlusHigh(this, -1, v49);
LABEL_117:
                  v84 = v79;
                  if (*(v5 + 12) - *(this + 40) <= *(v49 + 12))
                  {
                    *(this + 34) = v79;
                    v72 = *(this + 15) + 4 * v78;
LABEL_126:
                    *(this + 16) = v72 + 800;
                  }

                  else
                  {
                    v85 = *(v46 + 12);
                    v86 = (*(*this + 112))(this, v5);
                    LinearFunction::LinearFunction(v98, v78, v84, v85, v86);
                    v88 = *(v5 + 12);
                    if (kMTFEHighBoundaryWidth)
                    {
                      MTBEDebugParams::GetParam(kMTFEHighBoundaryWidth, &dword_27F8F0B90, v87, *&dword_27F8F0B90);
                      kMTFEHighBoundaryWidth = 0;
                    }

                    v89 = v88 - *&dword_27F8F0B90;
                    v90 = (*(*this + 112))(this, v5);
                    LinearFunction::LinearFunction(v97, v89, v90, (*(v5 + 12) - *(this + 40)), v48);
                    if (*v98 == v97[0] || (*&v91 = (v97[1] - *(v98 + 1)) / (*v98 - v97[0]), v92 = *(v98 + 1) + (*v98 * *&v91), LOBYTE(v100) = 1, *(&v100 + 4) = v91 | (LODWORD(v92) << 32), v93 = *&v91, v78 > *&v91) || *(v5 + 12) - *(this + 40) < v93)
                    {
                      *(this + 34) = v84;
                      v94 = *(this + 15) + 4 * v78;
                      goto LABEL_124;
                    }

                    *(this + 34) = v84;
                    v96 = *(this + 15);
                    *(this + 16) = v96 + 4 * v78 + 800;
                    MTFEToBIPitch::Slope(this, (v96 + 4 * v93 + 796), v92);
LABEL_56:
                    MTFEToBIPitch::Slope(this, (v11 - 4 * *(this + 40) + 4), v48);
                  }

                  MTFEToBIPitch::Plateau(this, (v10 + 796), v48);
                  goto LABEL_111;
                }
              }
            }

            v54 = *(this + 34);
            goto LABEL_55;
          case 7u:
            v22 = MTFEToBIPitch::LowStarLeg(this, -1, v5);
            MTFEToBIPitch::Slope(this, (v11 - 4 * *(*(this + 4) + 168)), v22);
            v23 = MTFEToBIPitch::Low(this, -1, v5);
            MTFEToBIPitch::Slope(this, (v11 - 4 * *(this + 40) + 4), v23);
            MTFEToBIPitch::Plateau(this, (v10 + 796), v23);
            if ((MTBEDebugFlags::sMTXDebug & 0x200) == 0)
            {
              goto LABEL_111;
            }

            TheoreticalAccentShape::TheoreticalAccentShape(&v100, MTFEToBI::sTone[*v5]);
            TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - *(*(this + 4) + 168), v22, 0);
            TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - *(this + 40) + 1, v23, 0);
            TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - 1, v23, 1);
            goto LABEL_107;
        }
      }

      else
      {
        if (v12 - 1 < 2)
        {
          v13 = *(v6 + 2904);
          if (v13)
          {
            MTBEDebugParams::GetParam(v13, &dword_27F8F0B60, v2, *&dword_27F8F0B60);
            *(v6 + 2904) = 0;
          }

          v14 = *(v7 + 2912);
          if (v14 == 0.0)
          {
            v15 = MTFEToBIPitch::Low(this, -1, v5);
          }

          else
          {
            v15 = MTFEToBIPitch::LowForProm(this, -1, v5, v14);
          }

          v59 = v15;
          if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
          {
            TheoreticalAccentShape::TheoreticalAccentShape(&v100, MTFEToBI::sTone[*v5]);
            TheoreticalAccentShape::addPoint(&v100, *(v5 + 12) - 1, v59, 1);
            TheoreticalAccentShape::print(&v100, *MEMORY[0x277D85DF8]);
            if (v103 < 0)
            {
              operator delete(__p);
            }

            if (v100)
            {
              *(&v100 + 1) = v100;
              operator delete(v100);
            }
          }

          MTFEToBIPitch::Slope(this, (v10 + 796), v59);
          v60 = *(v5 + 1);
          if (!v60 || *v60 - 5 >= 2)
          {
            MTFESpeechPedigree::MTFESpeechPedigree(&v100, *(v5 + 5));
            v61 = *(v101 + 72);
            v62 = MTFEToBIPitch::Ref(this, v61 - *(v5 + 12), v5);
            v63 = *(*(this + 4) + 124);
            if (v61 - *(v5 + 12) > v63)
            {
              MTFEToBIPitch::Slope(this, (*(this + 15) + 4 * (v61 - v63) + 800), v59);
            }

            MTFEToBIPitch::Slope(this, (*(this + 15) + 4 * v61 + 800), v62);
            goto LABEL_102;
          }

          goto LABEL_111;
        }

        if (v12 == 3)
        {
          if (kMTFEHighPhraseProm)
          {
            MTBEDebugParams::GetParam(kMTFEHighPhraseProm, &dword_27F8F0B70, v2, *&dword_27F8F0B70);
            kMTFEHighPhraseProm = 0;
          }

          if (*&dword_27F8F0B70 == 0.0)
          {
            v27 = MTFEToBIPitch::High(this, -1, v5);
          }

          else
          {
            v27 = MTFEToBIPitch::HighForProm(this, -1, v5, *&dword_27F8F0B70);
          }

          v73 = v27;
          MTFEToBIPitch::Slope(this, (v10 + 796), v27);
          MTFESpeechPedigree::MTFESpeechPedigree(&v100, *(v5 + 5));
          v74 = *(v101 + 72);
          v75 = MTFEToBIPitch::Ref(this, v74 - *(v5 + 12), v5);
          v76 = *(*(this + 4) + 124);
          if (v74 - *(v5 + 12) > v76)
          {
            MTFEToBIPitch::Slope(this, (*(this + 15) + 4 * (v74 - v76) + 800), v73);
          }

          v77 = *(v5 + 1);
          if (!v77 || *v77 != 6)
          {
            MTFEToBIPitch::Slope(this, (*(this + 15) + 4 * v74 + 800), v75);
          }

          if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
          {
            TheoreticalAccentShape::TheoreticalAccentShape(v98, MTFEToBI::sTone[*v5]);
            TheoreticalAccentShape::addPoint(v98, *(v5 + 12) - 1, v73, 1);
            TheoreticalAccentShape::print(v98, *MEMORY[0x277D85DF8]);
            if (v99 < 0)
            {
              operator delete(v98[4]);
            }

            if (v98[0])
            {
              v98[1] = v98[0];
              operator delete(v98[0]);
            }
          }

LABEL_102:
          MTFESpeechVisitor::~MTFESpeechVisitor(&v100);
LABEL_111:
          if (!*(v5 + 1))
          {
            v81 = *(this + 13);
            v82 = *(this + 15) + 4 * v81;
            v83 = MTFEToBIPitch::Ref(this, v81 + ~*(v5 + 12), v5);
            MTFEToBIPitch::Slope(this, (v82 + 796), v83);
          }
        }
      }

      v5 = *(v5 + 1);
    }

    while (v5);
  }

  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "TotalPitchFrames\t%d\n", *(this + 13));
  }
}

void sub_257B31434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  TheoreticalAccentShape::~TheoreticalAccentShape(va);
  _Unwind_Resume(a1);
}

void MTFEToBIPitch::GenerateMonotone(MTBEParam **this)
{
  v6 = 0;
  MTBEParam::GetPitchFloorRange(this[1], &v6 + 1, &v6);
  v2 = *(this + 13);
  if (v2 >= -199)
  {
    v3 = *(&v6 + 1) + (*&v6 * *(this[4] + 114));
    v4 = this[15];
    v5 = ((v2 + 199) & ~((v2 + 199) >> 31)) + 1;
    do
    {
      *v4++ = v3;
      --v5;
    }

    while (v5);
    this[15] = v4;
  }
}

void MTFEToBIPitch::VisitIntermediatePhrase(MTFEToBIPitch *this, MTFESpeechElement *a2)
{
  *(this + 107) = 0;
  *(this + 110) = 0;
  *(this + 112) = 0;
  *(&a2[1].var2 + 2) = *(this + 13) + 1;
  *(this + 14) = 0;
  MTFESpeechElement::VisitChildren(a2, this);
  LODWORD(a2[1].var3) = *(this + 13) - *(this + 14);
  if (a2->var5->var4 == a2)
  {
    if (*(this + 148) == 71)
    {
      v7 = *(this + 9);
      if (v7 && (*v7 | 2) == 0xA)
      {
        v6 = v7[6];
      }

      else
      {
        v6 = *(*(this + 4) + 448);
      }

      v5 = 3;
      goto LABEL_26;
    }

    v6 = *(*(this + 4) + 172);
  }

  else
  {
    var4_low = LOBYTE(a2[1].var4);
    v5 = 1;
    v6 = 0.4;
    if (var4_low <= 0xD)
    {
      switch(var4_low)
      {
        case 0xBu:
          v6 = *(*(this + 4) + 460);
          break;
        case 0xCu:
          v6 = *(*(this + 4) + 464);
          break;
        case 0xDu:
          v6 = *(*(this + 4) + 468);
          break;
        default:
          goto LABEL_26;
      }
    }

    else if (LOBYTE(a2[1].var4) > 0xFu)
    {
      if (var4_low == 16)
      {
        v6 = *(*(this + 4) + 480);
      }

      else
      {
        if (var4_low != 17)
        {
          goto LABEL_26;
        }

        v6 = *(*(this + 4) + 484);
      }
    }

    else if (var4_low == 14)
    {
      v6 = *(*(this + 4) + 472);
    }

    else
    {
      if (var4_low != 15)
      {
        goto LABEL_26;
      }

      v6 = *(*(this + 4) + 476);
    }
  }

  v5 = 1;
LABEL_26:
  v8 = BYTE1(a2[1].var4);
  if (!v8)
  {
    BYTE1(a2[1].var4) = v5;
    v8 = v5;
  }

  v9 = *(&a2[1].var4 + 1);
  if (v9 == 0.0)
  {
    *(&a2[1].var4 + 1) = v6;
    v9 = v6;
  }

  MTFEToBIPitch::AddProsodicToken(this, v8, v9, *(this + 10), *(this + 25), 0, 0);
}

uint64_t MTFEToBIPitch::VisitWord(MTFEToBIPitch *this, MTFESpeechElement *a2)
{
  *(this + 96) = BYTE6(a2[1].var4);
  *(this + 113) = SLWordTagSet::find((&a2[1].var5 + 4));
  *(this + 106) = BYTE6(a2[1].var0) == 1;
  *(this + 108) = *(this + 107);
  v4 = *(this + 110) == 1 && *(this + 96) == 19;
  *(this + 109) = v4;
  *(this + 110) = 0;
  MTFECommands::Visit(&a2[2], this);
  MTFESpeechElement::VisitChildren(a2, this);
  if ((a2[1].var0 & 0x40) == 0)
  {
    *(this + 111) = 0;
  }

  result = SLWordTagSet::find((&a2[1].var5 + 4));
  *(this + 112) = result;
  return result;
}

MTFESpeechElement *MTFEToBIPitch::VisitSyllable(MTFEToBIPitch *this, MTFESpeechElement *a2)
{
  *(this + 11) = a2;
  if (HIWORD(a2[1].var0))
  {
    ++*(this + 58);
  }

  return MTFESpeechElement::VisitChildren(a2, this);
}

uint64_t MTFEToBIPitch::VisitPhoneme(uint64_t this, MTFEPhoneme *a2, float *a3)
{
  v4 = this;
  v5 = *(MEMORY[0x277D65568] + 4 * a2->var9);
  var13 = a2->var13;
  v7 = *(this + 52) + var13;
  if (a2->var9)
  {
    var13 = 0;
  }

  *(this + 52) = v7;
  *(this + 56) = var13;
  v8 = *(this + 88);
  if (*(v8 + 62))
  {
    v9 = (v5 & 1) == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && (a2->var15 & 0x1C00) != 0)
  {
    if (*(v8 + 64) != 0.0)
    {
LABEL_11:
      v10 = 1;
LABEL_12:
      if (*(v4 + 108) != 1)
      {
        goto LABEL_66;
      }

      if (((1 << *(v4 + 96)) & 0x3E) == 0 || (v11 = *(v4 + 118), v11 < 1))
      {
        if ((v10 & 1) == 0)
        {
          v13 = *(v4 + 88);
          *(v13 + 64) = *(*(v4 + 32) + 48);
          *(v13 + 62) = 8;
        }

        *(v4 + 107) = 0;
LABEL_66:
        MTFEToBIPitch::AddProsodicToken(v4, *(*(v4 + 88) + 62), *(*(v4 + 88) + 64), a2, *(v4 + 52), a2->var13, 0);
      }

      if ((v10 & 1) == 0)
      {
        if (kMTFEVerbDowngradeFactor)
        {
          MTBEDebugParams::GetParam(kMTFEVerbDowngradeFactor, &dword_27F8F0B50, a3, *&dword_27F8F0B50);
          kMTFEVerbDowngradeFactor = 0;
          LOWORD(v11) = *(v4 + 118);
        }

        *(*(v4 + 88) + 64) = *&dword_27F8F0B50 * *(*(v4 + 88) + 64);
      }

      *(v4 + 109) = 1;
      v12 = v11 - 1;
LABEL_65:
      *(v4 + 118) = v12;
      goto LABEL_66;
    }

    if (*(this + 106) == 1)
    {
      *(v8 + 64) = *(*(this + 32) + 36);
      goto LABEL_11;
    }

    v14 = *(this + 116);
    v15 = *(this + 114);
    if (v14 == 1)
    {
      v16 = *(this + 32);
      if (v15 == 2)
      {
        v17 = *(v16 + 52);
LABEL_43:
        *(v8 + 64) = v17;
        goto LABEL_44;
      }

      v19 = *(v16 + 48);
      *(v8 + 64) = v19;
      if (v15 != 1 || *(this + 148) != 72)
      {
LABEL_44:
        if (*(v4 + 112) == 1 && *(v4 + 113) == 1)
        {
          *(v8 + 62) = 7;
          *(v4 + 113) = 0;
        }

        if (*(v8 + 62) != 8)
        {
          goto LABEL_75;
        }

        v22 = *(v4 + 96);
        if (((1 << v22) & 0x3E) == 0 && (v22 != 17 || (*(v4 + 111) & 1) == 0))
        {
          goto LABEL_75;
        }

        if (kMTFEDowngradeVerbs)
        {
          MTBEDebugParams::GetParam(kMTFEDowngradeVerbs, &byte_27F8F0B40, byte_27F8F0B40);
          kMTFEDowngradeVerbs = 0;
        }

        if (byte_27F8F0B40 == 1 && *(v4 + 114) >= 2 && (v23 = *(v4 + 118), v23 >= 1))
        {
          if (kMTFEVerbDowngradeFactor)
          {
            MTBEDebugParams::GetParam(kMTFEVerbDowngradeFactor, &dword_27F8F0B50, a3, *&dword_27F8F0B50);
            kMTFEVerbDowngradeFactor = 0;
            LOWORD(v23) = *(v4 + 118);
          }

          v24 = *(v4 + 88);
          *(v24 + 64) = *&dword_27F8F0B50 * *(v24 + 64);
          *(v24 + 62) = 10;
          *(v4 + 107) = 1;
          *(v4 + 109) = 257;
        }

        else
        {
LABEL_75:
          if (*(v4 + 109) != 1 || (v23 = *(v4 + 118), v23 < 1))
          {
            v10 = 0;
            goto LABEL_12;
          }

          if (kMTFEVerbDowngradeFactor)
          {
            MTBEDebugParams::GetParam(kMTFEVerbDowngradeFactor, &dword_27F8F0B50, a3, *&dword_27F8F0B50);
            kMTFEVerbDowngradeFactor = 0;
            LOWORD(v23) = *(v4 + 118);
          }

          *(*(v4 + 88) + 64) = *&dword_27F8F0B50 * *(*(v4 + 88) + 64);
        }

        v12 = v23 - 1;
        goto LABEL_65;
      }
    }

    else
    {
      if (v14 != v15)
      {
        v9 = ((v15 ^ v14) & 1) == 0;
        v20 = 120;
        if (v9)
        {
          v20 = 56;
        }

        v17 = *(*(this + 32) + v20);
        goto LABEL_43;
      }

      if (v14 == 2)
      {
        v18 = *(this + 148);
        v19 = *(*(this + 32) + 48);
        *(v8 + 64) = v19;
        if (v18 != 72)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v21 = *(this + 32);
        if (*(this + 148) != 72)
        {
          v17 = *(v21 + 112);
          goto LABEL_43;
        }

        v19 = *(v21 + 32);
        *(v8 + 64) = v19;
      }
    }

    if ((*(this + 164) & 1) == 0)
    {
      if (kMTFEExclamPromBoost)
      {
        MTBEDebugParams::GetParam(kMTFEExclamPromBoost, &dword_27F8F0B30, a3, *&dword_27F8F0B30);
        kMTFEExclamPromBoost = 0;
        v8 = *(v4 + 88);
        v19 = *(v8 + 64);
      }

      v17 = *&dword_27F8F0B30 + v19;
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  if (!*(this + 80) || (v5 & 4) != 0 && (a2->var15 & 0x4000) == 0)
  {
    *(this + 80) = a2;
    *(this + 100) = *(this + 52);
  }

  return this;
}

float MTFEToBIPitch::VisitCommand(MTFEToBIPitch *this, MTFECommand *a2)
{
  var8 = a2->var8;
  if (var8 <= 1886220131)
  {
    if (var8 == 1885495666)
    {
      v6 = *(this + 1);
      v7 = (12 * MTBEParam::GetPitch(v6) + (SLODWORD(a2->var9) >> 8) + 8025);
    }

    else
    {
      if (var8 != 1885495667)
      {
        goto LABEL_18;
      }

      v6 = *(this + 1);
      v7 = a2->var9 >> 8;
    }

    v13 = MTBEParam::MidiToPitch(v6, v7);
    MTBEParam::SetPitch(v6, v13);
  }

  else
  {
    if (var8 != 1920165236)
    {
      if (var8 == 1886220146)
      {
        v12 = *(this + 1);
        var9 = a2->var9 + MTBEParam::GetModulation(v12);
        v4 = v12;
      }

      else
      {
        if (var8 != 1886220132)
        {
          goto LABEL_18;
        }

        v4 = *(this + 1);
        var9 = a2->var9;
      }

      goto LABEL_13;
    }

    v8 = *(this + 3);
    if (v8)
    {
      if (a2->var9 == 1)
      {
        v9 = *(this + 1);
        Pitch = MTBEParam::GetPitch(v8);
        MTBEParam::SetPitch(v9, Pitch);
        v11 = *(this + 1);
        var9 = MTBEParam::GetModulation(*(this + 3));
        v4 = v11;
LABEL_13:
        MTBEParam::SetModulation(v4, var9);
        goto LABEL_18;
      }

      MTBEParam::ResetPitchParams(v8, *(this + 5));
    }

    MTBEParam::ResetPitchParams(*(this + 1), *(this + 5));
  }

LABEL_18:
  v14 = *(this + 1);

  return MTBEParam::GetPitchFloorRange(v14, this + 35, this + 36);
}

void MTFEToBIPitch::AdjustAlignment(MTFEToBIPitch *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v3 = 0;
    do
    {
      v4 = *(v1 + 12);
      v5 = *(v1 + 5);
      *(v1 + 13) = (v4 - *(v5 + 64));
      MTFESpeechPedigree::MTFESpeechPedigree(v63, v5);
      v6 = *v1;
      if (v6 > 7)
      {
        if (v6 == 8 || v6 == 10)
        {
          v19 = *(v65 + 174);
          v20 = v66;
          v21 = *(v66 + 56);
          v22 = *(v64 + 62);
          v23 = *(v1 + 1);
          v24 = 0.0;
          if (v23)
          {
            v25 = *v23;
            if ((v25 | 2) == 3)
            {
              v26 = v25 == 1;
              v27 = *(v23 + 1);
              v28 = 1.0;
              if (v27)
              {
                v29 = *v27 - 5;
                v30 = 0.0;
                if (v29)
                {
                  v24 = 0.0;
                }

                else
                {
                  v24 = 1.0;
                }

                if (v29 <= 1)
                {
                  v31 = 1.0;
                }

                else
                {
                  v24 = 0.0;
                  v31 = 0.0;
                }
              }

              else
              {
                v30 = 0.0;
                v31 = 0.0;
              }
            }

            else
            {
              MTFESpeechPedigree::MTFESpeechPedigree(v61, *(v23 + 5));
              v32 = *(v62 + 56);
              v33 = *(v66 + 56) + 1;
              MTFESpeechVisitor::~MTFESpeechVisitor(v61);
              v26 = 0;
              v24 = 0.0;
              if (v33 == v32)
              {
                v30 = 1.0;
              }

              else
              {
                v30 = 0.0;
              }

              v20 = v66;
              v31 = 0.0;
              v28 = 0.0;
            }
          }

          else
          {
            v26 = 0;
            v30 = 0.0;
            v31 = 0.0;
            v28 = 0.0;
          }

          v34 = v19 - 1;
          v35 = v21 + 1;
          v36 = v22 - 1;
          if (v6 == 10)
          {
            v37 = 1.0;
          }

          else
          {
            v37 = 0.0;
          }

          if (v34 == v21)
          {
            v38 = 1.0;
          }

          else
          {
            v38 = 0.0;
          }

          if (v34 == v35)
          {
            v39 = 1.0;
          }

          else
          {
            v39 = 0.0;
          }

          if (v36 == v21)
          {
            v40 = 1.0;
          }

          else
          {
            v40 = 0.0;
          }

          if (v36 == v35)
          {
            v41 = 1.0;
          }

          else
          {
            v41 = 0.0;
          }

          v42 = *(v1 + 5);
          v43 = *(v42 + 56);
          v44 = v43 - *(v20 + 58);
          if (v44 + 1 < 1)
          {
            v45 = 0;
          }

          else
          {
            v45 = 0;
            v46 = v44 + 2;
            v47 = *(v1 + 5);
            do
            {
              v48 = *(v47 + 64);
              v47 = *(v47 + 48);
              v45 = (v48 + v45);
              --v46;
            }

            while (v46 > 1);
          }

          v49 = *(v20 + 60) + ~v43;
          if (v49 < 1)
          {
            v50 = 0;
          }

          else
          {
            v50 = 0;
            do
            {
              v42 = *(v42 + 40);
              v50 = (*(v42 + 64) + v50);
              --v49;
            }

            while (v49);
          }

          v51 = v37 * -0.030602 + 1.090847 + v38 * -0.376935 + v39 * -0.056635 + v28 * -0.059648 + v31 * 2.822407 + v26 * -0.237752 + v24 * -3.033044 + v30 * -0.257898 + v37 * -0.043025 * v38 + v39 * 0.073297 * v28 + v38 * -2.801309 * v31 + v39 * -2.602059 * v31 + v38 * 0.265622 * v26 + v31 * -2.736395 * v26 + v38 * 2.95485 * v24 + v39 * 2.808464 * v24 + v26 * 2.82636 * v24 + v38 * 0.203654 * v30 + v26 * -0.291976 * v40 + v28 * -0.130482 * v41 + v38 * 2.689319 * v31 * v26 + v39 * 2.559782 * v31 * v26 + v38 * -2.821848 * v26 * v24 + v39 * -2.771837 * v26 * v24 + v37 * -0.159011 * v39 * v30;
          v52 = v50 + v45;
          v16 = *(v1 + 12) - v45 + (v51 * v52);
          *(v1 + 12) = v16;
          v53 = *(v1 + 1);
          if (v53)
          {
            v54 = *(v53 + 1);
            if (v54)
            {
              v55 = *v53;
              if ((v55 | 2) == 3 && *v54 - 5 <= 1)
              {
                v56 = *(v1 + 2);
                v57 = v56 ? *(v56 + 48) + 1 : 1;
                v58 = *(v54 + 12) - *(this + 40);
                if (v16 > v58)
                {
                  if (v55 == 1)
                  {
                    v59 = 12;
                  }

                  else
                  {
                    v59 = 8;
                  }

                  v16 = v58 - *(*(this + 4) + v59);
                  if (v16 <= v57)
                  {
                    v16 = v57;
                  }

                  *(v1 + 12) = v16;
                }
              }
            }
          }

          if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
          {
            fprintf(*MEMORY[0x277D85DF8], "NewPitchAlignment\t%s\t%d\t%d\t%f\t%d\t%d\n", MTFEToBI::sTone[*v1], v52, v45, v51, v4, v16);
            v16 = *(v1 + 12);
          }

          v3 = v16;
          goto LABEL_84;
        }
      }

      else if (v6 == 1 || v6 == 3)
      {
        v8 = *(this + 4);
        if (v6 == 3)
        {
          v9 = 8;
        }

        else
        {
          v9 = 12;
        }

        v10 = 400;
        if (v6 == 3)
        {
          v10 = 396;
        }

        v11 = *(v8 + v9);
        v12 = *(v8 + v10);
        v13 = *(v1 + 1);
        v14 = *v13 - 5;
        v15 = 104;
        if (v14 < 2)
        {
          v15 = 108;
        }

        v16 = ((v3 + v11) + (v12 * fminf((*(v64 + 72) - v3) / *(v8 + v15), 1.0)));
        *(v1 + 12) = v16;
        if (v14 > 1)
        {
          if (v4 < v16)
          {
            *(v1 + 12) = v4;
            v16 = v4;
          }
        }

        else
        {
          v17 = *(v13 + 12) - *(this + 40);
          if (v17 < v16)
          {
            *(v1 + 12) = v17;
            v16 = v17;
          }
        }

        goto LABEL_84;
      }

      v16 = *(v1 + 12);
LABEL_84:
      v60 = *(this + 13) - 1;
      if (v16 < v60)
      {
        v60 = v16;
      }

      if (v60 <= -200)
      {
        v60 = -200;
      }

      *(v1 + 12) = v60;
      if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
      {
        fprintf(*MEMORY[0x277D85DF8], "AdjustAlignment\t%s\t%d\t%d\n", MTFEToBI::sTone[*v1], v4, v60);
      }

      MTFESpeechVisitor::~MTFESpeechVisitor(v63);
      v1 = *(v1 + 1);
    }

    while (v1);
  }
}

uint64_t MTFEToBIPitch::Slope(uint64_t this, float *a2, float a3)
{
  v5 = this;
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    this = fprintf(*MEMORY[0x277D85DF8], "Slope [%d - %d] %f\n", ((*(this + 128) - *(this + 120)) >> 2) - 200, ((a2 - *(this + 120)) >> 2) - 200, a3);
  }

  v6 = *(v5 + 128);
  if (v6 <= a2)
  {
    v7 = (a2 - v6) >> 2;
    if (v7 <= 0x7FFFFFFE)
    {
      v8 = *(v5 + 136);
      v9 = (a3 - v8) / (v7 + 1);
      v10 = v7 + 2;
      do
      {
        v8 = v9 + v8;
        *v6++ = v8;
        --v10;
      }

      while (v10 > 1);
    }
  }

  else
  {
    if (*(v5 + 120) + 4 > a2)
    {
      return this;
    }

    *a2 = a3;
  }

  *(v5 + 136) = a3;
  *(v5 + 128) = a2 + 1;
  return this;
}

uint64_t MTFEToBIPitch::SlopeFromTo(uint64_t this, float *a2, float a3, float *a4, float a5)
{
  v7 = a3;
  v9 = this;
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    this = fprintf(*MEMORY[0x277D85DF8], "SlopeFromTo [%d - %d] %f -> %f\n", ((a2 - *(this + 120)) >> 2) - 200, ((a4 - *(this + 120)) >> 2) - 200, a3, a5);
  }

  *a2 = v7;
  v10 = a2 + 1;
  if (a2 + 1 <= a4)
  {
    v11 = (a5 - v7) / (a4 - a2);
    do
    {
      v7 = v11 + v7;
      *v10++ = v7;
    }

    while (v10 <= a4);
  }

  *(v9 + 136) = a5;
  *(v9 + 128) = a4 + 1;
  return this;
}

uint64_t MTFEToBIPitch::Plateau(uint64_t this, float *a2, float a3)
{
  v5 = this;
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    this = fprintf(*MEMORY[0x277D85DF8], "Plateau [%d - %d] %f\n", ((*(this + 128) - *(this + 120)) >> 2) - 200, ((a2 - *(this + 120)) >> 2) - 200, a3);
  }

  v6 = *(v5 + 128);
  if (v6 <= a2)
  {
    v7 = 0;
    v8 = (v6 + 4);
    if (v6 + 4 <= a2 + 1)
    {
      v8 = a2 + 1;
    }

    v9 = &v8[~v6] >> 2;
    v10 = vdupq_n_s64(v9);
    v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v12 = (v6 + 8);
    do
    {
      v13 = vdupq_n_s64(v7);
      v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_257B895F0)));
      if (vuzp1_s16(v14, 2).u8[0])
      {
        *(v12 - 2) = a3;
      }

      if (vuzp1_s16(v14, 2).i8[2])
      {
        *(v12 - 1) = a3;
      }

      if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_257B895E0)))).i32[1])
      {
        *v12 = a3;
        v12[1] = a3;
      }

      v7 += 4;
      v12 += 4;
    }

    while (v11 != v7);
  }

  else
  {
    if (*(v5 + 120) + 4 > a2)
    {
      return this;
    }

    *a2 = a3;
  }

  *(v5 + 136) = a3;
  *(v5 + 128) = a2 + 1;
  return this;
}

float MTFEToBIPitch::Ref(MTFEToBIPitch *this, int a2, const MTFEToBIPitch::Token *a3)
{
  v5 = *(a3 + 8) + ((*(*this + 104))(this) * *(*(this + 4) + 456));
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "R    %d %f %f\n", *(a3 + 12) + a2, 1.0, v5);
  }

  return v5;
}

float MTFEToBIPitch::LowPlus(MTFEToBIPitch *this, int a2, const MTFEToBIPitch::Token *a3)
{
  v6 = (*(*this + 104))(this);
  v7 = *(a3 + 6);
  v8 = *(a3 + 8) + (v6 * (*(*(this + 4) + 132) + (*(*(this + 4) + 136) * (*(*(this + 4) + 456) + ((1.0 - *(*(this + 4) + 456)) * v7)))));
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "L+   %d %f %f\n", *(a3 + 12) + a2, v7, v8);
  }

  return v8;
}

float MTFEToBIPitch::PlusHighStarLeg(MTFEToBIPitch *this, int a2, const MTFEToBIPitch::Token *a3)
{
  v6 = (*(*this + 104))(this);
  v7 = *(a3 + 6);
  v8 = *(a3 + 8) + (v6 * (*(*(this + 4) + 420) + (*(*(this + 4) + 424) * (*(*(this + 4) + 456) + ((1.0 - *(*(this + 4) + 456)) * v7)))));
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "+H*  %d %f %f\n", *(a3 + 12) + a2, v7, v8);
  }

  return v8;
}

float MTFEToBIPitch::High(MTFEToBIPitch *this, int a2, const MTFEToBIPitch::Token *a3)
{
  v6 = (*(*this + 104))(this);
  v7 = *(a3 + 6);
  v8 = *(a3 + 8) + (v6 * (*(*(this + 4) + 456) + ((1.0 - *(*(this + 4) + 456)) * v7)));
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "H*   %d %f %f\n", *(a3 + 12) + a2, v7, v8);
  }

  return v8;
}

void TheoreticalAccentShape::addPoint(TheoreticalAccentShape *this, int a2, float a3, int a4)
{
  v8 = *(this + 1);
  v7 = *(this + 2);
  if (v8 >= v7)
  {
    v10 = (v8 - *this) >> 3;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - *this;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TheoreticalAccentShape::KeyPoint>>(this, v13);
    }

    v14 = 8 * v10;
    *v14 = a2;
    *(v14 + 4) = a3;
    v9 = 8 * v10 + 8;
    v15 = *(this + 1) - *this;
    v16 = v14 - v15;
    memcpy((v14 - v15), *this, v15);
    v17 = *this;
    *this = v16;
    *(this + 1) = v9;
    *(this + 2) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = a2;
    *(v8 + 4) = a3;
    v9 = v8 + 8;
  }

  *(this + 1) = v9;
  if (a4)
  {
    *(this + 3) = ((v9 - *this) >> 3) - 1;
  }
}

uint64_t TheoreticalAccentShape::print(TheoreticalAccentShape *this, __sFILE *a2)
{
  v4 = this + 32;
  if (*(this + 55) < 0)
  {
    v4 = *v4;
  }

  fprintf(a2, "TheoreticalAccentShape\t%s", v4);
  v5 = *this;
  if (*(this + 1) != *this)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      fprintf(a2, " (%d,%f)", *(v5 + v6), *(v5 + v6 + 4));
      if (v7 == *(this + 3))
      {
        fputc(42, a2);
      }

      ++v7;
      v5 = *this;
      v6 += 8;
    }

    while (v7 < (*(this + 1) - *this) >> 3);
  }

  return fputc(10, a2);
}

void TheoreticalAccentShape::~TheoreticalAccentShape(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = *this;
  if (*this)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

float MTFEToBIPitch::HighStarLeg(MTFEToBIPitch *this, int a2, const MTFEToBIPitch::Token *a3)
{
  v6 = (*(*this + 104))(this);
  v7 = *(a3 + 6);
  v8 = *(a3 + 8) + (v6 * (*(*(this + 4) + 92) + (*(*(this + 4) + 96) * (*(*(this + 4) + 456) + ((1.0 - *(*(this + 4) + 456)) * v7)))));
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], ".H*  %d %f %f\n", *(a3 + 12) + a2, v7, v8);
  }

  return v8;
}

float MTFEToBIPitch::LowStarLeg(float **this, int a2, const MTFEToBIPitch::Token *a3)
{
  v6 = (*(*this + 13))(this);
  v7 = this[4];
  v8 = *(a3 + 6);
  v9 = v7[36] + (*(a3 + 8) + (v6 * (((v7[114] * (1.0 - v8)) + 0.0) + ((v7[114] - ((v7[114] * (1.0 - v8)) + 0.0)) * v7[37]))));
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], ".L*  %d %f %f\n", *(a3 + 12) + a2, v8, v9);
  }

  return v9;
}

float MTFEToBIPitch::Low(MTFEToBIPitch *this, int a2, const MTFEToBIPitch::Token *a3)
{
  v6 = (*(*this + 104))(this);
  v7 = (1.0 - *(a3 + 6)) * *(*(this + 4) + 456);
  v8 = *(a3 + 8) + (v6 * v7);
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "L    %d %f %f\n", *(a3 + 12) + a2, *(a3 + 6), v8);
  }

  return v8;
}

float MTFEToBIPitch::LowStarPlusLeg(float **this, int a2, const MTFEToBIPitch::Token *a3)
{
  v6 = (*(*this + 13))(this);
  v7 = this[4];
  v8 = *(a3 + 6);
  v9 = (v7[114] * (1.0 - v8)) + 0.0;
  v10 = *(a3 + 8) + (v6 * (v9 + (((v7[103] + (v9 + ((1.0 - v9) * v7[104]))) - v9) * (v7[41] + v7[40]))));
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], ".L*+  %d %f %f\n", *(a3 + 12) + a2, v8, v10);
  }

  return v10;
}

float MTFEToBIPitch::PlusHigh(float **this, int a2, const MTFEToBIPitch::Token *a3)
{
  v6 = (*(*this + 13))(this);
  v7 = this[4];
  v8 = *(a3 + 6);
  v9 = (v7[114] * (1.0 - v8)) + 0.0;
  v10 = v7[103] + (*(a3 + 8) + (v6 * (v9 + ((1.0 - v9) * v7[104]))));
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], ".H*  %d %f %f\n", *(a3 + 12) + a2, v8, v10);
  }

  return v10;
}

float MTFEToBIPitch::HighPlus(float **this, int a2, const MTFEToBIPitch::Token *a3)
{
  v6 = (*(*this + 13))(this);
  v7 = this[4];
  v8 = *(a3 + 6);
  v9 = (v7[114] * (1.0 - v8)) + 0.0;
  v10 = v7[20] + (*(a3 + 8) + (v6 * (v9 + ((1.0 - v9) * v7[22]))));
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], ".H*  %d %f %f\n", *(a3 + 12) + a2, v8, v10);
  }

  return v10;
}

float MTFEToBIPitch::PlusLowStarLeg(float **this, int a2, const MTFEToBIPitch::Token *a3)
{
  v6 = (*(*this + 13))(this);
  v7 = this[4];
  v8 = *(a3 + 6);
  v9 = (v7[114] * (1.0 - v8)) + 0.0;
  v10 = v7[109] + (*(a3 + 8) + (v6 * (v9 + (((v7[20] + (v9 + ((1.0 - v9) * v7[22]))) - v9) * v7[110]))));
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], ".H*  %d %f %f\n", *(a3 + 12) + a2, v8, v10);
  }

  return v10;
}

float MTFEToBIPitch::HighPlusDownstep(float **this, int a2, const MTFEToBIPitch::Token *a3)
{
  v6 = (*(*this + 13))(this);
  v7 = this[4];
  v8 = *(a3 + 6);
  v9 = v7[114] + ((1.0 - v7[114]) * v8);
  v10 = v7[17] + (*(a3 + 8) + (v6 * (v9 + ((1.0 - v9) * v7[18]))));
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "H+!  %d %f %f\n", *(a3 + 12) + a2, v8, v10);
  }

  return v10;
}

float MTFEToBIPitch::DownsteppedHighStarLeg(float **this, int a2, const MTFEToBIPitch::Token *a3)
{
  v6 = (*(*this + 13))(this);
  v7 = this[4];
  v8 = *(a3 + 6);
  v9 = v7[114] + ((1.0 - v7[114]) * v8);
  v10 = v7[5] + (*(a3 + 8) + (v6 * (v9 + (((v7[17] + (v9 + ((1.0 - v9) * v7[18]))) - v9) * v7[6]))));
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "!H*  %d %f %f\n", *(a3 + 12) + a2, v8, v10);
  }

  return v10;
}

float MTFEToBIPitch::LowForProm(MTFEToBIPitch *this, int a2, const MTFEToBIPitch::Token *a3, float a4)
{
  v8 = (*(*this + 104))(this);
  v9 = a4;
  v10 = (1.0 - a4) * *(*(this + 4) + 456);
  v11 = *(a3 + 8) + (v8 * v10);
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "L    %d %f %f\n", *(a3 + 12) + a2, v9, v11);
  }

  return v11;
}

float MTFEToBIPitch::HighForProm(MTFEToBIPitch *this, int a2, const MTFEToBIPitch::Token *a3, float a4)
{
  v7 = *(a3 + 8) + ((*(*this + 104))(this) * (*(*(this + 4) + 456) + ((1.0 - *(*(this + 4) + 456)) * a4)));
  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "H*   %d %f %f\n", *(a3 + 12) + a2, a4, v7);
  }

  return v7;
}

float MTFEToBIPitch::FinalLowering(MTFEToBIPitch *this, int a2)
{
  v2 = a2 - *(this + 39);
  v3 = 1.0;
  if (*(this + 105) == 1 && v2 >= 1)
  {
    v5 = *(this + 44);
    v6 = *(this + 45);
    v3 = ((v5 * v2) / v6) + 1.0;
    if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
    {
      fprintf(*MEMORY[0x277D85DF8], "FinalLowering %5.3f %d %d = %5.3f\n", v5, v2, v6, v3);
    }
  }

  return v3;
}

float MTFEToBIPitch::BoostedRange(MTFEToBIPitch *this, int a2, const MTFEToBIPitch::Token *a3)
{
  if (kMTFEParagraphInitialBoost)
  {
    MTBEDebugParams::GetParam(kMTFEParagraphInitialBoost, &dword_27F8F0A70, a3, *&dword_27F8F0A70);
    kMTFEParagraphInitialBoost = 0;
  }

  v6 = *&dword_27F8F0A70;
  if (kMTFEParagraphRangePhrasalDownStep)
  {
    MTBEDebugParams::GetParam(kMTFEParagraphRangePhrasalDownStep, &dword_27F8F0A80, a3, *&dword_27F8F0A80);
    kMTFEParagraphRangePhrasalDownStep = 0;
  }

  v7 = ((v6 + -1.0) * (1.0 / *&dword_27F8F0A80)) + 1.0;
  v8 = MTFEToBIPitch::FinalLowering(this, *(a3 + 12) + a2);
  v9 = *(a3 + 7);
  v10 = v8 * v9;
  if (v7 >= v10)
  {
    v7 = v10;
  }

  if ((MTBEDebugFlags::sMTXDebug & 0x200) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "BoostRange %5.3f %5.3f %5.3f %5.3f\n", (v7 * *(a3 + 9)), *(a3 + 9), v7, v9);
  }

  return v7 * *(a3 + 9);
}

double MTFEToBIPitch::PitchValue(MTFESpeechElement **this, int a2, const MTFEToBIPitch::Token *a3)
{
  v4 = *a3;
  if (v4 > 0xC)
  {
    goto LABEL_10;
  }

  v5 = 1 << v4;
  if ((v5 & 0xAA6) != 0)
  {

    *&result = MTFEToBIPitch::Low(this, -1, a3);
    return result;
  }

  if ((v5 & 0x1548) == 0)
  {
LABEL_10:
    MTBEAbort(this[21]);
    return 0.0;
  }

  *&result = MTFEToBIPitch::High(this, -1, a3);
  return result;
}

float MTFEToBIPitch::PhraseAccentForOverlappingHighFinalBoundary(MTFESpeechElement **this, const MTFEToBIPitch::Token *a2)
{
  if (*a2 != 6)
  {
    MTFEToBIPitch::PhraseAccentForOverlappingHighFinalBoundary();
  }

  v3 = *(a2 + 2);
  if (!v3 || (v4 = *v3, (v4 - 1) >= 3))
  {
    MTBEAbort(this[21]);
    v4 = *v3;
  }

  if (v4 == 3)
  {

    return MTFEToBIPitch::High(this, -1, v3);
  }

  else
  {

    return MTFEToBIPitch::Low(this, -1, v3);
  }
}

void MTFEToBIPitch::~MTFEToBIPitch(MTFEToBIPitch *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void TheoreticalAccentShape::TheoreticalAccentShape(TheoreticalAccentShape *this, const char *__s)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v6 = this + 32;
  *(this + 55) = v4;
  if (v4)
  {
    memmove(v6, __s, v4);
  }

  v6[v5] = 0;
}

void sub_257B33A0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TheoreticalAccentShape::KeyPoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void LinearFunction::LinearFunction(LinearFunction *this, float a2, float a3, float a4, float a5)
{
  if (a2 == a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Can't not describe function x=c, where c is a constant.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v5 = (a3 - a5) / (a2 - a4);
  *this = v5;
  *(this + 1) = a3 - (v5 * a2);
}

void SampleBufferRingList::SampleBufferRingList(SampleBufferRingList *this, uint64_t a2)
{
  v2 = a2;
  v4 = std::vector<SampleBuffer>::vector[abi:ne200100](this, a2 + 1);
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  v5 = v4 + 5;
  *(v4 + 6) = v2;
  pthread_mutex_init((v4 + 5), 0);
  *(this + 13) = v5;
  pthread_cond_init((this + 112), 0);
  *(this + 20) = v5;
  pthread_cond_init((this + 168), 0);
  *(this + 27) = v5;
  pthread_cond_init((this + 224), 0);
}

void sub_257B33B8C(_Unwind_Exception *a1)
{
  pthread_cond_destroy((v1 + 168));
  pthread_cond_destroy((v1 + 112));
  pthread_mutex_destroy(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t SampleBufferRingList::AvailableCapacity(SampleBufferRingList *this)
{
  pthread_mutex_lock((this + 40));
  v2 = *(this + 7);
  v3 = *(this + 8);
  v4 = v2 - v3;
  if (v2 <= v3)
  {
    v4 += *(this + 6);
  }

  pthread_mutex_unlock((this + 40));
  return 500 * v4;
}

uint64_t SampleBufferRingList::AvailableCapacityDetail(SampleBufferRingList *this)
{
  v1 = *(this + 7);
  v2 = *(this + 8);
  v3 = __OFSUB__(v1, v2);
  v4 = v1 - v2;
  if ((v4 < 0) ^ v3 | (v4 == 0))
  {
    v4 += *(this + 6);
  }

  return 500 * v4;
}

uint64_t SampleBufferRingList::SamplesAdded(SampleBufferRingList *this)
{
  pthread_mutex_lock((this + 40));
  v2 = *(this + 7);
  v3 = *(this + 8);
  v4 = v2 - v3;
  v5 = *(this + 6);
  if (v2 <= v3)
  {
    v4 += v5;
  }

  pthread_mutex_unlock((this + 40));
  return 500 * v5 - 500 * v4;
}

uint64_t SampleBufferRingList::SamplesAddedDetail(SampleBufferRingList *this)
{
  v1 = *(this + 7);
  v2 = *(this + 8);
  v3 = __OFSUB__(v1, v2);
  v4 = v1 - v2;
  v5 = *(this + 6);
  if ((v4 < 0) ^ v3 | (v4 == 0))
  {
    v4 += v5;
  }

  return 500 * v5 - 500 * v4;
}

uint64_t SampleBufferRingList::AddSamples(SampleBufferRingList *this, float *a2, unint64_t a3, uint64_t a4)
{
  v8 = (this + 40);
  pthread_mutex_lock((this + 40));
  for (; a3; a3 -= v11)
  {
    while (1)
    {
      v9 = *(this + 7);
      v10 = v9 ? v9 - 1 : *(this + 6);
      if (*(this + 8) != v10)
      {
        break;
      }

      pthread_cond_wait((this + 168), *(this + 20));
    }

    v11 = SampleBufferRingList::AddSamplesDetail(this, a2, a3, a4);
    pthread_cond_signal((this + 112));
    a2 += v11;
  }

  return pthread_mutex_unlock(v8);
}

BOOL SampleBufferRingList::IsFullDetail(SampleBufferRingList *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    v2 = v1 - 1;
  }

  else
  {
    v2 = *(this + 6);
  }

  return *(this + 8) == v2;
}

uint64_t MTTCondition::Wait(pthread_cond_t *this, unint64_t a2)
{
  if (a2)
  {
    gettimeofday(&v8, 0);
    v7.tv_sec = v8.tv_sec + a2 / 0x3E8;
    v7.tv_nsec = 1000000 * (a2 % 0x3E8) + 1000 * v8.tv_usec;
    return pthread_cond_timedwait(this->__opaque, this->__sig, &v7);
  }

  else
  {
    sig = this->__sig;
    opaque = this->__opaque;

    return pthread_cond_wait(opaque, sig);
  }
}

uint64_t SampleBufferRingList::AddSamplesDetail(SampleBufferRingList *this, float *a2, unint64_t a3, uint64_t a4)
{
  v6 = *this;
  if (a3 >= 0x1F4)
  {
    v7 = 500;
  }

  else
  {
    v7 = a3;
  }

  v8 = v6 + 2016 * *(this + 8);
  if (a3)
  {
    v11 = (v8 + 16);
    v12 = v7;
    do
    {
      v13 = *a2++;
      *v11++ = scalbnf(v13, 24);
      --v12;
    }

    while (v12);
    *(v8 + 8) = v7;
    if (a3 >= 0x1F5)
    {
      a4 = 0;
    }
  }

  else
  {
    *(v8 + 8) = v7;
  }

  v14 = *(this + 8);
  *(v6 + 2016 * v14) = a4;
  if (v14 < *(this + 6))
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 0;
  }

  *(this + 8) = v15;
  return v7;
}

void *SampleBufferRingList::CopySamples(SampleBufferRingList *this, void *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = 0;
  result = SampleBufferRingList::CopySamplesDetail(this, a2, a3, a4, &v8);
  if (v8)
  {
    pthread_mutex_lock((this + 40));
    v6 = *(this + 7);
    if (v6 < *(this + 6))
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 0;
    }

    *(this + 7) = v7;
    pthread_cond_signal((this + 168));
    if (*(this + 7) == *(this + 8))
    {
      pthread_cond_signal((this + 224));
    }

    return pthread_mutex_unlock((this + 40));
  }

  return result;
}

void sub_257B34008(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MTTScopedLock::~MTTScopedLock(va);
  _Unwind_Resume(a1);
}

void *SampleBufferRingList::CopySamplesDetail(SampleBufferRingList *this, void *__dst, unint64_t *a3, unint64_t *a4, BOOL *a5)
{
  v9 = *this + 2016 * *(this + 7);
  v10 = *(v9 + 8);
  if (v10 >= *a3)
  {
    v10 = *a3;
  }

  *a3 = v10;
  result = memcpy(__dst, (v9 + 16), 4 * v10);
  v12 = (*this + 2016 * *(this + 7));
  v13 = v12[1];
  v14 = v13 > *a3;
  v15 = v13 - *a3;
  if (v14)
  {
    result = memmove(v12 + 2, v12 + 4 * *a3 + 16, 4 * v15);
    v18 = 0;
    v17 = 0;
    v16 = *this + 2016 * *(this + 7);
    *(v16 + 8) -= *a3;
  }

  else
  {
    v17 = *v12;
    v18 = 1;
  }

  *a5 = v18;
  *a4 = v17;
  return result;
}

uint64_t SampleBufferRingList::WaitUntilEmpty(SampleBufferRingList *this)
{
  v2 = (this + 40);
  pthread_mutex_lock((this + 40));
  while (*(this + 7) != *(this + 8))
  {
    pthread_cond_wait((this + 224), *(this + 27));
  }

  return pthread_mutex_unlock(v2);
}

BOOL SampleBufferRingList::IsEmpty(SampleBufferRingList *this)
{
  pthread_mutex_lock((this + 40));
  v2 = *(this + 7);
  v3 = *(this + 8);
  pthread_mutex_unlock((this + 40));
  return v2 == v3;
}

BOOL SampleBufferRingList::IsFull(SampleBufferRingList *this)
{
  pthread_mutex_lock((this + 40));
  v2 = *(this + 7);
  if (v2)
  {
    v3 = v2 - 1;
  }

  else
  {
    v3 = *(this + 6);
  }

  v4 = *(this + 8);
  pthread_mutex_unlock((this + 40));
  return v4 == v3;
}

uint64_t SampleBufferRingList::Clear(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t RemoteIORenderCallback(MTBERemoteIOSoundOutput *a1, unsigned int *a2, const AudioTimeStamp *a3, unsigned int a4, unsigned int a5, AudioBufferList *a6)
{
  MTBERemoteIOSoundOutput::FeedSamples(a1, a2, a6);
  mNumberChannels = a6->mBuffers[0].mNumberChannels;
  v8 = malloc_type_malloc(a6->mBuffers[0].mDataByteSize, 0xBDDAAFA2uLL);
  memcpy(v8, a6->mBuffers[0].mData, a6->mBuffers[0].mDataByteSize);
  mDataByteSize = a6->mBuffers[0].mDataByteSize;
  if (mDataByteSize)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = mNumberChannels;
      v13 = v11;
      if (mNumberChannels >= 1)
      {
        do
        {
          *(a6->mBuffers[0].mData + v13) = *&v8[v10];
          v13 += 4;
          --v12;
        }

        while (v12);
        mDataByteSize = a6->mBuffers[0].mDataByteSize;
      }

      v10 += 4;
      v11 += 4 * mNumberChannels;
    }

    while (v10 < mDataByteSize);
  }

  free(v8);
  return 0;
}

void MTBERemoteIOSoundOutput::FeedSamples(MTBERemoteIOSoundOutput *this, unsigned int a2, AudioBufferList *a3)
{
  mNumberBuffers = a3->mNumberBuffers;
  if (mNumberBuffers)
  {
    v6 = 0;
    mBuffers = a3->mBuffers;
    do
    {
      v8 = &mBuffers[v6];
      mDataByteSize = v8->mDataByteSize;
      if (v8->mNumberChannels <= mDataByteSize)
      {
        v10 = 0;
        v11 = mDataByteSize / v8->mNumberChannels;
        while (!SampleBufferRingList::IsEmpty((this + 40)))
        {
          v15 = 0;
          v16 = (v11 - v10) >> 2;
          SampleBufferRingList::CopySamples((this + 40), v8->mData + v10, &v16, &v15);
          v12 = v16;
          v13 = *(this + 1);
          if (v13)
          {
            v14 = v15 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            (*(*v13 + 8))(v13);
          }

          v10 += 4 * v12;
          if (v10 >= v11)
          {
            goto LABEL_14;
          }
        }

        bzero(v8->mData + v10, v11 - v10);
LABEL_14:
        mNumberBuffers = a3->mNumberBuffers;
      }

      ++v6;
    }

    while (v6 < mNumberBuffers);
  }

  if (*(this + 78) == 2 && SampleBufferRingList::IsEmpty((this + 40)))
  {

    pthread_cond_broadcast((this + 392));
  }
}

void MTBESoundOutput::CreateChannel(MTBESoundOutput *this)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_257B07000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MTX MTBERemoteIOSoundOutput Creating sound channel", v1, 2u);
  }

  operator new();
}

uint64_t MTBESoundOutput::SetChannelMap(MTBESoundOutput *this, CFArrayRef theArray)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (theArray)
  {
    CFArrayGetCount(theArray);
    operator new[]();
  }

  result = (*(*this + 136))(this, v4, 2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MTBESoundOutput::Silence(MTBESoundOutput *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 8))(result, 8);
  }

  return result;
}

uint64_t MTBESoundOutput::Wakeup(MTBESoundOutput *this, MTBESoundOutputCallback *a2)
{
  if (a2)
  {
    return (**a2)(a2);
  }

  return result;
}

uint64_t MTBEIgnoreSoundOutput::QueueSamples(MTBEIgnoreSoundOutput *this, const float *a2, unint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(this + 1);
    if (v4)
    {
      (*(*v4 + 8))(v4, a4);
    }
  }

  return 1;
}

void MTBERemoteIOSoundOutput::MTBERemoteIOSoundOutput(MTBERemoteIOSoundOutput *this, int a2)
{
  inData = a2;
  *(this + 4) = 1;
  *this = &unk_2868F6308;
  *(this + 1) = 0;
  *(this + 3) = 0;
  v4 = (this + 24);
  *(this + 4) = 0;
  SampleBufferRingList::SampleBufferRingList((this + 40), 256);
  *(this + 78) = 0;
  pthread_mutex_init(this + 5, 0);
  *(this + 48) = this + 320;
  pthread_cond_init((this + 392), 0);
  *(this + 111) = 500;
  *&inDesc.componentType = xmmword_257B8BD40;
  inDesc.componentFlagsMask = 0;
  Next = AudioComponentFindNext(0, &inDesc);
  v6 = MEMORY[0x277D85DF8];
  if (!Next)
  {
    fwrite("ERROR: Couldn't find Remote IO component\n", 0x29uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  if (AudioComponentInstanceNew(Next, v4))
  {
    fwrite("ERROR: Failed to create remote IO unit\n", 0x27uLL, 1uLL, *v6);
  }

  if (AudioUnitSetProperty(*v4, 8u, 1u, 0, &xmmword_257B8BD58, 0x28u))
  {
    fwrite("ERROR: Failed to set stream format\n", 0x23uLL, 1uLL, *v6);
  }

  if (a2 && AudioUnitSetProperty(*v4, 0x7E7u, 2u, 0, &inData, 4u))
  {
    fwrite("ERROR: Failed to set audio session ID\n", 0x26uLL, 1uLL, *v6);
  }

  v7[0] = RemoteIORenderCallback;
  v7[1] = this;
  if (AudioUnitSetProperty(*(this + 3), 0x17u, 1u, 0, v7, 0x10u))
  {
    fwrite("ERROR: Failed to set render callback\n", 0x25uLL, 1uLL, *v6);
  }
}

void sub_257B34AA0(_Unwind_Exception *a1)
{
  pthread_cond_destroy((v1 + 392));
  pthread_mutex_destroy(v2);
  SampleBufferRingList::~SampleBufferRingList((v1 + 40));
  _Unwind_Resume(a1);
}

uint64_t MTBERemoteIOSoundOutput::SetChannelMap(uint64_t this, int *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = this;
    inData = xmmword_257B8BD58;
    v10 = unk_257B8BD6C;
    v13 = 32;
    v5 = 4 * a3;
    v11 = 4 * a3;
    v12 = a3;
    v9 = 4 * a3;
    v6 = AudioUnitSetProperty(*(this + 24), 8u, 1u, 0, &inData, 0x28u);
    v7 = MEMORY[0x277D85DF8];
    if (v6)
    {
      fwrite("ERROR: Failed to set stream format\n", 0x23uLL, 1uLL, *MEMORY[0x277D85DF8]);
    }

    this = AudioUnitSetProperty(*(v4 + 24), 0x7D2u, 2u, 0, a2, v5);
    if (this)
    {
      return fprintf(*v7, "ERROR: Failed to set kAudioOutputUnitProperty_ChannelMap: %d\n", this);
    }
  }

  return this;
}

void MTBERemoteIOSoundOutput::~MTBERemoteIOSoundOutput(MTBERemoteIOSoundOutput *this)
{
  *this = &unk_2868F6308;
  AudioOutputUnitStop(*(this + 3));
  AudioUnitUninitialize(*(this + 3));
  AudioComponentInstanceDispose(*(this + 3));
  pthread_cond_destroy((this + 392));
  pthread_mutex_destroy(this + 5);
  pthread_cond_destroy((this + 264));
  pthread_cond_destroy((this + 208));
  pthread_cond_destroy((this + 152));
  pthread_mutex_destroy((this + 80));
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }
}

{
  MTBERemoteIOSoundOutput::~MTBERemoteIOSoundOutput(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MTBERemoteIOSoundOutput::SetBoundaryCallback(pthread_mutex_t *this, MTBESoundOutputCallback *a2)
{
  pthread_mutex_lock(this + 5);
  *this->__opaque = a2;
  return pthread_mutex_unlock(this + 5);
}

BOOL MTBERemoteIOSoundOutput::QueueSamples(MTBERemoteIOSoundOutput *this, float *a2, unint64_t a3, uint64_t a4)
{
  pthread_mutex_lock(this + 5);
  v8 = *(this + 78);
  if (v8 != 1)
  {
    printf("Sound output is not running. QueueSamples() returns false");
  }

  pthread_mutex_unlock(this + 5);
  if (v8 != 1)
  {
    return 0;
  }

  SampleBufferRingList::AddSamples((this + 40), a2, a3, a4);
  if (*(this + 440) == 1 && SampleBufferRingList::SamplesAdded((this + 40)) >= *(this + 111))
  {
    AudioOutputUnitStart(*(this + 3));
    *(this + 440) = 0;
  }

  return SampleBufferRingList::AvailableCapacity((this + 40)) > 0x200;
}

void MTBERemoteIOSoundOutput::WaitForOutputToStop(MTBERemoteIOSoundOutput *this, int a2)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  if (!*(this + 78))
  {
    goto LABEL_4;
  }

  if (*(this + 440) == 1)
  {
    *(this + 440) = 0;
LABEL_4:
    v3 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a2)
  {
    if (!SampleBufferRingList::IsEmpty((this + 40)))
    {
      v4 = 200;
      v5 = MEMORY[0x277D86220];
      while (1)
      {
        v6 = SampleBufferRingList::AvailableCapacity((this + 40));
        if (MTTCondition::Wait(this + 8, 0x32uLL) != 60)
        {
          break;
        }

        if (SampleBufferRingList::AvailableCapacity((this + 40)) <= v6)
        {
          v4 -= 50;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            MTBERemoteIOSoundOutput::WaitForOutputToStop(buf, v6, v12);
          }
        }

        if (SampleBufferRingList::IsEmpty((this + 40)) || v4 < 0)
        {
          goto LABEL_4;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_257B07000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "MTX WaitForOutputToStop - Got the signal", v10, 2u);
      }
    }

    goto LABEL_4;
  }

  v7 = *(this + 48);
  v8 = *MEMORY[0x277D85DE8];
  v9 = (this + 392);

  pthread_cond_wait(v9, v7);
}

uint64_t MTBERemoteIOSoundOutput::WaitForOutputToStopThreadFunc(MTBERemoteIOSoundOutput *this)
{
  v2 = (this + 320);
  pthread_mutex_lock(this + 5);
  v3 = *(this + 78);
  if (v3)
  {
    if (*(this + 440) == 1)
    {
      *(this + 440) = 0;
    }

    else
    {
      pthread_cond_wait((this + 392), *(this + 48));
      v3 = *(this + 78);
    }

    if (v3 == 2)
    {
      *(this + 440) = 0;
      AudioOutputUnitStop(*(this + 3));
      *(this + 78) = 0;
      v4 = *(this + 1);
      if (v4)
      {
        (*(*v4 + 8))(v4, 8);
      }
    }
  }

  return pthread_mutex_unlock(v2);
}

uint64_t MTBERemoteIOSoundOutput::Wakeup(MTBERemoteIOSoundOutput *this, MTBESoundOutputCallback *a2)
{
  v4 = (this + 320);
  v7 = this + 320;
  pthread_mutex_lock(this + 5);
  v8 = 1;
  if ((*(this + 78) - 1) > 1)
  {
    *(this + 17) = 0;
    *(this + 18) = 0;
    if (SampleBufferRingList::SamplesAdded((this + 40)) < *(this + 111))
    {
LABEL_8:
      *(this + 440) = 1;
      goto LABEL_10;
    }

    AudioOutputUnitStart(*(this + 3));
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_257B07000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MTX Wakeup() Remote IO is already running", v6, 2u);
    }

    *(this + 78) = 2;
    MTBERemoteIOSoundOutput::WaitForOutputToStop(this, 1);
    *(this + 17) = 0;
    *(this + 18) = 0;
    if (!*(this + 78))
    {
      if (SampleBufferRingList::SamplesAdded((this + 40)) >= *(this + 111))
      {
        AudioOutputUnitStart(*(this + 3));
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

LABEL_10:
  *(this + 78) = 1;
  if (a2)
  {
    *(this + 4) = a2;
    (**a2)(a2);
  }

  v8 = 0;
  return pthread_mutex_unlock(v4);
}

void sub_257B35160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MTTScopedLock::~MTTScopedLock(va);
  _Unwind_Resume(a1);
}

uint64_t MTBERemoteIOSoundOutput::Silence(MTBERemoteIOSoundOutput *this, char a2)
{
  v4 = (this + 320);
  v8[1] = &CONTAINING_RECORD(this, _opaque_pthread_t, __opaque)->__opaque[320];
  pthread_mutex_lock(this + 5);
  v9 = 1;
  v5 = *(this + 78);
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      if (v5)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    *(this + 78) = 2;
  }

  if ((a2 & 1) == 0)
  {
    v8[0] = 0;
    pthread_create(v8, 0, WaitForRemoteIOToFinish, this);
    pthread_detach(v8[0]);
    goto LABEL_11;
  }

  *(this + 440) = 0;
  AudioOutputUnitStop(*(this + 3));
  pthread_cond_broadcast((this + 392));
  *(this + 78) = 0;
LABEL_8:
  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 8))(v6, 8);
  }

LABEL_11:
  v9 = 0;
  return pthread_mutex_unlock(v4);
}

void sub_257B35278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MTTScopedLock::~MTTScopedLock(va);
  _Unwind_Resume(a1);
}

uint64_t MTBERemoteIOSoundOutput::SilenceDetail(uint64_t this, char a2)
{
  v2 = this;
  if ((a2 & 1) == 0 && *(this + 312))
  {
    if (*(this + 440) == 1)
    {
      *(this + 440) = 0;
    }

    else
    {
      this = pthread_cond_wait((this + 392), *(this + 384));
    }
  }

  if (*(v2 + 312) == 2)
  {
    *(v2 + 440) = 0;
    AudioOutputUnitStop(*(v2 + 24));
    this = *(v2 + 8);
    if (this)
    {
      this = (*(*this + 8))(this, 8);
    }

    *(v2 + 312) = 0;
  }

  return this;
}

void MTBEAudioFileSoundOutput::MTBEAudioFileSoundOutput(MTBEAudioFileSoundOutput *this, OpaqueExtAudioFile *a2)
{
  *(this + 4) = 1;
  *this = &unk_2868F63A8;
  *(this + 1) = 0;
  *(this + 3) = a2;
  MEOWVectorBase::MEOWVectorBase((this + 80), 40, 1uLL);
  *(this + 9) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  ioPropertyDataSize = 8;
  if (ExtAudioFileGetProperty(*(this + 3), 0x6166696Cu, &ioPropertyDataSize, this + 32) || (AudioFileOptimize(*(this + 4)), inPropertyData = 0, AudioFileSetProperty(*(this + 4), 0x64737A75u, 4u, &inPropertyData), ExtAudioFileSetProperty(*(this + 3), 0x63666D74u, 0x28u, &xmmword_257B8BD58)))
  {
    *(this + 3) = 0;
    v4 = "Failed to wrap audio file";
  }

  else if (*(this + 3))
  {
    v4 = "Wrapped audio file.\n";
  }

  else
  {
    v4 = "Failed to wrap audio file";
  }

  MTBEWorker::DebugLog(v4, v3);
}

void MTBEAudioFileSoundOutput::~MTBEAudioFileSoundOutput(MTBEAudioFileSoundOutput *this)
{
  *this = &unk_2868F63A8;
  if (*(this + 3))
  {
    MTBEAudioFileSoundOutput::Disengage(this);
  }

  MEOWVectorBase::~MEOWVectorBase(this + 10);
}

{
  MTBEAudioFileSoundOutput::~MTBEAudioFileSoundOutput(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MTBEAudioFileSoundOutput::SetChannelMap(ExtAudioFileRef *this, int *a2, int a3)
{
  outPropertyData = 0;
  ioPropertyDataSize = 8;
  result = ExtAudioFileGetProperty(this[3], 0x61636E76u, &ioPropertyDataSize, &outPropertyData);
  if (!result)
  {
    AudioConverterSetProperty(outPropertyData, 0x63686D70u, 4 * a3, a2);
    inPropertyData = 0;
    return ExtAudioFileSetProperty(this[3], 0x61636366u, 8u, &inPropertyData);
  }

  return result;
}

uint64_t MTBEAudioFileSoundOutput::PushSamples(uint64_t this)
{
  v1 = this;
  v2 = *(this + 96);
  if (v2 >= 2 && *(this + 24))
  {
    v3 = *(this + 80);
    *(v3 + 32) = 0;
    *(v3 + 36) = v2 - 1;
    this = AudioFileSetProperty(*(this + 32), 0x6D6B6C73u, 40 * v2 - 32, (v3 + 32));
  }

  if (*(v1 + 24))
  {
    v4 = *(v1 + 32);

    return AudioFileOptimize(v4);
  }

  return this;
}

const char *MTBEAudioFileSoundOutput::Disengage(const char *this)
{
  if (*(this + 3))
  {
    v1 = this;
    (*(*this + 32))(this);
    *(v1 + 3) = 0;

    return MTBEWorker::DebugLog("Disengaged from Audio File\n", v2);
  }

  return this;
}

uint64_t MTBEAudioFileSoundOutput::QueueSamples(MTBEAudioFileSoundOutput *this, float *a2, unint64_t inNumberFrames, uint64_t a4)
{
  v7 = *(this + 3);
  if (v7)
  {
    v8 = a2;
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mNumberChannels = 1;
    ioData.mBuffers[0].mDataByteSize = 4 * inNumberFrames;
    ioData.mBuffers[0].mData = a2;
    if (inNumberFrames)
    {
      v9 = inNumberFrames;
      do
      {
        *v8 = scalbnf(*v8, 24);
        ++v8;
        --v9;
      }

      while (v9);
    }

    ExtAudioFileWrite(v7, inNumberFrames, &ioData);
  }

  if (a4)
  {
    v10 = *(this + 1);
    if (v10)
    {
      (*(*v10 + 8))(v10, a4);
    }
  }

  *(this + 5) = *(this + 5) + inNumberFrames;
  return 1;
}

__n128 MTBEAudioFileSoundOutput::MarkPosition(MTBEAudioFileSoundOutput *this, const char *a2)
{
  ++*(this + 14);
  *(this + 6) = CFStringCreateWithCString(0, a2, 0x8000100u);
  v5 = *(this + 40);
  v6 = *(this + 56);
  v7 = *(this + 9);
  MEOWVectorBase::Append(this + 10);
  v3 = *(this + 10) + 40 * *(this + 12);
  result = v5;
  *(v3 - 40) = v5;
  *(v3 - 24) = v6;
  *(v3 - 8) = v7;
  return result;
}

void MTTScopedLock::~MTTScopedLock(MTTScopedLock *this)
{
  if (*(this + 8) == 1)
  {
    *(this + 8) = 0;
    pthread_mutex_unlock(*this);
  }
}

void SampleBufferRingList::~SampleBufferRingList(SampleBufferRingList *this)
{
  pthread_cond_destroy((this + 224));
  pthread_cond_destroy((this + 168));
  pthread_cond_destroy((this + 112));
  pthread_mutex_destroy((this + 40));
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void *std::vector<SampleBuffer>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<SampleBuffer>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_257B35958(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SampleBuffer>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x20820820820821)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<SampleBuffer>>(a1, a2);
  }

  std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SampleBuffer>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x20820820820821)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t SECloseSpeechChannel(uint64_t a1)
{
  valid = SpeechChannelManager::ValidSpeechChannel(a1);
  if (!valid)
  {
    return -1;
  }

  SpeechChannelManager::CloseSpeechChannel(valid);
  return 0;
}

uint64_t SEPauseSpeechAt(uint64_t a1, unint64_t a2)
{
  valid = SpeechChannelManager::ValidSpeechChannel(a1);
  if (!valid)
  {
    return -1;
  }

  SpeechChannelManager::PauseSpeechAt(valid, a2);
  return 0;
}

uint64_t SEStopSpeechAt(uint64_t a1, unint64_t a2)
{
  valid = SpeechChannelManager::ValidSpeechChannel(a1);
  if (!valid)
  {
    return -1;
  }

  SpeechChannelManager::StopSpeechAt(valid, a2);
  return 0;
}

uint64_t SEContinueSpeech(uint64_t a1)
{
  valid = SpeechChannelManager::ValidSpeechChannel(a1);
  if (!valid)
  {
    return -1;
  }

  SpeechChannelManager::ContinueSpeech(valid);
  return 0;
}

uint64_t SEUseVoice(uint64_t a1, VoiceSpec *a2, __CFBundle *a3)
{
  valid = SpeechChannelManager::ValidSpeechChannel(a1);
  if (!valid)
  {
    return -1;
  }

  return SpeechChannelManager::UseVoice(valid, a2, a3);
}

CFIndex SESpeakCFString(uint64_t a1, const __CFString *a2, const __CFDictionary *a3)
{
  valid = SpeechChannelManager::ValidSpeechChannel(a1);
  if (!valid)
  {
    return -1;
  }

  return SpeechChannelManager::SpeakCFString(valid, a2, a3);
}

uint64_t SECopyPhonemesFromText(uint64_t a1, const __CFString *a2, const __CFString **a3)
{
  valid = SpeechChannelManager::ValidSpeechChannel(a1);
  if (valid)
  {

    SpeechChannelManager::CopyPhonemesFromText(valid, a2, a3);
  }

  return -1;
}

uint64_t SEUseSpeechDictionary(uint64_t a1, const __CFDictionary *a2)
{
  valid = SpeechChannelManager::ValidSpeechChannel(a1);
  if (!valid)
  {
    return -1;
  }

  return SpeechChannelManager::UseSpeechDictionary(valid, a2);
}

CFComparisonResult SECopySpeechProperty(uint64_t a1, const __CFString *a2, const void **a3)
{
  valid = SpeechChannelManager::ValidSpeechChannel(a1);
  if (!valid)
  {
    return -1;
  }

  return SpeechChannelManager::CopySpeechProperty(valid, a2, a3);
}

uint64_t SESetSpeechProperty(uint64_t a1, const __CFString *a2, const __CFNumber *a3)
{
  valid = SpeechChannelManager::ValidSpeechChannel(a1);
  if (!valid)
  {
    return -1;
  }

  return SpeechChannelManager::SetSpeechProperty(valid, a2, a3);
}

uint64_t SEGetSpeechInfo(uint64_t a1, int a2, void *a3)
{
  if (!a3)
  {
    return -50;
  }

  valid = SpeechChannelManager::ValidSpeechChannel(a1);
  if (!valid)
  {
    return -1;
  }

  return SpeechChannelManager::GetSpeechInfo(valid, a2, a3);
}

void sub_257B362E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MTFWrappedSpeechElement;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void MTFESmoothPitch::MTFESmoothPitch(MTFESmoothPitch *this, const MTFEPitchCoeffs *a2)
{
  *this = &unk_2868F6628;
  *(this + 2) = *(a2 + 101);
  operator new[]();
}

uint64_t MTFESmoothPitch::VisitIntonationalPhrase(uint64_t this, MTFEIntonationalPhrase *a2)
{
  var12 = a2->var12;
  v3 = *(this + 8);
  v4 = &var12[a2->var15 - v3];
  if (v4 >= var12)
  {
    v5 = *(this + 16);
    do
    {
      if (v3 < 1)
      {
        v7 = 0.0;
      }

      else
      {
        v6 = 0;
        v7 = 0.0;
        v8 = v3 + 1;
        do
        {
          v7 = v7 + (*(v4 + v6) * *(v5 + v6));
          --v8;
          v6 += 4;
        }

        while (v8 > 1);
      }

      *(v4 + 4 * (v3 - 1)) = v7;
      v4 -= 4;
    }

    while (v4 >= var12);
  }

  return this;
}

uint64_t MTFETrackingVisitor::PreIntonationalPhrase(uint64_t this, MTFEIntonationalPhrase *a2)
{
  *(this + 8) = a2;
  *(this + 24) = 0;
  return this;
}

uint64_t MTFETrackingVisitor::PostIntonationalPhrase(uint64_t this, MTFEIntonationalPhrase *a2)
{
  a2->var11.var0 += *(this + 24);
  a2->var11.var1 += *(this + 26);
  return this;
}

uint64_t MTFETrackingVisitor::PreIntermediatePhrase(uint64_t this, MTFEIntermediatePhrase *a2)
{
  *(this + 16) = a2;
  a2->var8.var0 += *(this + 24);
  a2->var8.var1 += *(this + 26);
  return this;
}

uint64_t MTFETrackingVisitor::PostIntermediatePhrase(uint64_t this, MTFEIntermediatePhrase *a2)
{
  a2->var9.var0 += *(this + 24);
  a2->var9.var1 += *(this + 26);
  return this;
}

uint64_t MTFETrackingVisitor::PreWord(uint64_t this, MTFEWord *a2)
{
  a2->var19.var0 += *(this + 24);
  a2->var19.var1 += *(this + 26);
  return this;
}

uint64_t MTFETrackingVisitor::PostWord(uint64_t this, MTFEWord *a2)
{
  a2->var20.var0 += *(this + 24);
  a2->var20.var1 += *(this + 26);
  return this;
}

uint64_t MTFETrackingVisitor::PrePhoneme(uint64_t this, MTFEPhoneme *a2)
{
  v2 = *(this + 8);
  v3 = *(this + 16);
  v4 = *(v2 + 120);
  var8 = a2->var8;
  *(this + 28) = v4 == var8;
  v6 = *(this + 24) + var8;
  a2->var8 = v6;
  v7 = *(v3 + 64) == var8;
  *(this + 29) = v7;
  if (v7)
  {
    *(v3 + 64) = v6;
    *(v3 + 66) += *(this + 26);
    if (v4 == var8)
    {
      *(v2 + 120) += *(this + 24);
      *(v2 + 122) += *(this + 26);
    }
  }

  return this;
}

uint64_t MTFETrackingVisitor::DelPhoneme(uint64_t this)
{
  --*(this + 24);
  if (*(this + 29) == 1)
  {
    --*(*(this + 16) + 64);
    if (*(this + 28) == 1)
    {
      --*(*(this + 8) + 120);
    }
  }

  return this;
}

uint64_t MTFETrackingVisitor::DelSyllable(uint64_t this)
{
  --*(this + 26);
  if (*(this + 29) == 1)
  {
    --*(*(this + 16) + 66);
    if (*(this + 28) == 1)
    {
      --*(*(this + 8) + 122);
    }
  }

  return this;
}

MTFESpeechElement *MTFETrackingVisitor::VisitIntonationalPhrase(MTFETrackingVisitor *this, MTFESpeechElement *a2)
{
  *(this + 1) = a2;
  *(this + 6) = 0;
  result = MTFESpeechElement::VisitChildren(a2, this);
  *(&a2[2].var2 + 1) += *(this + 12);
  *(&a2[2].var2 + 2) += *(this + 13);
  return result;
}

MTFESpeechElement *MTFETrackingVisitor::VisitIntermediatePhrase(MTFETrackingVisitor *this, MTFESpeechElement *a2)
{
  *(this + 2) = a2;
  LOWORD(a2[1].var0) += *(this + 12);
  WORD1(a2[1].var0) += *(this + 13);
  result = MTFESpeechElement::VisitChildren(a2, this);
  WORD2(a2[1].var0) += *(this + 12);
  HIWORD(a2[1].var0) += *(this + 13);
  return result;
}

MTFESpeechElement *MTFETrackingVisitor::VisitWord(MTFETrackingVisitor *this, MTFESpeechElement *a2)
{
  LOWORD(a2[3].var0) += *(this + 12);
  WORD1(a2[3].var0) += *(this + 13);
  result = MTFESpeechElement::VisitChildren(a2, this);
  WORD2(a2[3].var0) += *(this + 12);
  HIWORD(a2[3].var0) += *(this + 13);
  return result;
}

MTFESpeechElement *MTFETrackingVisitor::VisitSyllable(MTFETrackingVisitor *this, MTFESpeechElement *a2)
{
  WORD1(a2[1].var0) += *(this + 12);
  result = MTFESpeechElement::VisitChildren(a2, this);
  WORD2(a2[1].var0) += *(this + 12);
  return result;
}

uint64_t MTFETrackingVisitor::VisitPhoneme(MTFETrackingVisitor *this, MTFEPhoneme *a2)
{
  result = MTFETrackingVisitor::PrePhoneme(this, a2);
  *(this + 14) = 0;
  return result;
}

void MTFETrackingVisitor::~MTFETrackingVisitor(MTFETrackingVisitor *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

MTFESpeechElement *MTBEWriteTune::VisitWord(MTBEWriteTune *this, MTFEWord *a2)
{
  MTBEWritePhonemes::HandleWord(this, a2);
  *(this + 12) = 1;
  *(this + 6) = a2;

  return MTFESpeechElement::VisitChildren(a2, this);
}

void MTBEWriteTune::VisitPhoneme(MTBEWriteTune *this, MTFEPhoneme *a2)
{
  var13 = a2->var13;
  if (*(this + 12) == 1)
  {
    if (a2->var9)
    {
      MTBEWritePhonemes::Write(this, *(MEMORY[0x277D65558] + 8 * *(this + 13)));
      v5 = *(this + 6);
      if (!*(v5 + 200) || *(v5 + 86) == 255)
      {
        v8 = "\n";
      }

      else
      {
        MTBEWritePhonemes::Write(this, " {W ");
        MTBEWritePhonemes::Write(this, (*(this + 6) + 200));
        MTBEWritePhonemes::Write(this, " ");
        if (*(*(this + 6) + 86))
        {
          v6 = "Undef";
        }

        else
        {
          v6 = "Noun";
        }

        MTBEWritePhonemes::Write(this, v6);
        if (*(*(this + 6) + 92))
        {
          v7 = 0;
          v8 = "}\n";
          do
          {
            std::string::push_back((this + 16), 32);
            v9 = SLTag::Name(*(*(this + 6) + 2 * v7 + 94));
            MTBEWritePhonemes::Write(this, v9);
            ++v7;
          }

          while (v7 < *(*(this + 6) + 92));
        }

        else
        {
          v8 = "}\n";
        }
      }

      MTBEWritePhonemes::Write(this, v8);
    }

    else if (var13 < 2)
    {
      goto LABEL_25;
    }

    *(this + 12) = 0;
  }

  MTBEWritePhonemes::VisitPhoneme(this, a2);
  if ((a2->var15 & 0x4000) == 0)
  {
    MTBEWritePhonemes::Write(this, " {D ");
    MTBEWritePhonemes::WriteLong(this, 5 * var13);
    if (a2->var9)
    {
      var6 = a2->var6;
      if (var6)
      {
        v11 = BYTE2(var6[1].var0) == 0;
      }

      else
      {
        v11 = 1;
      }

      MTFEPitchTargets::MTFEPitchTargets(v15, v11, *(this + 5), var13);
      MTBEWritePhonemes::Write(this, "; P");
      if (v15[0] >= 1)
      {
        v12 = 1;
        do
        {
          std::string::push_back((this + 16), 32);
          v13 = &v15[2 * v12];
          MTBEWritePhonemes::WriteFixed(this, vcvts_n_s32_f32((*v13 & 0xFFFFFFLL) / 100.0, 0x10uLL), 1);
          std::string::push_back((this + 16), 58);
          MTBEWritePhonemes::WriteLong(this, *(v13 + 3));
        }

        while (v12++ < v15[0]);
      }
    }

    MTBEWritePhonemes::Write(this, "}\n");
  }

LABEL_25:
  *(this + 5) += 4 * var13;
}

void MTBEWriteTune::VisitCommand(MTBEWritePhonemes *this, MTFECommand *a2)
{
  var8 = a2->var8;
  if (var8 == 1987013746 || var8 == 1987013741)
  {
    MTBEWritePhonemes::VisitCommand(this, a2);
  }
}

void MTBEWriteTune::WriteVoiceParams(MTBEWriteTune *this, float a2, float a3, float a4, int a5, int a6)
{
  MTBEWritePhonemes::Write(this, "{");
  if (a5)
  {
    MTBEWritePhonemes::Write(this, "V ");
    MTBEWritePhonemes::WriteFixed(this, vcvts_n_s32_f32(a2, 0x10uLL), 1);
    MTBEWritePhonemes::Write(this, " ");
    MTBEWritePhonemes::WriteFixed(this, vcvts_n_s32_f32(a3, 0x10uLL), 1);
    if (!a6)
    {
      goto LABEL_6;
    }

    MTBEWritePhonemes::Write(this, "; ");
  }

  else if (!a6)
  {
    goto LABEL_6;
  }

  MTBEWritePhonemes::Write(this, "R ");
  MTBEWritePhonemes::WriteLong(this, a4);
LABEL_6:

  MTBEWritePhonemes::Write(this, "}\n");
}

void MTBEWriteTune::~MTBEWriteTune(void **this)
{
  *this = &unk_2868F4C98;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F4C98;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

MTFECleanupTune *MTFECleanupTune::VisitPhoneme(MTFECleanupTune *this, MTFEPhoneme *a2)
{
  var9 = a2->var9;
  if (var9 > 0x16)
  {
    if (a2->var9 <= 0x1Bu)
    {
      if (var9 == 23)
      {
        v3 = 0.6;
        v4 = 9;
      }

      else
      {
        if (var9 != 24)
        {
          return this;
        }

        v3 = 0.6;
        v4 = 10;
      }
    }

    else
    {
      switch(var9)
      {
        case 0x1Cu:
          v3 = 0.55;
          v4 = 11;
          break;
        case 0x1Du:
          v3 = 0.55;
          v4 = 25;
          break;
        case 0x38u:
          return (*(a2->var0 + 2))(a2);
        default:
          return this;
      }
    }

LABEL_15:
    MTFECleanupTune::SplitPhoneme(this, a2, v4, v3);
  }

  if (a2->var9 <= 0x13u)
  {
    if (var9 == 12)
    {
      v3 = 0.6;
      v4 = 11;
    }

    else
    {
      if (var9 != 19)
      {
        return this;
      }

      v3 = 0.4;
      v4 = 31;
    }

    goto LABEL_15;
  }

  switch(var9)
  {
    case 0x14u:
      v3 = 0.6;
      v4 = 3;
      goto LABEL_15;
    case 0x15u:
      v3 = 0.6;
      v4 = 5;
      goto LABEL_15;
    case 0x16u:
      v3 = 0.6;
      v4 = 7;
      goto LABEL_15;
  }

  return this;
}

void MTFECleanupTune::~MTFECleanupTune(MTFECleanupTune *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

float MTFEPitchTarget::Interpolate(void *a1, uint64_t a2, int a3, void *a4, float result)
{
  v5 = 1374389535 * ((*a1 >> 24) * a3 + 50);
  v6 = (v5 >> 37) + (v5 >> 63);
  v7 = ((*a4 >> 24) * a3 + 50) / 100;
  if (v7 > v6)
  {
    result = (*a1 & 0xFFFFFFLL) / 100.0;
    v8 = (((*a4 & 0xFFFFFFLL) / 100.0) - result) / (v7 - v6);
    v9 = (a2 + 4 * v6);
    v10 = v7 - v6;
    do
    {
      *v9++ = result;
      result = v8 + result;
      --v10;
    }

    while (v10);
  }

  return result;
}

double MTFEPitchTargets::CombineWithTargets(MTFEPitchTargets *this, int a2, const MTFEPitchTargets *a3, int a4)
{
  v8 = a4 + a2;
  *__src = 0;
  memset(&__src[8], 0, 80);
  v9 = *this;
  if (v9 >= 1)
  {
    v10 = (this + 8);
    do
    {
      v11 = *v10++;
      v19 = (((v11 & 0xFFFFFF) / 100.0) * 100.0) | ((((v11 >> 24) * a2) / v8) << 24);
      MTFEPitchTargets::AddTarget(__src, &v19);
      --v9;
    }

    while (v9);
  }

  v12 = *a3;
  if (*a3 >= 1)
  {
    v13 = 0;
    v14 = 100 * a2;
    v15 = a3 + 8;
    do
    {
      v19 = (((*&v15[8 * v13] & 0xFFFFFFLL) / 100.0) * 100.0) | (((v14 + (*&v15[8 * v13] >> 24) * a4) / v8) << 24);
      if ((MTFEPitchTargets::AddTarget(__src, &v19) & 1) == 0)
      {
        MTFEPitchTargets::DropTarget(__src);
        --v13;
      }

      ++v13;
    }

    while (v13 < v12);
  }

  v16 = *&__src[48];
  *(this + 2) = *&__src[32];
  *(this + 3) = v16;
  *(this + 4) = *&__src[64];
  *(this + 10) = *&__src[80];
  result = *__src;
  v18 = *&__src[16];
  *this = *__src;
  *(this + 1) = v18;
  return result;
}

uint64_t MTFEPitchTargets::AddTarget(char *__src, unint64_t *a2)
{
  v3 = *a2;
  v5 = __src + 8;
  v4 = *__src;
  if (v4 <= 0)
  {
LABEL_6:
    v11 = *__src;
  }

  else
  {
    v7 = 0;
    v8 = v3 >> 24;
    v9 = 8 * v4;
    v10 = __src + 8;
    while (v8 > *(v10 + 3))
    {
      ++v7;
      v10 += 8;
      v9 -= 8;
      if (v4 == v7)
      {
        if (v4 != 10)
        {
          goto LABEL_6;
        }

        return 0;
      }
    }

    if (v4 <= v7)
    {
      if (v4 == 10)
      {
        return 0;
      }

      v11 = *__src;
    }

    else
    {
      if (*(v10 + 3) == v8)
      {
        *v10 = v3;
        return 1;
      }

      if (v4 == 10)
      {
        return 0;
      }

      memmove(v10 + 8, v10, v9);
      v3 = *a2;
      v11 = *__src;
    }

    LODWORD(v4) = v7;
  }

  *&v5[8 * v4] = v3;
  *__src = v11 + 1;
  return 1;
}

MTFEPitchTargets *MTFEPitchTargets::DropTarget(MTFEPitchTargets *this)
{
  if (*this >= 3)
  {
    v1 = *(this + 1);
    v2 = *(this + 2);
    v3 = (*this - 1);
    v4 = (v2 >> 24);
    v5 = (v1 >> 24);
    v6 = (v2 & 0xFFFFFF) / 100.0;
    v7 = (v1 & 0xFFFFFF) / 100.0;
    v8 = 1;
    v9 = 100000.0;
    v10 = 3;
    do
    {
      v11 = *(this + v10);
      v12 = vabds_f32(v6, v7 + (((((v11 & 0xFFFFFF) / 100.0) - v7) / ((v11 >> 24) - v5)) * (v4 - v5)));
      if (v12 < v9)
      {
        v8 = v10 - 2;
      }

      ++v10;
      v7 = v6;
      if (v12 < v9)
      {
        v9 = v12;
      }

      v6 = (v11 & 0xFFFFFF) / 100.0;
      v5 = v4;
      v4 = (v11 >> 24);
    }

    while (1 - v3 + v10 != 3);
    *this = v3;
    return memmove(this + 8 * v8 + 8, this + 8 * v8 + 16, 8 * (v3 - v8));
  }

  return this;
}

uint64_t MTFEPitchTargets::FindTarget(unsigned int *a1, uint64_t a2)
{
  v3 = a1 + 2;
  result = *a1;
  if (result > 0)
  {
    v4 = 0;
    while (*(a2 + 3) > (*&v3[2 * v4] >> 24))
    {
      if (result == ++v4)
      {
        return result;
      }
    }

    return v4;
  }

  return result;
}

void MTFEPitchTargets::MTFEPitchTargets(MTFEPitchTargets *this, int a2, const float *a3, int a4)
{
  v44[1] = *MEMORY[0x277D85DE8];
  *(this + 8) = 0u;
  v8 = (this + 8);
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  v9 = MEMORY[0x28223BE20]();
  v11 = &v40 - v10;
  *v9 = 0;
  v13 = (*v12 * 100.0);
  v43 = (v12[v14] * 100.0) | 0x64000000;
  v44[0] = v13;
  MTFEPitchTargets::AddTarget(v9, v44);
  if (a2)
  {
    MTFEPitchTargets::AddTarget(this, &v43);
  }

  MTFEPitchTarget::Interpolate(v44, v11, a4, &v43, v15);
  if (a4 >= 2)
  {
    v17 = 0;
    v41 = a4 / 2;
    v18 = 0.0;
    for (i = 1; ; i = 1)
    {
      do
      {
        v20 = vabds_f32(a3[i], *&v11[4 * i]);
        if (v20 > v18)
        {
          v18 = v20;
          v17 = i;
        }

        ++i;
      }

      while (i != a4);
      if (v18 < 1.0)
      {
        goto LABEL_4;
      }

      v21 = (v41 + 100 * v17) / a4;
      v22 = a3[v17];
      v42 = (v22 * 100.0) | (v21 << 24);
      v23 = *this;
      if (v23 <= 0)
      {
        goto LABEL_19;
      }

      v24 = 0;
      v25 = v8;
      while ((((v22 * 100.0) | (v21 << 24)) >> 24) > *(v25 + 3))
      {
        ++v24;
        ++v25;
        if (v23 == v24)
        {
          goto LABEL_19;
        }
      }

      if (v23 <= v24)
      {
        break;
      }

      if (v21 == *(v25 + 3))
      {
        *&v11[4 * v17] = v22;
        goto LABEL_35;
      }

      v26 = v24 - 1;
LABEL_20:
      v27 = MTFEPitchTarget::Interpolate(&v8[v26], v11, a4, &v42, v22);
      MTFEPitchTarget::Interpolate(&v42, v11, a4, v25, v27);
      MTFEPitchTargets::AddTarget(this, &v42);
      LODWORD(v23) = *this;
      if (*this >= 2)
      {
        v28 = 0;
        v29 = *v8 & 0xFFFFFF;
        v30 = 1;
        v31 = 1;
        do
        {
          v32 = v29;
          v33 = &v8[v30];
          v29 = *v33 & 0xFFFFFF;
          v34 = v29 >= v32;
          v35 = v29 > v32;
          if (!v34)
          {
            v35 = -1;
          }

          if (v35 == v28)
          {
            ++v31;
            if (v28)
            {
              if (v31 == 4)
              {
                v36 = 1374389535 * ((*v33 >> 24) * a4 + 50);
                v37 = (v36 >> 37) + (v36 >> 63);
                v38 = 1374389535 * (*(&v8[v30 - 2] - 5) * a4 + 50);
                v39 = (v38 >> 37) + (v38 >> 63);
                if (v39 < v37)
                {
                  memcpy(&v11[4 * v39], &a3[v39], 4 * (v37 + ~v39) + 4);
                }

                v31 = 4;
              }
            }

            else if (v31 == 3)
            {
              memmove(v33 - 1, v33, 8 * (v23 - v30));
              v28 = 0;
              --v30;
              LODWORD(v23) = *this;
              v31 = 3;
            }

            else
            {
              v28 = 0;
            }
          }

          else
          {
            v31 = 2;
            v28 = v35;
          }

          ++v30;
        }

        while (v30 < v23);
      }

LABEL_35:
      if (v23 > 9)
      {
        goto LABEL_4;
      }

      v17 = 0;
      v18 = 0.0;
    }

    LODWORD(v23) = v24;
LABEL_19:
    v26 = v23 - 1;
    v25 = &v43;
    goto LABEL_20;
  }

LABEL_4:
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t MTFETunePitch::VisitSentence(MTFETunePitch *this, MTFESpeechElement *a2)
{
  Pitch = MTBEParam::GetPitch(*(this + 1));
  Modulation = MTBEParam::GetModulation(*(this + 1));
  *(this + 6) = *(&a2[1].var2 + 2);
  MTBEParam::GetPitchFloorRange(*(this + 1), this + 10, this + 11);
  MTFESpeechElement::VisitChildren(a2, this);
  MTBEParam::SetPitch(*(this + 1), Pitch);
  v6 = *(this + 1);

  return MTBEParam::SetModulation(v6, Modulation);
}

MTFESpeechElement *MTFETunePitch::VisitIntonationalPhrase(MTFETunePitch *this, MTFESpeechElement *a2)
{
  *(this + 53) = 0;
  var3 = a2[2].var3;
  var5_high = SHIDWORD(a2[2].var5);
  *(this + 8) = &var3[SLODWORD(a2[2].var5)];
  *(this + 9) = &var3[var5_high];
  *(this + 17) = 0;
  v6 = *(this + 1);
  if (v6[50] & 1) != 0 || (v6[48] & 1) != 0 || (v6[49])
  {
    var6 = 0;
  }

  else
  {
    var6 = a2[3].var6;
  }

  *(this + 4) = var6;
  MTFESpeechElement::VisitChildren(a2, this);
  if (*(this + 53) == 1 || *(this + 4))
  {
    v8 = *(this + 9);
    v9 = *(this + 7);
    v10 = v9 + 1;
    if ((v9 + 1) < v8)
    {
      v11 = *v9;
      do
      {
        *v10++ = v11;
      }

      while (v10 < v8);
    }

    *(this + 7) = v10;
  }

  return MTFESpeechElement::VisitChildren((a2 + 64), this);
}

MTFESpeechElement *MTFETunePitch::VisitWord(float **this, MTFESpeechElement *a2)
{
  MTFESpeechElement::VisitChildren(a2 + 2, this);
  v4 = *(this + 53);
  if (a2[1].var0)
  {
    if (v4 == 2)
    {
      v14 = this[8];
      this[17] = v14;
      v16 = *(v14 + 1);
      v15 = *(v14 + 2);
      v17 = *v14;
      this[16] = *(v14 + 6);
      *(this + 6) = v16;
      *(this + 7) = v15;
      *(this + 5) = v17;
    }

    else
    {
      if (v4)
      {
LABEL_17:
        v18 = &this[8][a2[3].var1];
        this[25] = v18;
        v19 = *(v18 - 56);
        v20 = *(v18 - 40);
        v21 = *(v18 - 24);
        this[24] = *(v18 - 8);
        *(this + 10) = v20;
        *(this + 11) = v21;
        *(this + 9) = v19;
        goto LABEL_22;
      }

      v14 = this[17];
    }

    this[7] = v14 - 1;
    *(this + 53) = 1;
    goto LABEL_17;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_22;
    }

    v5 = this[25];
    v6 = this[17];
    if (v6)
    {
      v7 = v5 - v6;
      if (v7 >= 14)
      {
        v7 = 14;
      }

      v8 = v7 + 1;
      if (v7 >= 1)
      {
        v9 = (this + 10);
        v10 = v7 + 1;
        v11 = 1.0 / v8;
        do
        {
          v12 = *v9++;
          *v6 = ((1.0 - v11) * v12) + (*v6 * v11);
          ++v6;
          v11 = (1.0 / v8) + v11;
          --v10;
        }

        while (v10 > 1);
      }

      if (v7 < 1)
      {
        goto LABEL_21;
      }

      v13 = 1.0 / v8;
    }

    else
    {
      v7 = 14;
      v13 = 0.066667;
    }

    v22 = &v5[-v7];
    v23 = v7 + 1;
    v24 = v13;
    v25 = this - v7 + 50;
    do
    {
      v26 = *v25++;
      *v22 = ((1.0 - v24) * *v22) + (v26 * v24);
      ++v22;
      v24 = v13 + v24;
      --v23;
    }

    while (v23 > 1);
  }

LABEL_21:
  *(this + 53) = 2;
LABEL_22:

  return MTFESpeechElement::VisitChildren(a2, this);
}

void MTFETunePitch::Blend(MTFETunePitch *this, float *a2, float *a3, float *a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = a5 + 1;
    v6 = 1.0 / (a5 + 1);
    do
    {
      v7 = *a2++;
      v8 = v7;
      v9 = *a3++;
      *a4++ = ((1.0 - v6) * v9) + (v8 * v6);
      v6 = (1.0 / (a5 + 1)) + v6;
      --v5;
    }

    while (v5 > 1);
  }
}

float MTFETunePitch::VisitCommand(MTFETunePitch *this, MTFECommand *a2)
{
  var8 = a2->var8;
  if (var8 <= 1885495666)
  {
    if (var8 == 1650879602)
    {
      *(this + 12) = a2->var9 / 100.0;
      goto LABEL_23;
    }

    if (var8 != 1651666535)
    {
      if (var8 != 1885495666)
      {
        goto LABEL_23;
      }

      v6 = *(this + 1);
      v7 = (12 * MTBEParam::GetPitch(v6) + (SLODWORD(a2->var9) >> 8) + 8025);
      goto LABEL_17;
    }

    *(this + 13) = a2->var9 / 100.0;
  }

  else
  {
    if (var8 <= 1886220145)
    {
      if (var8 != 1885495667)
      {
        if (var8 != 1886220132)
        {
          goto LABEL_23;
        }

        v4 = *(this + 1);
        var9 = a2->var9;
        goto LABEL_19;
      }

      v6 = *(this + 1);
      v7 = a2->var9 >> 8;
LABEL_17:
      v12 = MTBEParam::MidiToPitch(v6, v7);
      MTBEParam::SetPitch(v6, v12);
      goto LABEL_23;
    }

    if (var8 == 1886220146)
    {
      v13 = *(this + 1);
      var9 = a2->var9 + MTBEParam::GetModulation(v13);
      v4 = v13;
      goto LABEL_19;
    }

    if (var8 != 1920165236)
    {
      goto LABEL_23;
    }

    v8 = *(this + 2);
    if (v8)
    {
      if (a2->var9 == 1)
      {
        v9 = *(this + 1);
        Pitch = MTBEParam::GetPitch(v8);
        MTBEParam::SetPitch(v9, Pitch);
        v11 = *(this + 1);
        var9 = MTBEParam::GetModulation(*(this + 2));
        v4 = v11;
LABEL_19:
        MTBEParam::SetModulation(v4, var9);
        goto LABEL_23;
      }

      MTBEParam::ResetPitchParams(v8, *(this + 3));
    }

    MTBEParam::ResetPitchParams(*(this + 1), *(this + 3));
  }

LABEL_23:
  v14 = *(this + 1);

  return MTBEParam::GetPitchFloorRange(v14, this + 10, this + 11);
}

MTFESpeechElement *MTFETunePitch::VisitSyllable(MTFETunePitch *this, MTFESpeechElement *a2)
{
  v4 = *(this + 4);
  if (v4 && (var0_low = SLOWORD(a2[1].var0), *(v4 + 16) > var0_low))
  {
    v6 = MTFEMelody::Pitch(v4, var0_low);
    *(this + 52) = v6;
    if (!*(*(this + 3) + 8))
    {
      *(this + 52) = v6 * 0.5;
    }
  }

  else
  {
    *(this + 52) = 0;
  }

  return MTFESpeechElement::VisitChildren(a2, this);
}

float MTFETunePitch::VisitPhoneme(MTFETunePitch *this, MTFEPhoneme *a2)
{
  var17 = a2->var17;
  if (var17)
  {
    v5 = *var17;
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = var17 + 8;
      v8 = *(this + 8);
      v9 = *(this + 9);
      v10 = a2->var13 / 100.0;
      do
      {
        v11 = *&v7[8 * v6];
        v12 = (v11 & 0xFFFFFF) / 100.0;
        v13 = *(this + 12);
        if (v13 > 1.0)
        {
          v14 = logf(v12 / v13);
          v15 = v14 / logf((v13 + *(this + 13)) / v13);
          v16 = *(this + 10);
          v12 = v16 * powf((v16 + *(this + 11)) / v16, v15);
        }

        v17 = (((v11 >> 24) * v10) + 0.5);
        v18 = (v8 + 4 * v17);
        if (v18 < v9)
        {
          v19 = *(this + 7);
          if (v18 >= v19)
          {
            *v18 = v12;
            v20 = (v18 - v19) >> 2;
            v21 = *v19;
            *(this + 7) = v18;
            if (v20 >= 2)
            {
              v22 = v17;
              v23 = (v12 - v21) / v20;
              v24 = 1 - v20;
              v25 = (v8 - 4 + 4 * v22);
              do
              {
                v12 = v12 - v23;
                *v25-- = v12;
              }

              while (!__CFADD__(v24++, 1));
            }
          }
        }

        ++v6;
      }

      while (v6 != v5);
    }
  }

  else
  {
    v27 = *(this + 52);
    if (v27 != 0.0)
    {
      v28 = *(this + 8);
      LODWORD(v29) = a2->var13;
      if (v29 < 1)
      {
        v29 = v29;
      }

      else
      {
        v30 = *(this + 8);
        do
        {
          *v30++ = v27;
          var13 = a2->var13;
        }

        while (v30 < v28 + 4 * var13);
        v29 = var13;
      }

      *(this + 7) = v28 + 4 * v29 - 4;
    }
  }

  result = a2->var13;
  *(this + 8) += 4 * result;
  return result;
}

void MTFETunePitch::~MTFETunePitch(MTFETunePitch *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFEStemTracker::MTFEStemTracker(MTFEStemTracker *this, SLDictionary *a2, uint64_t a3)
{
  SLDictionary::SLDictionary(this);
  *v6 = &unk_2868F6948;
  *(v6 + 32) = a3;
  SLDictionary::SLDictionary((v6 + 56));
  *(this + 7) = MEMORY[0x277D65570] + 16;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = a2;
  v7 = *(this + 4);
  operator new[]();
}

void MTFEStemTracker::~MTFEStemTracker(SLDictionary *this)
{
  *this = &unk_2868F6948;
  v2 = *(this + 5);
  if (v2)
  {
    MEMORY[0x259C6DA70](v2, 0x1000C8034A87E94);
  }

  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x259C6DA70](v3, 0x20C8093837F09);
  }

  SLEncyclopedia::Remove((this + 56), this);
  MEMORY[0x259C6D900](this + 56);

  SLDictionary::~SLDictionary(this);
}

{
  MTFEStemTracker::~MTFEStemTracker(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MTFEStemTracker::SeenRecently(MTFEStemTracker *this, const char *a2, uint64_t a3, int a4)
{
  SLWordBuilder::SLWordBuilder(v13);
  if ((MTBEDebugFlags::sMTXDebug & 0x1000) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "Word %.*s ", a3, a2);
  }

  if (SLEncyclopedia::Lookup((this + 56), a2, a3, v13, (this + 56)))
  {
    v8 = *(this + 14);
    v9 = this + 120;
    v10 = this;
  }

  else
  {
    v10 = this;
    v9 = a2;
    v8 = a3;
  }

  MTFEStemTracker::Seen(v10, v9, v8, a4);
  v11 = *(this + 24);
  SLWordBuilder::~SLWordBuilder(v13);
  return v11;
}

void sub_257B3840C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  SLWordBuilder::~SLWordBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t MTFEStemTracker::Seen(MTFEStemTracker *this, const char *__src, size_t __n, int a4)
{
  if ((MTBEDebugFlags::sMTXDebug & 0x1000) != 0)
  {
    v8 = "";
    if (a4)
    {
      v8 = "[AllCaps] ";
    }

    fprintf(*MEMORY[0x277D85DF8], "-> Stem %.*s %s", __n, __src, v8);
  }

  v9 = *(this + 4);
  if (v9)
  {
    v10 = 0;
    v11 = *(this + 6);
    while (1)
    {
      v12 = *(v11 + 8 * v10);
      v13 = *(v12 + 1);
      if (!v13)
      {
        break;
      }

      if (v13 == __n && *v12 == a4)
      {
        result = memcmp(__src, v12 + 16, __n);
        if (!result)
        {
          *(this + 24) = 1;
          if ((MTBEDebugFlags::sMTXDebug & 0x1000) != 0)
          {
            result = fprintf(*MEMORY[0x277D85DF8], "was last seen %lu stems ago\n", v10);
          }

          if (v10)
          {
            goto LABEL_20;
          }

          return result;
        }
      }

      if (v9 == ++v10)
      {
        v10 = v9;
        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if ((MTBEDebugFlags::sMTXDebug & 0x1000) != 0)
  {
    fwrite("is new\n", 7uLL, 1uLL, *MEMORY[0x277D85DF8]);
    v9 = *(this + 4);
  }

  v10 -= v10 == v9;
  *(this + 24) = 0;
  v16 = *(*(this + 6) + 8 * v10);
  *v16 = a4;
  *(v16 + 8) = __n;
  memcpy((v16 + 16), __src, __n);
LABEL_20:
  v17 = *(this + 6);
  v18 = *(v17 + 8 * v10);
  result = memmove((v17 + 8), v17, 8 * v10);
  **(this + 6) = v18;
  return result;
}

uint64_t MTFEStemTracker::Reset(uint64_t this)
{
  v1 = *(this + 32);
  if (v1)
  {
    v2 = (v1 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v3 = vdupq_n_s64(v1 - 1);
    v4 = xmmword_257B895F0;
    v5 = (*(this + 40) + 88);
    v6 = vdupq_n_s64(2uLL);
    do
    {
      v7 = vmovn_s64(vcgeq_u64(v3, v4));
      if (v7.i8[0])
      {
        *(v5 - 10) = 0;
      }

      if (v7.i8[4])
      {
        *v5 = 0;
      }

      v4 = vaddq_s64(v4, v6);
      v5 += 20;
      v2 -= 2;
    }

    while (v2);
  }

  return this;
}

uint64_t MTFEStemTracker::Lookup(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v7 = (***(a1 + 96))(*(a1 + 96), a2, a3, a4, 0);
  if (v7)
  {
    *(a1 + 112) = a3;
    memcpy((a1 + 120), a2, a3);
  }

  return v7;
}

uint64_t MTFESegmentalPerturbations::MTFESegmentalPerturbations(uint64_t result, uint64_t a2, uint64_t a3, int a4, BOOL a5, char a6)
{
  *result = &unk_2868F6998;
  if (a4)
  {
    if (!a3)
    {
      *(result + 8) = 1;
      goto LABEL_11;
    }

    v6 = *(a3 + 2) != 0;
  }

  else
  {
    v6 = 0;
  }

  *(result + 8) = v6;
  if (a5)
  {
    if (a3)
    {
      a5 = *(a3 + 2) != 0;
    }

    else
    {
      a5 = 1;
    }
  }

  else
  {
    a5 = 0;
  }

LABEL_11:
  *(result + 9) = a5;
  *(result + 16) = &unk_2868F6A08;
  *(result + 24) = a2;
  *(result + 32) = a6;
  *(result + 64) = &unk_2868F6AC0;
  *(result + 72) = a2;
  *(result + 80) = a6;
  return result;
}

uint64_t MTFESegmentalPerturbations::Visit(uint64_t this, MTFESpeechElement *a2)
{
  v3 = this;
  if (*(this + 8) == 1)
  {
    this = (*a2->var0)(a2, this + 16);
  }

  if (*(v3 + 9) == 1)
  {
    v4 = *a2->var0;

    return v4(a2, v3 + 64);
  }

  return this;
}

MTFESpeechElement *MTFESegmentalPerturbations::Vowel::VisitIntonationalPhrase(MTFESegmentalPerturbations::Vowel *this, MTFESpeechElement *a2)
{
  *(this + 3) = a2[2].var3 + 4 * SLODWORD(a2[2].var5);
  *(this + 4) = 0x3F80000000000000;
  *(this + 10) = 0;
  result = MTFESpeechElement::VisitChildren(a2, this);
  var5_high = HIDWORD(a2[2].var5);
  v6 = *(this + 10);
  v7 = v6 + LODWORD(a2[2].var5);
  v8 = var5_high + ~v7;
  v9 = 1.0 / v8;
  v10 = 0.5 - (*(this + 9) * 0.5);
  if (*(this + 16))
  {
    if (v8 < 1)
    {
      return result;
    }

    v11 = *(this + 3) + 4;
    v12 = var5_high - v7;
    v13 = 0.0;
    do
    {
      v13 = v9 + v13;
      v14 = v6 + 1;
      *(v11 + 4 * v6) = *(v11 + 4 * v6) / (*(this + 9) + ((v10 * v13) * v13));
      --v12;
      ++v6;
    }

    while (v12 > 1);
  }

  else
  {
    if (v8 < 1)
    {
      return result;
    }

    v15 = *(this + 3) + 4;
    v16 = var5_high - v7;
    v17 = 0.0;
    do
    {
      v17 = v9 + v17;
      v14 = v6 + 1;
      *(v15 + 4 * v6) = (*(this + 9) + ((v10 * v17) * v17)) * *(v15 + 4 * v6);
      --v16;
      ++v6;
    }

    while (v16 > 1);
  }

  *(this + 10) = v14;
  return result;
}

uint64_t MTFESegmentalPerturbations::Vowel::VisitPhoneme(uint64_t this, MTFEPhoneme *a2)
{
  var9 = a2->var9;
  if (a2->var9)
  {
    v3 = (*(MEMORY[0x277D65568] + 4 * var9) & 1) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    *(this + 32) += a2->var13;
    return this;
  }

  var15 = a2->var15;
  if ((var15 & 0x1400) != 0)
  {
    v5 = *(this + 8);
    v6 = v5 + 70;
  }

  else
  {
    v5 = *(this + 8);
    if ((var15 & 0x800) != 0)
    {
      v6 = v5 + 71;
    }

    else
    {
      v6 = v5 + 69;
    }
  }

  v7 = *v6;
  v8 = 0.0;
  if ((var9 - 3) <= 0x1A)
  {
    v8 = *(v5 + qword_257B8BF30[(var9 - 3)]);
  }

  v9 = *(this + 32);
  var13 = a2->var13;
  v11 = ((var13 * 0.5) + 0.5);
  if (var13 < 2.0)
  {
    v11 = 0;
  }

  v12 = v11 + v9;
  v13 = *(this + 40);
  v14 = (v12 + v13) / 2;
  v15 = (v8 * v7) + 1.0;
  v16 = *(this + 36);
  v17 = (v15 + v16) * 0.5;
  v18 = v17 - v16;
  v19 = 1.0 / (v14 - v13);
  v20 = *(this + 16);
  if (v20)
  {
    if (v13 >= v14)
    {
      v27 = v15 - v17;
      v28 = 1.0;
      v29 = 1.0 / (v12 - v14);
LABEL_26:
      if (v12 > v14)
      {
        v30 = -v27;
        v31 = v12 - v14;
        v32 = (*(this + 24) + 4 * v14 + 4);
        do
        {
          v28 = v28 - v29;
          *v32 = *v32 / (v15 + ((v28 * v30) * v28));
          ++v32;
          --v31;
        }

        while (v31);
      }

      goto LABEL_34;
    }

    v21 = v14 - v13;
    v22 = (*(this + 24) + 4 * v13 + 4);
    v23 = 0.0;
    do
    {
      v23 = v19 + v23;
      *v22 = *v22 / (*(this + 36) + ((v18 * v23) * v23));
      ++v22;
      --v21;
    }

    while (v21);
  }

  else
  {
    if (v14 <= v13)
    {
      v27 = v15 - v17;
      v28 = 1.0;
      v29 = 1.0 / (v12 - v14);
      goto LABEL_31;
    }

    v24 = v14 - v13;
    v25 = (*(this + 24) + 4 * v13 + 4);
    v26 = 0.0;
    do
    {
      v26 = v19 + v26;
      *v25 = (*(this + 36) + ((v18 * v26) * v26)) * *v25;
      ++v25;
      --v24;
    }

    while (v24);
  }

  v27 = v15 - v17;
  v28 = 1.0;
  v29 = 1.0 / (v12 - v14);
  if (v20)
  {
    goto LABEL_26;
  }

LABEL_31:
  if (v12 > v14)
  {
    v33 = -v27;
    v34 = v12 - v14;
    v35 = (*(this + 24) + 4 * v14 + 4);
    do
    {
      v28 = v28 - v29;
      *v35 = (v15 + ((v28 * v33) * v28)) * *v35;
      ++v35;
      --v34;
    }

    while (v34);
  }

LABEL_34:
  *(this + 40) = v12;
  *(this + 36) = v15;
  v36 = v9 + a2->var13;
  *(this + 32) = v36;
  if (!var9)
  {
    *(this + 40) = v36;
  }

  return this;
}

uint64_t MTFESegmentalPerturbations::Consonant::VisitIntonationalPhrase(MTFESegmentalPerturbations::Consonant *this, MTFESpeechElement *a2)
{
  var5_high = HIDWORD(a2[2].var5);
  var5_low = SLODWORD(a2[2].var5);
  *(this + 3) = a2[2].var3 + 4 * var5_low;
  *(this + 8) = var5_high - var5_low;
  *(this + 36) = 0;
  *(this + 44) = 0;
  MTFESpeechElement::VisitChildren(a2, this);

  return MTFESegmentalPerturbations::Consonant::Perturb(this, v5);
}

uint64_t MTFESegmentalPerturbations::Consonant::Perturb(uint64_t this, MTFEPhoneme *a2)
{
  v2 = *(this + 40);
  if (!v2)
  {
    return this;
  }

  v3 = *(v2 + 72);
  if ((v3 & 0x1400) != 0)
  {
    v4 = *(this + 8);
    v5 = (v4 + 196);
  }

  else
  {
    v4 = *(this + 8);
    v5 = ((v3 & 0x800) != 0 ? v4 + 200 : v4 + 192);
  }

  if (*(v2 + 58) - 30 > 0x17)
  {
    return this;
  }

  v6 = *(v4 + qword_257B8C008[(*(v2 + 58) - 30)]) + (*(v4 + qword_257B8C0C8[(*(v2 + 58) - 30)]) * *v5);
  v7 = *(v4 + qword_257B8C188[(*(v2 + 58) - 30)]) + (*(v4 + qword_257B8C248[(*(v2 + 58) - 30)]) * *v5);
  v8 = *(v4 + 224);
  v9 = 1.0;
  v10 = 1.0 / v8;
  v11 = *(this + 16);
  if (v11)
  {
    if (v8 <= 1)
    {
      v17 = *(v2 + 64);
      v18 = v7 - v6;
      v19 = 1.0 / v17;
      goto LABEL_19;
    }

    v12 = (*(this + 24) + 4 * *(this + 48) - 4);
    v13 = v8 - 1;
    v14 = 1.0;
    do
    {
      v14 = v14 - v10;
      *v12 = *v12 + ((v14 * -v6) * v14);
      --v12;
      --v13;
    }

    while (v13);
  }

  else
  {
    if (v8 <= 1)
    {
      v17 = *(v2 + 64);
      v18 = v7 - v6;
      v19 = 1.0 / v17;
LABEL_24:
      if (v17 <= 0)
      {
        LODWORD(v4) = *(v4 + 220);
        v26 = 1.0;
        v27 = 1.0 / v4;
        goto LABEL_36;
      }

      v23 = v17;
      v24 = (*(this + 24) + 4 * *(this + 48));
      v25 = 0.0;
      do
      {
        *v24 = (v6 + ((v18 * v25) * v25)) + *v24;
        ++v24;
        v25 = v19 + v25;
        --v23;
      }

      while (v23);
      goto LABEL_27;
    }

    v15 = (*(this + 24) + 4 * *(this + 48) - 4);
    v16 = v8 - 1;
    do
    {
      v9 = v9 - v10;
      *v15 = *v15 + ((v6 * v9) * v9);
      --v15;
      --v16;
    }

    while (v16);
  }

  v17 = *(v2 + 64);
  v18 = v7 - v6;
  v19 = 1.0 / v17;
  if ((v11 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (v17 <= 0)
  {
    LODWORD(v4) = *(v4 + 220);
    v26 = 1.0;
    v27 = 1.0 / v4;
    goto LABEL_30;
  }

  v20 = v17;
  v21 = (*(this + 24) + 4 * *(this + 48));
  v22 = 0.0;
  do
  {
    *v21 = *v21 - (v6 + ((v18 * v22) * v22));
    ++v21;
    v22 = v19 + v22;
    --v20;
  }

  while (v20);
LABEL_27:
  LODWORD(v4) = *(v4 + 220);
  v26 = 1.0;
  v27 = 1.0 / v4;
  if ((v11 & 1) == 0)
  {
LABEL_36:
    if (v4 >= 1)
    {
      v30 = *(this + 32);
      v4 = v4;
      v31 = v17 + *(this + 48);
      do
      {
        if (v31 >= v30)
        {
          break;
        }

        *(*(this + 24) + 4 * v31) = *(*(this + 24) + 4 * v31) + ((v26 * (v7 * v26)) * v26);
        v26 = v26 - v27;
        ++v31;
        --v4;
      }

      while (v4);
    }

    return this;
  }

LABEL_30:
  if (v4 >= 1)
  {
    v28 = *(this + 32);
    v4 = v4;
    v29 = v17 + *(this + 48);
    do
    {
      if (v29 >= v28)
      {
        break;
      }

      *(*(this + 24) + 4 * v29) = *(*(this + 24) + 4 * v29) + ((v26 * (v7 * v26)) * v26);
      v26 = v26 - v27;
      ++v29;
      --v4;
    }

    while (v4);
  }

  return this;
}

float MTFESegmentalPerturbations::Consonant::VisitPhoneme(MTFESegmentalPerturbations::Consonant *this, MTFEPhoneme *a2)
{
  if (*(MEMORY[0x277D65568] + 4 * a2->var9))
  {
    v4 = *(this + 9);
  }

  else
  {
    MTFESegmentalPerturbations::Consonant::Perturb(this, a2);
    *(this + 5) = a2;
    v4 = *(this + 9);
    *(this + 12) = v4;
  }

  result = a2->var13;
  *(this + 9) = v4 + result;
  return result;
}

void MTFESegmentalPerturbations::Vowel::~Vowel(MTFESegmentalPerturbations::Vowel *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFESegmentalPerturbations::Consonant::~Consonant(MTFESegmentalPerturbations::Consonant *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTMBPhraseProcessor::MTMBPhraseProcessor(void *a1, uint64_t a2, __int128 *a3)
{
  MTPBVoice::MTPBVoice((a1 + 534), a2);
  *a1 = &unk_2868F6B90;
  MTBEPhraseProcessor::MTBEPhraseProcessor(a1, (a1 + 534), a3, 1);
}

void sub_257B39284(_Unwind_Exception *a1)
{
  MEMORY[0x259C6DA90](v2, 0x10A1C4036524A53);
  MTBEPhraseProcessor::~MTBEPhraseProcessor(v1);
  _Unwind_Resume(a1);
}

void MTMBPhraseProcessor::~MTMBPhraseProcessor(MTMBPhraseProcessor *this)
{
  *this = &unk_2868F6B90;
  v2 = *(this + 2);
  v3 = *(this + 580);
  if (kMTMBAsynchronousSearch)
  {
    MTBEDebugParams::GetParam(kMTMBAsynchronousSearch, &byte_27F8F0BB0, byte_27F8F0BB0);
    kMTMBAsynchronousSearch = 0;
  }

  MTMBSelectUnits::DeletePhrase(v2, v3, byte_27F8F0BB0);
  *(this + 2) = 0;

  MTBEPhraseProcessor::~MTBEPhraseProcessor(this);
}

{
  MTMBPhraseProcessor::~MTMBPhraseProcessor(this);

  JUMPOUT(0x259C6DA90);
}

void MTMBPhraseProcessor::ExpandCompoundsPreDur(MTMBPhraseProcessor *this, MTFESpeechElement *a2)
{
  if ((*(this + 69) & 1) == 0)
  {
    v3 = 0;
    v2[0] = &unk_2868F5700;
    v4 = 1;
    MTFESpeechVisitor::Visit(v2, a2);
    MTFESpeechVisitor::~MTFESpeechVisitor(v2);
  }
}

void MTMBPhraseProcessor::ExpandCompoundsPostDur(MTMBPhraseProcessor *this, MTFESpeechElement *a2)
{
  if ((*(this + 69) & 1) == 0)
  {
    v3 = 0;
    v2[0] = &unk_2868F5700;
    v4 = 0;
    MTFESpeechVisitor::Visit(v2, a2);
    MTFESpeechVisitor::~MTFESpeechVisitor(v2);
  }
}

uint64_t MTMBPhraseProcessor::SelectUnits(uint64_t this, MTFESpeechElement *a2)
{
  if ((*(this + 69) & 1) == 0)
  {
    operator new();
  }

  return this;
}

uint64_t MTMBPhraseProcessor::AbortUnitSelection(MTMBPhraseProcessor *this)
{
  pthread_mutex_lock((*(this + 580) + 96));
  v3 = *(this + 580);
  v4 = *(this + 581);
  if (*(v3 + 208) == v4)
  {
    MTMBSelectUnits::AbortUnitSelection(v4, v2);
    v3 = *(this + 580);
  }

  return pthread_mutex_unlock((v3 + 96));
}

uint64_t Log2(uint64_t a1)
{
  if (a1 < 2)
  {
    return 0;
  }

  v1 = 0;
  do
  {
    a1 >>= 1;
    ++v1;
  }

  while (a1 > 1);
  return v1;
}

uint64_t BitReverse(uint64_t a1, uint64_t a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 1;
  v4 = 1 << (a2 - 1);
  do
  {
    if ((v3 & a1) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v2 |= v5;
    v3 *= 2;
    v4 >>= 1;
    --a2;
  }

  while (a2);
  return v2;
}

uint64_t InitBitRevTable(uint64_t a1, __int16 *a2)
{
  if ((a1 & (a1 - 1)) != 0)
  {
    return -50;
  }

  else
  {
    if (a1 >= 2)
    {
      v2 = 0;
      for (i = a1; i > 1; i >>= 1)
      {
        ++v2;
      }
    }

    else
    {
      v2 = 0;
    }

    LODWORD(v5) = a2;
    if (a1 >= 1)
    {
      v6 = 0;
      v5 = a2;
      do
      {
        if (v2 >= 1)
        {
          v7 = 0;
          v8 = v2;
          v9 = 1 << (v2 - 1);
          v10 = 1;
          do
          {
            if ((v10 & v6) != 0)
            {
              v11 = v9;
            }

            else
            {
              v11 = 0;
            }

            v7 |= v11;
            v10 *= 2;
            v9 >>= 1;
            --v8;
          }

          while (v8);
          if (v7 > v6)
          {
            v5[2] = v7;
            v5 += 2;
            *(v5 - 1) = v6;
          }
        }

        ++v6;
      }

      while (v6 != a1);
    }

    v3 = 0;
    *a2 = (v5 - a2) >> 2;
  }

  return v3;
}

uint64_t BitRevShortArr(__int16 *a1, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *a3;
  if (*a3)
  {
    v4 = (a3 + 1);
    do
    {
      --v3;
      v5 = *v4;
      v6 = v4[1];
      v7 = a1[v5];
      a1[v5] = a1[v6];
      a1[v6] = v7;
      v4 += 2;
    }

    while (v3);
  }

  return 0;
}

uint64_t BitRevFloatArr(float *a1, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *a3;
  if (*a3)
  {
    v4 = (a3 + 1);
    do
    {
      --v3;
      v5 = *v4;
      v6 = v4[1];
      v7 = a1[v5];
      a1[v5] = a1[v6];
      a1[v6] = v7;
      v4 += 2;
    }

    while (v3);
  }

  return 0;
}

uint64_t InitTrigTables(uint64_t a1, float *a2, float *a3)
{
  v3 = a1 >> 1;
  if (a1 >> 1 >= 1)
  {
    v6 = 6.28318531 / a1;
    v7 = 0.0;
    do
    {
      v8 = __sincosf_stret(v7);
      *a3++ = v8.__cosval;
      *a2++ = v8.__sinval;
      v7 = v7 + v6;
      --v3;
    }

    while (v3);
  }

  return 0;
}

float ComplexFFT(float *a1, float *a2, uint64_t a3, float *a4, float *a5, unsigned __int16 *a6, float result)
{
  if (a3 >= 2)
  {
    v7 = -1;
    for (i = a3; i > 1; i >>= 1)
    {
      ++v7;
    }

    v9 = 0;
    v10 = a3;
    do
    {
      v11 = v10 / 2;
      if (a3 >= 1)
      {
        v12 = 0;
        v13 = &a2[v11];
        v14 = &a1[v11];
        do
        {
          v15 = a1[v12];
          v16 = v14[v12];
          a1[v12] = v15 + v16;
          v14[v12] = v15 - v16;
          v17 = a2[v12];
          v18 = v13[v12];
          v19 = v17 - v18;
          result = v17 + v18;
          a2[v12] = result;
          v13[v12] = v19;
          v12 += v10;
        }

        while (v12 < a3);
      }

      if (v7 != v9 && v10 >= 4)
      {
        v20 = 0;
        if (v11 <= 2)
        {
          v21 = 2;
        }

        else
        {
          v21 = v10 / 2;
        }

        v22 = &a2[v11];
        v23 = &a1[v11];
        v24 = 1;
        do
        {
          v20 += 2 * (a3 / v10);
          if (v24 < a3)
          {
            result = a4[v20];
            v25 = a5[v20];
            v26 = v24;
            do
            {
              v27 = a1[v26];
              v28 = v23[v26];
              v29 = v27 - v28;
              a1[v26] = v27 + v28;
              v30 = a2[v26];
              v31 = v22[v26];
              a2[v26] = v30 + v31;
              v23[v26] = (v25 * (v30 - v31)) + (result * v29);
              v22[v26] = (v29 * -v25) + (result * (v30 - v31));
              v26 += v10;
            }

            while (v26 < a3);
          }

          ++v24;
        }

        while (v24 != v21);
      }

      v10 /= 2;
    }

    while (v7 != v9++);
  }

  v33 = *a6;
  if (*a6)
  {
    v34 = (a6 + 1);
    v35 = *a6;
    v36 = (a6 + 1);
    do
    {
      --v35;
      v37 = *v36;
      v38 = v36[1];
      v39 = a1[v37];
      a1[v37] = a1[v38];
      a1[v38] = v39;
      v36 += 2;
    }

    while (v35);
    do
    {
      --v33;
      v40 = *v34;
      v41 = v34[1];
      result = a2[v40];
      a2[v40] = a2[v41];
      a2[v41] = result;
      v34 += 2;
    }

    while (v33);
  }

  return result;
}

float RealFFTPowerSpectrum(float *a1, float *a2, uint64_t a3, float *a4, float *a5, unsigned __int16 *a6, float a7)
{
  v12 = a3 >> 1;
  if (a3 >> 1 >= 1)
  {
    v13 = a1 + 1;
    v14 = a1;
    v15 = a2;
    v16 = a3 >> 1;
    do
    {
      *v14++ = *(v13 - 1);
      v17 = *v13;
      v13 += 2;
      a7 = v17;
      *v15++ = v17;
      --v16;
    }

    while (v16);
  }

  ComplexFFT(a1, a2, a3 >> 1, a4, a5, a6, a7);
  v18 = a3 >> 2;
  if (a3 >> 2 > 1)
  {
    v19 = 4 * v12 - 4;
    v20 = 1;
    do
    {
      v21 = a1[v20];
      v22 = *(a1 + v19);
      v23 = v21 + v22;
      v24 = v21 - v22;
      v25 = a2[v20];
      v26 = *(a2 + v19);
      v27 = v25 + v26;
      v28 = v25 - v26;
      v29 = a4[v20];
      v30 = a5[v20];
      a1[v20] = ((((v29 * v24) - (v28 - (v30 * v27))) * ((v29 * v24) - (v28 - (v30 * v27)))) + (((v23 + (v29 * v27)) - (v30 * v24)) * ((v23 + (v29 * v27)) - (v30 * v24)))) * 0.25;
      v31 = a4[v20];
      v32 = a5[v20];
      *(a1 + v19) = (((-(v28 + (v32 * v27)) - (v31 * v24)) * (-(v28 + (v32 * v27)) - (v31 * v24))) + (((v23 - (v31 * v27)) + (v32 * v24)) * ((v23 - (v31 * v27)) + (v32 * v24)))) * 0.25;
      ++v20;
      v19 -= 4;
    }

    while (v18 != v20);
  }

  *a1 = (*a2 * *a2) + (*a1 * *a1);
  result = (a2[v18] * a2[v18]) + (a1[v18] * a1[v18]);
  a1[v18] = result;
  return result;
}

float RealFFTMagnitudeSpectrum(float *a1, float *a2, uint64_t a3, float *a4, float *a5, unsigned __int16 *a6, float a7)
{
  v12 = a3 >> 1;
  if (a3 >> 1 >= 1)
  {
    v13 = a1 + 1;
    v14 = a1;
    v15 = a2;
    v16 = a3 >> 1;
    do
    {
      *v14++ = *(v13 - 1);
      v17 = *v13;
      v13 += 2;
      a7 = v17;
      *v15++ = v17;
      --v16;
    }

    while (v16);
  }

  ComplexFFT(a1, a2, a3 >> 1, a4, a5, a6, a7);
  v18 = a3 >> 2;
  if (a3 >> 2 > 1)
  {
    v19 = 4 * v12 - 4;
    v20 = 1;
    do
    {
      v21 = a1[v20];
      v22 = *(a1 + v19);
      v23 = v21 + v22;
      v24 = v21 - v22;
      v25 = a2[v20];
      v26 = *(a2 + v19);
      v27 = v25 + v26;
      v28 = v25 - v26;
      v29 = a4[v20];
      v30 = a5[v20];
      a1[v20] = sqrtf((((v29 * v24) - (v28 - (v30 * v27))) * ((v29 * v24) - (v28 - (v30 * v27)))) + (((v23 + (v29 * v27)) - (v30 * v24)) * ((v23 + (v29 * v27)) - (v30 * v24)))) * 0.5;
      v31 = a4[v20];
      v32 = a5[v20];
      *(a1 + v19) = sqrtf(((-(v28 + (v32 * v27)) - (v31 * v24)) * (-(v28 + (v32 * v27)) - (v31 * v24))) + (((v23 - (v31 * v27)) + (v32 * v24)) * ((v23 - (v31 * v27)) + (v32 * v24)))) * 0.5;
      ++v20;
      v19 -= 4;
    }

    while (v18 != v20);
  }

  *a1 = sqrtf((*a2 * *a2) + (*a1 * *a1));
  result = sqrtf((a2[v18] * a2[v18]) + (a1[v18] * a1[v18]));
  a1[v18] = result;
  return result;
}

float RealFFTPowerSpectrumNoiseCancel(float *a1, float *a2, uint64_t a3, float *a4, float *a5, unsigned __int16 *a6, float *a7, float a8)
{
  v14 = a3 >> 1;
  if (a3 >> 1 >= 1)
  {
    v15 = a1 + 1;
    v16 = a1;
    v17 = a2;
    v18 = a3 >> 1;
    do
    {
      *v16++ = *(v15 - 1);
      v19 = *v15;
      v15 += 2;
      a8 = v19;
      *v17++ = v19;
      --v18;
    }

    while (v18);
  }

  ComplexFFT(a1, a2, a3 >> 1, a4, a5, a6, a8);
  v20 = a3 >> 2;
  if (a3 >> 2 > 1)
  {
    v21 = 4 * v14 - 4;
    v22 = 1;
    do
    {
      v23 = a1[v22];
      v24 = *(a1 + v21);
      v25 = v23 + v24;
      v26 = v23 - v24;
      v27 = a2[v22];
      v28 = *(a2 + v21);
      v29 = v27 + v28;
      v30 = v27 - v28;
      v31 = a4[v22];
      v32 = sqrtf(((((v31 * v26) - (v30 - (a5[v22] * v29))) * ((v31 * v26) - (v30 - (a5[v22] * v29)))) + (((v25 + (v31 * v29)) - (a5[v22] * v26)) * ((v25 + (v31 * v29)) - (a5[v22] * v26)))) * 0.25);
      a1[v22] = v32;
      v33 = a7[v22];
      v34 = v32 - v33;
      v35 = v33 * 0.1;
      if (v35 > v34)
      {
        v36 = v35;
        v34 = v36;
      }

      a1[v22] = v34 * v34;
      v37 = a4[v22];
      v38 = a5[v22];
      v39 = (v25 - (v37 * v29)) + (v38 * v26);
      v40 = -(v30 + (v38 * v29)) - (v37 * v26);
      v41 = sqrtf(((v40 * v40) + (v39 * v39)) * 0.25);
      *(a1 + v21) = v41;
      v42 = *(a7 + v21);
      v43 = v41 - v42;
      v44 = v42 * 0.1;
      if (v44 > v43)
      {
        v45 = v44;
        v43 = v45;
      }

      *(a1 + v21) = v43 * v43;
      ++v22;
      v21 -= 4;
    }

    while (v20 != v22);
  }

  v46 = sqrtf((*a2 * *a2) + (*a1 * *a1));
  *a1 = v46;
  v47 = v46 - *a7;
  v48 = *a7 * 0.1;
  if (v48 > v47)
  {
    v49 = v48;
    v47 = v49;
  }

  *a1 = v47 * v47;
  v50 = sqrtf((a2[v20] * a2[v20]) + (a1[v20] * a1[v20]));
  a1[v20] = v50;
  v51 = a7[v20];
  v52 = v50 - v51;
  v53 = v51 * 0.1;
  if (v53 > v52)
  {
    v54 = v53;
    v52 = v54;
  }

  result = v52 * v52;
  a1[v20] = result;
  return result;
}

float compute_norm(float *a1, int a2)
{
  if (a2 < 1)
  {
    v3 = 0.0;
  }

  else
  {
    v2 = a2;
    v3 = 0.0;
    do
    {
      v4 = *a1++;
      v3 = v3 + (v4 * v4);
      --v2;
    }

    while (v2);
  }

  return sqrtf(v3);
}

float *normalize(float *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    v3 = 0.0;
    v4 = result;
    v5 = a2;
    do
    {
      v6 = *v4++;
      v3 = v3 + (v6 * v6);
      --v5;
    }

    while (v5);
    v7 = sqrtf(v3);
    do
    {
      *result = *result / v7;
      ++result;
      --v2;
    }

    while (v2);
  }

  return result;
}

double dot_product(float *a1, float *a2, int a3)
{
  if (a3 < 1)
  {
    return 0.0;
  }

  v3 = a3;
  result = 0.0;
  do
  {
    v5 = *a1++;
    v6 = v5;
    v7 = *a2++;
    *&result = *&result + (v6 * v7);
    --v3;
  }

  while (v3);
  return result;
}

float dot_product_dist(float *a1, float *a2, unsigned int a3)
{
  if (a3 < 1)
  {
    return NAN;
  }

  v3 = a3;
  v4 = 0.0;
  v5 = a1;
  v6 = a3;
  do
  {
    v7 = *v5++;
    v4 = v4 + (v7 * v7);
    --v6;
  }

  while (v6);
  v8 = 0.0;
  v9 = a2;
  v10 = a3;
  do
  {
    v11 = *v9++;
    v8 = v8 + (v11 * v11);
    --v10;
  }

  while (v10);
  v12 = 0.0;
  v13 = sqrtf(v4);
  do
  {
    v14 = *a1++;
    v15 = v14;
    v16 = *a2++;
    v12 = v12 + (v15 * v16);
    --v3;
  }

  while (v3);
  return v12 / (sqrtf(v8) * v13);
}

float MEOWSVDDistanceExplicit(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v24 = *MEMORY[0x277D85DE8];
  do
  {
    *&v23[v3] = *(a1 + 4 + v3) + *(a2 + 4 + v3);
    v3 += 4;
  }

  while (v3 != 20);
  v4 = a1 + 24;
  printf("uS (normalized) =");
  for (i = 0; i != 20; i += 4)
  {
    printf(" %f", *(v4 + i));
  }

  v6 = a2 + 24;
  putchar(10);
  printf("vS (normalized) =");
  for (j = 0; j != 20; j += 4)
  {
    printf(" %f", *(v6 + j));
  }

  putchar(10);
  printf("wS=");
  for (k = 0; k != 20; k += 4)
  {
    printf(" %f", *&v23[k]);
  }

  putchar(10);
  v9 = 0;
  v10 = 0.0;
  do
  {
    v10 = v10 + (*&v23[v9] * *&v23[v9]);
    v9 += 4;
  }

  while (v9 != 20);
  v11 = 0;
  v12 = sqrtf(v10);
  do
  {
    *&v23[v11] = *&v23[v11] / v12;
    v11 += 4;
  }

  while (v11 != 20);
  printf("wS (normalized) =");
  for (m = 0; m != 20; m += 4)
  {
    printf(" %f", *&v23[m]);
  }

  putchar(10);
  v14 = 0;
  v15 = 0.0;
  do
  {
    v15 = v15 + (*(v4 + v14) * *&v23[v14]);
    v14 += 4;
  }

  while (v14 != 20);
  v16 = 0;
  v17 = 0.0;
  do
  {
    v17 = v17 + (*&v23[v16] * *(v6 + v16));
    v16 += 4;
  }

  while (v16 != 20);
  printf("d1=<uS,wS>= %f\n", v15);
  printf("d2=<wS,vS>= %f\n", v17);
  v18 = -v15;
  if (v15 >= 0.0)
  {
    v18 = v15;
  }

  v19 = -v17;
  if (v17 >= 0.0)
  {
    v19 = v17;
  }

  v20 = (v18 + v19) * -0.5 + 1.0;
  printf("dist = %f\n", v20);
  putchar(10);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

float MEOWRawSVDDistance(float *a1, float *a2)
{
  v4 = *a2 / *a1;
  if (*a1 >= *a2)
  {
    v4 = *a1 / *a2;
  }

  if ((*a1 * *a2) == 0.0)
  {
    v4 = 1.0;
  }

  v5 = a1[5] + a2[5];
  v6 = a1[4] + a2[4];
  v7 = a1[3] + a2[3];
  v8 = a1[2] + a2[2];
  v2 = a1[1];
  v3 = a2[1];
  v9 = ((fabsf(((((v8 * a1[7]) + (a1[6] * (v2 + v3))) + (a1[8] * v7)) + (a1[9] * v6)) + (a1[10] * v5)) + fabsf(((((v8 * a2[7]) + (a2[6] * (v2 + v3))) + (a2[8] * v7)) + (a2[9] * v6)) + (a2[10] * v5))) * -0.5) * (1.0 / sqrtf(((((v8 * v8) + ((v2 + v3) * (v2 + v3))) + (v7 * v7)) + (v6 * v6)) + (v5 * v5))) + 1.0;
  return v4 * (v9 * v4);
}

float MEOWDistance(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  result = 0.0;
  if (v2 != *(a2 + 56))
  {
    if ((v2 & 0x80000000) != 0)
    {
      v4 = *a1;
      v5 = *a2;
      v6 = *(a1 + 4) + *(a2 + 4);
      v7 = *(a1 + 8) + *(a2 + 8);
      v8 = *(a1 + 12) + *(a2 + 12);
      v9 = *(a1 + 16) + *(a2 + 16);
      v10 = *(a1 + 20) + *(a2 + 20);
      v11 = ((fabsf(((((v7 * *(a1 + 28)) + (*(a1 + 24) * v6)) + (*(a1 + 32) * v8)) + (*(a1 + 36) * v9)) + (*(a1 + 40) * v10)) + fabsf(((((v7 * *(a2 + 28)) + (*(a2 + 24) * v6)) + (*(a2 + 32) * v8)) + (*(a2 + 36) * v9)) + (*(a2 + 40) * v10))) * -0.5) * (1.0 / sqrtf(((((v7 * v7) + (v6 * v6)) + (v8 * v8)) + (v9 * v9)) + (v10 * v10))) + 1.0;
      if ((*a1 * *a2) == 0.0)
      {
        v12 = 1.0;
      }

      else if (v4 >= v5)
      {
        v12 = v4 / v5;
      }

      else
      {
        v12 = v5 / v4;
      }

      return v12 * powf(*(a1 + 44) * v11, *(a1 + 48));
    }

    else if (v2 >> 30)
    {
      return vabds_f32(*a1, *a2);
    }
  }

  return result;
}

void MEOWDist::MEOWDist(MEOWDist *this, int a2)
{
  *this = a2;
  *(this + 1) = 1 << a2;
  SLML::Vector<float>::Vector(this + 2, 0);
}

void MEOWDist::MakeHammingWindow(MEOWDist *this)
{
  v1 = *(this + 1);
  v2 = v1;
  if (*(*(this + 2) + 12) < v1)
  {
    SLML::Vector<float>::ResizeStorage();
  }

  *(this + 2) = v1;
  if (v1 >= 1)
  {
    v3 = 0;
    v4 = 6.28318531 / v2;
    v24 = v4;
    v5 = *(this + 3);
    v6 = *(this + 3);
    v7 = (v2 + 3) & 0xFFFFFFFC;
    v8 = vdupq_n_s64(v2 - 1);
    v9 = xmmword_257B895E0;
    v10 = xmmword_257B895F0;
    v21 = vdupq_n_s32(0x3F0A3D71u);
    v22 = vdupq_n_s32(0xBEEB851F);
    v20 = vdupq_n_s64(4uLL);
    v23 = v8;
    do
    {
      v26 = v10;
      v27 = v9;
      v11 = vorr_s8(vdup_n_s32(v3), 0x300000002);
      v12 = vmovn_s64(vcgeq_u64(v8, v10));
      v13.i32[0] = v3;
      v13.i32[1] = v3 + 1;
      v25 = vuzp1_s16(v12, v11).u8[0];
      v13.u64[1] = v11;
      v31 = vmulq_n_f32(vcvtq_f32_u32(v13), v24);
      v28 = cosf(v31.f32[1]);
      v14.f32[0] = cosf(v31.f32[0]);
      v14.f32[1] = v28;
      v29 = v14;
      v15 = cosf(v31.f32[2]);
      v16 = v29;
      v16.f32[2] = v15;
      v30 = v16;
      v17 = cosf(v31.f32[3]);
      v18 = v30;
      v18.f32[3] = v17;
      v19 = vmlaq_f32(v21, v22, v18);
      if (v25)
      {
        *v5 = v19.i32[0];
      }

      if (vuzp1_s16(v12, *&v19).i8[2])
      {
        v5[v6] = v19.i32[1];
      }

      v8 = v23;
      if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v23, *&v27))).i32[1])
      {
        v5[2 * v6] = v19.i32[2];
        v5[3 * v6] = v19.i32[3];
      }

      v3 += 4;
      v9 = vaddq_s64(v27, v20);
      v10 = vaddq_s64(v26, v20);
      v5 += 4 * v6;
    }

    while (v7 != v3);
  }
}

int8x8_t MEOWSVDDistances::GetCookie(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1 + 56 * a2;
  *a3 = *(v3 + 8);
  v4 = *(v3 + 12);
  *(a3 + 20) = *(v3 + 28);
  *(a3 + 4) = v4;
  v5 = *(v3 + 32);
  *(a3 + 40) = *(v3 + 48);
  *(a3 + 24) = v5;
  result = vrev32_s8(*(a1 + 236));
  *(a3 + 44) = result;
  *(a3 + 56) = *v3 | 0x80000000;
  return result;
}

int8x8_t MEOWSVDDistances::GetCookie(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = 134;
  if (a3)
  {
    v5 = 32;
  }

  v6 = *a1 + 56 * *(a1 + v5 + 2 * a2) + 56 * a4;
  *a5 = *(v6 + 8);
  v7 = *(v6 + 12);
  *(a5 + 20) = *(v6 + 28);
  *(a5 + 4) = v7;
  v8 = *(v6 + 32);
  *(a5 + 40) = *(v6 + 48);
  *(a5 + 24) = v8;
  result = vrev32_s8(*(a1 + 236));
  *(a5 + 44) = result;
  *(a5 + 56) = *v6 | 0x80000000;
  return result;
}

int8x8_t MEOWSVDDistances::GetCookies(uint64_t a1, unsigned int a2, int a3, MEOWVectorBase *this)
{
  v6 = 134;
  if (a3)
  {
    v6 = 32;
  }

  v7 = (a1 + v6 + 2 * a2);
  v8 = v7[1];
  v9 = *v7;
  v10 = v7[1] - *v7;
  if (*(this + 3) < v10)
  {
    MEOWVectorBase::Allocate(this, v7[1] - *v7, 1);
  }

  *(this + 2) = v10;
  if (v8 != v9)
  {
    v12 = 0;
    v13 = 0;
    if (v10 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10;
    }

    do
    {
      v15 = *this + v13;
      v16 = *a1 + 56 * *v7 + v12;
      *v15 = *(v16 + 8);
      v17 = *(v16 + 12);
      *(v15 + 20) = *(v16 + 28);
      *(v15 + 4) = v17;
      v18 = *(v16 + 32);
      *(v15 + 40) = *(v16 + 48);
      *(v15 + 24) = v18;
      result = vrev32_s8(*(a1 + 236));
      *(v15 + 44) = result;
      *(v15 + 56) = *v16 | 0x80000000;
      v13 += 60;
      v12 += 56;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t *MEOWSVDDistances::ComputeNorm(uint64_t *result, void *a2, __n128 a3)
{
  v3 = *(result + 67);
  if (*(result + 67))
  {
    v4 = 0;
    v5 = 0;
    v6 = result[2];
    v24 = a2;
    v7 = *result;
    v23 = result;
    v8 = vrev32_s8(*(result + 236));
    a3.n128_u64[0] = 0;
    v25 = a3;
    v9 = 0.0;
    do
    {
      v10 = v7 + 56 * v4;
      v33 = *(v10 + 8);
      v34 = *(v10 + 12);
      v35 = *(v10 + 28);
      v36 = *(v10 + 32);
      v37 = *(v10 + 48);
      v38 = v8;
      v39 = *v10 | 0x80000000;
      v11 = v7 + 56 * v3;
      v12 = v6 - v3;
      if (v6 != v3)
      {
        do
        {
          v26 = *(v11 + 8);
          v27 = *(v11 + 12);
          v28 = *(v11 + 28);
          v29 = *(v11 + 32);
          v30 = *(v11 + 48);
          v31 = v8;
          v32 = *v11 | 0x80000000;
          v13 = MEOWRawSVDDistance(&v33, &v26);
          if (v13 != 0.0)
          {
            v14 = log(v13);
            v15.n128_u64[1] = v25.n128_u64[1];
            v15.n128_f64[0] = v25.n128_f64[0] + v14;
            v25 = v15;
            v9 = v9 + v14 * v14;
            ++v5;
          }

          v11 += 56;
          --v12;
        }

        while (v12);
      }

      ++v4;
    }

    while (v4 != v3);
    v16.f64[0] = v5;
    result = v23;
    a2 = v24;
    v17 = v25.n128_f64[0];
  }

  else
  {
    v9 = 0.0;
    v16.f64[0] = 0.0;
    v17 = 0.0;
  }

  __asm { FMOV            V2.2D, #1.0 }

  _Q2.f64[0] = v17;
  v16.f64[1] = sqrt((v16.f64[0] * v9 - v17 * v17) / ((v16.f64[0] + -1.0) * v16.f64[0]));
  *(result + 236) = vrev32_s8(vcvt_f32_f64(vdivq_f64(_Q2, v16)));
  if (a2)
  {
    *a2 = *(result + 236);
  }

  return result;
}

void sub_257B3ABE0(_Unwind_Exception *a1)
{
  MEOWTreeBase::~MEOWTreeBase(v2);
  MEOWVectorBase::~MEOWVectorBase((v1 + 104));
  SLML::Storage<float>::RemoveReference(*(v1 + 88));
  SLML::Storage<float>::RemoveReference(*(v1 + 64));
  SLML::Storage<float>::RemoveReference(*(v1 + 40));
  SLML::Storage<float>::RemoveReference(*(v1 + 16));
  _Unwind_Resume(a1);
}

uint64_t MEOWSVDDistanceEncoder::AddCutPoint(MEOWSVDDistanceEncoder *this, unsigned int a2, int a3, int a4)
{
  v7 = *(this + 429);
  v8 = *(this + 428);
  if (v7 != a3 || v8 < a2)
  {
    v10 = *(this + 60);
    do
    {
      LOBYTE(v8) = v8 + 1;
      if (v8 == 50)
      {
        LOBYTE(v8) = 0;
        LOBYTE(v7) = v7 == 0;
        *(this + 429) = v7;
        *(this + 162) = v10;
      }

      if (v7)
      {
        v11 = 224;
      }

      else
      {
        v11 = 326;
      }

      *(this + 2 * v8 + v11) = v10;
    }

    while (v7 != a3 || a2 > v8);
    *(this + 428) = v8;
  }

  MEOWVectorBase::Append(this + 13);
  *(*(this + 13) + 4 * *(this + 15) - 4) = a4;
  v21 = a3 | (2 * a4);
  v19 = 0uLL;
  v20 = 0;
  MEOWTreeBase::LowerBound(this + 136, &v21, &v19);
  LOWORD(v17) = 0;
  if (MEOWTreeIterBase::Equal(&v19, &v17))
  {
    v12 = v21;
  }

  else
  {
    v12 = v21;
    if (*v20 == v21)
    {
      return 0;
    }
  }

  v17 = v19;
  v18 = v20;
  v14 = *(this + 8) / (*(this + 1) * *(this + 218));
  v15 = v12;
  v16 = v14;
  MEOWTreeBase::Insert((this + 136), &v15, &v17);
  MEOWVectorBase::Append(this + 24);
  *(*(this + 24) + 4 * *(this + 26) - 4) = a4;
  return 1;
}

uint64_t MEOWSVDDistanceEncoder::EndEncoding(uint64_t this)
{
  v1 = *(this + 120);
  if (v1)
  {
    v2 = *(this + 428);
    if (v2 <= 0x31)
    {
      v3 = 0;
      v4 = (53 - v2) & 0xFFFFFFFFFFFFFFFCLL;
      v5 = vdupq_n_s64(49 - v2);
      v6 = (this + 2 * v2 + 334);
      do
      {
        v7 = vdupq_n_s64(v3);
        v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_257B895F0)));
        if (vuzp1_s16(v8, *v5.i8).u8[0])
        {
          *(v6 - 3) = v1;
        }

        if (vuzp1_s16(v8, *&v5).i8[2])
        {
          *(v6 - 2) = v1;
        }

        if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_257B895E0)))).i32[1])
        {
          *(v6 - 1) = v1;
          *v6 = v1;
        }

        v3 += 4;
        v6 += 4;
      }

      while (v4 != v3);
      *(this + 428) = 50;
    }
  }

  else
  {
    *(this + 224) = 0u;
    this += 224;
    *(this + 188) = 0u;
    *(this + 160) = 0u;
    *(this + 176) = 0u;
    *(this + 128) = 0u;
    *(this + 144) = 0u;
    *(this + 96) = 0u;
    *(this + 112) = 0u;
    *(this + 64) = 0u;
    *(this + 80) = 0u;
    *(this + 32) = 0u;
    *(this + 48) = 0u;
    *(this + 16) = 0u;
  }

  return this;
}

size_t MEOWSVDDistanceEncoder::Encode(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, char a6, int a7)
{
  result = MEOWSVDDistanceEncoder::AddCutPoint(a1, a2, a3, a7);
  if (result)
  {
    if (*(a1 + 436))
    {
      v11 = 0;
      v12 = *(a1 + 4) >> 1;
      v54 = v12;
      v55 = a4 + 12 * ((6 - *(a1 + 436)) / 2);
      if (a3)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      v60 = *(a1 + 4) >> 1;
      v52 = 4 * v12;
      v53 = v13;
      do
      {
        v14 = (v55 + 12 * v11);
        v15 = *(a1 + 4);
        v16 = v14[1];
        if (v15 >= v16)
        {
          v17 = v14[1];
        }

        else
        {
          v17 = *(a1 + 4);
        }

        if (v15 >= v14[4])
        {
          v18 = v14[4];
        }

        else
        {
          v18 = *(a1 + 4);
        }

        v19 = *(a1 + 32);
        SLML::Vector<float>::push_back((a1 + 32), 0.0);
        v20 = *(a1 + 4) + v19;
        if (*(*(a1 + 40) + 12) < v20)
        {
          v21 = (*(a1 + 4) + v19);
          SLML::Vector<float>::ResizeStorage();
        }

        v22 = v17 >> 1;
        v58 = v18 >> 1;
        v59 = v17 - (v17 >> 1);
        *(a1 + 32) = v20;
        v23 = (*(a1 + 48) + 4 * *(a1 + 36) * v19);
        v24 = v60 - v59;
        bzero(v23, 4 * v24);
        v25 = &v23[4 * v24];
        v26 = a5 + 2 * *v14;
        if (a6)
        {
          if (v17 != v22)
          {
            v27 = (v26 + 2 * v22);
            if (v16 >= v15)
            {
              v28 = v15;
            }

            else
            {
              v28 = v16;
            }

            v29 = 2 * v28 - 2 * v22;
            v30 = v25;
            do
            {
              v31 = *v27++;
              *v30++ = v31;
              v29 -= 2;
            }

            while (v29);
          }

          v32 = v18 >> 1;
          if (v18 >= 2)
          {
            v33 = (a5 + 2 * v14[3]);
            v34 = &v23[4 * v54];
            v35 = 2 * v58;
            do
            {
              v36 = *v33++;
              *v34++ = v36;
              v35 -= 2;
            }

            while (v35);
          }
        }

        else
        {
          if (v17 != v22)
          {
            v37 = (v26 + 2 * v22);
            if (v16 >= v15)
            {
              v38 = v15;
            }

            else
            {
              v38 = v16;
            }

            v39 = 2 * v38 - 2 * v22;
            v40 = v25;
            do
            {
              v41 = *v37++;
              *v40++ = (bswap32(v41) >> 16);
              v39 -= 2;
            }

            while (v39);
          }

          v32 = v18 >> 1;
          if (v18 >= 2)
          {
            v42 = (a5 + 2 * v14[3]);
            v43 = &v23[4 * v54];
            v44 = 2 * v58;
            do
            {
              v45 = *v42++;
              *v43++ = (bswap32(v45) >> 16);
              v44 -= 2;
            }

            while (v44);
          }
        }

        bzero(&v23[4 * *(a1 + 4) + -4 * (v60 - (v18 >> 1))], 4 * (v60 - (v18 >> 1)));
        v46 = sqrtf(cblas_sdot(v59 + v32, v25, 1, v25, 1) / (v59 + v32));
        cblas_sscal(v59 + v32, 1.0 / v46, v25, 1);
        result = SLML::Vector<float>::push_back((a1 + 80), v46);
        v47 = *(a1 + 436);
        if (v11 == v47 >> 1)
        {
          v48 = *(a1 + 56);
          SLML::Vector<float>::push_back((a1 + 56), 0.0);
          if (*(*(a1 + 64) + 12) < v48 + v60)
          {
            SLML::Vector<float>::ResizeStorage();
          }

          *(a1 + 56) = v48 + v60;
          result = memcpy((*(a1 + 72) + 4 * *(a1 + 60) * v48), &v23[4 * v53], v52);
          v47 = *(a1 + 436);
        }

        ++v11;
        if (v59 <= v32)
        {
          v49 = v32;
        }

        else
        {
          v49 = v59;
        }

        if (*(a1 + 432) <= 2 * v49)
        {
          v50 = 2 * v49;
        }

        else
        {
          v50 = *(a1 + 432);
        }

        *(a1 + 432) = v50;
      }

      while (v11 < v47);
    }
  }

  else
  {
    v51 = *MEMORY[0x277D85DF8];

    return fwrite("Duplicate cutpoint, omitted\n", 0x1CuLL, 1uLL, v51);
  }

  return result;
}

int *SLML::Vector<float>::push_back(int *result, float a2)
{
  v2 = *result;
  if (*result == *(*(result + 1) + 12))
  {
    SLML::Vector<float>::ResizeStorage();
  }

  v3 = *(result + 2);
  *result = v2 + 1;
  *(v3 + 4 * v2) = a2;
  return result;
}

unint64_t MEOWCutPointTree::FindInPage(MEOWCutPointTree *this, unsigned int *a2, _DWORD *a3, unint64_t a4, BOOL *a5)
{
  if (a4)
  {
    v5 = 0;
    v6 = *a2;
    do
    {
      result = (a4 + v5) >> 1;
      v8 = a3[4 * result];
      if (v8 >= v6)
      {
        if (v8 <= v6)
        {
          v9 = 1;
          goto LABEL_11;
        }

        a4 = (a4 + v5) >> 1;
      }

      else
      {
        v5 = result + 1;
      }
    }

    while (v5 < a4);
    v9 = 0;
    result = v5;
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_11:
  *a5 = v9;
  return result;
}

void MEOWSVDDistanceEncoder::ComputeDistances(MEOWSVDDistanceEncoder *this, __sFILE *a2)
{
  v2 = *(this + 60);
  if (v2)
  {
    v3 = *(this + 428);
    if (v3 <= 0x31)
    {
      v4 = 0;
      v5 = (53 - v3) & 0xFFFFFFFFFFFFFFFCLL;
      v6 = vdupq_n_s64(49 - v3);
      v7 = (this + 2 * v3 + 334);
      do
      {
        v8 = vdupq_n_s64(v4);
        v9 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_257B895F0)));
        if (vuzp1_s16(v9, *v6.i8).u8[0])
        {
          *(v7 - 3) = v2;
        }

        if (vuzp1_s16(v9, *&v6).i8[2])
        {
          *(v7 - 2) = v2;
        }

        if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v8, xmmword_257B895E0)))).i32[1])
        {
          *(v7 - 1) = v2;
          *v7 = v2;
        }

        v4 += 4;
        v7 += 4;
      }

      while (v5 != v4);
      *(this + 428) = 50;
    }
  }

  else
  {
    *(this + 14) = 0u;
    *(this + 412) = 0u;
    *(this + 24) = 0u;
    *(this + 25) = 0u;
    *(this + 22) = 0u;
    *(this + 23) = 0u;
    *(this + 20) = 0u;
    *(this + 21) = 0u;
    *(this + 18) = 0u;
    *(this + 19) = 0u;
    *(this + 16) = 0u;
    *(this + 17) = 0u;
    *(this + 15) = 0u;
  }

  v10 = (*(this + 108) + 3) & 0xFFFFFFFC;
  *(this + 108) = v10;
  v11 = *(this + 1);
  __m = *(this + 8) / v11;
  __n = v11;
  __lda = (__m + 3) & 0xFFFFFFFC;
  v12 = *(this + 218);
  SLML::Vector<float>::Vector(&v13, __lda * v10);
}

void sub_257B3BFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  MEMORY[0x259C6DA90](v33, 0x1080C400B0AA978);
  SLML::Storage<float>::RemoveReference(a30);
  SLML::Storage<float>::RemoveReference(a33);
  SLML::Storage<float>::RemoveReference(*(v34 - 152));
  SLML::Storage<float>::RemoveReference(*(v34 - 120));
  _Unwind_Resume(a1);
}

float *scale_norm(float *result, float *a2, uint64_t a3, const float *a4)
{
  v4 = 0;
  v5 = 0.0;
  v6 = result;
  do
  {
    v7 = *(a3 + v4) * *v6;
    *v6 = v7;
    v5 = v5 + (v7 * v7);
    v6 += a2;
    v4 += 4;
  }

  while (v4 != 20);
  v8 = 1.0 / sqrtf(v5);
  if (*result < 0.0)
  {
    v8 = -v8;
  }

  v9 = 5;
  do
  {
    *result = v8 * *result;
    result += a2;
    --v9;
  }

  while (v9);
  return result;
}

unsigned __int16 *MEOWSVDDistanceEncoder::UnpackCookie(unsigned __int16 *result, float *a2)
{
  *a2 = (bswap32(*result) >> 16);
  v2 = a2 + 6;
  v3 = 1;
  v4 = 6;
  do
  {
    *(v2 - 5) = bswap32(*&result[v4]);
    *v2++ = (bswap32(result[v3++]) >> 16) / 32767.0;
    v4 += 2;
  }

  while (v3 != 6);
  return result;
}

double MEOWDistPrecompute::AddCandidates(void *a1, int a2, unsigned int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  LODWORD(v25[0]) = a4;
  v9 = a1 + 19968;
  v10 = a1[20052];
  *(&v25[0] + 1) = v10;
  v11 = (a6 + 4);
  v12 = 16;
  v13 = (a6 + 4);
  do
  {
    v15 = *v13;
    v13 += 4;
    v14 = v15;
    *(v25 + v12) = v15;
    MEOWVectorBase::Append(a1 + 20050);
    v16 = v9[82];
    *(v16 + 2 * v9[84] - 2) = 0;
    v17 = v10 + v15;
    if (v9[85] < (v10 + v15))
    {
      MEOWVectorBase::Allocate((a1 + 20050), v10 + v14, 1);
      v16 = a1[20050];
    }

    v9[84] = v17;
    memcpy((v16 + 2 * v10), (a7 + 2 * *(v11 - 1)), 2 * v14);
    v12 += 2;
    v11 = v13;
    v10 += v14;
  }

  while (v12 != 28);
  if (a5)
  {
    v18 = &a1[200 * a2 + 4 * a3];
  }

  else
  {
    v18 = &a1[200 * a2 + 10000 + 4 * a3];
  }

  MEOWVectorBase::Append(v18);
  v19 = *v18 + 32 * v18[2];
  result = *v25;
  v21 = v25[1];
  *(v19 - 32) = v25[0];
  *(v19 - 16) = v21;
  return result;
}

void MEOWDistPrecompute::GetInfo(uint64_t a1, MEOWPhon *this, MEOWPhon *a3, int a4, _WORD *a5, _WORD *a6)
{
  v8 = a3;
  v9 = (a1 + 1600 * this + 32 * a3);
  v10 = v9[2];
  if (v10)
  {
    v12 = 0;
    v13 = this;
    v14 = *v9;
    while (1)
    {
      v15 = *v14;
      v14 += 8;
      if (v15 == a4)
      {
        break;
      }

      v12 += 56;
      v10 = (v10 - 1);
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v19 = a1 + 160000;
    v20 = *(a1 + 160000 + 8 * this);
    v21 = *v20 + 56 * *(v20 + 2 * a3 + 134) + v12;
    v25 = *(v21 + 8);
    v26 = *(v21 + 12);
    v27 = *(v21 + 28);
    v28 = *(v21 + 32);
    v29 = *(v21 + 48);
    v30 = vrev32_s8(*(v20 + 236));
    v31 = *v21 | 0x80000000;
    MEOWDistPrecompute::CookieToInfo(a1, &v25, a5);
    v22 = *(v19 + 8 * v8);
    v23 = *v22 + 56 * *(v22 + 2 * v13 + 32) + v12;
    v25 = *(v23 + 8);
    v26 = *(v23 + 12);
    v27 = *(v23 + 28);
    v28 = *(v23 + 32);
    v29 = *(v23 + 48);
    v30 = vrev32_s8(*(v22 + 236));
    v31 = *v23 | 0x80000000;
    MEOWDistPrecompute::CookieToInfo(v24, &v25, a6);
  }

  else
  {
LABEL_5:
    v16 = *MEMORY[0x277D85DF8];
    v17 = MEOWPhon::Name(this);
    v18 = MEOWPhon::Name(a3);
    fprintf(v16, "Didn't find %s-%s %d\n", v17, v18, a4);
  }
}

uint64_t *MEOWDistPrecompGetNorm(void *a1, __n128 a2)
{
  v3 = 0;
  v4 = sMEOWDistPrecompute + 160000;
  do
  {
    result = MEOWSVDDistances::ComputeNorm(*(v4 + 8 * v3++), a1++, a2);
  }

  while (v3 != 50);
  return result;
}

uint64_t *MEOWDistPrecompute::GetNorm(uint64_t a1, void *a2, __n128 a3)
{
  v4 = 0;
  v5 = a1 + 160000;
  do
  {
    result = MEOWSVDDistances::ComputeNorm(*(v5 + 8 * v4++), a2++, a3);
  }

  while (v4 != 50);
  return result;
}

uint64_t MEOWDistPrecompEnd()
{
  result = sMEOWDistPrecompute;
  if (sMEOWDistPrecompute)
  {
    MEOWDistPrecompute::~MEOWDistPrecompute(sMEOWDistPrecompute);

    JUMPOUT(0x259C6DA90);
  }

  return result;
}

void MEOWDistPrecompute::MEOWDistPrecompute(MEOWDistPrecompute *this)
{
  for (i = 0; i != 80000; i += 32)
  {
    MEOWVectorBase::MEOWVectorBase((this + i), 32);
  }

  v3 = 0;
  v4 = this + 79968;
  do
  {
    MEOWVectorBase::MEOWVectorBase((v4 + 32), 32);
    v3 -= 32;
    v4 = v5;
  }

  while (v3 != -80000);
  MEOWVectorBase::MEOWVectorBase((this + 160400), 2);
  *(this + 10023) = 0u;
  *(this + 10024) = 0u;
  *(this + 10021) = 0u;
  *(this + 10022) = 0u;
  *(this + 10019) = 0u;
  *(this + 10020) = 0u;
  *(this + 10017) = 0u;
  *(this + 10018) = 0u;
  *(this + 10015) = 0u;
  *(this + 10016) = 0u;
  *(this + 10013) = 0u;
  *(this + 10014) = 0u;
  *(this + 10011) = 0u;
  *(this + 10012) = 0u;
  *(this + 10009) = 0u;
  *(this + 10010) = 0u;
  *(this + 10007) = 0u;
  *(this + 10008) = 0u;
  *(this + 10005) = 0u;
  *(this + 10006) = 0u;
  *(this + 10003) = 0u;
  *(this + 10004) = 0u;
  *(this + 10001) = 0u;
  *(this + 10002) = 0u;
  *(this + 10000) = 0u;
}

void sub_257B3C7A4(_Unwind_Exception *a1)
{
  v4 = (v1 + 159968);
  v5 = -80000;
  do
  {
    MEOWVectorBase::~MEOWVectorBase(v4);
    v4 = (v6 - 32);
    v5 += 32;
  }

  while (v5);
  v7 = (v1 + 79968);
  do
  {
    MEOWVectorBase::~MEOWVectorBase(v7);
    v7 = (v8 - 32);
    v2 += 32;
  }

  while (v2);
  _Unwind_Resume(a1);
}

void MEOWDistPrecompute::~MEOWDistPrecompute(void **this)
{
  v2 = 0;
  v3 = (this + 20000);
  do
  {
    v4 = *&v3[v2];
    if (v4)
    {
      MEOWVectorBase::~MEOWVectorBase(v4);
      MEMORY[0x259C6DA90]();
    }

    v2 += 8;
  }

  while (v2 != 400);
  v5 = -80000;
  MEOWVectorBase::~MEOWVectorBase(this + 20050);
  v6 = this + 19996;
  v7 = -80000;
  do
  {
    MEOWVectorBase::~MEOWVectorBase(v6);
    v6 = (v8 - 32);
    v7 += 32;
  }

  while (v7);
  v9 = this + 9996;
  do
  {
    MEOWVectorBase::~MEOWVectorBase(v9);
    v9 = (v10 - 32);
    v5 += 32;
  }

  while (v5);
}

size_t MEOWDistPrecompute::Encode(size_t result, uint64_t a2, void *a3, unsigned int a4, int a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3[2])
  {
    v9 = result;
    v10 = 0;
    v11 = 16;
    do
    {
      v12 = 0;
      v13 = *(*a3 + 32 * v10 + 8);
      v14 = (*a3 + v11);
      do
      {
        v15 = *v14++;
        v16 = &v18[v12];
        *v16 = v13;
        v16[1] = v15;
        v13 += v15;
        v12 += 12;
      }

      while (v12 != 72);
      result = MEOWSVDDistanceEncoder::Encode(a2, a4, a5, v18, *(v9 + 160400), 1, v13);
      ++v10;
      v11 += 32;
    }

    while (v10 < a3[2]);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void MEOWDistPrecompute::CookieToInfo(uint64_t a1, float *a2, _WORD *a3)
{
  v4 = *a2;
  v3 = a2 + 6;
  *a3 = __rev16(v4);
  v5 = 1;
  v6 = 6;
  do
  {
    *&a3[v6] = bswap32(*(v3 - 5));
    v7 = *v3++;
    a3[v5++] = bswap32((v7 * 32767.0)) >> 16;
    v6 += 2;
  }

  while (v5 != 6);
}

void MEOWCutPointTree::~MEOWCutPointTree(MEOWCutPointTree *this)
{
  MEOWTreeBase::~MEOWTreeBase(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t SLML::Storage<float>::RemoveReference(uint64_t result)
{
  v1 = *(result + 4) - 1;
  *(result + 4) = v1;
  if (result && !v1)
  {
    if (*result == 1)
    {
      v2 = *(result + 16);
      if (v2)
      {
        MEMORY[0x259C6DA70](v2, 0x1000C8052888210);
      }
    }

    JUMPOUT(0x259C6DA90);
  }

  return result;
}

MEOWVectorBase *MEOWPath::MEOWPath(MEOWVectorBase *a1, int *a2)
{
  MEOWVectorBase::MEOWVectorBase(a1, 8, *a2);
  v4 = *a2;
  if (v4 >= 1)
  {
    v5 = *(a2 + 2);
    v6 = (*a1 + 4);
    v7 = 4 * a2[1];
    do
    {
      *(v6 - 1) = *v5;
      *v6 = -1;
      v6 += 4;
      v5 = (v5 + v7);
      --v4;
    }

    while (v4);
  }

  MEOWPath::SortNodes(a1);
  return a1;
}

uint64_t *MEOWPath::SortNodes(uint64_t *this)
{
  *(this + 8) = 0;
  v1 = *this;
  *(*this + 6) = -1;
  v2 = this[2];
  if (v2 >= 2)
  {
    v3 = 0;
    for (i = 1; i != v2; ++i)
    {
      v5 = v1 + 8 * i;
      v6 = v3;
      if (*v5 <= *(v1 + 8 * v3))
      {
        *(v5 + 6) = v3;
        *(this + 8) = i;
        v3 = i;
      }

      else
      {
        do
        {
          v7 = v1 + 8 * v6;
          v9 = *(v7 + 6);
          v8 = (v7 + 6);
          v6 = v9;
        }

        while ((v9 & 0x80000000) == 0 && *v5 > *(v1 + 8 * v6));
        *(v5 + 6) = v6;
        *v8 = i;
      }
    }
  }

  return this;
}

MEOWVectorBase *MEOWPath::MEOWPath(MEOWVectorBase *a1, uint64_t a2, uint64_t a3, void *a4, int *a5, float a6)
{
  MEOWVectorBase::MEOWVectorBase(a1, 8, *a5);
  if (*a5 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = *a4 + 60 * v11;
      v13 = *(a2 + 32);
      if ((MTBEDebugFlags::sMEOWDebug & 0x200) != 0)
      {
        SLML::Vector<float>::Vector(&v24, *(a3 + 16));
      }

      v14 = 3.4028e38;
      if ((v13 & 0x80000000) == 0)
      {
        v15 = *(a2 + 32);
        do
        {
          v16 = *a2 + 8 * v15;
          if (*v16 >= v14)
          {
            break;
          }

          v18 = v15;
          v17 = *v16;
          v19 = v17 + (MEOWDistance(*a3 + 60 * v15, v12) * a6);
          if (v19 < v14)
          {
            LOWORD(v13) = v18;
            v14 = v19;
          }

          v15 = *(v16 + 6);
        }

        while ((v15 & 0x80000000) == 0);
      }

      v20 = *a5;
      v21 = *a1 + 8 * v11;
      *v21 = v14 + *(*(a5 + 2) + 4 * a5[1] * v11);
      *(v21 + 4) = v13;
      ++v11;
    }

    while (v11 < v20);
  }

  MEOWPath::SortNodes(a1);
  return a1;
}

void sub_257B3D070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  SLML::Storage<float>::RemoveReference(a12);
  MEOWVectorBase::~MEOWVectorBase(v12);
  _Unwind_Resume(a1);
}

uint64_t *MEOWPath::Force(uint64_t *this, int a2)
{
  v2 = this[2];
  if (v2 > a2)
  {
    *(this + 8) = a2;
    v3 = *this;
    v4 = *this + 8 * a2;
    *(v4 + 6) = -1;
    v5 = (v4 + 6);
    if (v2 >= 1)
    {
      v6 = 0;
      v7 = v2 & 0x7FFFFFFF;
      v8 = -1;
      do
      {
        if (a2 != v6)
        {
          *v3 = 2139095040;
          *(v3 + 6) = v8;
          v8 = v6;
          *v5 = v6;
        }

        ++v6;
        v3 += 8;
      }

      while (v7 != v6);
    }
  }

  return this;
}

uint64_t *MEOWPath::Veto(uint64_t *this, int a2)
{
  if (*(this + 4) > a2)
  {
    *(*this + 8 * a2) = 2139095040;
    return MEOWPath::SortNodes(this);
  }

  return this;
}

unint64_t std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,SLML::Vector<float>::iterator>(unint64_t result, float **a2, uint64_t a3)
{
  if (*a2 != *a3)
  {
    v52 = v3;
    v53 = v4;
    v7 = result;
    while (1)
    {
      result = SLML::operator-(a3, v7);
      if (result < 2)
      {
        return result;
      }

      if (result == 3)
      {
        v38 = *v7;
        v39 = *(v7 + 2);
        v40 = (*a3 - 4 * *(a3 + 8));
        *a3 = v40;
        v41 = v38[v39];
        v42 = *v38;
        v43 = *v40;
        if (v41 >= *v38)
        {
          if (v43 < v41)
          {
            v38[v39] = v43;
            *v40 = v41;
            v46 = v38[v39];
            v47 = *v38;
            if (v46 < *v38)
            {
              *v38 = v46;
              v38[v39] = v47;
            }
          }
        }

        else
        {
          if (v43 >= v41)
          {
            *v38 = v41;
            v38[v39] = v42;
            if (*v40 >= v42)
            {
              return result;
            }

            v38[v39] = *v40;
          }

          else
          {
            *v38 = v43;
          }

          *v40 = v42;
        }

        return result;
      }

      if (result == 2)
      {
        v44 = (*a3 - 4 * *(a3 + 8));
        *a3 = v44;
        v45 = **v7;
        if (*v44 < v45)
        {
          **v7 = *v44;
          *v44 = v45;
        }

        return result;
      }

      if (result <= 7)
      {
        v50 = *v7;
        v51 = *(v7 + 2);
        v48 = *a3;
        v49 = *(a3 + 8);
        return std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,SLML::Vector<float>::iterator>(&v50, &v48);
      }

      v8 = *v7;
      v9 = *(v7 + 2);
      v10 = &(*v7)[(v9 * (result >> 1))];
      v11 = *a3;
      v12 = *(a3 + 8);
      v13 = (*a3 - 4 * v12);
      v14 = *v10;
      v15 = **v7;
      v16 = *v13;
      if (*v10 < v15)
      {
        break;
      }

      if (v16 < v14)
      {
        *v10 = v16;
        *v13 = v14;
        v17 = *v8;
        if (*v10 < *v8)
        {
          *v8 = *v10;
          *v10 = v17;
        }

        goto LABEL_16;
      }

      v18 = 0;
LABEL_18:
      v19 = v9;
      v20 = *v8;
      v21 = &v8[v9];
      if (*v8 >= *v10)
      {
        result = v13;
        v22 = &v11[-2 * v12];
        while (v22 != v8)
        {
          v23 = *v22;
          result -= 4 * v12;
          v22 -= v12;
          if (v23 < *v10)
          {
            *v8 = v23;
            *result = v20;
            if (v18)
            {
              v18 = 2;
            }

            else
            {
              v18 = 1;
            }

            goto LABEL_26;
          }
        }

        v31 = 4 * v9;
        if (v20 >= *v13)
        {
          if (v21 == v13)
          {
            return result;
          }

          v32 = &v8[2 * v19];
          while (1)
          {
            v35 = *v21;
            if (v20 < *v21)
            {
              break;
            }

            v32 = (v32 + v31);
            v21 = (v21 + v31);
            if (v21 == v13)
            {
              return result;
            }
          }

          *v21 = *v13;
          *v13 = v35;
        }

        else
        {
          v32 = v21;
        }

        if (v32 != v13)
        {
          while (1)
          {
            v36 = *v8;
            while (1)
            {
              v37 = *v32;
              if (v36 < *v32)
              {
                break;
              }

              v32 = (v32 + v31);
            }

            do
            {
              v13 -= v12;
            }

            while (v36 < *v13);
            if (v32 >= v13)
            {
              break;
            }

            *v32 = *v13;
            *v13 = v37;
            v32 += v19;
          }

          if (*a2 >= v32)
          {
            *v7 = v32;
            goto LABEL_73;
          }
        }

        return result;
      }

      result = v13;
LABEL_26:
      if (v21 < result)
      {
        v24 = -4 * v12;
        while (1)
        {
          v25 = *v10;
          while (1)
          {
            v26 = *v21;
            if (*v21 >= v25)
            {
              break;
            }

            v21 += v9;
          }

          do
          {
            result += v24;
          }

          while (*result >= v25);
          if (v21 >= result)
          {
            break;
          }

          *v21 = *result;
          *result = v26;
          ++v18;
          if (v10 == v21)
          {
            v10 = result;
          }

          v21 += v9;
        }
      }

      if (v21 != v10)
      {
        v27 = *v21;
        if (*v10 < *v21)
        {
          *v21 = *v10;
          *v10 = v27;
          ++v18;
        }
      }

      v28 = *a2;
      if (*a2 == v21)
      {
        return result;
      }

      if (!v18)
      {
        if (v28 >= v21)
        {
          v33 = v9;
          v34 = v21;
          while (&v34[v33] != v11)
          {
            v30 = v34[v9] < *v34;
            v34 = (v34 + v33 * 4);
            if (v30)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
          v29 = v9;
          while (&v8[v29] != v21)
          {
            v30 = v8[v9] < *v8;
            v8 = (v8 + v29 * 4);
            if (v30)
            {
              goto LABEL_41;
            }
          }
        }

        return result;
      }

LABEL_41:
      if (v28 >= v21)
      {
        *v7 = &v21[v9];
      }

      else
      {
        *a3 = v21;
        *(a3 + 8) = v9;
      }

LABEL_73:
      if (*a2 == *a3)
      {
        return result;
      }
    }

    if (v16 >= v14)
    {
      *v8 = v14;
      *v10 = v15;
      if (*v13 >= v15)
      {
LABEL_16:
        v18 = 1;
        goto LABEL_18;
      }

      *v10 = *v13;
    }

    else
    {
      *v8 = v16;
    }

    *v13 = v15;
    goto LABEL_16;
  }

  return result;
}

uint64_t SLML::operator-(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 != v3)
  {
    SLML::Fatal("%s %d != %d", a2, "Stride", *(a1 + 8), v3);
  }

  return ((*a1 - *a2) >> 2) / v2;
}

uint64_t std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,SLML::Vector<float>::iterator>(uint64_t result, uint64_t a2)
{
  v2 = *a2 - 4 * *(a2 + 8);
  v3 = *result;
  if (*result != v2)
  {
    v4 = *(result + 8);
    v5 = 4 * v4;
    v6 = &v3[v4];
    do
    {
      v7 = &v3[v4];
      if (v3 != *a2 && v7 != *a2)
      {
        v9 = *v3;
        v10 = v6;
        v11 = *v3;
        v12 = *a2;
        v13 = v3;
        do
        {
          if (*v10 < v11)
          {
            v12 = *a2;
            v11 = *v10;
            v13 = v10;
          }

          v10 = (v10 + v5);
        }

        while (v10 != v12);
        if (v13 != v3)
        {
          *v3 = *v13;
          *v13 = v9;
        }
      }

      *result = v7;
      v6 = (v6 + v5);
      v3 += v4;
    }

    while (v7 != v2);
  }

  return result;
}

char *MEOWPhon::Name(MEOWPhon *this)
{
  if (this <= 0x31)
  {
    return MEOWPhon::sName[this];
  }

  v1 = MEOWPhon::Name(unsigned char)::sBuf;
  sprintf(MEOWPhon::Name(unsigned char)::sBuf, "BOGUS[%02x]", this);
  return v1;
}

void MEOWVectorBase::MEOWVectorBase(MEOWVectorBase *this, __int16 a2)
{
  *this = 0;
  *(this + 4) = a2;
  *(this + 10) = 1;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

{
  *this = 0;
  *(this + 4) = a2;
  *(this + 10) = 1;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void MEOWVectorBase::MEOWVectorBase(MEOWVectorBase *this, __int16 a2, unint64_t a3)
{
  *this = 0;
  *(this + 4) = a2;
  *(this + 10) = 1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (a3)
  {
    MEOWVectorBase::Allocate(this, a3, 1);
  }

  *(this + 2) = a3;
}

{
  *this = 0;
  *(this + 4) = a2;
  *(this + 10) = 1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (a3)
  {
    MEOWVectorBase::Allocate(this, a3, 1);
  }

  *(this + 2) = a3;
}

void MEOWVectorBase::MEOWVectorBase(MEOWVectorBase *this, const MEOWVectorBase *a2)
{
  *this = 0;
  *(this + 4) = *(a2 + 4);
  *(this + 10) = 1;
  v4 = *(a2 + 2);
  *(this + 2) = v4;
  MEOWVectorBase::Allocate(this, v4, 1);
  memcpy(*this, *a2, *(this + 2) * *(this + 4));
}

{
  *this = 0;
  *(this + 4) = *(a2 + 4);
  *(this + 10) = 1;
  v4 = *(a2 + 2);
  *(this + 2) = v4;
  MEOWVectorBase::Allocate(this, v4, 1);
  memcpy(*this, *a2, *(this + 2) * *(this + 4));
}

void *MEOWVectorBase::Allocate(MEOWVectorBase *this, unint64_t a2, char a3)
{
  v4 = 8;
  if (a2 >= 8)
  {
    v4 = (3 * a2) >> 1;
  }

  if (a3)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  if (*(this + 10) == 1)
  {
    v6 = *this;
    *(this + 3) = v5;
    result = malloc_type_realloc(v6, v5 * *(this + 4), 0x2E421C1AuLL);
    v8 = result;
  }

  else
  {
    v8 = malloc_type_malloc(v5 * *(this + 4), 0xD66628AEuLL);
    result = memcpy(v8, *this, *(this + 3) * *(this + 4));
    *(this + 10) = 1;
    *(this + 3) = v5;
  }

  *this = v8;
  return result;
}

void MEOWVectorBase::Map(void **this, void *a2, void *a3)
{
  if (*(this + 10) == 1)
  {
    free(*this);
  }

  *this = a2;
  *(this + 10) = 0;
  this[2] = a3;
  this[3] = a3;
}

void MEOWVectorBase::~MEOWVectorBase(void **this)
{
  if (*(this + 10) == 1)
  {
    free(*this);
  }
}

{
  if (*(this + 10) == 1)
  {
    free(*this);
  }
}

void *MEOWVectorBase::Append(MEOWVectorBase *this, const void *__src, uint64_t a3)
{
  v6 = *(this + 2);
  if ((v6 + a3) > *(this + 3))
  {
    MEOWVectorBase::Allocate(this, v6 + a3, 0);
    v6 = *(this + 2);
  }

  result = memcpy((*this + v6 * *(this + 4)), __src, *(this + 4) * a3);
  *(this + 2) += a3;
  return result;
}

uint64_t *MEOWVectorBase::Swap(uint64_t *this, MEOWVectorBase *a2)
{
  v2 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v2;
  v3 = *this;
  *this = *a2;
  *a2 = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

void MEOWVectorBase::clear(void **this)
{
  if (*(this + 10) == 1)
  {
    free(*this);
  }

  else
  {
    *(this + 10) = 1;
  }

  *this = 0;
  this[2] = 0;
  this[3] = 0;
}

void MEOWReader::MEOWReader(MEOWReader *this, int a2, unsigned __int16 *a3, char a4)
{
  v5 = this + 28672;
  *this = a2;
  *(this + 1901) = 0u;
  *(this + 3804) = a3;
  *(this + 30536) = a4;
  *(this + 15269) = bswap32(a3[2]) >> 16;
  *(this + 15270) = bswap32(a3[3]) >> 16;
  *(this + 1910) = 0u;
  ComputeSectionLengths(a3, (this + 30584));
  if (!v5[1864])
  {
    CreateMEOWSVDDistanceEncoder();
  }

  if (v5[1864] == 1)
  {
    MEOWReader::MEOWReader();
  }

  *(this + 1) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  bzero(this + 10416, 0x4E20uLL);
  v6 = *(this + 3804);
  v7 = v6[5];
  *(this + 3807) = v6 + bswap32(v6[4]);
  v8 = v6[6];
  *(this + 3808) = v6 + bswap32(v6[7]);
  *(this + 3809) = v6 + bswap32(v8);
  v9 = v6[3];
  v10 = (v6 + bswap32(v6[2]));
  *(this + 3805) = v10;
  v11 = v6 + bswap32(v9);
  *(this + 3806) = v11;
  *(this + 3810) = v6 + bswap32(v7);
  *(this + 3811) = v6 + bswap32(v6[8]);
  *(this + 1907) = 0u;
  v12 = *(v5 + 933);
  if ((v12 > 1 || v12 == 1 && *(v5 + 934) >= 5u) && (v13 = v6[9]) != 0)
  {
    v14 = v6 + bswap32(v13);
    *(this + 3812) = v14;
    v15 = *v14;
    if (*v14)
    {
      *(this + 3814) = v14;
      if (v12 >= 2)
      {
        if (v15 == 2)
        {
          v16 = *(v14 + 8);
          if (v16)
          {
            *(this + 3815) = &v14[bswap32(v16)];
          }
        }

        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    *(this + 3812) = 0;
  }

  if (v12 > 1)
  {
LABEL_19:
    *(this + 3813) = v6 + bswap32(v6[10]);
    *(this + 3829) = 0;
    *(this + 3830) = v11 + 10000;
    goto LABEL_20;
  }

  if (v12 != 1)
  {
    *(this + 3813) = 0;
    v18 = v11 + 10000;
    goto LABEL_24;
  }

LABEL_18:
  v17 = *(v5 + 934);
  if (v17 > 5)
  {
    goto LABEL_19;
  }

  *(this + 3813) = 0;
  v18 = v11 + 10000;
  if (v17 > 1)
  {
    *(this + 3829) = 0;
    *(this + 3830) = v18;
    if (v17 != 2)
    {
LABEL_20:
      operator new();
    }

LABEL_25:
    *(this + 3818) = 0;
    while (*(v10 + 2))
    {
      if (*(v10 + 2) == 1)
      {
        goto LABEL_30;
      }

      v10 += 2 * (bswap32(*v10) >> 16);
    }

    v10 = 0;
LABEL_30:
    *(this + 3816) = v10;
    if ((MTBEDebugFlags::sMEOWDebug & 0x1000) != 0)
    {
      operator new();
    }

    *(this + 3819) = 0;
    v19 = *(v5 + 933);
    if (v19 <= 1)
    {
      v20 = v19 == 1 && *(v5 + 934) > 5u;
    }

    else
    {
      v20 = 1;
    }

    MEOWPPReaderFactory::Create(v20);
  }

LABEL_24:
  *(this + 3829) = v18;
  *(this + 3830) = 0;
  goto LABEL_25;
}

uint64_t ComputeSectionLengths@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  *(a2 + 28) = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v2 = a2 + 2;
  v3 = *(result + 4);
  if (__rev16(v3) > 1)
  {
    goto LABEL_2;
  }

  v4 = result + 36;
  if (v3 != 256)
  {
    goto LABEL_7;
  }

  v5 = *(result + 6);
  if (__rev16(v5) < 5)
  {
    goto LABEL_7;
  }

  if (v5 == 1280)
  {
    v4 = result + 40;
  }

  else
  {
LABEL_2:
    v4 = result + 44;
  }

LABEL_7:
  v6 = (result + 8);
  do
  {
    v7 = bswap32(*v6);
    v8 = -1;
    v9 = (result + 8);
    do
    {
      v10 = *v9++;
      v11 = bswap32(v10);
      v12 = v11 - v7;
      if (v11 - v7 >= v8)
      {
        v12 = v8;
      }

      if (v11 > v7)
      {
        v8 = v12;
      }
    }

    while (v9 < v4);
    ++v6;
    *v2++ = bswap32(v8);
  }

  while (v6 < v4);
  return result;
}

unsigned __int16 *MEOWReader::GetGlobalParams(MEOWReader *this, int a2)
{
  for (result = *(this + 3805); *(result + 2); result += 2 * (bswap32(*result) >> 16))
  {
    if (*(result + 2) == a2)
    {
      return result;
    }
  }

  return 0;
}

void MEOWReader::ComputeDemiListSize(MEOWReader *this)
{
  MEOWVectorBase::MEOWVectorBase(v21, 4, 0x9C5uLL);
  v2 = *(this + 3806);
  v3 = -10000;
  v4 = v21[0];
  do
  {
    *&v4[v3 + 10000] = bswap32(*(v2 + v3 + 10000));
    v3 += 4;
  }

  while (v3);
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v5 = 0;
  v6 = v21[0];
  *(v21[0] + 2500) = bswap32(*(this + 7650));
  v7 = *(this + 3806);
  do
  {
    for (i = 0; i != 50; ++i)
    {
      v9 = bswap32(*(v7 + 200 * v5 + 4 * i));
      v10 = v6;
      v11 = 2500;
      do
      {
        v12 = v11 >> 1;
        v13 = &v10[v11 >> 1];
        v15 = *v13;
        v14 = (v13 + 1);
        v11 += ~(v11 >> 1);
        if (v15 < v9)
        {
          v10 = v14;
        }

        else
        {
          v11 = v12;
        }
      }

      while (v11);
      v17 = *v10;
      v16 = v10[1];
      if (v16 == *v10)
      {
        v18 = *(this + 3829);
        if (v18)
        {
          v19 = *(v18 + 50 * v5 + i);
        }

        else
        {
          v19 = bswap32(*(*(this + 3830) + 100 * v5 + 2 * i)) >> 16;
        }

        v17 = v10[1];
        if (v19)
        {
          v20 = v10 + 2;
          do
          {
            v17 = *(v20 - 1);
            v16 = *v20++;
          }

          while (v16 == v17);
        }
      }

      *(this + 50 * v5 + i + 104) = v16 - v17;
    }

    ++v5;
  }

  while (v5 != 50);
  MEOWVectorBase::~MEOWVectorBase(v21);
}