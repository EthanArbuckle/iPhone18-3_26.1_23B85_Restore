void MT3BSegmentProducer::MT3BSegmentProducer(uint64_t a1, uint64_t a2, MT3BSegmentProducer *this, __int16 *a4)
{
  *a1 = &unk_2868F4518;
  *(a1 + 8) = a2;
  *(a1 + 16) = this;
  *(a1 + 24) = a4;
  *(a1 + 88) = 0;
  *(a1 + 96) = 28927;
  *(a1 + 98) = 0;
  *(a1 + 104) = 0;
  *(a1 + 282) = 4096;
  v5 = 1374389535 * (a4[6] << 13);
  *(a1 + 280) = (v5 >> 37) + (v5 >> 63);
  v6 = &MT3BSegmentProducer::sHPNoise;
  if (a4[30] == 1)
  {
    v6 = &MT3BSegmentProducer::sNoiseWave;
  }

  if (a4[30])
  {
    v7 = v6;
  }

  else
  {
    v7 = &MT3BSegmentProducer::sBandNoise;
  }

  *(a1 + 296) = v7;
  *(a1 + 116) = 0;
  *(a1 + 132) = 0;
  *(a1 + 114) = 0;
  v8 = a4[8];
  if (v8 >= 801)
  {
    v8 = MTBEParam::HzToPitch(this, a4[8]);
    this = *(a1 + 16);
    a4 = *(a1 + 24);
  }

  v9 = MTBEParam::HzToPitch(this, a4[10]);
  v10 = MTBEParam::HzToPitch(*(a1 + 16), *(*(a1 + 24) + 24));
  v11 = MTBEParam::HzToPitch(*(a1 + 16), 0x125Cu);
  v12 = MTBEParam::HzToPitch(*(a1 + 16), *(*(a1 + 24) + 32));
  *(a1 + 276) = v12;
  v13 = *(a1 + 24);
  v14 = v13[9];
  if (v14 >= 1225)
  {
    v14 = 1225;
  }

  if (v14 <= 50)
  {
    v15 = 50;
  }

  else
  {
    v15 = v14;
  }

  if (v8 <= 256)
  {
    v16 = 256;
  }

  else
  {
    v16 = v8;
  }

  v17 = (v15 - 50) / 5u;
  v18 = sCcoeffTbl[v17];
  *(a1 + 220) = v18;
  v19 = sBcoeffTbl[v17] * sCosTbl[v16 - 256];
  *(a1 + 218) = v19 >> 12;
  *(a1 + 216) = 0x2000 - (v18 + (v19 >> 12));
  v20 = v13[11];
  if (v20 >= 1225)
  {
    v20 = 1225;
  }

  if (v20 <= 50)
  {
    LOWORD(v20) = 50;
  }

  if (v9 <= 256)
  {
    v21 = 256;
  }

  else
  {
    v21 = v9;
  }

  v22 = (v20 - 50) / 5u;
  v23 = sCcoeffTbl[v22];
  *(a1 + 238) = v23;
  v24 = sBcoeffTbl[v22] * sCosTbl[v21 - 256];
  *(a1 + 236) = v24 >> 12;
  *(a1 + 234) = (3200 * (0x2000 - (v23 + (v24 >> 12)))) >> 13;
  v25 = v13[13];
  if (v25 >= 1225)
  {
    v25 = 1225;
  }

  if (v25 <= 50)
  {
    LOWORD(v25) = 50;
  }

  if (v10 <= 256)
  {
    v26 = 256;
  }

  else
  {
    v26 = v10;
  }

  v27 = (v25 - 50) / 5u;
  v28 = sCcoeffTbl[v27];
  *(a1 + 226) = v28;
  v29 = sBcoeffTbl[v27] * sCosTbl[v26 - 256];
  *(a1 + 224) = v29 >> 12;
  *(a1 + 222) = (3200 * (0x2000 - (v28 + (v29 >> 12)))) >> 13;
  v30 = v13[15];
  if (v30 >= 1225)
  {
    v30 = 1225;
  }

  if (v30 <= 50)
  {
    LOWORD(v30) = 50;
  }

  if (v11 <= 256)
  {
    v31 = 256;
  }

  else
  {
    v31 = v11;
  }

  v32 = (v30 - 50) / 5u;
  v33 = sCcoeffTbl[v32];
  *(a1 + 232) = v33;
  v34 = sBcoeffTbl[v32] * sCosTbl[v31 - 256];
  *(a1 + 230) = v34 >> 12;
  *(a1 + 228) = (3200 * (0x2000 - (v33 + (v34 >> 12)))) >> 13;
  if (v13[18] >= 1225)
  {
    v35 = 1225;
  }

  else
  {
    v35 = v13[18];
  }

  if (v35 <= 50)
  {
    LOWORD(v35) = 50;
  }

  v36 = (v35 - 50) / 5u;
  v37 = sCcoeffTbl[v36];
  if (v12 <= 256)
  {
    v38 = 256;
  }

  else
  {
    v38 = v12;
  }

  *(a1 + 250) = v37;
  v39 = sBcoeffTbl[v36] * sCosTbl[v38 - 256];
  *(a1 + 248) = v39 >> 12;
  *(a1 + 246) = 0x2000 - (v37 + (v39 >> 12));
  *(a1 + 268) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 266) = (3200 * *(a1 + 280)) >> 13;
  *(a1 + 140) = 0;
  *(a1 + 288) = 0;
  v40 = 1374389535 * (v13[156] << 13);
  *(a1 + 278) = (v40 >> 37) + (v40 >> 63);
  v41 = v13[155];
  *(a1 + 284) = v41;
  if (v41 > 100)
  {
    v41 = 100;
LABEL_49:
    *(a1 + 284) = v41;
    goto LABEL_50;
  }

  if (v41 <= 9)
  {
    v41 = 10;
    goto LABEL_49;
  }

LABEL_50:
  v42 = (v41 << 16) / 100;
  *(a1 + 284) = v42;
  *(a1 + 304) = (2318 * v42) >> 16;
  *(a1 + 306) = (2909 * v42) >> 16;
  *(a1 + 308) = (3723 * v42) >> 16;
  v42 >>= 4;
  *(a1 + 310) = v42;
  *(a1 + 274) = v42;
  *(a1 + 272) = 0;
  bzero((a1 + 320), 0x2000uLL);
}

void MT3BSegmentProducer::CalcPoleCoefficients(MT3BSegmentProducer *this, int a2, int a3, __int16 *a4, __int16 *a5, __int16 *a6)
{
  if (a3 >= 1225)
  {
    v6 = 1225;
  }

  else
  {
    v6 = a3;
  }

  if (v6 <= 50)
  {
    LOWORD(v6) = 50;
  }

  if (a2 <= 256)
  {
    v7 = 256;
  }

  else
  {
    v7 = a2;
  }

  v8 = (v6 - 50) / 5u;
  *a6 = sCcoeffTbl[v8];
  v9 = sBcoeffTbl[v8] * sCosTbl[v7 - 256];
  *a5 = v9 >> 12;
  *a4 = 0x2000 - (*a6 + (v9 >> 12));
}

void MT3BSegmentProducer::~MT3BSegmentProducer(MT3BSegmentProducer *this)
{
  *this = &unk_2868F4518;
  v2 = *(this + 11);
  if (v2)
  {
    if ((*v2)-- == 1)
    {
      MEMORY[0x259C6DA90]();
    }
  }

  MTMBProducerComponent::~MTMBProducerComponent(this);
}

{
  MT3BSegmentProducer::~MT3BSegmentProducer(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MT3BSegmentProducer::NextSegment(MT3BSegmentProducer *this, MTMBSegment *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = *(this + 96);
  if (v3 > 0)
  {
LABEL_2:
    v4 = *(this + 16);
    v59 = *(this + 34);
    v65 = *(this + 18);
    v67 = *(this + 19);
    v5 = *(this + 20);
    v6 = *(this + 21);
    v7 = *(this + 22);
    v8 = *(this + 23);
    v69 = *(this + 24);
    v71 = *(this + 25);
    v75 = *(this + 26);
    v76 = *(this + 27);
    v74 = *(this + 28);
    v63 = *(this + 29);
    v9 = *(this + 30);
    v10 = *(this + 31);
    v73 = *(this + 32);
    v58 = *(this + 9);
    v60 = *(this + 10);
    Frame = MTFEFrameFiller::FillNextFrame(*(this + 1), this + 32);
    *(this + 96) = Frame;
    if (!Frame || *(this + 34))
    {
      *(this + 141) |= *(this + 104) << 7;
      *(this + 104) = *(*(this + 1) + 80);
    }

    if (v59)
    {
      v12 = *(this + 11);
      if (v12)
      {
        if ((*v12)-- == 1)
        {
          MEMORY[0x259C6DA90]();
        }
      }

      operator new();
    }

    if (!*(this + 53) && !*(this + 55))
    {
      *(this + 29) = 0;
      *(this + 30) = 0;
      *(this + 148) = 0;
      *(this + 140) = 0;
      *(this + 39) = 0;
      *(this + 180) = 0;
      *(this + 47) = 0;
    }

    v77 = *(this + 139);
    v15 = *(this + 3);
    v16 = v15[23] + v5;
    v17 = v16;
    *(this + 96) = v16;
    v18 = v15[24] + v6;
    v19 = v18;
    *(this + 97) = v18;
    v20 = v15[25] + v7;
    v21 = v20;
    *(this + 98) = v20;
    v22 = v9;
    if (v9 >= 1225)
    {
      v22 = 1225;
    }

    if (v22 <= 50)
    {
      LOWORD(v22) = 50;
    }

    if (v17 <= 256)
    {
      v17 = 256;
    }

    v23 = (v22 - 50) / 5u;
    v24 = sCcoeffTbl[v23];
    *(this + 101) = v24;
    v25 = sBcoeffTbl[v23] * sCosTbl[v17 - 256];
    *(this + 100) = v25 >> 12;
    *(this + 99) = 0x2000 - (v24 + (v25 >> 12));
    v26 = v10;
    if (v10 >= 1225)
    {
      v26 = 1225;
    }

    if (v26 <= 50)
    {
      LOWORD(v26) = 50;
    }

    if (v19 <= 256)
    {
      v27 = 256;
    }

    else
    {
      v27 = v19;
    }

    v28 = (v26 - 50) / 5u;
    v29 = sCcoeffTbl[v28];
    *(this + 104) = sCcoeffTbl[v28];
    v30 = (sBcoeffTbl[v28] * sCosTbl[v27 - 256]) >> 12;
    *(this + 103) = v30;
    *(this + 102) = 0x2000 - (v29 + v30);
    v31 = v73;
    if (v73 >= 1225)
    {
      v31 = 1225;
    }

    if (v31 <= 50)
    {
      LOWORD(v31) = 50;
    }

    v32 = (v31 - 50) / 5u;
    v33 = sCcoeffTbl[v32];
    if (v21 <= 256)
    {
      v21 = 256;
    }

    *(this + 107) = v33;
    v34 = (sBcoeffTbl[v32] * sCosTbl[v21 - 256]) >> 12;
    *(this + 106) = v34;
    *(this + 105) = 0x2000 - (v33 + v34);
    v35 = v15[148] + v74;
    v36 = *(this + 138);
    v37 = v15[18];
    if (v37 >= 1225)
    {
      v37 = 1225;
    }

    v38 = (((1717986919 * (v37 - 50)) >> 33) + ((1717986919 * (v37 - 50)) >> 63));
    v39 = sCcoeffTbl[v38];
    *(this + 122) = -v39;
    LODWORD(v38) = sBcoeffTbl[v38] * sCosTbl[v35 - 256];
    *(this + 121) = -(v38 >> 12);
    *(this + 120) = 0x2000 - (v39 + (v38 >> 12));
    v40 = *(this + 123);
    *(this + 54) = v65 << 8;
    v41 = v67 << 8;
    *(this + 55) = v67 << 8;
    *(this + 56) = v63 << 8;
    if (v8)
    {
      v42 = v8 << 8;
      v68 = ((0x2000 - (v29 + v30)) * (v8 << 8)) >> 13;
    }

    else
    {
      v42 = 0;
      v68 = 0;
      *(this + 42) = 0;
    }

    v43 = a2;
    *(this + 126) = v42;
    v44 = v69;
    if (v69)
    {
      v44 = v69 << 8;
      v66 = ((0x2000 - (v33 + v34)) * (v69 << 8)) >> 13;
    }

    else
    {
      v66 = 0;
      *(this + 43) = 0;
    }

    *(this + 127) = v44;
    if (!v71 || v41)
    {
      v45 = 0;
      v64 = 0;
      *(this + 44) = 0;
    }

    else
    {
      v45 = v71 << 8;
      v64 = (*(this + 117) * (v71 << 8)) >> 13;
    }

    *(this + 128) = v45;
    if (v75)
    {
      v46 = v75 << 8;
      v62 = (*(this + 111) * (v75 << 8)) >> 13;
    }

    else
    {
      v46 = 0;
      v62 = 0;
      *(this + 40) = 0;
    }

    v47 = v4;
    *(this + 129) = v46;
    v48 = v76;
    if (v76)
    {
      v48 = v76 << 8;
      v61 = (*(this + 114) * (v76 << 8)) >> 13;
    }

    else
    {
      v61 = 0;
      *(this + 41) = 0;
    }

    *(this + 130) = v48;
    if ((MTBEDebugFlags::sMEOWDebug & 2) != 0)
    {
      printf("P %8d%7d%7d %8d%7d%7d %8d%7d%7d %8d%7d%7d %8d%7d%7d\n", v68, v30, v29, v66, v34, v33, v64, *(this + 118), *(this + 119), v62, *(this + 112), *(this + 113), v61, *(this + 115), *(this + 116));
      v43 = a2;
    }

    *(this + 131) = v4;
    v49 = *(this + 2);
    if (*(v49 + 210) == 1)
    {
      if (*(this + 54))
      {
        *(this + 132) = *(v49 + 8);
      }

      *(this + 31) = MT3BSegmentProducer::sTopOctave[(*(v49 + 192) + v4)] >> (3 - ((*(v49 + 192) + v4) >> 8));
      if (*(v49 + 50) == 1)
      {
        if (*(*(this + 3) + 52))
        {
          v55 = MT3BSegmentProducer::sTopOctave[(*(*(this + 3) + 52) - 51)] >> (7 - ((*(*(this + 3) + 52) + 461) >> 8));
        }

        if (v60 != -1)
        {
          *(this + 33) = v60 << 14;
          *(this + 34) = v60 << 14;
        }
      }

      else
      {
        if (!*(v49 + 200))
        {
          v4 = *(v49 + 190);
          v47 = v4;
          *(this + 131) = v4;
        }

        v57 = MT3BSegmentProducer::sTopOctave[v4] >> (7 - HIBYTE(v4));
        if (*(*(this + 3) + 52))
        {
          v51 = (*(*(this + 3) + 52) + v47) & ~((*(*(this + 3) + 52) + v47) >> 31);
          *(this + 131) = v51;
          v56 = MT3BSegmentProducer::sTopOctave[v51] >> (7 - BYTE1(v51));
        }
      }
    }

    else
    {
      *(this + 31) = MT3BSegmentProducer::sTopOctave[v4] >> (3 - HIBYTE(v4));
      if (*(*(this + 3) + 52))
      {
        v50 = (*(*(this + 3) + 52) + v4) & ~((*(*(this + 3) + 52) + v4) >> 31);
        *(this + 131) = v50;
        *(this + 32) = MT3BSegmentProducer::sTopOctave[v50] >> (3 - BYTE1(v50));
      }
    }

    if (!*(this + 53))
    {
      v70 = (*(this + 126) | *(this + 55) | *(this + 127) | *(this + 128) | *(this + 129) | *(this + 130) | *(this + 56)) == 0;
    }

    v52 = *(this + 133);
    v53 = *(this + 35);
    *(this + 35) = *(this + 54) << 16;
    MTMBSegment::Allocate(v43, 0);
  }

  *(this + 25) = 0;
  if (v3 < 0)
  {
    result = MTFEFrameFiller::FillNextFrame(*(this + 1), this + 32);
    *(this + 96) = result;
    *(this + 104) = *(*(this + 1) + 80);
    if (result)
    {
      goto LABEL_2;
    }
  }

  else
  {
    result = 0;
  }

  v54 = *MEMORY[0x277D85DE8];
  return result;
}

void MT3BSegmentProducer::CalcZeroCoefficients(MT3BSegmentProducer *this, int a2, int a3, __int16 *a4, __int16 *a5, __int16 *a6)
{
  if (a3 >= 1225)
  {
    v6 = 1225;
  }

  else
  {
    v6 = a3;
  }

  v7 = (((1717986919 * (v6 - 50)) >> 33) + ((1717986919 * (v6 - 50)) >> 63));
  *a6 = -sCcoeffTbl[v7];
  LODWORD(v7) = sBcoeffTbl[v7] * sCosTbl[a2 - 256];
  *a5 = -(v7 >> 12);
  *a4 = *a6 - (v7 >> 12) + 0x2000;
}

void sub_257B0A828(_Unwind_Exception *a1)
{
  v5 = v4;
  MEMORY[0x259C6DA90](v5, 0x10E1C404B4880CALL);

  _Unwind_Resume(a1);
}

void sub_257B0AA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MTFrontendSimple;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void MT3BTextSource::MT3BTextSource(MT3BTextSource *this, const __CFString **a2)
{
  SLCFStringTextSource::SLCFStringTextSource(this, a2[26]);
  *v3 = &unk_2868F45A8;
  *(v3 + 296) = a2;
  *(v3 + 304) = 0;
}

{
  SLCFStringTextSource::SLCFStringTextSource(this, a2[26]);
  *v3 = &unk_2868F45A8;
  *(v3 + 296) = a2;
  *(v3 + 304) = 0;
}

uint64_t MT3BTextSource::CreateMoreText(MT3BTextSource *this)
{
  if ((*(this + 304) & 1) == 0)
  {
    *(this + 304) = 1;
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v1 = *(this + 37);
    v2 = *(v1 + 376);
    if (v2)
    {
      if (*(v1 + 424) == 1)
      {
        v2(*(v1 + 72), *(v1 + 312), &v6, &v5, &v4);
      }
    }
  }

  return 0;
}

void MTBEDoneTask::Execute(MTBEDoneTask *this, const char *a2)
{
  MTBEWorker::DebugLog("Done %p\n", a2, a2);
  SpeechChannelManager::RegisterCurSpeechState(a2, 0);
  v3 = *(a2 + 48);
  if (v3 && a2[424] == 1)
  {
    v4 = *(a2 + 9);
    v5 = *(a2 + 39);
    pthread_mutex_unlock((sCallbackSchedule + 104));
    v3(v4, v5);
    v6 = (sCallbackSchedule + 104);

    pthread_mutex_lock(v6);
  }
}

uint64_t MTBESoundOutputDoneTask::Execute(MTBESoundOutputDoneTask *this, const char *a2)
{
  MTBEWorker::DebugLog("Sound Output Done %p\n", a2, a2);
  pthread_mutex_unlock((sSampleSchedule + 104));
  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  v3 = (sSampleSchedule + 104);

  return pthread_mutex_lock(v3);
}

void MT3BEngineTask::MT3BEngineTask(MT3BEngineTask *this, const __CFString **a2)
{
  *this = &unk_2868F4638;
  *(this + 1) = &unk_2868F4680;
  *(this + 2) = &unk_2868F46B8;
  *(this + 3) = this;
  *(this + 4) = MT3BEngineTask::Word;
  *(this + 5) = 0;
  sprintf(this + 48, "%s<%p>", "Word", this);
  *(this + 10) = &unk_2868F46B8;
  *(this + 11) = this;
  *(this + 12) = MT3BEngineTask::Phon;
  *(this + 13) = 0;
  sprintf(this + 112, "%s<%p>", "Phon", this);
  *(this + 18) = &unk_2868F46B8;
  *(this + 19) = this;
  *(this + 20) = MT3BEngineTask::Sync;
  *(this + 21) = 0;
  sprintf(this + 176, "%s<%p>", "Sync", this);
  *(this + 26) = &unk_2868F46B8;
  *(this + 27) = this;
  *(this + 28) = MT3BEngineTask::Pause;
  *(this + 29) = 0;
  sprintf(this + 240, "%s<%p>", "Pause", this);
  *(this + 34) = &unk_2868F46B8;
  *(this + 35) = this;
  *(this + 36) = MT3BEngineTask::Boundary;
  *(this + 37) = 0;
  sprintf(this + 304, "%s<%p>", "Boundary", this);
  *(this + 42) = &unk_2868F46B8;
  *(this + 43) = this;
  *(this + 44) = MT3BEngineTask::Stopped;
  *(this + 45) = 0;
  sprintf(this + 368, "%s<%p>", "Stopped", this);
  *(this + 50) = &unk_2868F46B8;
  *(this + 51) = this;
  *(this + 52) = MT3BEngineTask::CheckAudio;
  *(this + 53) = 0;
  sprintf(this + 432, "%s<%p>", "Audio?", this);
  *(this + 58) = &unk_2868F46B8;
  *(this + 59) = this;
  *(this + 60) = MT3BEngineTask::Ping;
  *(this + 61) = 0;
  sprintf(this + 496, "%s<%p>", "Ping", this);
  *(this + 66) = &unk_2868F46B8;
  *(this + 67) = this;
  *(this + 68) = MT3BEngineTask::ParseNextPhrase;
  *(this + 69) = 0;
  sprintf(this + 560, "%s<%p>", "Parse", this);
  *(this + 74) = a2;
  SLCFStringTextSource::SLCFStringTextSource((this + 616), a2[26]);
  *(this + 77) = &unk_2868F45A8;
  *(this + 114) = a2;
  *(this + 920) = 0;
  *(this + 116) = 0;
  *(this + 118) = 0;
  *(this + 117) = 0;
  MTBEPersistentParam::MTBEPersistentParam((this + 1016));
  *(this + 308) = 257;
  *(this + 618) = 1;
  *(this + 155) = 0;
  v4 = *(*(this + 74) + 32);
  *(this + 157) = &unk_2868F4960;
  v5 = *(v4 + 8);
  v6 = *(v4 + 24);
  v7 = *(v4 + 40);
  *(this + 328) = *(v4 + 56);
  *(this + 81) = v7;
  *(this + 80) = v6;
  *(this + 79) = v5;
  *(this + 660) = 0;
  MTBEWorker::DebugLog("Create Engine %p\n", v8, this);
  gettimeofday(&v11, 0);
  *(this + 156) = v11.tv_usec + 1000000 * v11.tv_sec;
  pthread_once(&sScheduleInit, InitSchedules);
  pthread_mutex_init((this + 952), 0);
  v9 = a2[7];
  *(this + 138) = a2[8];
  v10 = a2[2];
  *(this + 134) = SLLexer::Create();
  operator new();
}

void sub_257B0B3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, MTBEWorker::Task *a11, MTBEWorker::Task *a12, MTBEWorker::Task *a13, MTBEWorker::Task *a14, MTBEWorker::Task *a15)
{
  MEMORY[0x259C6DA90](v20, 0x10A1C402F3E04C9);
  MTBENotifier::~MTBENotifier(v19);
  MTBEPersistentParam::~MTBEPersistentParam((v15 + 1016));
  SLCFStringTextSource::~SLCFStringTextSource(v18);
  MTBEWorker::Task::~Task(v17);
  MTBEWorker::Task::~Task(v16);
  MTBEWorker::Task::~Task(v22);
  MTBEWorker::Task::~Task(v21);
  MTBEWorker::Task::~Task(a11);
  MTBEWorker::Task::~Task(a12);
  MTBEWorker::Task::~Task(a13);
  MTBEWorker::Task::~Task(a14);
  MTBEWorker::Task::~Task(a15);
  MTBEWorker::Task::~Task(v15);
  _Unwind_Resume(a1);
}

uint64_t MT3BEngineTask::Word(MT3BEngineTask *this, const char *a2)
{
  v3 = a2 >> 8;
  v4 = a2;
  MTBEWorker::DebugLog("Word %d %d\n", a2, a2 >> 8, a2);
  v5 = *(this + 74);
  pthread_mutex_unlock((sCallbackSchedule + 104));
  v9.location = v3;
  v9.length = v4;
  SpeechChannelManager::CallWordCallBackProc(v5, v9);
  v6 = (sCallbackSchedule + 104);

  return pthread_mutex_lock(v6);
}

uint64_t MT3BEngineTask::AncillaryTask::AncillaryTask(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *a1 = &unk_2868F46B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  sprintf((a1 + 32), "%s<%p>", a5, a2);
  return a1;
}

{
  *a1 = &unk_2868F46B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  sprintf((a1 + 32), "%s<%p>", a5, a2);
  return a1;
}

uint64_t MT3BEngineTask::Phon(MT3BEngineTask *this, const char *a2)
{
  v2 = a2;
  MTBEWorker::DebugLog("Phoneme %d\n", a2, a2);
  v4 = *(this + 74);
  pthread_mutex_unlock((sCallbackSchedule + 104));
  v5 = *(v4 + 408);
  if (v5 && *(v4 + 424) == 1)
  {
    v5(*(v4 + 72), *(v4 + 312), v2);
  }

  v6 = (sCallbackSchedule + 104);

  return pthread_mutex_lock(v6);
}

uint64_t MT3BEngineTask::Sync(MT3BEngineTask *this, const char *a2)
{
  MTBEWorker::DebugLog("Sync %08X\n", a2, a2);
  v4 = *(this + 74);
  pthread_mutex_unlock((sCallbackSchedule + 104));
  *(v4 + 336) = a2;
  v5 = *(v4 + 392);
  if (v5 && *(v4 + 424) == 1)
  {
    v5(*(v4 + 72), *(v4 + 312), a2);
  }

  v6 = (sCallbackSchedule + 104);

  return pthread_mutex_lock(v6);
}

void MT3BEngineTask::Pause(MT3BEngineTask *this, const char *a2)
{
  *(this + 660) = a2;
  v3 = "Immediate";
  if (*(this + 116) && *(*(this + 74) + 340) == 2)
  {
    v3 = "Deferred";
  }

  MTBEWorker::DebugLog("Pause %04x %s\n", a2, a2, v3);
  v4 = *(this + 116);
  if (v4 && *(*(this + 74) + 340) == 2)
  {
    v5 = *(this + 310);
    v6 = *(this + 660);
    if ((v6 & 0x100) != 0)
    {
      if (v5 != 4)
      {
        v7 = 2;
        goto LABEL_20;
      }
    }

    else if (!v5)
    {
      v7 = 1;
LABEL_20:
      *(this + 310) = v7;
    }

    MTFEFrameFiller::PauseAt(v4 + 2728, v6);
    if (!*(this + 1320))
    {
      (*(**(this + 75) + 56))(*(this + 75), 1, 1);
      (*(**(this + 116) + 64))(*(this + 116));
    }

    if ((v5 - 1) >= 2)
    {

      MT3BEngineTask::CheckAudio(this, v9);
    }

    return;
  }

  if ((*(this + 660) & 0x100) != 0)
  {
    if (*(this + 310) != 4)
    {
      *(this + 310) = 2;
    }

    MT3BEngineTask::ShutUp(this, 1);
  }

  else
  {
    MT3BEngineTask::ShutUp(this, 1);
    *(this + 310) = 3;
    *(this + 1233) = 0;
    v8 = *(this + 74);

    SpeechChannelManager::RegisterCurSpeechState(v8, 3);
  }
}

uint64_t MT3BEngineTask::Boundary(MT3BEngineTask *this, void *a2)
{
  result = MT3BEngineTask::ShutUp(this, 1);
  *(this + 660) = 0;
  return result;
}

void MT3BEngineTask::Stopped(MT3BEngineTask *this, const char *a2)
{
  v2 = *(this + 74);
  if (!*(v2 + 340))
  {
    return;
  }

  v4 = *(this + 310);
  if (v4 == 2)
  {
    goto LABEL_5;
  }

  if (v4 != 1)
  {
    if (v4)
    {
      return;
    }

LABEL_5:
    *(this + 310) = 4;
    v5 = sCallbackSchedule;

    MTBEWorker::AddTask(v5, sDoneTask, v2);
    return;
  }

  *(this + 310) = 3;
  *(this + 1233) = 0;
  MTBEWorker::DebugLog("Paused\n", a2);
  v6 = *(this + 74);

  SpeechChannelManager::RegisterCurSpeechState(v6, 3);
}

void MT3BEngineTask::CheckAudio(MT3BEngineTask *this, void *a2)
{
  (*(**(this + 75) + 104))(*(this + 75), a2);
  if ((*(this + 310) - 3) >= 2)
  {
    v3 = sSampleSchedule;
    gettimeofday(&v4, 0);
    v4.tv_sec = v4.tv_usec + 1000000 * v4.tv_sec + 50000;
    MTBEWorker::AddTask(v3, this + 50, 0, &v4.tv_sec);
  }
}

void MT3BEngineTask::Ping(MT3BEngineTask *this, void *a2)
{
  v3 = SpeechBusy();
  *(this + 1234) = v3 > 0;
  if (v3 >= 1)
  {
    v4 = sSampleSchedule;
    gettimeofday(&v5, 0);
    v5.tv_sec = v5.tv_usec + 1000000 * v5.tv_sec + 1000000;
    MTBEWorker::AddTask(v4, this + 58, 0, &v5.tv_sec);
  }
}

uint64_t MT3BEngineTask::ParseNextPhrase(MT3BEngineTask *this, const char *a2)
{
  MTBEWorker::DebugLog("Parse\n", a2);
  if ((*(this + 1234) & 1) == 0)
  {
    *(this + 1234) = 1;
    v4 = sSampleSchedule;
    gettimeofday(&v22, 0);
    v22.tv_sec = v22.tv_usec + 1000000 * v22.tv_sec + 1000000;
    MTBEWorker::AddTask(v4, this + 58, 0, &v22.tv_sec);
  }

  if (a2)
  {
    pthread_mutex_lock((this + 952));
    if (*(this + 1237) == 1)
    {
      v6 = *(this + 116);
      if (v6)
      {
        (*(*v6 + 48))(v6);
      }

      v7 = 0;
    }

    else
    {
      v7 = *(this + 117);
    }

    *(this + 118) = v7;
    *(this + 58) = 0u;
    MTBEWorker::DebugLog("Restart at phrase %p\n", v5, v7);
    pthread_mutex_unlock((this + 952));
  }

  v8 = *(this + 118);
  if (v8)
  {
    *(this + 1232) = 1;
    do
    {
      v9 = v8[533];
      v8[533] = 0;
      *(this + 118) = v9;
      ClonedWord = MTFEFrameFiller::NextClonedWord((v8 + 341));
      if (ClonedWord == -1)
      {
        v12 = 0;
        v13 = "At end of phrase %p\n";
      }

      else
      {
        v12 = v8[532];
        v8[532] = 0;
        v13 = "Restart phrase %p\n";
      }

      MTBEWorker::DebugLog(v13, v10, v8);
      (*(*v8 + 48))(v8);
      v8 = *(this + 118);
      v14 = v12 != 0;
      if (v8)
      {
        v15 = v12 == 0;
      }

      else
      {
        v15 = 0;
      }
    }

    while (v15);
  }

  else
  {
    ClonedWord = 0;
    v12 = 0;
    v14 = 0;
  }

  if (*(this + 1232) != 1 || v14)
  {
    if (!v14)
    {
      return (*(**(this + 75) + 56))(*(this + 75), 0, 0);
    }

    goto LABEL_27;
  }

  MTFEBuilder::ParseSentence(*(this + 76));
  v16 = *(this + 76);
  var2 = v16->var2;
  MTFEBuilder::ResetProduct(v16, 0);
  if (var2)
  {
    goto LABEL_28;
  }

  *(this + 1232) = 0;
  if (v14)
  {
LABEL_27:
    var2 = 0;
LABEL_28:
    v19 = *(this + 74);
    v20.var0 = *(v19 + 304);
    MTBEPhraseParam::MTBEPhraseParam(&v22, v20, var2, *(v19 + 32), (this + 1256), *(v19 + 40), (this + 1016));
    if (v14)
    {
      MTBEPhraseMemo::Thaw(v12, &v22);
      v23 = ClonedWord;
      MTBEPhraseMemo::~MTBEPhraseMemo(v12);
      MEMORY[0x259C6DA90]();
    }

    MTBEPhraseProcessor::Create(*(*(this + 74) + 264), (*(*(this + 74) + 264) + 362), &v22, v21);
  }

  return (*(**(this + 75) + 56))(*(this + 75), 0, 0);
}

uint64_t MT3BEngineTask::ShutUp(MT3BEngineTask *this, int a2)
{
  pthread_mutex_lock((sSampleSchedule + 104));
  MTBEWorker::PurgeTasks(sSampleSchedule, this);
  MTBEWorker::PurgeTasks(sSampleSchedule, (this + 528));
  MTBEWorker::PurgeTasks(sSampleSchedule, (this + 208));
  MTBEWorker::PurgeTasks(sSampleSchedule, (this + 272));
  MTBEWorker::PurgeTasks(sSampleSchedule, (this + 464));
  MTBEWorker::PurgeTasks(sSampleSchedule, (this + 400));
  MTBEWorker::PurgeTasks(sSampleSchedule, (this + 336));
  pthread_mutex_unlock((sSampleSchedule + 104));
  if (a2)
  {
    (*(**(this + 75) + 56))(*(this + 75), 1, 0);
  }

  pthread_mutex_lock((sCallbackSchedule + 104));
  MTBEWorker::PurgeTasks(sCallbackSchedule, this);
  MTBEWorker::PurgeTasks(sCallbackSchedule, (this + 144));
  MTBEWorker::PurgeTasks(sCallbackSchedule, (this + 80));
  MTBEWorker::PurgeTasks(sCallbackSchedule, (this + 16));
  v4 = (sCallbackSchedule + 104);

  return pthread_mutex_unlock(v4);
}

void MT3BEngineTask::~MT3BEngineTask(MT3BEngineTask *this, const char *a2)
{
  *this = &unk_2868F4638;
  *(this + 1) = &unk_2868F4680;
  MTBEWorker::DebugLog("Delete Engine %p\n", a2, this);
  MT3BEngineTask::ShutUp(this, 0);
  pthread_mutex_lock((sSampleSchedule + 104));
  pthread_mutex_lock((sCallbackSchedule + 104));
  (*(**(this + 75) + 72))(*(this + 75), 0);
  if (atomic_fetch_add((*(this + 75) + 16), 0xFFFFFFFF) == 1)
  {
    MTBEWorker::AddTask(sSampleSchedule, &sSoundOutputDoneTask, *(this + 75));
  }

  v3 = *(this + 76);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 117);
  if (v4)
  {
    (*(*v4 + 48))(v4);
  }

  v5 = *(this + 134);
  if (v5)
  {
    (*(*v5 + 56))(v5);
  }

  pthread_mutex_unlock((sCallbackSchedule + 104));
  pthread_mutex_unlock((sSampleSchedule + 104));
  MTBENotifier::~MTBENotifier((this + 1256));
  MTBEPersistentParam::~MTBEPersistentParam((this + 1016));
  SLCFStringTextSource::~SLCFStringTextSource((this + 616));
  MTBEWorker::Task::~Task((this + 528));
  MTBEWorker::Task::~Task((this + 464));
  MTBEWorker::Task::~Task((this + 400));
  MTBEWorker::Task::~Task((this + 336));
  MTBEWorker::Task::~Task((this + 272));
  MTBEWorker::Task::~Task((this + 208));
  MTBEWorker::Task::~Task((this + 144));
  MTBEWorker::Task::~Task((this + 80));
  MTBEWorker::Task::~Task((this + 16));

  MTBEWorker::Task::~Task(this);
}

{
  MT3BEngineTask::~MT3BEngineTask(this, a2);

  JUMPOUT(0x259C6DA90);
}

void MTBEWorker::AddTask(MTBEWorker *this, MTBEWorker::Task *a2, uint64_t a3)
{
  gettimeofday(&v6, 0);
  v6.tv_sec = v6.tv_usec + 1000000 * v6.tv_sec;
  MTBEWorker::AddTask(this, a2, a3, &v6.tv_sec);
}

void non-virtual thunk toMT3BEngineTask::~MT3BEngineTask(MT3BEngineTask *this, const char *a2)
{
  MT3BEngineTask::~MT3BEngineTask((this - 8), a2);
}

{
  MT3BEngineTask::~MT3BEngineTask((this - 8), a2);

  JUMPOUT(0x259C6DA90);
}

uint64_t MT3BEngineTask::WakeupSoundAndContinue(MT3BEngineTask *this, const char *a2)
{
  MTBEWorker::DebugLog("Waking up Sound\n", a2);
  (*(**(this + 75) + 64))(*(this + 75), 0);
  v3 = *(*this + 40);

  return v3(this);
}

void MT3BEngineTask::SoundIsAwake(MT3BEngineTask *this, const char *a2)
{
  if (*(*(this + 74) + 340))
  {
    MTBEWorker::DebugLog("Sound is awake\n", a2);
    if (*(this + 1233) == 1)
    {

      MT3BEngineTask::ScheduleParse(this);
    }

    else
    {

      MT3BEngineTask::ScheduleContinue(this);
    }
  }

  else
  {

    MTBEWorker::DebugLog("Sound is awake, but Speech already stopped\n", a2);
  }
}

void MT3BEngineTask::ScheduleParse(MT3BEngineTask *this)
{
  v2 = sSampleSchedule;
  gettimeofday(&v3, 0);
  v3.tv_sec = v3.tv_usec + 1000000 * v3.tv_sec;
  MTBEWorker::AddTask(v2, this + 66, 0, &v3.tv_sec);
}

void MT3BEngineTask::ScheduleContinue(MT3BEngineTask *this)
{
  *(this + 660) = 0;
  *(this + 310) = 0;
  MTBEWorker::PurgeTasks(sSampleSchedule, this);
  v2 = 797831567000 * *(this + 311);
  v3 = (v2 >> 44) + (v2 >> 63);
  v4 = *(this + 74);
  if (*(v4 + 340) == 3)
  {
    *(this + 1233) = 1;
    *(this + 311) = 0;
    SpeechChannelManager::RegisterCurSpeechState(v4, 2);
  }

  else
  {
    v3 -= 100;
  }

  v5 = *(this + 156) + 1000 * v3;
  MTBEWorker::AddTask(sSampleSchedule, this + 66, this, &v5);
}

const char *MT3BEngineTask::Latency(MT3BEngineTask *this, const char *a2)
{
  if ((MTBEDebugFlags::sMTXDebug & 0x40000) != 0)
  {
    v3 = clock();
    printf("\nStartSpeakingLatency %.8f\n", ((v3 * 1000.0) / 1000000.0));
  }

  result = MTBEWorker::DebugLog("Latency\n", a2);
  v5 = *(this + 74);
  v6 = v5[50];
  if (v6)
  {
    result = v6(v5[9], v5[39], 1818326117);
  }

  *(this + 1236) = 0;
  return result;
}

const char *MT3BEngineTask::AdjustBaseline(const char *this)
{
  if (*(this + 311) >= 23)
  {
    v11 = v1;
    v12 = v2;
    v3 = this;
    if ((this[1235] & 1) == 0)
    {
      gettimeofday(&v10, 0);
      v4 = (v10.tv_usec + 1000000 * v10.tv_sec - *(v3 + 1248)) / 1000;
      v5 = 797831567000 * *(v3 + 1244);
      this = MTBEWorker::DebugLog("Now: %d Lead %d\n", v6, v4, (v5 >> 44) + (v5 >> 63) - 20);
      v8 = 797831567000 * *(v3 + 1244);
      if (((v8 >> 44) + (v8 >> 63) - 20) < v4)
      {
        MTBEWorker::DebugLog("Running late!\n", v7);
        this = (*(**(v3 + 600) + 64))(*(v3 + 600), 0);
        v9 = 0xFFFFFF463D886968 * *(v3 + 1244);
        *(v3 + 1248) += 1000 * (v4 + (v9 >> 44) + (v9 >> 63) + 20);
      }
    }
  }

  return this;
}

void MT3BEngineTask::Execute(MT3BEngineTask *this, const char *a2)
{
  if (*(*(this + 74) + 340) != 2)
  {
    *(this + 1233) = 0;
    return;
  }

  v3 = *(this + 116);
  if (!v3)
  {
    return;
  }

  if (*(v3 + 2881) == 1)
  {
    MTFEFrameFiller::SyncWithUnitSearch(v3 + 2728);
    MT3BEngineTask::AdjustBaseline(this);
  }

  if (*(this + 1233) == 1)
  {
    MTBEWorker::DebugLog("Baseline\n", a2);
    if (*(this + 1235) == 1)
    {
      gettimeofday(&v18, 0);
      v4 = v18.tv_usec + 1000000 * v18.tv_sec - 1728000000000;
    }

    else
    {
      gettimeofday(&v18, 0);
      v4 = v18.tv_usec + 1000000 * v18.tv_sec;
    }

    *(this + 156) = v4;
    *(this + 1233) = 0;
  }

  updated = MTBEPhraseProcessor::UpdateEngineFromNotifier(*(this + 116));
  if (*(this + 1236) == 1 && ((*(**(this + 75) + 96))(*(this + 75), updated) & 1) == 0)
  {
    (*(*this + 48))(this);
  }

  v6 = *(this + 311);
  v8 = (*(**(this + 116) + 56))(*(this + 116), *(this + 75), this + 1244);
  v9 = (*(this + 311) - v6);
  v10 = "";
  if (v8)
  {
    v10 = ", more to come";
  }

  MTBEWorker::DebugLog("Generated %d samples%s\n", v7, (*(this + 311) - v6), v10);
  MTBEPhraseProcessor::UpdateNotifierFromEngine(*(this + 116));
  v11 = *(this + 311);
  if (v11 >= 44101)
  {
    *(this + 156) += 1000000;
    v11 -= 22050;
    *(this + 311) = v11;
  }

  if (v8)
  {
    v12 = sSampleSchedule;
    if (v11 == v6)
    {
      gettimeofday(&v18, 0);
      v13 = v18.tv_usec + 1000000 * v18.tv_sec + 20000;
    }

    else
    {
      v13 = *(this + 156) + 1000 * (1000 * v11 / 22050) - 100000;
    }

    v18.tv_sec = v13;
    v16 = v12;
    v15 = this;
    v17 = this;
  }

  else
  {
    if (*(this + 660))
    {
      return;
    }

    v14 = sSampleSchedule;
    gettimeofday(&v18, 0);
    v18.tv_sec = v18.tv_usec + 1000000 * v18.tv_sec + 1000;
    v15 = (this + 528);
    v16 = v14;
    v17 = 0;
  }

  MTBEWorker::AddTask(v16, v15, v17, &v18.tv_sec);
}

uint64_t SpeechChannelManager::CallWordCallBackProc(SpeechChannelManager *this, CFRange a2)
{
  length = a2.length;
  location = a2.location;
  *(this + 27) = a2.location;
  result = pthread_mutex_lock((this + 144));
  if (!result)
  {
    v6 = *(this + 28);
    if (v6 && (v15.location = location, v15.length = length, MT3UnicodeString::shouldReturnWordCallback(v6, v15)))
    {
      v16.location = location;
      v16.length = length;
      v7 = MT3UnicodeString::MapRangeToSrc(*(this + 28), v16);
      v9 = v8;
      result = pthread_mutex_unlock((this + 144));
      v10 = *(this + 52);
      if (v10 && *(this + 424) == 1)
      {
        v11 = *(this + 9);
        v12 = *(this + 39);
        v13 = *(this + 26);

        return v10(v11, v12, v13, v7, v9);
      }
    }

    else
    {

      return pthread_mutex_unlock((this + 144));
    }
  }

  return result;
}

void MT3BEngineTask::SchedulePause(MT3BEngineTask *this, int a2, int a3)
{
  v3 = 4096;
  if (a2)
  {
    v3 = 4352;
  }

  MTBEWorker::AddTask(sSampleSchedule, (this + 208), v3 + a3);
}

uint64_t MT3BEngineTask::StopAtBoundary(MT3BEngineTask *this, const char *a2)
{
  if ((a2 & 8) != 0)
  {
    MTBEWorker::DebugLog("End of Text\n", a2);
    MTBEWorker::AddTask(sSampleSchedule, (this + 336), this);
  }

  if ((a2 & 4) != 0)
  {
    v4 = (this + 952);
    pthread_mutex_lock((this + 952));
    v7 = *(this + 117);
    if (v7)
    {
      if (v7 == *(this + 116))
      {
        *(this + 1237) = 1;
      }

      else
      {
        v8 = v7[533];
        v7[533] = 0;
        *(this + 117) = v8;
        MTBEWorker::DebugLog("History %p\n", v6, v8);
        (*(*v7 + 48))(v7);
      }
    }

    goto LABEL_11;
  }

  if ((a2 & 2) != 0)
  {
    MTBEWorker::DebugLog("Word Up\n", a2);
    v4 = (this + 952);
    pthread_mutex_lock((this + 952));
    v5 = *(this + 117);
    if (v5)
    {
      ++*(v5 + 2874);
    }

LABEL_11:
    pthread_mutex_unlock(v4);
  }

  v9 = *(this + 660);
  if (!v9 || ((1 << v9) & a2) == 0)
  {
    return 0;
  }

  v10 = sSampleSchedule;
  gettimeofday(&v13, 0);
  v13.tv_sec = v13.tv_usec + 1000000 * v13.tv_sec;
  MTBEWorker::AddTask(v10, this + 34, this, &v13.tv_sec);
  v11 = *(this + 116);
  if (v11)
  {
    (*(*v11 + 64))(v11);
  }

  return 1;
}

uint64_t MT3BEngineTask::AncillaryTask::Execute(MT3BEngineTask::AncillaryTask *this, void *a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = (*(this + 1) + (v3 >> 1));
  if (v3)
  {
    return (*(*v4 + v2))();
  }

  else
  {
    return v2(v4, a2);
  }
}

uint64_t MT3BNotifier::ResetFromVoice(MTBENotifier *this, void *a2, int a3)
{
  v5 = MTBENotifier::ResetFromVoice(this, a2, a3);
  MTBEParam::MTBEParam(v7, 0, a2, 0, 0, v5);
  this->var1 = MTBEParam::GetRate(v7) << 16;
  this->var2 = 3072 * MTBEParam::GetPitch(v7) + 2054400;
  this->var3 = MTBEParam::GetModulation(v7);
  result = MTBEParam::GetVolume(v7);
  this->var4 = result;
  return result;
}

void MT3BNotifier::NotifyError(MTBENotifier *this, int a2, uint64_t a3)
{
  MTBENotifier::NotifyError(this, a2, a3);
  var0 = this[1].var0;

  SpeechChannelManager::RegisterCurSpeechError(var0, a2, a3);
}

uint64_t MT3BNotifier::NotifyTextDone(uint64_t this, const void **a2, unint64_t *a3, int *a4)
{
  v4 = *(this + 64);
  v5 = *(v4 + 376);
  if (v5 && *(v4 + 424) == 1)
  {
    return v5(*(v4 + 72), *(v4 + 312), a2, a3, a4);
  }

  *a2 = 0;
  return this;
}

void MT3BNotifier::NotifySync(MT3BNotifier *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 8) + 24);
  if (v3)
  {
    v4 = 797831567000 * *(v3 + 1244);
    v5 = *(v3 + 1248) + 1000 * a3 + (1000 * ((v4 >> 44) + (v4 >> 63)));
    MTBEWorker::AddTask(sCallbackSchedule, (v3 + 144), a2, &v5);
  }
}

void MT3BNotifier::NotifyPhoneme(MTBENotifier *this, int a2, int a3, int a4)
{
  MTBENotifier::NotifyPhoneme(this, a2);
  v7 = *(this[1].var0 + 3);
  if (v7)
  {
    v8 = 797831567000 * *(v7 + 1244);
    v9 = *(v7 + 1248) + 1000 * a4 + (1000 * ((v8 >> 44) + (v8 >> 63))) + 1;
    MTBEWorker::AddTask(sCallbackSchedule, (v7 + 80), a2, &v9);
  }
}

void MT3BNotifier::NotifyWord(MT3BNotifier *this, uint64_t a2, unsigned __int8 a3, int a4)
{
  v4 = *(*(this + 8) + 24);
  if (v4)
  {
    v5 = 797831567000 * *(v4 + 1244);
    v6 = *(v4 + 1248) + 1000 * a4 + (1000 * ((v5 >> 44) + (v5 >> 63)));
    MTBEWorker::AddTask(sCallbackSchedule, (v4 + 16), a3 | (a2 << 8), &v6);
  }
}

uint64_t MT3BNotifier::WantSpeechDone(MT3BNotifier *this)
{
  v1 = *(this + 8);
  if (*(v1 + 384))
  {
    v2 = *(v1 + 424);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MT3BNotifier::WantSync(MT3BNotifier *this)
{
  v1 = *(this + 8);
  if (*(v1 + 392))
  {
    v2 = *(v1 + 424);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MT3BNotifier::WantPhoneme(MT3BNotifier *this)
{
  v1 = *(this + 8);
  if (*(v1 + 408))
  {
    v2 = *(v1 + 424);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MT3BNotifier::WantWord(MT3BNotifier *this)
{
  v1 = *(this + 8);
  if (*(v1 + 416))
  {
    v2 = *(v1 + 424);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MTPBNotifier::ResetFromVoice(MTBENotifier *this, void *a2, int a3)
{
  v5 = MTBENotifier::ResetFromVoice(this, a2, a3);
  v6 = MTPBVoice::MTPBVoice(v9, a2, v5);
  MTBEParam::MTBEParam(v8, 1, v9, 0, 0, v6);
  this->var1 = MTBEParam::GetRate(v8) << 16;
  this->var2 = 3072 * MTBEParam::GetPitch(v8) + 2054400;
  this->var3 = MTBEParam::GetModulation(v8);
  result = MTBEParam::GetVolume(v8);
  this->var4 = result;
  return result;
}

void InitSpeechProcessing(SpeechChannelManager *a1)
{
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Init %p\n", v2, a1);
  v3 = *(a1 + 4);
  v4 = *(*(a1 + 33) + 4);
  if (v4 != 1835364215 && v4 != 1734437985)
  {
    operator new();
  }

  operator new();
}

uint64_t ResetSpeechProcessing(SpeechChannelManager *a1)
{
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Reset %p\n", v2, a1);
  (*(**(a1 + 4) + 96))(*(a1 + 4), *(a1 + 33) + 362, 1);
  v3 = *(**(a1 + 5) + 96);
  v4 = *(a1 + 33) + 362;

  return v3();
}

uint64_t ClearSpeechProcessing(SpeechChannelManager *a1)
{
  MTBEDebugFlags::Update(a1);
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Clear %p\n", v2, a1);
  pthread_mutex_lock((sSampleSchedule + 104));
  pthread_mutex_lock((sSampleSchedule + 40));
  v3 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  pthread_mutex_unlock((sSampleSchedule + 40));
  v4 = (sSampleSchedule + 104);

  return pthread_mutex_unlock(v4);
}

uint64_t ShutdownSpeechProcessing(SpeechChannelManager *a1)
{
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Shutdown %p\n", v2, a1);
  pthread_mutex_lock((sCallbackSchedule + 104));
  MTBEWorker::PurgeTasks(sCallbackSchedule, a1);
  pthread_mutex_unlock((sCallbackSchedule + 104));
  result = MTBEWorker::PendingTasks(sSampleSchedule, &sSoundOutputDoneTask);
  if (result)
  {
    do
    {
      usleep(0x3E8u);
      result = MTBEWorker::PendingTasks(sSampleSchedule, &sSoundOutputDoneTask);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t StartSpeechProcessing(SpeechChannelManager *a1)
{
  MTBEDebugFlags::Update(a1);
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Start %p\n", v2, a1);
  pthread_mutex_lock((sSampleSchedule + 104));
  pthread_mutex_lock((sSampleSchedule + 40));
  if (*(a1 + 9))
  {
    v3 = *(a1 + 3);
    *(a1 + 3) = 0;
    if (v3)
    {
      (*(*v3 + 24))(v3);
    }

    pthread_mutex_unlock((sSampleSchedule + 40));
    if (*(a1 + 26))
    {
      operator new();
    }

    SpeechChannelManager::RegisterCurSpeechState(a1, 0);
  }

  else
  {
    pthread_mutex_unlock((sSampleSchedule + 40));
  }

  v4 = (sSampleSchedule + 104);

  return pthread_mutex_unlock(v4);
}

uint64_t StopSpeechProcessing(SpeechChannelManager *a1, char a2)
{
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Stop %p\n", v4, a1);
  pthread_mutex_lock((sSampleSchedule + 104));
  v5 = *(a1 + 3);
  if (v5)
  {
    MTBEWorker::AddTask(sSampleSchedule, (v5 + 208), a2 + 4352);
  }

  else
  {
    SpeechChannelManager::RegisterCurSpeechState(a1, 0);
  }

  v6 = (sSampleSchedule + 104);

  return pthread_mutex_unlock(v6);
}

uint64_t PauseSpeechProcessing(SpeechChannelManager *a1, char a2)
{
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Pause %p\n", v4, a1);
  pthread_mutex_lock((sSampleSchedule + 104));
  v5 = *(a1 + 3);
  if (v5)
  {
    MTBEWorker::AddTask(sSampleSchedule, (v5 + 208), a2 + 4096);
  }

  else
  {
    SpeechChannelManager::RegisterCurSpeechState(a1, 0);
  }

  v6 = (sSampleSchedule + 104);

  return pthread_mutex_unlock(v6);
}

uint64_t ContinueSpeechProcessing(SpeechChannelManager *a1)
{
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("Continue requested\n", v2);
  pthread_mutex_lock((sSampleSchedule + 104));
  v4 = *(a1 + 3);
  if (v4)
  {
    MT3BEngineTask::WakeupSoundAndContinue(v4, v3);
  }

  else
  {
    SpeechChannelManager::RegisterCurSpeechState(a1, 0);
  }

  v5 = (sSampleSchedule + 104);

  return pthread_mutex_unlock(v5);
}

void DoTextToPhon(SpeechChannelManager *a1, const __CFString *a2, uint64_t a3, MTBEWritePhonemes *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  MTBEDebugFlags::Update(a1);
  pthread_once(&sScheduleInit, InitSchedules);
  MTBEWorker::DebugLog("TextToPhon %p\n", v6, a1);
  SLCFStringTextSource::SLCFStringTextSource(&v23, a2);
  MTBEPersistentParam::MTBEPersistentParam(&v24);
  v7 = CFLocaleCreate(0, @"en_US");
  v9 = *(a1 + 7);
  v8 = *(a1 + 8);
  v10 = *(a1 + 2);
  v24.var9 = SLLexer::Create();
  CFRelease(v7);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 0x40000000;
  v22[2] = ___Z12DoTextToPhonP20SpeechChannelManagerPK10__CFStringlP17MTBEWritePhonemes_block_invoke;
  v22[3] = &__block_descriptor_tmp_54;
  v22[4] = a1;
  (*(v24.var9->var0 + 5))(v24.var9, v22);
  *&v24.var10 = *(a1 + 232);
  v24.var12 = *(a1 + 31);
  v24.var6 = *(a1 + 6);
  v11 = *(a1 + 4);
  v21.var0 = &unk_2868F4960;
  v12 = *(v11 + 24);
  v13 = *(v11 + 56);
  v14 = *(v11 + 40);
  *&v21.var1 = *(v11 + 8);
  *(&v21.var5.newPos + 2) = v14;
  *&v21.var8[2] = v13;
  *&v21.var5.count = v12;
  (*(v24.var9->var0 + 2))(v24.var9, DWORD2(v14));
  (*(v24.var9->var0 + 3))(v24.var9, v21.var8);
  MTFEBuilder::MTFEBuilder(&v20, v24.var9);
  MTFEBuilder::ParseSentence(&v20);
  var2 = v20.var2;
  MTFEBuilder::ResetProduct(&v20, 0);
  if (var2)
  {
    v16.var0 = *(a1 + 304);
    MTBEPhraseParam::MTBEPhraseParam(v19, v16, var2, *(a1 + 4), &v21, *(a1 + 5), &v24);
    v19[61] = 1;
    MTBEPhraseProcessor::Create(*(a1 + 33), (*(a1 + 33) + 362), v19, v17);
  }

  if (v24.var9)
  {
    (*(v24.var9->var0 + 7))(v24.var9);
  }

  MTFEBuilder::~MTFEBuilder(&v20);
  MTBENotifier::~MTBENotifier(&v21);
  MTBEPersistentParam::~MTBEPersistentParam(&v24);
  SLCFStringTextSource::~SLCFStringTextSource(&v23);
  v18 = *MEMORY[0x277D85DE8];
}

void sub_257B0DD04(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, MTFEBuilder *a12, MTBENotifier *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, SLCFStringTextSource *a19, MTBEPersistentParam *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  MTBENotifier::~MTBENotifier(&a33);
  MTBEPersistentParam::~MTBEPersistentParam(&STACK[0x250]);
  SLCFStringTextSource::~SLCFStringTextSource(&a46);
  _Unwind_Resume(a1);
}

void TextToPhonemesProcessing(SpeechChannelManager *a1, const __CFString *a2, char a3, const __CFString **a4)
{
  if ((a3 & 1) == 0)
  {
    operator new();
  }

  operator new();
}

void MT3BTextSource::~MT3BTextSource(SLCFStringTextSource *this)
{
  SLCFStringTextSource::~SLCFStringTextSource(this);

  JUMPOUT(0x259C6DA90);
}

void MTBEDoneTask::~MTBEDoneTask(MTBEDoneTask *this)
{
  MTBEWorker::Task::~Task(this);

  JUMPOUT(0x259C6DA90);
}

void MTBESoundOutputDoneTask::~MTBESoundOutputDoneTask(MTBESoundOutputDoneTask *this)
{
  MTBEWorker::Task::~Task(this);

  JUMPOUT(0x259C6DA90);
}

void MT3BEngineTask::AncillaryTask::~AncillaryTask(MT3BEngineTask::AncillaryTask *this)
{
  MTBEWorker::Task::~Task(this);

  JUMPOUT(0x259C6DA90);
}

void MT3BNotifier::~MT3BNotifier(MTBENotifier *this)
{
  MTBENotifier::~MTBENotifier(this);

  JUMPOUT(0x259C6DA90);
}

void MTPBNotifier::~MTPBNotifier(MTBENotifier *this)
{
  MTBENotifier::~MTBENotifier(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t _GLOBAL__sub_I_MT3Processing_cp()
{
  __cxa_atexit(MTBEDoneTask::~MTBEDoneTask, sDoneTask, &dword_257B07000);

  return __cxa_atexit(MTBESoundOutputDoneTask::~MTBESoundOutputDoneTask, &sSoundOutputDoneTask, &dword_257B07000);
}

uint64_t SpeechChannelManager::ValidSpeechChannel(uint64_t this)
{
  if ((this & 7) != 0)
  {
    return 0;
  }

  if (*(this + 72) != this)
  {
    return 0;
  }

  return this;
}

void SpeechChannelManager::SpeechChannelManager(SpeechChannelManager *this)
{
  *this = &unk_2868F48D0;
  *(this + 1) = 0;
  *(this + 85) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 72) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 52) = 0;
  *(this + 424) = 1;
  *(this + 54) = 0;
  *(this + 110) = 0;
  *(this + 59) = 0;
  *(this + 37) = 0;
  *(this + 358) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 56) = 0;
  *(this + 57) = 0;
  *(this + 464) = 0;
  *(this + 9) = this;
  v2 = CFLocaleCreate(0, @"en_US");
  *(this + 2) = v2;
  v4 = SLDictLookup::Create(v2, v3);
  *(this + 8) = v4;
  *(this + 7) = SLPronouncer::Create(*(this + 2), v4, v5);
  pthread_mutex_init((this + 80), 0);
  pthread_mutex_init((this + 144), 0);
  if (SpeechChannelManager::SpeechChannelManager(void)::sInitInactiveChannelSet != -1)
  {
    SpeechChannelManager::SpeechChannelManager();
  }

  v6 = SLGetSpeechDictionaryBundle();
  if (v6)
  {
    v7 = CFBundleCopyResourceURL(v6, @"HomophonesEng", 0, 0);
    if (v7)
    {
      v8 = v7;
      v9 = CFReadStreamCreateWithFile(0, v7);
      if (v9)
      {
        v10 = v9;
        CFReadStreamOpen(v9);
        *(this + 6) = CFPropertyListCreateWithStream(0, v10, 0, 0, 0, 0);
        CFRelease(v10);
      }

      CFRelease(v8);
    }
  }
}

dispatch_queue_t ___ZN20SpeechChannelManagerC2Ev_block_invoke()
{
  result = dispatch_queue_create("MacintalkSpeechQueue", 0);
  sMacintalkSpeechChannelQueue = result;
  return result;
}

void SpeechChannelManager::CloseSpeechChannel(SpeechChannelManager *this)
{
  *(this + 9) = 0;
  if (*(this + 85))
  {
    StopSpeechProcessing(this, 0);
    if (*(this + 85))
    {
      v2 = -1;
      v3 = 1;
      do
      {
        usleep(0x1388u);
        if (!(v2 + 10 * (v3 / 0xA)))
        {
          StopSpeechProcessing(this, 0);
        }

        --v2;
        ++v3;
      }

      while (*(this + 85));
    }
  }

  ClearSpeechProcessing(this);
  ShutdownSpeechProcessing(this);
  SpeechChannelManager::DisposeSoundChannel(this, 1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN20SpeechChannelManager18CloseSpeechChannelEv_block_invoke;
  block[3] = &__block_descriptor_tmp_6;
  block[4] = this;
  dispatch_async(sMacintalkSpeechChannelQueue, block);
}

OpaqueExtAudioFile *SpeechChannelManager::DisposeSoundChannel(SpeechChannelManager *this, int a2)
{
  v3 = *(this + 56);
  if (v3)
  {
    if (a2)
    {
      (*(*v3 + 40))(v3);
      v3 = *(this + 56);
    }

    if (atomic_fetch_add(v3 + 4, 0xFFFFFFFF) == 1)
    {
      v4 = *(this + 56);
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }

    *(this + 56) = 0;
  }

  result = *(this + 57);
  if (result)
  {
    if (*(this + 464) == 1)
    {
      result = ExtAudioFileDispose(result);
    }

    *(this + 57) = 0;
    *(this + 464) = 0;
  }

  return result;
}

void SpeechChannelManager::~SpeechChannelManager(SpeechChannelManager *this)
{
  *this = &unk_2868F48D0;
  *(this + 9) = 0;
  ClearSpeechProcessing(this);
  ShutdownSpeechProcessing(this);
  SpeechChannelManager::DisposeSoundChannel(this, 1);
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 30);
  if (v5)
  {
    v6 = (v5 + 79968);
    v7 = -80000;
    do
    {
      MEOWVectorBase::~MEOWVectorBase(v6);
      v6 = (v8 - 32);
      v7 += 32;
    }

    while (v7);
    MEMORY[0x259C6DA90](v5, 0x1080C404F240F48);
  }

  v9 = *(this + 8);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 7);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 28);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  CFRelease(*(this + 2));
  v13 = *(this + 59);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 38);
  if (v14)
  {
    v15 = *(this + 64);
    if (v15 == 1734437985)
    {
      PROWReader::~PROWReader(v14);
    }

    else
    {
      if (v15 != 1835364215)
      {
        goto LABEL_25;
      }

      MEOWReader::~MEOWReader(v14);
    }

    MEMORY[0x259C6DA90]();
  }

LABEL_25:
  v16 = *(this + 33);
  if (v16)
  {
    free(v16);
  }

  v17 = *(this + 34);
  if (v17)
  {
    SLMMapCache::Unmap(v17, v12);
  }

  v18 = *(this + 37);
  if (v18)
  {
    free(v18);
  }

  v19 = *(this + 26);
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(this + 29);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(this + 6);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(this + 31);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(this + 54);
  if (v23)
  {
    _Block_release(v23);
  }
}

{
  SpeechChannelManager::~SpeechChannelManager(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t SpeechChannelManager::CreateSoundChannel(SpeechChannelManager *this, OpaqueExtAudioFile *a2)
{
  result = *(this + 56);
  if (!result)
  {
    v4 = *(this + 57);
    if (v4 == -1)
    {
      v4 = 0;
    }

    else if (!v4)
    {
      MTBESoundOutput::CreateChannel(*(this + 110));
    }

    MTBESoundOutput::CreateFileStream(v4, a2);
  }

  return result;
}

CFIndex SpeechChannelManager::SpeakCFString(SpeechChannelManager *this, CFStringRef theString, const __CFDictionary *a3)
{
  if (*(this + 85))
  {
    if (TestOption(a3, @"NoSpeechInterrupt"))
    {
      return -242;
    }

    if (*(this + 85))
    {
      StopSpeechProcessing(this, 0);
      if (*(this + 85))
      {
        v7 = -1;
        v8 = 1;
        do
        {
          usleep(0x1388u);
          if (!(v7 + 10 * (v8 / 0xA)))
          {
            StopSpeechProcessing(this, 0);
          }

          --v7;
          ++v8;
        }

        while (*(this + 85));
      }
    }
  }

  v9 = *(this + 26);
  if (v9)
  {
    CFRelease(v9);
    *(this + 26) = 0;
    *(this + 27) = 0;
  }

  if (theString)
  {
    result = CFStringGetLength(theString);
    if (!result)
    {
      return result;
    }

    if (!pthread_mutex_lock((this + 144)))
    {
      v10 = *(this + 28);
      if (v10)
      {
        (*(*v10 + 8))(v10);
        *(this + 28) = 0;
      }

      operator new();
    }

    TextWithEmojiDesc = MT3UnicodeString::getTextWithEmojiDesc(*(this + 28));
    Copy = CFStringCreateCopy(0, TextWithEmojiDesc);
    *(this + 26) = Copy;
    if (!Copy)
    {
      return -108;
    }

    *(this + 85) = 1;
    *(this + 43) = 0;
    *(this + 44) = 0;
    *(this + 358) = 0;
    TestOption(a3, @"PreflightThenPause");
    StartSpeechProcessing(this);
  }

  return 0;
}

const __CFDictionary *TestOption(const __CFDictionary *result, const __CFString *a2)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v2 = result;
      v3 = CFGetTypeID(result);
      if (v3 == CFBooleanGetTypeID())
      {
        v4 = CFBooleanGetValue(v2) == 0;
      }

      else
      {
        v5 = CFGetTypeID(v2);
        if (v5 != CFNumberGetTypeID())
        {
          return 0;
        }

        valuePtr = 0;
        Value = CFNumberGetValue(v2, kCFNumberSInt8Type, &valuePtr);
        if (valuePtr)
        {
          v4 = Value == 0;
        }

        else
        {
          v4 = 1;
        }
      }

      return !v4;
    }
  }

  return result;
}

uint64_t SpeechChannelManager::UseVoice(SpeechChannelManager *this, VoiceSpec *a2, __CFBundle *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    result = -50;
    goto LABEL_27;
  }

  if (!*(this + 85))
  {
    ClearSpeechProcessing(this);
    if (*a2 == *(this + 32))
    {
      v9 = *a2;
      *(this + 1) = a3;
      v10 = (this + 8);
      v11 = *(this + 31);
      *(this + 32) = v9;
      if (v11)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v12 = *(this + 33);
    if (v12)
    {
      free(v12);
      *(this + 33) = 0;
    }

    if (!*(this + 34))
    {
LABEL_19:
      v16 = *(this + 37);
      if (v16)
      {
        free(v16);
        *(this + 37) = 0;
      }

      v17 = *(this + 31);
      if (v17)
      {
        CFRelease(v17);
        *(this + 31) = 0;
      }

      v18 = *a2;
      *(this + 1) = a3;
      v10 = (this + 8);
      *(this + 32) = v18;
LABEL_24:
      *(this + 31) = SpeechChannelManager::ReadVoicePitchCoefficients(a3, v7);
LABEL_25:
      if (!*(this + 33))
      {
        result = SpeechChannelManager::ReadPCMVoiceData(*(this + 1), *(this + 32), this + 38, this + 35, this + 34, v8);
        if (result < 0)
        {
          goto LABEL_27;
        }

        SpeechChannelManager::ReadVoiceDescription(*v10, (this + 264), v20);
        if (!*(this + 33))
        {
          Identifier = CFBundleGetIdentifier(a3);
          CFStringGetCString(Identifier, buffer, 200, 0x8000100u);
          asl_log(0, 0, 3, "SpeechChannelManager::UseVoice - %s voiceDescription file reading failed", buffer);
          result = -241;
          goto LABEL_27;
        }
      }

      InitSpeechProcessing(this);
    }

    v13 = *(this + 64);
    if (v13 == 1734437985)
    {
      v15 = *(this + 38);
      if (!v15)
      {
LABEL_18:
        SLMMapCache::Unmap(*(this + 34), v7);
        *(this + 34) = 0;
        goto LABEL_19;
      }

      PROWReader::~PROWReader(v15);
    }

    else
    {
      if (v13 != 1835364215)
      {
        goto LABEL_18;
      }

      v14 = *(this + 38);
      if (!v14)
      {
        goto LABEL_18;
      }

      MEOWReader::~MEOWReader(v14);
    }

    MEMORY[0x259C6DA90]();
    goto LABEL_18;
  }

  result = -231;
LABEL_27:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

CFPropertyListRef SpeechChannelManager::ReadVoicePitchCoefficients(SpeechChannelManager *this, __CFBundle *a2)
{
  v2 = CFBundleCopyResourceURL(this, @"PitchCoeffs.plist", 0, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFReadStreamCreateWithFile(0, v2);
  if (v4)
  {
    v5 = v4;
    CFReadStreamOpen(v4);
    v6 = CFPropertyListCreateWithStream(0, v5, 0, 0, 0, 0);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

uint64_t SpeechChannelManager::ReadPCMVoiceData(SpeechChannelManager *this, __CFBundle *a2, void *a3, MTBEVoiceContents *a4, unint64_t *a5, void **a6)
{
  v8 = a2;
  v27 = *MEMORY[0x277D85DE8];
  v10 = CFBundleCopyResourceURL(this, @"PCMWave", 0, 0);
  v23 = 0;
  if (v10)
  {
    v12 = v10;
    *buffer = &unk_2868F4920;
    v26 = v8 == 1835364215;
    v13 = SLMMapCache::Map(v10, buffer, v11);
    v23 = v13;
    a4->var0 = v25;
    CFRelease(v12);
    if (v13 == 0xFFFFFFFFLL)
    {
      v15 = *MEMORY[0x277D85DF8];
      v16 = __error();
      fprintf(v15, "Speech Synthesis can't map voice file (%d)\n", *v16);
      v23 = 0;
    }

    else if (v13 && *&buffer[8] != -1)
    {
      if (v26)
      {
        MEOWReader::AdvisePreload(*&buffer[8], &v23, v25);
      }

      else
      {
        v21 = 0;
        v22 = 0;
        LODWORD(v22) = a4->var0;
        fcntl(*&buffer[8], 44, &v21);
      }

      if (v8 != 1835364215)
      {
        close(*&buffer[8]);
      }
    }

    SLMMapHint::~SLMMapHint(buffer);
    v14 = v23;
  }

  else
  {
    v14 = 0;
  }

  v17 = v8 == 1734437985 || v8 == 1835364215;
  if (!v17 || v14)
  {
    if (v8 == 1835364215)
    {
      LODWORD(v25) = 0;
      *buffer = *"ceda caa";
      if (AudioComponentCount(buffer))
      {
        operator new();
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        SpeechChannelManager::ReadPCMVoiceData();
      }

      result = -241;
    }

    else
    {
      if (v8 == 1734437985)
      {
        operator new();
      }

      result = 0;
      *a3 = v14;
    }
  }

  else
  {
    Identifier = CFBundleGetIdentifier(this);
    CFStringGetCString(Identifier, buffer, 200, 0x8000100u);
    asl_log(0, 0, 3, "SpeechChannelManager::ReadPCMVoiceData - %s PCMWave file not found", buffer);
    result = -43;
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_257B0F074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  SLMMapHint::~SLMMapHint(va);
  _Unwind_Resume(a1);
}

uint64_t SpeechChannelManager::ReadVoiceDescription(SpeechChannelManager *this, __CFBundle *a2, void **a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0;
  if (OpenResourceFile(this, @"VoiceDescription", &v21))
  {
    Identifier = CFBundleGetIdentifier(this);
    CFStringGetCString(Identifier, &buffer, 200, 0x8000100u);
    asl_log(0, 0, 3, "SpeechChannelManager::ReadVoiceDescription VoiceDescription file -  Open %s failed with code %ld");
LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  if (fstat(v21, &buffer))
  {
    goto LABEL_4;
  }

  st_size = buffer.st_size;
  v6 = malloc_type_malloc(buffer.st_size, 0xC15436DuLL);
  if (v6 && read(v21, v6, st_size) != st_size)
  {
    free(v6);
    v11 = *__error();
    asl_log(0, 0, 3, "SpeechChannelManager::ReadVoiceDescription -  Read failed with code %d");
    goto LABEL_4;
  }

  v10 = vrev32_s8(*(v6 + 4));
  *(v6 + 4) = v10;
  *(v6 + 3) = bswap32(*(v6 + 3));
  *(v6 + 42) = vrev16_s8(*(v6 + 336));
  *(v6 + 172) = bswap32(*(v6 + 172)) >> 16;
  *(v6 + 346) = vrev32q_s8(*(v6 + 346));
  if (v10.i32[0] == 1734437985)
  {
LABEL_11:
    *(v6 + 362) = vrev16q_s8(*(v6 + 362));
    *(v6 + 189) = bswap32(*(v6 + 189)) >> 16;
    *(v6 + 95) = bswap32(*(v6 + 95));
    *(v6 + 48) = vrev16_s8(*(v6 + 384));
    *(v6 + 98) = bswap32(*(v6 + 98));
    *(v6 + 396) = vrev16q_s8(*(v6 + 396));
    goto LABEL_5;
  }

  if (v10.i32[0] != 1836346163)
  {
    if (v10.i32[0] != 1835364215)
    {
      fwrite("Unknown voice creator in SpeechChannelManager::ReadVoiceDescription\n", 0x44uLL, 1uLL, *MEMORY[0x277D85DF8]);
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v12 = vrev16q_s8(*(v6 + 378));
  *(v6 + 362) = vrev16q_s8(*(v6 + 362));
  *(v6 + 378) = v12;
  v13 = vrev16q_s8(*(v6 + 410));
  *(v6 + 394) = vrev16q_s8(*(v6 + 394));
  *(v6 + 410) = v13;
  *(v6 + 426) = vrev16_s8(*(v6 + 426));
  *(v6 + 434) = bswap32(*(v6 + 434));
  v14 = vrev16_s8(*(v6 + 438));
  *(v6 + 446) = bswap32(*(v6 + 446));
  *(v6 + 225) = bswap32(*(v6 + 225)) >> 16;
  *(v6 + 226) = bswap32(*(v6 + 226)) >> 16;
  *(v6 + 227) = bswap32(*(v6 + 227)) >> 16;
  v15 = 456;
  *(v6 + 438) = v14;
  do
  {
    *&v6[v15] = vrev16q_s8(*&v6[v15]);
    v15 += 16;
  }

  while (v15 != 552);
  do
  {
    *&v6[v15] = vrev16q_s8(*&v6[v15]);
    v15 += 16;
  }

  while (v15 != 648);
  *(v6 + 324) = bswap32(*(v6 + 324)) >> 16;
  *(v6 + 325) = bswap32(*(v6 + 325)) >> 16;
  *(v6 + 163) = bswap32(*(v6 + 163));
  *(v6 + 41) = vrev16q_s8(*(v6 + 41));
  *(v6 + 336) = bswap32(*(v6 + 336)) >> 16;
  *(v6 + 337) = bswap32(*(v6 + 337)) >> 16;
  *(v6 + 338) = bswap32(*(v6 + 338)) >> 16;
  *(v6 + 678) = vrev32q_s8(*(v6 + 678));
  *(v6 + 694) = vrev32q_s8(*(v6 + 694));
  v16 = *(v6 + 355);
  v17 = __rev16(v16);
  *(v6 + 355) = v17;
  if (v16)
  {
    v18 = v17;
    v19 = 356;
    do
    {
      *&v6[2 * v19] = bswap32(*&v6[2 * v19]) >> 16;
      v20 = v19 - 355;
      ++v19;
    }

    while (v20 < v18);
  }

LABEL_5:
  *a2 = v6;
  result = close(v21);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MEOWMMapHint::MappedSize(MEOWMMapHint *this)
{
  if (*(this + 32) == 1)
  {
    return MEOWReader::MappedSize(*(this + 2), *(this + 2));
  }

  else
  {
    return *(this + 2);
  }
}

void SpeechChannelManager::RegisterCurSpeechState(uint64_t a1, int a2)
{
  if (*(a1 + 256) != 1835364215)
  {
    v4 = *(a1 + 272);
    if (v4)
    {
      v5 = *(a1 + 340);
      if (v5 != a2)
      {
        if (a2 == 2)
        {
          *(a1 + 288) = 0;
          if (mlock(v4, *(a1 + 280)))
          {
            v9 = *(a1 + 280);
            if (v9)
            {
              v10 = 0;
              v11 = *(a1 + 272);
              v12 = *(a1 + 288);
              do
              {
                v12 += *(v11 + v10);
                *(a1 + 288) = v12;
                v10 += 4096;
              }

              while (v10 < v9);
            }
          }
        }

        else if (v5 == 2)
        {
          munlock(v4, *(a1 + 280));
        }
      }
    }
  }

  v6 = (*(a1 + 340) & 0xFFFFFFFE) == 2;
  *(a1 + 340) = a2;
  if (((((a2 & 0xFFFFFFFE) != 2) ^ v6) & 1) == 0)
  {
    SpeechBusy();
  }

  v7 = *(a1 + 432);
  if (v7)
  {
    global_queue = dispatch_get_global_queue(0, 0);

    dispatch_async(global_queue, v7);
  }
}

void SpeechChannelManager::RegisterCurSpeechError(SpeechChannelManager *this, CFIndex a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (!pthread_mutex_lock((this + 80)))
    {
      ++*(this + 172);
      *(this + 178) = a2;
      *(this + 358) = a3;
      if (!*(this + 173))
      {
        *(this + 173) = a2;
        *(this + 348) = a3;
      }

      pthread_mutex_unlock((this + 80));
    }

    if (*(this + 46))
    {
      if (*(this + 424) == 1)
      {
        userInfoKeys[0] = @"SpokenString";
        userInfoKeys[1] = @"CharacterOffset";
        userInfoValues = *(this + 26);
        valuePtr = a3;
        cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        v6 = CFErrorCreateWithUserInfoKeysAndValues(0, *MEMORY[0x277CBEE40], a2, userInfoKeys, &userInfoValues, 2);
        CFRelease(cf);
        if (v6)
        {
          v7 = *(this + 46);
          if (v7 && *(this + 424) == 1)
          {
            v7(*(this + 9), *(this + 39), v6);
          }

          CFRelease(v6);
        }
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t SpeechChannelManager::GetCurSpeechErrors(SpeechChannelManager *this)
{
  *__p = 0u;
  v11 = 0u;
  v9 = 0u;
  pthread_mutex_lock((this + 80));
  valuePtr = *(this + 172);
  v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  SLCFDictionaryBuilder::push_back(&v9, @"Count", v2);
  valuePtr = *(this + 173);
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  SLCFDictionaryBuilder::push_back(&v9, @"OldestCode", v3);
  valuePtr = *(this + 178);
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  SLCFDictionaryBuilder::push_back(&v9, @"NewestCode", v4);
  valuePtr = *(this + 348);
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  SLCFDictionaryBuilder::push_back(&v9, @"OldestCharacterOffset", v5);
  valuePtr = *(this + 358);
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  SLCFDictionaryBuilder::push_back(&v9, @"NewestCharacterOffset", v6);
  pthread_mutex_unlock((this + 80));
  Dictionary = SLCFDictionaryBuilder::CreateDictionary(&v9);
  if (__p[1])
  {
    *&v11 = __p[1];
    operator delete(__p[1]);
  }

  SLCFArrayBuilder::~SLCFArrayBuilder(&v9);
  return Dictionary;
}

void SLCFDictionaryBuilder::~SLCFDictionaryBuilder(SLCFDictionaryBuilder *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  SLCFArrayBuilder::~SLCFArrayBuilder(this);
}

CFComparisonResult SpeechChannelManager::CopySpeechProperty(SpeechChannelManager *this, CFStringRef theString1, const void **a3)
{
  if (!a3)
  {
    return -50;
  }

  if (CFStringCompare(theString1, @"stat", 0) == kCFCompareEqualTo)
  {
    *__p = 0u;
    v27 = 0u;
    v25 = 0u;
    valuePtr = (*(this + 85) - 1) < 2;
    v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    SLCFDictionaryBuilder::push_back(&v25, @"OutputBusy", v8);
    valuePtr = *(this + 85) == 3;
    v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    SLCFDictionaryBuilder::push_back(&v25, @"OutputPaused", v9);
    v10 = *(this + 26);
    if (v10)
    {
      LODWORD(v10) = CFStringGetLength(v10);
    }

    valuePtr = v10 - *(this + 54);
    v11 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    SLCFDictionaryBuilder::push_back(&v25, @"NumberOfCharactersLeft", v11);
    if (*(this + 85) == 2 && (v12 = *(this + 4)) != 0)
    {
      v13 = *(v12 + 46);
    }

    else
    {
      v13 = -1;
    }

    valuePtr = v13;
    v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    SLCFDictionaryBuilder::push_back(&v25, @"PhonemeCode", v14);
    *a3 = SLCFDictionaryBuilder::CreateDictionary(&v25);
    if (__p[1])
    {
      *&v27 = __p[1];
      operator delete(__p[1]);
    }

    SLCFArrayBuilder::~SLCFArrayBuilder(&v25);
    return 0;
  }

  if (CFStringCompare(theString1, @"rate", 0) == kCFCompareEqualTo)
  {
    v15 = *(*(this + 4) + 8);
LABEL_34:
    *&v25 = v15 * 0.000015259;
    v16 = kCFNumberFloatType;
LABEL_35:
    CurSpeechErrors = CFNumberCreate(0, v16, &v25);
    goto LABEL_36;
  }

  if (CFStringCompare(theString1, @"pbas", 0) == kCFCompareEqualTo)
  {
    v15 = *(*(this + 4) + 12);
    goto LABEL_34;
  }

  if (CFStringCompare(theString1, @"pmod", 0) == kCFCompareEqualTo)
  {
    v15 = *(*(this + 4) + 16);
    goto LABEL_34;
  }

  if (CFStringCompare(theString1, @"volm", 0) == kCFCompareEqualTo)
  {
    v15 = *(*(this + 4) + 20);
    goto LABEL_34;
  }

  if (CFStringCompare(theString1, @"erro", 0) == kCFCompareEqualTo)
  {
    CurSpeechErrors = SpeechChannelManager::GetCurSpeechErrors(this);
    goto LABEL_36;
  }

  if (CFStringCompare(theString1, @"inpt", 0) == kCFCompareEqualTo)
  {
    if ((*(*(this + 4) + 48) & 0xF) == 3)
    {
      result = kCFCompareEqualTo;
      v19 = &kSpeechModeTune;
    }

    else
    {
      result = kCFCompareEqualTo;
      if ((*(*(this + 4) + 48) & 0xF) == 2)
      {
        v19 = &kSpeechModePhoneme;
      }

      else
      {
        v19 = &kSpeechModeText;
      }
    }

    goto LABEL_50;
  }

  result = CFStringCompare(theString1, @"char", 0);
  if (result == kCFCompareEqualTo)
  {
    v20 = (*(*(this + 4) + 48) & 0x10) == 0;
    goto LABEL_45;
  }

  result = CFStringCompare(theString1, @"nmbr", 0);
  if (result == kCFCompareEqualTo)
  {
    v20 = (*(*(this + 4) + 48) & 0x20) == 0;
LABEL_45:
    if (v20)
    {
      v19 = &kSpeechModeNormal;
    }

    else
    {
      v19 = &kSpeechModeLiteral;
    }

LABEL_50:
    v18 = *v19;
    goto LABEL_38;
  }

  if (CFStringCompare(theString1, @"sync", 0) == kCFCompareEqualTo)
  {
    LODWORD(v25) = *(this + 84);
LABEL_52:
    v16 = kCFNumberIntType;
    goto LABEL_35;
  }

  if (CFStringCompare(theString1, @"phsy", 0) == kCFCompareEqualTo)
  {
    CurSpeechErrors = SLDictLookup::CreatePhonemeSymbols(*(this + 2), v7);
    goto LABEL_36;
  }

  if (CFStringCompare(theString1, @"popt", 0) == kCFCompareEqualTo)
  {
    v21 = *(this + 40);
LABEL_56:
    *&v25 = v21;
    v16 = kCFNumberLongType;
    goto LABEL_35;
  }

  if (CFStringCompare(theString1, kSpeechDiphoneOptionsProperty, 0) == kCFCompareEqualTo)
  {
    v21 = *(this + 41);
    goto LABEL_56;
  }

  if (CFStringCompare(theString1, kSpeechDiphoneLogProperty, 0))
  {
    if (CFStringCompare(theString1, kSpeechDiphoneStatisticsProperty, 0) == kCFCompareEqualTo)
    {
      v24 = *(this + 30);
      if (!v24)
      {
        v18 = 0;
        goto LABEL_37;
      }

      CurSpeechErrors = MTMBDiphoneStatistics::CreateArray(v24);
LABEL_36:
      v18 = CurSpeechErrors;
LABEL_37:
      result = kCFCompareEqualTo;
LABEL_38:
      *a3 = v18;
      return result;
    }

    if (CFStringCompare(theString1, kSpeechPreloadVoiceMetadataProperty, 0))
    {
      return -231;
    }

    if (*(this + 64) == 1835364215)
    {
      MEOWReader::PercentageResidentMetadata(*(this + 38));
    }

    LODWORD(v25) = 100;
    goto LABEL_52;
  }

  v22 = *(this + 29);
  *a3 = v22;
  if (!v22)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  result = kCFCompareEqualTo;
  *(this + 29) = Mutable;
  return result;
}

uint64_t SpeechChannelManager::GetSpeechInfo(SpeechChannelManager *this, int a2, void *a3)
{
  if (a2 != 2020896356 || *a3 != 1836346163 || *(this + 64) != 1836346163 || *(a3 + 1) != 1986290036)
  {
    return -231;
  }

  memcpy(*(a3 + 1), (*(this + 33) + 362), 0x160uLL);
  return 0;
}

uint64_t SpeechChannelManager::SetSpeechProperty(SpeechChannelManager *this, CFStringRef theString1, const __CFNumber *a3)
{
  if (CFStringCompare(theString1, @"sdcb", 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      valuePtr = 0;
      Value = CFNumberGetValue(a3, kCFNumberLongType, &valuePtr);
      v7 = valuePtr;
      if (!Value)
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    *(this + 48) = v7;
    return 0;
  }

  if (CFStringCompare(theString1, @"phcb", 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      valuePtr = 0;
      v8 = CFNumberGetValue(a3, kCFNumberLongType, &valuePtr);
      v9 = valuePtr;
      if (!v8)
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    *(this + 51) = v9;
    return 0;
  }

  if (CFStringCompare(theString1, @"sycb", 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      valuePtr = 0;
      v10 = CFNumberGetValue(a3, kCFNumberLongType, &valuePtr);
      v11 = valuePtr;
      if (!v10)
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    *(this + 49) = v11;
    return 0;
  }

  if (CFStringCompare(theString1, @"wccb", 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      valuePtr = 0;
      v12 = CFNumberGetValue(a3, kCFNumberLongType, &valuePtr);
      v13 = valuePtr;
      if (!v12)
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    *(this + 52) = v13;
    return 0;
  }

  if (CFStringCompare(theString1, @"tdcb", 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      valuePtr = 0;
      v14 = CFNumberGetValue(a3, kCFNumberLongType, &valuePtr);
      v15 = valuePtr;
      if (!v14)
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    *(this + 47) = v15;
    return 0;
  }

  if (CFStringCompare(theString1, @"eccb", 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      valuePtr = 0;
      v16 = CFNumberGetValue(a3, kCFNumberLongType, &valuePtr);
      v17 = valuePtr;
      if (!v16)
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    *(this + 46) = v17;
    return 0;
  }

  if (CFStringCompare(theString1, kSpeechLatencyCallBack, 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      valuePtr = 0;
      v18 = CFNumberGetValue(a3, kCFNumberLongType, &valuePtr);
      v19 = valuePtr;
      if (!v18)
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    *(this + 50) = v19;
    return 0;
  }

  if (CFStringCompare(theString1, @"refc", 0) == kCFCompareEqualTo)
  {
    *(this + 39) = longVal(a3);
    return 0;
  }

  if (CFStringCompare(theString1, @"rate", 0) == kCFCompareEqualTo)
  {
    v20 = fixedVal(a3);
    *(*(this + 4) + 8) = v20;
    *(*(this + 5) + 8) = v20;
    return 0;
  }

  if (CFStringCompare(theString1, @"volm", 0) == kCFCompareEqualTo)
  {
    v22 = fixedVal(a3);
    *(*(this + 4) + 20) = v22;
    *(*(this + 5) + 20) = v22;
    return 0;
  }

  if (CFStringCompare(theString1, @"pbas", 0) == kCFCompareEqualTo)
  {
    v23 = fixedVal(a3);
    *(*(this + 4) + 12) = v23;
    *(*(this + 5) + 12) = v23;
    return 0;
  }

  if (CFStringCompare(theString1, @"pmod", 0) == kCFCompareEqualTo)
  {
    v24 = fixedVal(a3);
    *(*(this + 4) + 16) = v24;
    *(*(this + 5) + 16) = v24;
    return 0;
  }

  if (CFStringCompare(theString1, @"rset", 0) == kCFCompareEqualTo)
  {
    ResetSpeechProcessing(this);
    return 0;
  }

  if (CFStringCompare(theString1, @"inpt", 0) == kCFCompareEqualTo)
  {
    if (!a3)
    {
      return -50;
    }

    if (CFStringCompare(a3, @"TEXT", 0))
    {
      if (CFStringCompare(a3, @"PHON", 0))
      {
        if (CFStringCompare(a3, @"TUNE", 0))
        {
          return -50;
        }

        v25 = *(this + 4);
        v26 = *(v25 + 48) & 0xFFFFFFF0 | 3;
      }

      else
      {
        v25 = *(this + 4);
        v26 = *(v25 + 48) & 0xFFFFFFF0 | 2;
      }
    }

    else
    {
      v25 = *(this + 4);
      v26 = *(v25 + 48) & 0xFFFFFFF0;
    }

LABEL_120:
    *(v25 + 48) = v26;
    return 0;
  }

  if (CFStringCompare(theString1, @"char", 0) == kCFCompareEqualTo)
  {
    if (!a3)
    {
      return -50;
    }

    if (CFStringCompare(a3, @"NORM", 0))
    {
      if (CFStringCompare(a3, @"LTRL", 0))
      {
        return -50;
      }

      v25 = *(this + 4);
      v26 = *(v25 + 48) | 0x10;
    }

    else
    {
      v25 = *(this + 4);
      v26 = *(v25 + 48) & 0xFFFFFFEF;
    }

    goto LABEL_120;
  }

  if (CFStringCompare(theString1, @"nmbr", 0) == kCFCompareEqualTo)
  {
    if (!a3)
    {
      return -50;
    }

    if (CFStringCompare(a3, @"NORM", 0))
    {
      if (CFStringCompare(a3, @"LTRL", 0))
      {
        return -50;
      }

      v25 = *(this + 4);
      v26 = *(v25 + 48) | 0x20;
    }

    else
    {
      v25 = *(this + 4);
      v26 = *(v25 + 48) & 0xFFFFFFDF;
    }

    goto LABEL_120;
  }

  if (CFStringCompare(theString1, @"dlim", 0) == kCFCompareEqualTo)
  {
    valuePtr = 0;
    if (CFDictionaryGetValueIfPresent(a3, @"Prefix", &valuePtr))
    {
      Length = CFStringGetLength(valuePtr);
      if (Length)
      {
        if (Length != 1)
        {
          CFStringGetCharacterAtIndex(valuePtr, 1);
        }

        CFStringGetCharacterAtIndex(valuePtr, 0);
      }
    }

    if (CFDictionaryGetValueIfPresent(a3, @"Suffix", &valuePtr))
    {
      v28 = CFStringGetLength(valuePtr);
      if (v28)
      {
        if (v28 != 1)
        {
          CFStringGetCharacterAtIndex(valuePtr, 3);
        }

        CFStringGetCharacterAtIndex(valuePtr, 2);
      }
    }

    return 0;
  }

  if (CFStringCompare(theString1, @"opaf", 0) == kCFCompareEqualTo)
  {
    if (a3 | *(this + 57))
    {
      SpeechChannelManager::DisposeSoundChannel(this, 1);
      if (a3)
      {
        if (ExtAudioFileCreateWithURL(a3, 0x41494646u, &SpeechChannelManager::SetSpeechProperty(__CFString const*,void const*)::sDefaultAudioFormat, 0, 1u, this + 57))
        {
          *(this + 57) = -1;
        }

        else
        {
          *(this + 464) = 1;
        }
      }
    }

    return 0;
  }

  if (CFStringCompare(theString1, @"opax", 0) == kCFCompareEqualTo)
  {
    if (a3 | *(this + 57))
    {
      SpeechChannelManager::DisposeSoundChannel(this, 1);
      if (a3)
      {
        CFNumberGetValue(a3, kCFNumberLongType, this + 456);
      }
    }

    return 0;
  }

  if (CFStringCompare(theString1, @"chnm", 0) == kCFCompareEqualTo)
  {
    v29 = *(this + 59);
    if (v29)
    {
      CFRelease(v29);
    }

    *(this + 59) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    v30 = *(this + 56);
    if (v30)
    {
      MTBESoundOutput::SetChannelMap(v30, *(this + 59));
    }

    return 0;
  }

  if (CFStringCompare(theString1, @"popt", 0) == kCFCompareEqualTo)
  {
    *(this + 40) = longVal(a3);
    return 0;
  }

  if (CFStringCompare(theString1, kSpeechDiphoneOptionsProperty, 0) == kCFCompareEqualTo)
  {
    *(this + 41) = longVal(a3);
    v31 = *(this + 29);
    if (v31)
    {
      CFRelease(v31);
    }

    v32 = *(this + 30);
    if (v32)
    {
      CFRelease(v32);
    }

    v33 = *(this + 41);
    if (v33)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      v33 = *(this + 41);
    }

    else
    {
      Mutable = 0;
    }

    *(this + 29) = Mutable;
    if ((v33 & 2) != 0)
    {
      operator new();
    }

    *(this + 30) = 0;
    return 0;
  }

  if (CFStringCompare(theString1, @"xtnd", 0) == kCFCompareEqualTo)
  {
    v35 = CFDictionaryGetValue(a3, @"creator");
    if (longVal(v35) == 1836346163 && *(this + 64) == 1836346163)
    {
      v36 = CFDictionaryGetValue(a3, @"selector");
      if (longVal(v36) == 1986290036)
      {
        v37 = CFDictionaryGetValue(a3, @"data");
        v38 = *(this + 33);
        BytePtr = CFDataGetBytePtr(v37);
        memmove((v38 + 362), BytePtr, 0x160uLL);
        return 0;
      }
    }

    return -231;
  }

  if (CFStringCompare(theString1, kSpeechPitchCoeffProperty, 0) == kCFCompareEqualTo)
  {
    v40 = *(this + 31);
    if (v40)
    {
      CFRelease(v40);
    }

    Copy = CFDictionaryCreateCopy(0, a3);
    *(this + 31) = Copy;
    if (!a3 || Copy)
    {
      return 0;
    }

    return -50;
  }

  if (CFStringCompare(theString1, kSpeechPreloadVoiceMetadataProperty, 0) == kCFCompareEqualTo)
  {
    if (*(this + 64) == 1835364215)
    {
      v42 = *(this + 38);
      v43 = longVal(a3);
      MEOWReader::MakeMetadataResident(v42, v43);
    }

    return 0;
  }

  if (CFStringCompare(theString1, kSpeechChannelStatusChangeBlock, 0) == kCFCompareEqualTo)
  {
    *(this + 54) = _Block_copy(a3);
    return 0;
  }

  if (CFStringCompare(theString1, kSpeechChannelAudioSessionID, 0))
  {
    return -231;
  }

  *(this + 110) = longVal(a3);
  return 0;
}

const __CFNumber *longVal(const __CFNumber *result)
{
  if (result)
  {
    valuePtr = 0;
    if (CFNumberGetValue(result, kCFNumberLongType, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int fixedVal(const __CFNumber *a1)
{
  if (a1)
  {
    valuePtr = 0.0;
    LODWORD(a1) = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
    if (a1)
    {
      LODWORD(a1) = vcvts_n_s32_f32(valuePtr, 0x10uLL);
    }
  }

  return a1;
}

void MEOWMMapHint::~MEOWMMapHint(MEOWMMapHint *this)
{
  SLMMapHint::~SLMMapHint(this);

  JUMPOUT(0x259C6DA90);
}

void *std::__list_imp<SpeechChannelManager *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void MTMBDiphoneStatistics::MTMBDiphoneStatistics(MTMBDiphoneStatistics *this)
{
  for (i = 0; i != 80000; i += 32)
  {
    MEOWVectorBase::MEOWVectorBase((this + i), 8);
  }
}

void sub_257B1096C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = -v2;
    v5 = (v1 - 32);
    do
    {
      MEOWVectorBase::~MEOWVectorBase(v5);
      v5 = (v6 - 32);
      v4 += 32;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _GLOBAL__sub_I_MT3SpeechChannelMgt_cp()
{
  sListOfActiveSpeechChannels = &sListOfActiveSpeechChannels;
  qword_2811816F8 = &sListOfActiveSpeechChannels;
  qword_281181700 = 0;
  return __cxa_atexit(std::list<SpeechChannelManager *>::~list, &sListOfActiveSpeechChannels, &dword_257B07000);
}

void MTBENotifier::MTBENotifier(MTBENotifier *this)
{
  this->var0 = &unk_2868F4960;
  this->var4 = 0x10000;
  this->var6 = 0;
  this->var7 = 0;
  *this->var8 = 0x5D005D005B005BLL;
  *&this->var5.count = 0;
  *(&this->var5.oldPos + 4) = 0;
  this->var5.newPos = 0;
}

{
  this->var0 = &unk_2868F4960;
  this->var4 = 0x10000;
  this->var6 = 0;
  this->var7 = 0;
  *this->var8 = 0x5D005D005B005BLL;
  *&this->var5.count = 0;
  *(&this->var5.oldPos + 4) = 0;
  this->var5.newPos = 0;
}

MTBENotifier *MTBENotifier::NotifyError(MTBENotifier *this, OSErr a2, uint64_t a3)
{
  count = this->var5.count;
  this->var5.count = count + 1;
  if (!count)
  {
    this->var5.oldest = a2;
    this->var5.oldPos = a3;
  }

  this->var5.newest = a2;
  this->var5.newPos = a3;
  return this;
}

double MTBENotifier::ResetFromVoice(MTBENotifier *this, void *a2, int a3)
{
  if (a3)
  {
    if ((MTBEDebugFlags::sMTXDebug & 4) != 0)
    {
      fprintf(*MEMORY[0x277D85DF8], "MTX: Reset vol %x -> %x behavior %x -> %x\n", this->var4, 0x10000, this->var7, 0);
    }

    this->var7 = 0;
    this->var4 = 0x10000;
    result = 6.45302995e-307;
    *this->var8 = 0x5D005D005B005BLL;
    *&this->var5.count = 0;
    *(&this->var5.oldPos + 4) = 0;
    this->var5.newPos = 0;
  }

  return result;
}

void MTBEDelayedNotifier::MTBEDelayedNotifier(MTBEDelayedNotifier *this, MTBENotifier *a2)
{
  *(this + 5) = 0x10000;
  *(this + 23) = 0;
  *(this + 12) = 0;
  *(this + 52) = 0x5D005D005B005BLL;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 38) = 0;
  *this = &unk_2868F49D8;
  *(this + 8) = a2;
  *(this + 18) = 0;
  MEOWVectorBase::MEOWVectorBase((this + 80), 8);
  MEOWVectorBase::MEOWVectorBase((this + 112), 8);
}

void MTBEDelayedNotifier::~MTBEDelayedNotifier(MTBEDelayedNotifier *this)
{
  *this = &unk_2868F49D8;
  for (i = *(this + 16); i; *(this + 16) = i)
  {
    v3 = *(*(this + 14) + 8 * i - 8);
    if (v3)
    {
      (*(*v3 + 16))(v3);
      i = *(this + 16);
    }

    --i;
  }

  MEOWVectorBase::~MEOWVectorBase(this + 14);
  MEOWVectorBase::~MEOWVectorBase(this + 10);
}

{
  MTBEDelayedNotifier::~MTBEDelayedNotifier(this);

  JUMPOUT(0x259C6DA90);
}

void *MTBEDelayedNotifier::StartUnit(MTBEDelayedNotifier *this)
{
  *(this + 9) = 0x3F80000000000000;
  result = MEOWVectorBase::Append(this + 10);
  *(*(this + 10) + 8 * *(this + 12) - 8) = 0;
  return result;
}

void MTBEDelayedNotifier::ForwardUnit(MTBEDelayedNotifier *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    v3 = **(this + 10);
    if (!v3)
    {
      goto LABEL_6;
    }

    for (i = 0; i != v3; ++i)
    {
      v5 = *(*(this + 14) + 8 * i);
      (**v5)(v5, *(this + 8));
      (*(*v5 + 16))(v5);
    }

    v1 = *(this + 12);
    if (!v1)
    {
      MEOWVectorBase::clear(this + 10);

      MEOWVectorBase::clear(this + 14);
    }

    else
    {
LABEL_6:
      memmove(*(this + 10), (*(this + 10) + 8), 8 * v1 - 8);
      v6 = *(this + 12);
      v7 = v6 - 1;
      if (*(this + 13) < (v6 - 1))
      {
        MEOWVectorBase::Allocate((this + 80), v6 - 1, 1);
      }

      v8 = *(this + 14);
      *(this + 12) = v7;
      memmove(v8, &v8[8 * v3], 8 * (*(this + 16) - v3));
      v9 = *(this + 16);
      v10 = v9 - v3;
      if (*(this + 17) < (v9 - v3))
      {
        MEOWVectorBase::Allocate((this + 112), v9 - v3, 1);
      }

      *(this + 16) = v10;
    }
  }

  else
  {
    v11 = *MEMORY[0x277D85DF8];

    fwrite("MacinTalk: No unit callbacks to forward!\n", 0x29uLL, 1uLL, v11);
  }
}

void *MEOWVectorBase::Append(void *this)
{
  v1 = this;
  v2 = this[2];
  if (v2 == this[3])
  {
    this = MEOWVectorBase::Allocate(this, v2 + 1, 0);
    v2 = v1[2];
  }

  v1[2] = v2 + 1;
  return this;
}

void MTBEPhraseParam::MTBEPhraseParam(MTBEPhraseParam *this, MTBEVoiceContents a2, MTFESpeechElement *a3, MTBENotifier *a4, MTBENotifier *a5, MTBENotifier *a6, MTBEPersistentParam *a7)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 4) = a6;
  *(this + 5) = a7;
  *(this + 6) = 0;
  *(this + 61) = 0;
  v7 = MTBEDebugFlags::sMTXDebug;
  v8 = vdupq_n_s64(MTBEDebugFlags::sMTXDebug);
  *v8.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vceqzq_s64(vandq_s8(v8, xmmword_257B89310)), vceqzq_s64(vandq_s8(v8, xmmword_257B89320)))), 0x1000100010001);
  *(this + 14) = vuzp1_s8(*v8.i8, *v8.i8).u32[0];
  *(this + 60) = (v7 & 0x8000) == 0;
}

void MTBEPhraseProcessor::MTBEPhraseProcessor(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  *(a1 + 56) = a3[3];
  *(a1 + 40) = v8;
  *(a1 + 24) = v7;
  *(a1 + 8) = v6;
  *a1 = &unk_2868F4B70;
  *(a1 + 80) = a2;
  v9 = *a3;
  if (a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a3;
  }

  MTBEParam::MTBEParam(a1 + 88, a4, a2, v10, 0, *&v6);
  memcpy((a1 + 1392), (a1 + 88), 0x518uLL);
  *(a1 + 2696) = 1024;
  operator new[]();
}

void sub_257B113E8(_Unwind_Exception *a1)
{
  MEMORY[0x259C6DA90](v3, 0x10E0C4036EBA818);
  MTFEFrameFiller::~MTFEFrameFiller((v1 + 2728));
  v5 = *(v1 + 2704);
  if (v5)
  {
    MEMORY[0x259C6DA70](v5, v2);
  }

  _Unwind_Resume(a1);
}

void MTBEPhraseProcessor::~MTBEPhraseProcessor(MTBEPhraseProcessor *this)
{
  *this = &unk_2868F4B70;
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 529);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 532);
  if (v5)
  {
    MTBEPhraseMemo::~MTBEPhraseMemo(v5);
    MEMORY[0x259C6DA90]();
  }

  v6 = *(this + 533);
  if (v6)
  {
    (*(*v6 + 48))(v6);
  }

  MTFEFrameFiller::~MTFEFrameFiller((this + 2728));
  v7 = *(this + 338);
  if (v7)
  {
    MEMORY[0x259C6DA70](v7, 0x1000C80274DC3F3);
  }
}

{
  MTBEPhraseProcessor::~MTBEPhraseProcessor(this);

  JUMPOUT(0x259C6DA90);
}

void MTBEPhraseProcessor::ProcessPhrase(MTBEPhraseProcessor *this)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = (this + 88);
  MTBEParam::SetRate(this + 11, *(*(this + 3) + 10));
  v3 = MTBEParam::MidiToPitch(v2, *(*(this + 3) + 12) >> 8);
  MTBEParam::SetPitch(v2, v3);
  MTBEParam::SetModulation(v2, *(*(this + 3) + 16));
  MTBEParam::SetVolume(v2, *(*(this + 3) + 20));
  MTBEParam::SetRate(this + 174, *(*(this + 5) + 10));
  v4 = MTBEParam::MidiToPitch((this + 1392), *(*(this + 5) + 12) >> 8);
  MTBEParam::SetPitch(this + 1392, v4);
  MTBEParam::SetModulation(this + 1392, *(*(this + 5) + 16));
  MTBEParam::SetVolume(this + 696, *(*(this + 5) + 20));
  v33[0] = &unk_2868F4F40;
  v34 = 0;
  MTFEWord::MTFEWord(&v35, 0, 0);
  MTFESpeechVisitor::Visit(v33, *(this + 2));
  v32[0] = &unk_2868F7A98;
  MTFESpeechVisitor::Visit(v32, *(this + 2));
  v31[0] = &unk_2868F8BB8;
  MTFESpeechVisitor::Visit(v31, *(this + 2));
  if (kMTFEBoundaryModel)
  {
    MTBEDebugParams::GetParam(kMTFEBoundaryModel, &byte_27F8F08F8, byte_27F8F08F8);
    kMTFEBoundaryModel = 0;
  }

  v29 = &unk_2868F4E88;
  v30 = byte_27F8F08F8;
  MTFESpeechVisitor::Visit(&v29, *(this + 2));
  if (kMTFEBoundaryModel)
  {
    MTBEDebugParams::GetParam(kMTFEBoundaryModel, &byte_27F8F08F8, byte_27F8F08F8);
    kMTFEBoundaryModel = 0;
  }

  if (byte_27F8F08F8 == 1)
  {
    v12 = &unk_2868F8930;
    MTFESpeechVisitor::Visit(&v12, *(this + 2));
    MTFESpeechVisitor::~MTFESpeechVisitor(&v12);
  }

  MTFEMarkStress::MTFEMarkStress(v28, *(this + 10), v2, this + 1392, *(this + 3));
  MTFESpeechVisitor::Visit(v28, *(this + 2));
  v27[0] = &unk_2868F77E0;
  MTFESpeechVisitor::Visit(v27, *(this + 2));
  v24 = &unk_2868F57B8;
  v25 = &unk_2868F5860;
  v26 = &unk_2868F5908;
  MTFESpeechVisitor::Visit(&v24, *(this + 2));
  (**this)(this, *(this + 2));
  v23[0] = &unk_2868F8C40;
  MTFESpeechVisitor::Visit(v23, *(this + 2));
  v20[0] = &unk_2868F6158;
  v21 = 0;
  v22 = 0;
  MTFESpeechVisitor::Visit(v20, *(this + 2));
  if (*(this + 1391) == 1)
  {
    MTFEDuration::MTFEDuration(&v12, v2, *(this + 10));
    MTFESpeechVisitor::Visit(&v12, *(this + 2));
    MTFESpeechVisitor::~MTFESpeechVisitor(&v12);
  }

  (*(*this + 8))(this, *(this + 2));
  v5 = *(this + 4216);
  v6 = *(this + 1391);
  v17 = 0;
  v16[0] = &unk_2868F5DE0;
  v18 = v5;
  v19 = v6;
  MTFESpeechVisitor::Visit(v16, *(this + 2));
  if ((*(this + 65) & 1) == 0)
  {
    v12 = &unk_2868F5A38;
    v13[0] = &unk_2868F59B0;
    v14 = &v12;
    MTFESpeechVisitor::Visit(&v12, *(this + 2));
    v12 = &unk_2868F5A38;
    MTFESpeechVisitor::~MTFESpeechVisitor(v13);
    MTFESpeechVisitor::~MTFESpeechVisitor(&v12);
  }

  MTFEModDuration::MTFEModDuration(v11, v2, *(this + 10), *(this + 1057));
  MTFESpeechVisitor::Visit(v11, *(this + 2));
  (*(*this + 16))(this, *(this + 2));
  if (*(this + 65) == 1)
  {
    if (*(*(this + 6) + 80))
    {
      operator new();
    }

    operator new();
  }

  v10[0] = &unk_2868F5E98;
  v10[2] = v2;
  MTFESpeechVisitor::Visit(v10, *(this + 2));
  v7 = *(this + 10);
  v12 = &unk_2868F5AF0;
  v13[0] = this + 2696;
  v13[1] = v7;
  v14 = v2;
  MTFESpeechVisitor::Visit(&v12, *(this + 2));
  MTFESpeechVisitor::~MTFESpeechVisitor(&v12);
  MTFESpeechVisitor::~MTFESpeechVisitor(v10);
  v10[0] = &unk_2868F78B8;
  MTFESpeechVisitor::Visit(v10, *(this + 2));
  v8 = *(this + 7);
  if (v8)
  {
    v12 = &unk_2868F79F8;
    v15 = v8;
    MTFESpeechVisitor::Visit(&v12, *(this + 2));
    MTFESpeechVisitor::~MTFESpeechVisitor(&v12);
  }

  (*(*this + 24))(this, *(this + 2));
  MTFEFrameFiller::InitPhrase((this + 2728), *(this + 2));
  MTFESpeechVisitor::~MTFESpeechVisitor(v10);
  MTFESpeechVisitor::~MTFESpeechVisitor(v11);
  MTFESpeechVisitor::~MTFESpeechVisitor(v16);
  MTFESpeechVisitor::~MTFESpeechVisitor(v20);
  MTFESpeechVisitor::~MTFESpeechVisitor(v23);
  v24 = &unk_2868F57B8;
  MTFESpeechVisitor::~MTFESpeechVisitor(&v26);
  MTFESpeechVisitor::~MTFESpeechVisitor(&v25);
  MTFESpeechVisitor::~MTFESpeechVisitor(&v24);
  MTFESpeechVisitor::~MTFESpeechVisitor(v27);
  MTFESpeechVisitor::~MTFESpeechVisitor(v28);
  MTFESpeechVisitor::~MTFESpeechVisitor(&v29);
  MTFESpeechVisitor::~MTFESpeechVisitor(v31);
  MTFESpeechVisitor::~MTFESpeechVisitor(v32);
  v33[0] = &unk_2868F4F40;
  v35.var0 = &unk_2868F5118;
  MTFESpeechElement::~MTFESpeechElement(&v35.var18);
  MTFESpeechElement::~MTFESpeechElement(&v35);
  MTFESpeechVisitor::~MTFESpeechVisitor(v33);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_257B11DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  MEMORY[0x259C6DA90](v48, 0x1000C404A43BE38);
  MTFESpeechVisitor::~MTFESpeechVisitor(&a48);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x3F8]);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x4D8]);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x518]);
  MTFESyllablify::~MTFESyllablify(&STACK[0x538]);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x588]);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x5B8]);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x678]);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x688]);
  MTFESpeechVisitor::~MTFESpeechVisitor(&STACK[0x6A0]);
  MTFEPOSResolver::~MTFEPOSResolver(&STACK[0x6B0]);
  _Unwind_Resume(a1);
}

void MTBEPhraseProcessor::SelectUnits(MTBEPhraseProcessor *this, MTFESpeechElement *a2)
{
  if ((MTBEDebugFlags::sMTXDebug & 2) != 0)
  {
    v2 = *MEMORY[0x277D85DF8];
    v3[0] = &unk_2868F4E00;
    v3[1] = v2;
    v3[2] = 0;
    v4 = 0;
    v5 = 0;
    MTFESpeechVisitor::Visit(v3, a2);
    MTFESpeechVisitor::~MTFESpeechVisitor(v3);
  }
}

void sub_257B1200C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MTFESpeechVisitor::~MTFESpeechVisitor(va);
  _Unwind_Resume(a1);
}

uint64_t MTBEPhraseProcessor::GenerateSamples(MTBEPhraseProcessor *this, MTBESoundOutput *a2, int *a3)
{
  v4 = a2;
  v26 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 48))(a2) >= 0x200)
  {
    v6 = -7;
    v7 = MEMORY[0x277D85DF8];
    do
    {
      if (__CFADD__(v6++, 1))
      {
        break;
      }

      v24 = 0;
      __Y = 0;
      *__N = 0;
      v23 = 0;
      if (((***(this + 9))() & 1) == 0)
      {
        (*(*v4 + 32))(v4);
        LODWORD(v4) = *(this + 2882);
        *(this + 2882) = 0;
        if ((v4 & 1) == 0)
        {
          if (MTBEDebugFlags::sMEOWDebug)
          {
            fprintf(*v7, "Phrase has %ld samples\n", *(this + 531));
          }

          *(this + 531) = 0;
        }

        v18 = 0;
        goto LABEL_17;
      }

      v9 = MTBEDebugFlags::sMEOWDebug;
      if (MTBEDebugFlags::sMEOWDebug)
      {
        v10 = v24;
        if (v24 != *(this + 530))
        {
          *(this + 530) = v24;
          if (v10)
          {
            v11 = MTMBDemiProperties::Phon(v10, v25);
          }

          else
          {
            v11 = "SIL";
          }

          fprintf(*v7, "Cut %s at sample %ld\n", v11, *(this + 531));
          (*(*v4 + 24))(v4, v11);
          v9 = MTBEDebugFlags::sMEOWDebug;
        }
      }

      if ((v9 & 0x10) != 0)
      {
        v12 = *v7;
        v13 = MTMBSegment::Abstract(&__Y);
        v14 = cblas_sdot(LOWORD(__N[0]), __Y, 1, __Y, 1);
        LOWORD(v15) = __N[0];
        fprintf(v12, "PP %s %f\n", v13, sqrtf(v14 / v15));
      }

      v16 = LOWORD(__N[0]);
      if (a3)
      {
        *a3 += LOWORD(__N[0]);
      }

      *(this + 531) += v16;
      v17 = (*(*v4 + 16))(v4, __Y);
      MTMBSegment::Free(&__Y);
    }

    while ((v17 & 1) != 0);
  }

  v18 = 1;
LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
  return (v18 | v4) & 1;
}

__n128 MTBEPhraseProcessor::UpdateEngineFromNotifier(float32x2_t *this)
{
  if ((MTBEDebugFlags::sMTXDebug & 4) != 0)
  {
    v3 = this[3];
    v2 = this[4];
    fprintf(*MEMORY[0x277D85DF8], "MTX: UpdateEngineFromNotifier rate %x -> %x pb %x -> %x pm %x -> %x vol %x -> %x behavior %x -> %x\n", v2[2], v3[2], v2[3], v3[3], v2[4], v3[4], v2[5], v3[5], v2[12], v3[12]);
  }

  v4 = this[3];
  v5 = this[4];
  v6 = *(*&v4 + 8);
  if (v6 != *(*&v5 + 8))
  {
    MTBEParam::SetRate(this + 11, v6 >> 16);
    MTBEParam::SetRate(this + 174, *(*&this[5] + 10));
    v4 = this[3];
    v5 = this[4];
  }

  v7 = *(*&v4 + 12);
  if (v7 != *(*&v5 + 12))
  {
    v8 = MTBEParam::MidiToPitch(&this[11], v7 >> 8);
    MTBEParam::SetPitch(&this[11], v8);
    v9 = MTBEParam::MidiToPitch(&this[174], *(*&this[5] + 12) >> 8);
    MTBEParam::SetPitch(&this[174], v9);
    v4 = this[3];
    v5 = this[4];
  }

  v10 = *(*&v4 + 16);
  if (v10 != *(*&v5 + 16))
  {
    MTBEParam::SetModulation(&this[11], v10);
    MTBEParam::SetModulation(&this[174], *(*&this[5] + 16));
    v4 = this[3];
    v5 = this[4];
  }

  v11 = *(*&v4 + 20);
  if (v11 != *(*&v5 + 20))
  {
    MTBEParam::SetVolume(&this[11], v11);
    MTBEParam::SetVolume(&this[174], *(*&this[5] + 20));
    v4 = this[3];
    v5 = this[4];
  }

  result = *(*&v4 + 8);
  v13 = *(*&v4 + 24);
  v14 = *(*&v4 + 40);
  *(*&v5 + 56) = *(*&v4 + 56);
  *(*&v5 + 40) = v14;
  *(*&v5 + 24) = v13;
  *(*&v5 + 8) = result;
  return result;
}

uint64_t MTBEPhraseProcessor::UpdateNotifierFromEngine(MTBEPhraseProcessor *this)
{
  v2 = *(this + 3);
  *(v2 + 8) = MTBEParam::GetRate((this + 88)) << 16;
  v3 = *(this + 3);
  *(v3 + 12) = 3072 * MTBEParam::GetPitch((this + 88)) + 2054400;
  v4 = *(this + 3);
  *(v4 + 16) = MTBEParam::GetModulation((this + 88));
  v5 = *(this + 3);
  *(v5 + 20) = MTBEParam::GetVolume((this + 88));
  if ((MTBEDebugFlags::sMTXDebug & 4) != 0)
  {
    v6 = *(this + 3);
    v7 = *(this + 4);
    fprintf(*MEMORY[0x277D85DF8], "MTX: UpdateNotifierFromEngine rate %x -> %x pb %x -> %x pm %x -> %x vol %x -> %x behavior %x -> %x\n", v6[2], v7[2], v6[3], v7[3], v6[4], v7[4], v6[5], v7[5], v6[12], v7[12]);
  }

  v8 = *(this + 3);
  v9 = *(this + 4);
  v10 = *(v8 + 8);
  v11 = *(v8 + 24);
  v12 = *(v8 + 40);
  *(v9 + 56) = *(v8 + 56);
  *(v9 + 40) = v12;
  *(v9 + 24) = v11;
  *(v9 + 8) = v10;
  v13 = *(this + 5);
  *(v13 + 8) = MTBEParam::GetRate((this + 1392)) << 16;
  v14 = *(this + 5);
  *(v14 + 12) = 3072 * MTBEParam::GetPitch((this + 1392)) + 2054400;
  v15 = *(this + 5);
  *(v15 + 16) = MTBEParam::GetModulation((this + 1392));
  v16 = *(this + 5);
  result = MTBEParam::GetVolume((this + 1392));
  *(v16 + 20) = result;
  return result;
}

void MTBEPhraseProcessor::Create(MTBEPhraseProcessor *this, const VoiceDescription *a2, const void *a3, const MTBEPhraseParam *a4)
{
  v4 = *(this + 1);
  if (v4 != 1734437985)
  {
    if (v4 == 1835364215)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void MTFEPitchRaiseFall::~MTFEPitchRaiseFall(MTFEPitchRaiseFall *this)
{
  *this = &unk_2868F5A38;
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 8));

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F5A38;
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 8));

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F5A38;
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 8));
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFESmoothPitch::~MTFESmoothPitch(MTFESmoothPitch *this)
{
  *this = &unk_2868F6628;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x259C6DA70](v2, 0x1000C8052888210);
  }

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  MTFESmoothPitch::~MTFESmoothPitch(this);

  JUMPOUT(0x259C6DA90);
}

void MTFESegmentalPerturbations::~MTFESegmentalPerturbations(MTFESegmentalPerturbations *this)
{
  *this = &unk_2868F6998;
  v2 = (this + 16);
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 64));
  MTFESpeechVisitor::~MTFESpeechVisitor(v2);

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F6998;
  v2 = (this + 16);
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 64));
  MTFESpeechVisitor::~MTFESpeechVisitor(v2);

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F6998;
  v2 = (this + 16);
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 64));
  MTFESpeechVisitor::~MTFESpeechVisitor(v2);
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFESyllablify::~MTFESyllablify(MTFESyllablify *this)
{
  *this = &unk_2868F57B8;
  v2 = (this + 8);
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 24));
  MTFESpeechVisitor::~MTFESpeechVisitor(v2);

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F57B8;
  v2 = (this + 8);
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 24));
  MTFESpeechVisitor::~MTFESpeechVisitor(v2);

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F57B8;
  v2 = (this + 8);
  MTFESpeechVisitor::~MTFESpeechVisitor((this + 24));
  MTFESpeechVisitor::~MTFESpeechVisitor(v2);
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFEPOSResolver::~MTFEPOSResolver(MTFEPOSResolver *this)
{
  *this = &unk_2868F4F40;
  v2 = (this + 48);
  *(this + 6) = &unk_2868F5118;
  MTFESpeechElement::~MTFESpeechElement((this + 160));
  MTFESpeechElement::~MTFESpeechElement(v2);

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F4F40;
  v2 = (this + 48);
  *(this + 6) = &unk_2868F5118;
  MTFESpeechElement::~MTFESpeechElement((this + 160));
  MTFESpeechElement::~MTFESpeechElement(v2);

  MTFESpeechVisitor::~MTFESpeechVisitor(this);
}

{
  *this = &unk_2868F4F40;
  v2 = (this + 48);
  *(this + 6) = &unk_2868F5118;
  MTFESpeechElement::~MTFESpeechElement((this + 160));
  MTFESpeechElement::~MTFESpeechElement(v2);
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTBESampleBuffer::MTBESampleBuffer(MTBESampleBuffer *this)
{
  *this = &unk_2868F4C00;
  *(this + 1) = this + 32;
  *(this + 2) = this + 17952;
  *(this + 3) = 0;
}

uint64_t MTBESampleBuffer::NextBuffer(uint64_t this)
{
  v1 = (*(this + 24) + 1) % 3;
  *(this + 24) = v1;
  *(this + 28) = 0;
  v2 = *(this + 8);
  *(this + 8) = this + 8960 * v1 + 32;
  *(this + 16) = v2;
  return this;
}

void MTBEWorker::ExecuteTasks(MTBEWorker *this, const char *a2)
{
  MTBEWorker::DebugLog("<%s> ExecuteTasks\n", a2, *this);
  pthread_mutex_lock((this + 104));
  pthread_mutex_lock((this + 40));
  for (i = *(this + 1); i != *(this + 2); i = *(this + 1))
  {
    v4 = *i;
    v5 = i[2];
    v6 = i[3];
    gettimeofday(&v31, 0);
    v8 = v31.tv_usec + 1000000 * v31.tv_sec;
    if (v8 < v4)
    {
      break;
    }

    v9 = *(this + 1);
    v10 = *(this + 2);
    v11 = (v10 - v9) >> 5;
    if (v11 >= 2)
    {
      v12 = 0;
      v13 = *(v9 + 16);
      v31 = *v9;
      v32 = v13;
      v14 = v9;
      do
      {
        v15 = &v14[2 * v12 + 2];
        v16 = (2 * v12) | 1;
        v17 = 2 * v12 + 2;
        if (v17 < v11)
        {
          v18 = *v15 > *(v15 + 32);
          v15 += 32 * v18;
          if (v18)
          {
            v16 = v17;
          }
        }

        v19 = *(v15 + 16);
        *v14 = *v15;
        v14[1] = v19;
        v14 = v15;
        v12 = v16;
      }

      while (v16 <= ((v11 - 2) >> 1));
      v20 = (v10 - 32);
      if (v15 == v20)
      {
        v7 = v31;
        v23 = v32;
        *v15 = v31;
        *(v15 + 16) = v23;
      }

      else
      {
        v21 = v20[1];
        *v15 = *v20;
        *(v15 + 16) = v21;
        v22 = v32;
        *v20 = v31;
        v20[1] = v22;
        v7 = std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(v9, v15 + 32, &v30, (v15 + 32 - v9) >> 5);
      }

      v10 = *(this + 2);
    }

    *(this + 2) = v10 - 32;
    v24 = MTBEWorker::sBigBang;
    v25 = *this;
    v26 = (**v5)(v5, v7);
    if (v8 == v4 || v4 == v24)
    {
      MTBEWorker::DebugLog("<%s> Executing [%s]\n", v27, v25, v26, v29);
    }

    else
    {
      MTBEWorker::DebugLog("<%s> Executing [%s] with slippage %.2fms\n", v27, v25, v26, (v8 - v4) / 1000.0);
    }

    pthread_mutex_unlock((this + 40));
    (*(*v5 + 8))(v5, v6);
    pthread_mutex_lock((this + 40));
  }

  pthread_mutex_unlock((this + 40));
  pthread_mutex_unlock((this + 104));
  MTBEWorker::SleepTillReady(this);
}

void MTBEWorker::MTBEWorker(MTBEWorker *this, const char *a2)
{
  *(this + 1) = 0;
  *this = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (MTBEWorker::MTBEWorker(char const*)::sOnceBigBang != -1)
  {
    MTBEWorker::MTBEWorker();
  }

  pthread_mutex_init((this + 40), &MTBEWorker::MTBEWorker(char const*)::sRecursiveMutex);
  pthread_mutex_init((this + 104), &MTBEWorker::MTBEWorker(char const*)::sRecursiveMutex);
  *(this + 46) = 0;
  inactive = dispatch_workloop_create_inactive("com.apple.macintalk.synthesis");
  dispatch_set_qos_class_fallback();
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  *(this + 21) = inactive;
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, inactive);
  *(this + 22) = v4;
  dispatch_set_context(v4, this);
  dispatch_source_set_event_handler_f(*(this + 22), MTBEWorkerExecuteTasks);
  dispatch_source_set_timer(*(this + 22), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x4C4B40uLL);
  dispatch_resume(*(this + 22));
}

void sub_257B12C88(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN10MTBEWorkerC2EPKc_block_invoke()
{
  gettimeofday(&v1, 0);
  MTBEWorker::sBigBang = v1.tv_usec + 1000000 * v1.tv_sec;
  pthread_mutexattr_init(&MTBEWorker::MTBEWorker(char const*)::sRecursiveMutex);

  return pthread_mutexattr_settype(&MTBEWorker::MTBEWorker(char const*)::sRecursiveMutex, 2);
}

void MTBEWorker::~MTBEWorker(MTBEWorker *this, const char *a2)
{
  MTBEWorker::Purge(this, a2);
  dispatch_release(*(this + 22));
  dispatch_release(*(this + 21));
  pthread_mutex_destroy((this + 40));
  pthread_mutex_destroy((this + 104));
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void MTBEWorker::Purge(MTBEWorker *this, const char *a2)
{
  MTBEWorker::DebugLog("<%s> Purge\n", a2, *this);
  pthread_mutex_lock((this + 40));
  v3 = *(this + 1);
  for (i = *(this + 2); v3 != i; *(this + 2) = i)
  {
    v5 = (i - v3) >> 5;
    if (v5 >= 2)
    {
      v6 = 0;
      v7 = *(v3 + 1);
      v19 = *v3;
      v20 = v7;
      v8 = v3;
      do
      {
        v9 = &v8[2 * v6 + 2];
        v10 = (2 * v6) | 1;
        v11 = 2 * v6 + 2;
        if (v11 < v5)
        {
          v12 = *v9 > *(v9 + 32);
          v9 += 32 * v12;
          if (v12)
          {
            v10 = v11;
          }
        }

        v13 = *(v9 + 16);
        *v8 = *v9;
        v8[1] = v13;
        v8 = v9;
        v6 = v10;
      }

      while (v10 <= ((v5 - 2) >> 1));
      v14 = i - 32;
      if (v9 == v14)
      {
        v17 = v20;
        *v9 = v19;
        *(v9 + 16) = v17;
      }

      else
      {
        v15 = *(v14 + 1);
        *v9 = *v14;
        *(v9 + 16) = v15;
        v16 = v20;
        *v14 = v19;
        *(v14 + 1) = v16;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(v3, v9 + 32, &v18, (v9 + 32 - v3) >> 5);
      }

      v3 = *(this + 1);
      i = *(this + 2);
    }

    i -= 32;
  }

  pthread_mutex_unlock((this + 40));
  MTBEWorker::SleepTillReady(this);
}

void MTBEWorker::AddTask(uint64_t *a1, uint64_t (***a2)(void), uint64_t a3, uint64_t *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  sprintf(v27, "%u", (*a4 - MTBEWorker::sBigBang) / 1000);
  v8 = *a1;
  v9 = (**a2)(a2);
  MTBEWorker::DebugLog("<%s> Add Task %p[%s]@%s\n", v10, v8, a2, v9, v27);
  v11 = *a4;
  pthread_mutex_lock((a1 + 5));
  v12 = a1[2];
  v13 = a1[3];
  if (v12 >= v13)
  {
    v15 = a1[1];
    v16 = (v12 - v15) >> 5;
    v17 = v16 + 1;
    if ((v16 + 1) >> 59)
    {
      std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
    }

    v18 = v13 - v15;
    if (v18 >> 4 > v17)
    {
      v17 = v18 >> 4;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFE0)
    {
      v19 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTBEWorker::TaskRec>>((a1 + 1), v19);
    }

    v20 = (32 * v16);
    *v20 = v11;
    v20[1] = a1;
    v20[2] = a2;
    v20[3] = a3;
    v14 = 32 * v16 + 32;
    v21 = a1[1];
    v22 = a1[2] - v21;
    v23 = (32 * v16 - v22);
    memcpy(v23, v21, v22);
    v24 = a1[1];
    a1[1] = v23;
    a1[2] = v14;
    a1[3] = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v12 = v11;
    v12[1] = a1;
    v14 = (v12 + 4);
    v12[2] = a2;
    v12[3] = a3;
  }

  a1[2] = v14;
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(a1[1], v14, &v26, (v14 - a1[1]) >> 5);
  pthread_mutex_unlock((a1 + 5));
  MTBEWorker::SleepTillReady(a1);
  v25 = *MEMORY[0x277D85DE8];
}

const char *MTBEWorker::DebugLog(const char *this, const char *a2, ...)
{
  va_start(va, a2);
  v6 = *MEMORY[0x277D85DE8];
  if (MTBEDebugFlags::sMTXDebug)
  {
    v2 = this;
    gettimeofday(&v4, 0);
    sprintf(v5, "%u", (v4.tv_usec + 1000000 * v4.tv_sec - MTBEWorker::sBigBang) / 1000);
    vsprintf(&v4, v2, va);
    this = asl_log(0, 0, 3, "MTX %s: %s", v5, &v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return this;
}

void MTBEWorker::SleepTillReady(MTBEWorker *this)
{
  v13 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 40));
  v2 = *(this + 1);
  if (v2 == *(this + 2))
  {
    v8 = *MEMORY[0x277D85DE8];

    pthread_mutex_unlock((this + 40));
  }

  else
  {
    v3 = *v2;
    pthread_mutex_unlock((this + 40));
    gettimeofday(&v12, 0);
    if (v3 <= v12.tv_usec + 1000000 * v12.tv_sec)
    {
      v9 = *(this + 21);
      v10 = *MEMORY[0x277D85DE8];

      dispatch_async_f(v9, this, MTBEWorkerExecuteTasks);
    }

    else
    {
      sprintf(&v12, "%u", (v3 - MTBEWorker::sBigBang) / 1000);
      MTBEWorker::DebugLog("<%s> Sleep till %s\n", v4, *this, &v12);
      when.tv_sec = v3 / 0xF4240;
      when.tv_nsec = 1000 * (v3 % 0xF4240);
      v5 = *(this + 22);
      v6 = dispatch_walltime(&when, 0);
      dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x4C4B40uLL);
      v7 = *MEMORY[0x277D85DE8];
    }
  }
}

void MTBEWorker::PurgeTasks(MTBEWorker *this, const char *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = (this + 40);
  MTBEWorker::DebugLog("<%s> PurgeTasks %p\n", a2, *this, a2);
  __p = 0;
  v37 = 0;
  v38 = 0;
  pthread_mutex_lock(v4);
  v5 = *(this + 1);
  for (i = *(this + 2); v5 != i; *(this + 2) = i)
  {
    v7 = *(v5 + 24);
    v32 = *(v5 + 16);
    if (v7 != a2)
    {
      v8 = v37;
      if (v37 >= v38)
      {
        v11 = (v37 - __p) >> 5;
        v12 = v11 + 1;
        if ((v11 + 1) >> 59)
        {
          std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
        }

        v13 = v38 - __p;
        if ((v38 - __p) >> 4 > v12)
        {
          v12 = v13 >> 4;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFE0)
        {
          v14 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MTBEWorker::TaskRec>>(&__p, v14);
        }

        v15 = 32 * v11;
        *v15 = *v5;
        *(v15 + 16) = v32;
        *(v15 + 24) = v7;
        v10 = (32 * v11 + 32);
        v16 = (32 * v11 - (v37 - __p));
        memcpy((v15 - (v37 - __p)), __p, v37 - __p);
        v17 = __p;
        __p = v16;
        v37 = v10;
        v38 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        v9 = *(v5 + 16);
        *v37 = *v5;
        *(v8 + 2) = v9;
        *(v8 + 3) = v7;
        v10 = v8 + 32;
      }

      v37 = v10;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(__p, v10, &v34, (v10 - __p) >> 5);
      v5 = *(this + 1);
      i = *(this + 2);
    }

    v18 = (i - v5) >> 5;
    if (v18 >= 2)
    {
      v19 = 0;
      v20 = *(v5 + 16);
      v34 = *v5;
      v35 = v20;
      v21 = v5;
      do
      {
        v22 = &v21[2 * v19 + 2];
        v23 = (2 * v19) | 1;
        v24 = 2 * v19 + 2;
        if (v24 < v18)
        {
          v25 = *v22 > *(v22 + 32);
          v22 += 32 * v25;
          if (v25)
          {
            v23 = v24;
          }
        }

        v26 = *(v22 + 16);
        *v21 = *v22;
        v21[1] = v26;
        v21 = v22;
        v19 = v23;
      }

      while (v23 <= ((v18 - 2) >> 1));
      v27 = (i - 32);
      if (v22 == v27)
      {
        v30 = v35;
        *v22 = v34;
        *(v22 + 16) = v30;
      }

      else
      {
        v28 = v27[1];
        *v22 = *v27;
        *(v22 + 16) = v28;
        v29 = v35;
        *v27 = v34;
        v27[1] = v29;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(v5, v22 + 32, &v33, (v22 + 32 - v5) >> 5);
      }

      v5 = *(this + 1);
      i = *(this + 2);
    }

    i -= 32;
  }

  if ((this + 8) != &__p)
  {
    std::vector<MTBEWorker::TaskRec>::__assign_with_size[abi:ne200100]<MTBEWorker::TaskRec*,MTBEWorker::TaskRec*>(this + 1, __p, v37, (v37 - __p) >> 5);
  }

  pthread_mutex_unlock(v4);
  MTBEWorker::SleepTillReady(this);
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_257B1368C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTBEWorker::PurgeTasks(MTBEWorker *this, MTBEWorker::Task *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = (this + 40);
  v5 = *this;
  v6 = (**a2)(a2);
  MTBEWorker::DebugLog("<%s> PurgeTasks %s\n", v7, v5, v6);
  __p = 0;
  v39 = 0;
  v40 = 0;
  pthread_mutex_lock(v4);
  v8 = *(this + 1);
  for (i = *(this + 2); v8 != i; *(this + 2) = i)
  {
    v10 = *(v8 + 16);
    if (v10 != a2)
    {
      v11 = *(v8 + 24);
      v12 = v39;
      if (v39 >= v40)
      {
        v14 = (v39 - __p) >> 5;
        v15 = v14 + 1;
        if ((v14 + 1) >> 59)
        {
          std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
        }

        v16 = v40 - __p;
        if ((v40 - __p) >> 4 > v15)
        {
          v15 = v16 >> 4;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFE0)
        {
          v17 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MTBEWorker::TaskRec>>(&__p, v17);
        }

        v18 = 32 * v14;
        *v18 = *v8;
        *(v18 + 16) = v10;
        *(v18 + 24) = v11;
        v13 = (32 * v14 + 32);
        v19 = (32 * v14 - (v39 - __p));
        memcpy(v19, __p, v39 - __p);
        v20 = __p;
        __p = v19;
        v39 = v13;
        v40 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v39 = *v8;
        *(v12 + 2) = v10;
        *(v12 + 3) = v11;
        v13 = v12 + 32;
      }

      v39 = v13;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(__p, v13, &v36, (v13 - __p) >> 5);
      v8 = *(this + 1);
      i = *(this + 2);
    }

    v21 = (i - v8) >> 5;
    if (v21 >= 2)
    {
      v22 = 0;
      v23 = *(v8 + 16);
      v36 = *v8;
      v37 = v23;
      v24 = v8;
      do
      {
        v25 = &v24[2 * v22 + 2];
        v26 = (2 * v22) | 1;
        v27 = 2 * v22 + 2;
        if (v27 < v21)
        {
          v28 = *v25 > *(v25 + 32);
          v25 += 32 * v28;
          if (v28)
          {
            v26 = v27;
          }
        }

        v29 = *(v25 + 16);
        *v24 = *v25;
        v24[1] = v29;
        v24 = v25;
        v22 = v26;
      }

      while (v26 <= ((v21 - 2) >> 1));
      v30 = (i - 32);
      if (v25 == v30)
      {
        v33 = v37;
        *v25 = v36;
        *(v25 + 16) = v33;
      }

      else
      {
        v31 = v30[1];
        *v25 = *v30;
        *(v25 + 16) = v31;
        v32 = v37;
        *v30 = v36;
        v30[1] = v32;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(v8, v25 + 32, &v35, (v25 + 32 - v8) >> 5);
      }

      v8 = *(this + 1);
      i = *(this + 2);
    }

    i -= 32;
  }

  if ((this + 8) != &__p)
  {
    std::vector<MTBEWorker::TaskRec>::__assign_with_size[abi:ne200100]<MTBEWorker::TaskRec*,MTBEWorker::TaskRec*>(this + 1, __p, v39, (v39 - __p) >> 5);
  }

  pthread_mutex_unlock(v4);
  MTBEWorker::SleepTillReady(this);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_257B13978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTBEWorker::PendingTasks(MTBEWorker *this, MTBEWorker::Task *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  __p = 0;
  v41 = 0;
  v42 = 0;
  pthread_mutex_lock((this + 40));
  v4 = *(this + 1);
  if (v4 == *(this + 2))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 16);
      v7 = *(v4 + 24);
      v8 = v6 == a2;
      v9 = v41;
      if (v41 >= v42)
      {
        v11 = (v41 - __p) >> 5;
        v12 = v11 + 1;
        if ((v11 + 1) >> 59)
        {
          std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
        }

        v13 = v42 - __p;
        if ((v42 - __p) >> 4 > v12)
        {
          v12 = v13 >> 4;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFE0)
        {
          v14 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MTBEWorker::TaskRec>>(&__p, v14);
        }

        v15 = 32 * v11;
        *v15 = *v4;
        *(v15 + 16) = v6;
        *(v15 + 24) = v7;
        v10 = (32 * v11 + 32);
        v16 = (32 * v11 - (v41 - __p));
        memcpy(v16, __p, v41 - __p);
        v17 = __p;
        __p = v16;
        v41 = v10;
        v42 = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v41 = *v4;
        *(v9 + 2) = v6;
        *(v9 + 3) = v7;
        v10 = v9 + 32;
      }

      v41 = v10;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(__p, v10, &v38, (v10 - __p) >> 5);
      v4 = *(this + 1);
      v18 = *(this + 2);
      v19 = (v18 - v4) >> 5;
      if (v19 >= 2)
      {
        v20 = 0;
        v38 = *v4;
        v39 = *(v4 + 16);
        v21 = v4;
        do
        {
          v22 = &v21[2 * v20 + 2];
          v23 = (2 * v20) | 1;
          v24 = 2 * v20 + 2;
          if (v24 < v19)
          {
            v25 = *v22 > *(v22 + 32);
            v22 += 32 * v25;
            if (v25)
            {
              v23 = v24;
            }
          }

          v26 = *(v22 + 16);
          *v21 = *v22;
          v21[1] = v26;
          v21 = v22;
          v20 = v23;
        }

        while (v23 <= ((v19 - 2) >> 1));
        v27 = (v18 - 32);
        if (v22 == v27)
        {
          v29 = v39;
          *v22 = v38;
          *(v22 + 16) = v29;
        }

        else
        {
          v28 = v27[1];
          *v22 = *v27;
          *(v22 + 16) = v28;
          *v27 = v38;
          v27[1] = v39;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(v4, v22 + 32, &v37, (v22 + 32 - v4) >> 5);
        }

        v4 = *(this + 1);
        v18 = *(this + 2);
      }

      v5 |= v8;
      v30 = v18 - 32;
      *(this + 2) = v30;
    }

    while (v4 != v30);
  }

  if ((this + 8) != &__p)
  {
    std::vector<MTBEWorker::TaskRec>::__assign_with_size[abi:ne200100]<MTBEWorker::TaskRec*,MTBEWorker::TaskRec*>(this + 1, __p, v41, (v41 - __p) >> 5);
  }

  pthread_mutex_unlock((this + 40));
  v31 = *this;
  v32 = (**a2)(a2);
  v34 = "NO";
  if (v5)
  {
    v34 = "YES";
  }

  MTBEWorker::DebugLog("<%s> PendingTasks %s? -> %s\n", v33, v31, v32, v34);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

void sub_257B13C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279851758, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTBEWorker::TaskRec>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,MTBEWorker::TimeCmp &,std::__wrap_iter<MTBEWorker::TaskRec *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (a1 + 32 * (v4 >> 1));
    v7 = (a2 - 32);
    v8 = *(a2 - 32);
    if (*v6 > v8)
    {
      v12 = *(a2 - 24);
      v13 = *(a2 - 8);
      do
      {
        v9 = v7;
        v7 = v6;
        v10 = v6[1];
        *v9 = *v6;
        v9[1] = v10;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 32 * v5);
      }

      while (*v6 > v8);
      *v7 = v8;
      result = v12;
      *(v7 + 8) = v12;
      *(v7 + 3) = v13;
    }
  }

  return result;
}

void *std::vector<MTBEWorker::TaskRec>::__assign_with_size[abi:ne200100]<MTBEWorker::TaskRec*,MTBEWorker::TaskRec*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTBEWorker::TaskRec>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<MTBEWorker::TaskRec>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTBEWorker::TaskRec>>(a1, a2);
  }

  std::vector<MTBEWorker::TaskRec>::__throw_length_error[abi:ne200100]();
}

void MTBEWritePhonemes::MTBEWritePhonemes(MTBEWritePhonemes *this, char a2)
{
  *this = &unk_2868F4C98;
  *(this + 8) = a2;
  *(this + 9) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

{
  *this = &unk_2868F4C98;
  *(this + 8) = a2;
  *(this + 9) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

MTFESpeechElement *MTBEWritePhonemes::VisitWord(MTBEWritePhonemes *this, MTFEWord *a2)
{
  MTBEWritePhonemes::HandleWord(this, a2);

  return MTFESpeechElement::VisitChildren(a2, this);
}

void MTBEWritePhonemes::HandleWord(MTBEWritePhonemes *this, MTFEWord *a2)
{
  *(this + 12) = 1;
  *(this + 10) = 0;
  *(this + 11) = a2->var15 == 31;
  MTFECommands::Visit(&a2->var18, this);
  if (*(this + 9) == 1)
  {
    v4 = 0;
    v5 = 93;
    do
    {
      v6 = v4 + 1;
      v7 = &asc_257B976CD[v4];
      std::string::push_back((this + 16), v5);
      v5 = v7[1];
      v4 = v6;
    }

    while (v6 != 2);
    *(this + 9) = 0;
  }

  var10 = a2->var10;
  if (var10 == 1)
  {
    v9 = 74;
  }

  else if (var10 == 2)
  {
    v9 = 75;
  }

  else
  {
    var15 = a2->var15;
    if (((1 << var15) & 0xA5273) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = 75;
    }

    if (var15 == 255)
    {
      v9 = 2;
    }

    else
    {
      v9 = v11;
    }
  }

  *(this + 13) = v9;
}

void MTBEWritePhonemes::Write(MTBEWritePhonemes *this, std::string::value_type *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2 + 1;
    do
    {
      std::string::push_back((this + 16), v2);
      v5 = *v4++;
      v2 = v5;
    }

    while (v5);
  }
}

void MTBEWritePhonemes::VisitPhoneme(MTBEWritePhonemes *this, MTFEPhoneme *a2)
{
  if (*(this + 12) == 1)
  {
    if (a2->var9)
    {
      v4 = *(this + 39);
      if (v4 < 0)
      {
        v4 = *(this + 3);
      }

      if (v4)
      {
        std::string::push_back((this + 16), 32);
      }

      v5 = *(MEMORY[0x277D65558] + 8 * *(this + 13));
      v6 = *v5;
      if (*v5)
      {
        v7 = (v5 + 1);
        do
        {
          std::string::push_back((this + 16), v6);
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }

    else if (a2->var13 < 2.0)
    {
      return;
    }

    *(this + 12) = 0;
  }

  var9 = a2->var9;
  if (a2->var9 || a2->var6)
  {
    var15 = a2->var15;
    if ((var15 & 0x4000) == 0)
    {
      v11 = MEMORY[0x277D65558];
      if ((var15 & 0x10000000) != 0)
      {
        if (*(this + 10) == 1)
        {
          v12 = *(MEMORY[0x277D65558] + 480);
          v13 = *v12;
          if (*v12)
          {
            v14 = (v12 + 1);
            do
            {
              std::string::push_back((this + 16), v13);
              v15 = *v14++;
              v13 = v15;
            }

            while (v15);
            var9 = a2->var9;
          }
        }

        *(this + 10) = *(this + 8);
      }

      if (*(MEMORY[0x277D65568] + 4 * var9))
      {
        v16 = a2->var15;
        if ((v16 & 0x80000000) != 0)
        {
          *(this + 10) = 1;
        }

        if ((v16 & 0x1400) != 0)
        {
          v17 = *(v11 + 8);
          v18 = *v17;
          if (*v17)
          {
            v19 = (v17 + 1);
            do
            {
              std::string::push_back((this + 16), v18);
              v20 = *v19++;
              v18 = v20;
            }

            while (v20);
          }
        }

        else if ((v16 & 0x800) != 0)
        {
          v22 = *(v11 + 464);
          v23 = *v22;
          if (*v22)
          {
            v24 = (v22 + 1);
            do
            {
              std::string::push_back((this + 16), v23);
              v25 = *v24++;
              v23 = v25;
            }

            while (v25);
          }
        }
      }

      v26 = *(v11 + 8 * a2->var9);
      v27 = *v26;
      if (*v26)
      {
        v28 = (v26 + 1);
        do
        {
          std::string::push_back((this + 16), v27);
          v29 = *v28++;
          v27 = v29;
        }

        while (v29);
      }
    }
  }

  else
  {
    if (*(this + 14) - 68 >= 5)
    {
      v21 = 46;
    }

    else
    {
      v21 = 0x213F2E3A2CuLL >> (8 * (*(this + 14) - 68));
    }

    std::string::push_back((this + 16), v21 & 0x3F);
  }
}

void MTBEWritePhonemes::VisitCommand(MTBEWritePhonemes *this, MTFECommand *a2)
{
  if (a2->var8 == 2003792484)
  {
    return;
  }

  v16[7] = v2;
  v16[8] = v3;
  if (*(this + 9))
  {
    std::string::push_back((this + 16), 59);
  }

  else
  {
    v6 = 0;
    v7 = 91;
    do
    {
      v8 = v6 + 1;
      v9 = &asc_257B976D0[v6];
      std::string::push_back((this + 16), v7);
      v7 = v9[1];
      v6 = v8;
    }

    while (v8 != 2);
    *(this + 9) = 1;
  }

  v10 = 0;
  var8 = a2->var8;
  v16[0] = var8;
  if (var8 > 1918989425)
  {
    if (var8 == 1987013746)
    {
      v12 = 1987013741;
    }

    else
    {
      if (var8 != 1918989426)
      {
        goto LABEL_17;
      }

      v12 = 1918989413;
    }
  }

  else if (var8 == 1885495666)
  {
    v12 = 1885495667;
  }

  else
  {
    if (var8 != 1886220146)
    {
      goto LABEL_17;
    }

    v12 = 1886220132;
  }

  v16[0] = v12;
  v10 = 1;
LABEL_17:
  for (i = 0; i != 4; ++i)
  {
    std::string::push_back((this + 16), *(v16 + i));
  }

  var9 = a2->var9;
  if (v10)
  {
    v15 = (this + 16);
    if ((var9 & 0x8000000000000000) != 0)
    {
      std::string::push_back(v15, 45);
      var9 = -var9;
    }

    else
    {
      std::string::push_back(v15, 43);
    }
  }

  MTBEWritePhonemes::WriteFixed(this, var9, 4);
}

void MTBEWritePhonemes::Write(MTBEWritePhonemes *this, std::string::value_type *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      --v3;
      v6 = *a2++;
      std::string::push_back((this + 16), v6);
    }

    while (v3);
  }
}

void MTBEWritePhonemes::WriteFixed(MTBEWritePhonemes *this, unint64_t a2, int a3)
{
  *&v11[19] = *MEMORY[0x277D85DE8];
  v4 = vcvtd_n_f64_s64(a2, 0x10uLL);
  v5 = __exp10(a3);
  sprintf(&v10, "%g", floor(v4 * v5 + 0.5) / v5);
  v6 = v10;
  if (v10)
  {
    v7 = v11;
    do
    {
      std::string::push_back((this + 16), v6);
      v8 = *v7++;
      v6 = v8;
    }

    while (v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void MTBEWritePhonemes::WriteLong(MTBEWritePhonemes *this, unint64_t a2)
{
  v2 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    do
    {
      std::string::push_back((this + 16), 45);
      v4 = -v2;
      v5 = v2 <= 0;
      v2 = -v2;
    }

    while (!v5);
  }

  else
  {
    v4 = a2;
  }

  if (v4 >= 0xA)
  {
    MTBEWritePhonemes::WriteLong(this, v4 / 0xA);
  }

  std::string::push_back((this + 16), (v4 % 0xA) | 0x30);
}

void MTBEWritePhonemes::~MTBEWritePhonemes(void **this)
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

void MTFEBuilder::MTFEBuilder(MTFEBuilder *this, SLLexer *a2)
{
  this->var0 = &unk_2868F4DC8;
  this->var1 = a2;
  *&this->var2 = 0u;
  *&this->var4 = 0u;
  this->var8 = 1;
  this->var10 = 0;
  *&this->var12 = 0;
  *&this->var15 = 0;
  *&this->var17 = 0x4E4F524D00000000;
  this->var19 = 0;
}

{
  this->var0 = &unk_2868F4DC8;
  this->var1 = a2;
  *&this->var2 = 0u;
  *&this->var4 = 0u;
  this->var8 = 1;
  this->var10 = 0;
  *&this->var12 = 0;
  *&this->var15 = 0;
  *&this->var17 = 0x4E4F524D00000000;
  this->var19 = 0;
}

void MTFEBuilder::~MTFEBuilder(MTFEBuilder *this)
{
  this->var0 = &unk_2868F4DC8;
  var2 = this->var2;
  if (var2)
  {
    (*(var2->var0 + 2))(var2);
  }

  if (this->var19)
  {
    SLTokenRelease();
  }
}

{
  MTFEBuilder::~MTFEBuilder(this);

  JUMPOUT(0x259C6DA90);
}

SLToken *MTFEBuilder::PeekToken(MTFEBuilder *this)
{
  result = this->var19;
  if (!result)
  {
    result = (*this->var1->var0)(this->var1);
    this->var19 = result;
  }

  return result;
}

MTFEBuilder *MTFEBuilder::ParseSentence(MTFEBuilder *this)
{
  this->var7 = 0;
  this->var10 = 0;
  while (1)
  {
    var19 = this->var19;
    if (!var19)
    {
      break;
    }

    this->var19 = 0;
LABEL_5:
    Class = SLTokenGetClass();
    if (Class > 45)
    {
      switch(Class)
      {
        case '[':
          MTFEBuilder::ProcessCommand(this, var19);
          break;
        case '/':
          if (this->var19)
          {
            v5 = 0;
          }

          else
          {
            v6 = (*this->var1->var0)(this->var1);
            this->var19 = v6;
            v5 = v6 == 0;
          }

          (*(this->var0 + 2))(this, v5);
          break;
        case '.':
          if (this->var19 || (v4 = (*this->var1->var0)(this->var1), (this->var19 = v4) != 0))
          {
            if (SLTokenGetClass() == 43)
            {
              SLTokenGetInfo();
            }
          }

          MTFEBuilder::ProcessPunctuation(this, var19);
      }
    }

    else
    {
      switch(Class)
      {
        case ' ':
          MTFEBuilder::ProcessWord(this, var19);
        case '#':
          MTFEBuilder::ProcessMelody(this, var19);
          break;
        case '+':
          MTFEBuilder::ProcessInsert(this, var19, 0);
          break;
      }
    }

    SLTokenRelease();
    if (this->var10)
    {
      return MTFEBuilder::EndIntonationalPhrase(this, 0);
    }
  }

  var19 = (*this->var1->var0)(this->var1);
  this->var19 = 0;
  if (var19)
  {
    goto LABEL_5;
  }

  if (!this->var10)
  {
    (*(this->var0 + 2))(this, 1);
  }

  return MTFEBuilder::EndIntonationalPhrase(this, 0);
}

uint64_t MTFEBuilder::ProcessInsert(MTFEBuilder *this, SLToken *a2, char a3)
{
  SLTokenGetInfo();
  Info = SLTokenGetInfo();
  v8 = Info;
  if (v6 && (Info & 1) == 0 && this->var3)
  {
    MTFEBuilder::ProcessInsertWord(this, a2);
  }

  result = MTFEBuilder::MakeIntonationalPhrase(this);
  if (!((v6 != 0) | v8 & 1) && (a3 & 1) == 0)
  {
    if (!this->var19)
    {
      v10 = (*this->var1->var0)(this->var1);
      this->var19 = v10;
      if (!v10)
      {
        MTFEBuilder::ProcessInsertWord(this, a2);
      }
    }

    result = SLTokenGetClass();
    if (result != 43 && result != 46)
    {
      MTFEBuilder::ProcessInsertWord(this, a2);
    }
  }

  if (v8)
  {
    this->var13 = 1;
  }

  return result;
}

void MTFEBuilder::ProcessCommand(MTFEBuilder *this, SLToken *a2)
{
  var3 = this->var3;
  SLTokenGetInfo();
  SLTokenGetInfo();
  MTFEBuilder::MakeIntonationalPhrase(this);
  v4 = this->var3;
  operator new();
}

void sub_257B158B4(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x259C6DA90](v1, v3);
  _Unwind_Resume(a1);
}

unsigned __int8 *MTFEBuilder::ProcessMelody(MTFEBuilder *this, SLToken *a2)
{
  MTFEBuilder::MakeIntonationalPhrase(this);
  if (!this->var3->var28)
  {
    operator new();
  }

  SLTokenGetHomograph();
  var28 = this->var3->var28;
  Phonemes = SLHomographGetPhonemes();
  result = MTFEMelody::AddNotes(var28, Phonemes);
  for (i = this->var5; i; i = i->var7)
  {
    if ((i->var9 & 0x80000000) == 0)
    {
      break;
    }

    i->var9 = *(this->var3->var28 + 2);
  }

  return result;
}

MTFEBuilder *MTFEBuilder::EndIntonationalPhrase(MTFEBuilder *this, int a2)
{
  v2 = this;
  if (this->var3 && !this->var4)
  {
    MTFEBuilder::MakePhrase(this);
    operator new();
  }

  this->var3 = 0;
  this->var4 = 0;
  if (a2)
  {
    if (this->var20 >= 0xFBu)
    {
      this = MTFEFirstPhoneme(this->var5);
      BYTE2(this->var7) = 70;
      v2->var10 = 1;
    }
  }

  return this;
}

MTFEBuilder *MTFEBuilder::MakePhrase(MTFEBuilder *this)
{
  if (!this->var4)
  {
    v1 = this;
    MTFEBuilder::MakeIntonationalPhrase(this);
    var3 = v1->var3;
    operator new();
  }

  return this;
}

MTFEBuilder *MTFEBuilder::MakeIntonationalPhrase(MTFEBuilder *this)
{
  if (!this->var3)
  {
    v1 = this;
    var2 = this->var2;
    MTFEBuilder::MakeSentence(this);
    v3 = v1->var2;
    operator new();
  }

  return this;
}

MTFEBuilder *MTFEBuilder::EndParagraph(MTFEBuilder *this, int a2)
{
  var2 = this->var2;
  if (var2)
  {
    if (a2)
    {
      v3 = 6;
    }

    else
    {
      v3 = 2;
    }

    var2->var8 |= v3;
    this->var10 = 1;
    var7 = this->var7;
    if (var7)
    {
      var7->var9 = 70;
    }
  }

  this->var8 = 1;
  return this;
}

MTFEBuilder *MTFEBuilder::ResetProduct(MTFEBuilder *this, int a2)
{
  v2 = this;
  if (a2)
  {
    this = this->var2;
    if (this)
    {
      this = (*(this->var0 + 2))(this);
    }
  }

  v2->var2 = 0;
  v2->var10 = 0;
  return this;
}

MTFEBuilder *MTFEBuilder::MakeSentence(MTFEBuilder *this)
{
  if (!this->var2)
  {
    operator new();
  }

  return this;
}

uint64_t MTFEDebugVisitor::StartElement(FILE **this, const char *a2, int a3)
{
  if (*(this + 28) == 1)
  {
    fputc(10, this[1]);
  }

  *(this + 28) = a3 ^ 1;
  fprintf(this[1], "%*s", *(this + 6), "");
  v6 = 32;
  if (a3)
  {
    v6 = 10;
  }

  result = fprintf(this[1], "%s {%c", a2, v6);
  *(this + 6) += 3;
  return result;
}

size_t MTFEDebugVisitor::EndElement(MTFEDebugVisitor *this)
{
  v2 = *(this + 6) - 3;
  *(this + 6) = v2;
  v3 = *(this + 1);
  if (*(this + 28))
  {
    fputc(32, v3);
    *(this + 28) = 0;
  }

  else
  {
    fprintf(v3, "%*s", v2, "");
  }

  v4 = *(this + 1);

  return fwrite("}\n", 2uLL, 1uLL, v4);
}

size_t MTFEDebugVisitor::PrintTags(size_t this, const SLWordTagSet *a2)
{
  if (a2->var0[0])
  {
    v3 = this;
    fputc(123, *(this + 8));
    if (a2->var0[0])
    {
      v4 = 0;
      do
      {
        v5 = &a2->var0[v4];
        v6 = SLTagEng::Name(v5[1]);
        if (v6 && *v6)
        {
          fprintf(*(v3 + 8), "%s%s");
        }

        else
        {
          v8 = v5[1];
          fprintf(*(v3 + 8), "%s(?%d?)");
        }

        ++v4;
      }

      while (v4 < a2->var0[0]);
    }

    v7 = *(v3 + 8);

    return fwrite("} ", 2uLL, 1uLL, v7);
  }

  return this;
}

uint64_t MTFEDebugVisitor::VisitSentence(FILE **this, MTFESpeechElement *a2)
{
  MTFEDebugVisitor::StartElement(this, "Sentence", 0);
  if (LOWORD(a2[1].var0))
  {
    fprintf(this[1], " %04x", SLOWORD(a2[1].var0));
  }

  v4 = *(&a2[1].var0 + 1);
  if (v4 != 0.0)
  {
    fprintf(this[1], " %f", v4);
  }

  if (*&a2[1].var2)
  {
    fprintf(this[1], " F %d", *&a2[1].var2);
  }

  v5 = *(&a2[1].var2 + 2);
  if (v5 > 1.0)
  {
    fprintf(this[1], " V %f %f", v5, *&a2[1].var3);
  }

  v6 = *(&a2[1].var3 + 1);
  if (v6 > 1.0)
  {
    fprintf(this[1], " R %f", v6);
  }

  MTFESpeechElement::VisitChildren(a2, this);
  MTFEDebugVisitor::EndElement(this);
  v7 = this[1];

  return fflush(v7);
}

size_t MTFEDebugVisitor::VisitIntonationalPhrase(MTFEDebugVisitor *this, MTFESpeechElement *a2)
{
  *(this + 4) = 0;
  MTFEDebugVisitor::StartElement(this, "IntonationalPhrase", 0);
  if (a2[1].var0)
  {
    fprintf(*(this + 1), " %04x", a2[1].var0);
  }

  if (a2[3].var1 >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      fputc(sBegInsertName[(a2[3].var3 >> v4) & 3], *(this + 1));
      ++v5;
      v4 += 2;
    }

    while (v5 < a2[3].var1);
  }

  if (*&a2[3].var2 >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      fputc(sEndInsertName[(a2[3].var4 >> v6) & 3], *(this + 1));
      ++v7;
      v6 += 2;
    }

    while (v7 < *&a2[3].var2);
  }

  if (*(&a2[2].var2 + 1))
  {
    fprintf(*(this + 1), " C:%d/%d N<%d:%d>", *(&a2[2].var2 + 2), *(&a2[2].var2 + 1), *&a2[2].var2, a2[2].var1);
  }

  if (BYTE6(a2[2].var6) - 68 <= 4)
  {
    fwrite(off_279851808[(BYTE6(a2[2].var6) - 68)], 4uLL, 1uLL, *(this + 1));
  }

  if (a2[3].var6)
  {
    MTFEDebugVisitor::StartElement(this, "Melody", 0);
    var6 = a2[3].var6;
    if (*(var6 + 2))
    {
      v9 = 0;
      do
      {
        v10 = *(this + 1);
        if (v9)
        {
          v11 = " ";
        }

        else
        {
          v11 = "";
        }

        v12 = MTFEMelody::Pitch(var6, v9);
        v13 = MTFEMelody::Duration(a2[3].var6, v9);
        fprintf(v10, "%s%3.0f:%4.2f", v11, v12, v13);
        ++v9;
        var6 = a2[3].var6;
      }

      while (v9 < *(var6 + 2));
    }

    MTFEDebugVisitor::EndElement(this);
  }

  MTFESpeechElement::VisitChildren(a2, this);
  MTFECommands::Visit(&a2[1].var1, this);
  if (BYTE5(a2[2].var6))
  {
    MTFEDebugVisitor::StartElement(this, "FinalBoundary", 0);
    fprintf(*(this + 1), " %s", MTFEToBI::sTone[SBYTE5(a2[2].var6)]);
    v14 = *&a2[3].var5;
    if (v14 != 0.0)
    {
      fprintf(*(this + 1), " %4.2f", v14);
    }

    MTFEDebugVisitor::EndElement(this);
  }

  return MTFEDebugVisitor::EndElement(this);
}

size_t MTFEDebugVisitor::VisitIntermediatePhrase(FILE **this, MTFESpeechElement *a2)
{
  MTFEDebugVisitor::StartElement(this, "IntermediatePhrase", 0);
  v4 = SWORD2(a2[1].var0);
  if (WORD2(a2[1].var0))
  {
    v5 = this[1];
    v6 = SWORD1(a2[1].var0);
    var0_low = SLOWORD(a2[1].var0);
    var0_high = SHIWORD(a2[1].var0);
    v9 = *&a2[1].var2;
    var1 = a2[1].var1;
    v11 = SLBndEng::Name(LOBYTE(a2[1].var4));
    fprintf(v5, "%d:%d - %d:%d N<%d:%d> [%s] %p", v6, var0_low, var0_high, v4, v9, var1, v11, a2);
  }

  MTFESpeechElement::VisitChildren(a2, this);
  if (BYTE1(a2[1].var4))
  {
    MTFEDebugVisitor::StartElement(this, "PhraseAccent", 0);
    fprintf(this[1], " %s", MTFEToBI::sTone[SBYTE1(a2[1].var4)]);
    v12 = *(&a2[1].var4 + 1);
    if (v12 != 0.0)
    {
      fprintf(this[1], " %4.2f", v12);
    }

    MTFEDebugVisitor::EndElement(this);
  }

  return MTFEDebugVisitor::EndElement(this);
}

size_t MTFEDebugVisitor::VisitWord(FILE **this, MTFESpeechElement *a2)
{
  MTFECommands::Visit(&a2[2], this);
  MTFEDebugVisitor::StartElement(this, "Word", 0);
  if (LOBYTE(a2[3].var5))
  {
    var0 = a2[1].var0;
    if ((var0 & 4) != 0)
    {
      v5 = "-";
    }

    else
    {
      v5 = "";
    }

    if ((var0 & 8) != 0)
    {
      v6 = "-";
    }

    else
    {
      v6 = "";
    }

    fprintf(this[1], "%s%s%s ", v5, &a2[3].var5, v6);
  }

  v7 = a2[1].var0;
  if ((v7 & 0x1000) != 0)
  {
    fwrite("Morph ", 6uLL, 1uLL, this[1]);
    v7 = a2[1].var0;
    if ((v7 & 2) == 0)
    {
LABEL_11:
      if ((v7 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_11;
  }

  fwrite("Flex ", 5uLL, 1uLL, this[1]);
  v7 = a2[1].var0;
  if ((v7 & 1) == 0)
  {
LABEL_12:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  fwrite("TUNE ", 5uLL, 1uLL, this[1]);
  v7 = a2[1].var0;
  if ((v7 & 0x800) == 0)
  {
LABEL_13:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  fwrite("ExactPitch ", 0xBuLL, 1uLL, this[1]);
  v7 = a2[1].var0;
  if ((v7 & 0x20) == 0)
  {
LABEL_14:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_22:
  v10 = this[1];
  if ((v7 & 0x8000) != 0)
  {
    fprintf(v10, "CapitalizedButIgnored ");
  }

  else
  {
    fprintf(v10, "Capitalized ");
  }

  if ((a2[1].var0 & 0x40) != 0)
  {
LABEL_15:
    fwrite("Silence ", 8uLL, 1uLL, this[1]);
  }

LABEL_16:
  v8 = BYTE6(a2[1].var4);
  v9 = MEMORY[0x277D65538];
  if (v8 == 255)
  {
    if (LODWORD(a2[1].var5) == 0x7FFFFFFF)
    {
      fwrite("Any ", 4uLL, 1uLL, this[1]);
    }

    else
    {
      for (i = 0; i != 32; ++i)
      {
        if ((LODWORD(a2[1].var5) >> i))
        {
          fprintf(this[1], "%s ", *(v9 + 8 * i));
        }
      }
    }
  }

  else
  {
    fprintf(this[1], "%s ", *(MEMORY[0x277D65538] + 8 * v8));
  }

  MTFEDebugVisitor::PrintTags(this, (&a2[1].var5 + 4));
  if (*(&a2[1].var2 + 2) != 255)
  {
    if (*&a2[1].var1 != 60)
    {
      fputs("...", this[1]);
    }

    fputc(60, this[1]);
    fputs(*(v9 + 8 * *(&a2[1].var2 + 2)), this[1]);
    if (*(&a2[1].var2 + 2))
    {
      fputc(32, this[1]);
      MTFEDebugVisitor::PrintTags(this, (&a2[1].var2 + 4));
    }

    fputc(62, this[1]);
    if (*&a2[1].var1 != 62)
    {
      fputs("...", this[1]);
    }

    fputc(32, this[1]);
  }

  if (HIBYTE(a2[1].var0))
  {
    v12 = this[1];
    v13 = SLBndEng::Name(HIBYTE(a2[1].var0));
    fprintf(v12, "[%s] ", v13);
  }

  if (WORD2(a2[3].var0))
  {
    fprintf(this[1], "%d:%d - %d:%d ", SWORD1(a2[3].var0), SLOWORD(a2[3].var0), SHIWORD(a2[3].var0), SWORD2(a2[3].var0));
  }

  if (a2[3].var1)
  {
    fprintf(this[1], "[%d] ", a2[3].var1);
  }

  if (BYTE6(a2[1].var0))
  {
    fputs(*(MEMORY[0x277D65530] + 8 * BYTE6(a2[1].var0)), this[1]);
  }

  if (*&a2[3].var2)
  {
    fprintf(this[1], " %d", *&a2[3].var2);
  }

  if (*(&a2[3].var2 + 1))
  {
    fprintf(this[1], " <%d>", *(&a2[3].var2 + 1));
  }

  if ((SWORD2(a2[1].var0) & 0x80000000) == 0)
  {
    fprintf(this[1], " :%d", SWORD2(a2[1].var0));
  }

  var6 = a2[4].var6;
  if (var6)
  {
    v15 = this[1];
    v16 = MEOWPhon::Name(*var6);
    v17 = MEOWPhon::Name(*(var6 + 1));
    v18 = bswap32(*(var6 + 1)) >> 16;
    v19 = MEOWPhon::Name(*(var6 + 4));
    v20 = MEOWPhon::Name(*(var6 + 5));
    fprintf(v15, " [%s-%s#%d - %s-%s#%d]", v16, v17, v18, v19, v20, bswap32(*(var6 + 3)) >> 16);
  }

  MTFESpeechElement::VisitChildren(a2, this);

  return MTFEDebugVisitor::EndElement(this);
}

size_t MTFEDebugVisitor::VisitHomograph(FILE **this, MTFESpeechElement *a2)
{
  MTFEDebugVisitor::StartElement(this, "Homograph", 0);
  if (LODWORD(a2[1].var0) == 0x7FFFFFFF)
  {
    fwrite("Any", 3uLL, 1uLL, this[1]);
  }

  else
  {
    v4 = 0;
    v5 = MEMORY[0x277D65538];
    do
    {
      if ((LODWORD(a2[1].var0) >> v4))
      {
        fprintf(this[1], "%s ", *(v5 + 8 * v4));
      }

      ++v4;
    }

    while (v4 != 32);
  }

  MTFEDebugVisitor::PrintTags(this, (&a2[1].var0 + 4));
  MTFESpeechElement::VisitChildren(a2, this);

  return MTFEDebugVisitor::EndElement(this);
}

size_t MTFEDebugVisitor::VisitSyllable(FILE **this, MTFESpeechElement *a2)
{
  MTFEDebugVisitor::StartElement(this, "Syllable", 0);
  if (WORD2(a2[1].var0))
  {
    fprintf(this[1], "%d:%d-%d", SLOWORD(a2[1].var0), SWORD1(a2[1].var0), SWORD2(a2[1].var0));
  }

  if (HIWORD(a2[1].var0))
  {
    fprintf(this[1], " %s", MTFEToBI::sTone[SHIWORD(a2[1].var0)]);
    v4 = *&a2[1].var1;
    if (v4 != 0.0)
    {
      fprintf(this[1], " %4.2f", v4);
    }
  }

  MTFESpeechElement::VisitChildren(a2, this);

  return MTFEDebugVisitor::EndElement(this);
}

size_t MTFEDebugVisitor::VisitPhoneme(FILE **this, MTFESpeechElement *a2)
{
  v4 = BYTE2(a2[1].var0);
  v5 = BYTE3(a2[1].var0);
  if (BYTE3(a2[1].var0))
  {
    if ((v4 - 46) > 4)
    {
      v6 = "!!!";
    }

    else
    {
      v6 = off_279851830[(v4 - 46)];
    }
  }

  else
  {
    v6 = *(MEMORY[0x277D65550] + 8 * v4);
  }

  v7 = MEOWPhon::sP2M[v4];
  MTFEDebugVisitor::StartElement(this, "Phoneme", 0);
  v8 = *&a2[1].var1;
  v9 = *(&a2[1].var2 + 2);
  v10 = v8;
  v11 = (v8 * v9);
  v12 = (v8 * (1.0 - v9));
  var7 = a2->var7;
  if (var7)
  {
    if (var7 == this[4])
    {
      v14 = 60;
    }

    else
    {
      v14 = 33;
    }
  }

  else
  {
    v14 = 32;
  }

  v15 = 62;
  if (!a2->var6)
  {
    v15 = 32;
  }

  fprintf(this[1], "%3s %08x %3d %5.1f(%5.1f/%5.1f) %c%c %d", v6, LODWORD(a2[1].var3), SWORD2(a2[1].var0), v10, v11, v12, v14, v15, SLOWORD(a2[1].var0));
  if (BYTE5(a2[1].var5))
  {
    fputc(32, this[1]);
    if (this[2] && SLOWORD(a2[1].var5) != -1 && SWORD1(a2[1].var5) != -1)
    {
      MEOWVectorBase::MEOWVectorBase(v36, 2);
      v16 = this[2];
      DemiRecord = MEOWReader::GetDemiRecord(v16, BYTE4(a2[1].var5), BYTE5(a2[1].var5), LOWORD(a2[1].var5), 1);
      MEOWReader::GetDemi(v16, DemiRecord, 1, v34);
      v18 = v35;
      v19 = this[2];
      v20 = MEOWReader::GetDemiRecord(v19, BYTE5(a2[1].var5), BYTE6(a2[1].var5), WORD1(a2[1].var5), 0);
      MEOWReader::GetDemi(v19, v20, 0, v34);
      if (v35 == v18)
      {
        fputc(38, this[1]);
      }

      MEOWVectorBase::~MEOWVectorBase(v36);
    }

    fputc(91, this[1]);
    if (SLOWORD(a2[1].var5) != -1)
    {
      v21 = this[1];
      v22 = MEOWPhon::Name(BYTE4(a2[1].var5));
      v23 = MEOWPhon::Name(BYTE5(a2[1].var5));
      var5_low = LOWORD(a2[1].var5);
      if (SWORD1(a2[1].var5) == -1)
      {
        v25 = " ...";
      }

      else
      {
        v25 = " ";
      }

      fprintf(v21, "%s>%s#%d%s", v22, v23, LOWORD(a2[1].var5), v25);
    }

    if (SWORD1(a2[1].var5) != -1)
    {
      v26 = this[1];
      if (SLOWORD(a2[1].var5) == -1)
      {
        v27 = "... ";
      }

      else
      {
        v27 = "";
      }

      v28 = MEOWPhon::Name(BYTE5(a2[1].var5));
      v29 = MEOWPhon::Name(BYTE6(a2[1].var5));
      fprintf(v26, "%s%s<%s#%d", v27, v28, v29, WORD1(a2[1].var5));
    }

    fputc(93, this[1]);
  }

  if (HIDWORD(a2[1].var3))
  {
    fprintf(this[1], " @%u", HIDWORD(a2[1].var3));
  }

  if (a2[1].var4)
  {
    MTFEDebugVisitor::StartElement(this, "Pitch", 0);
    var4 = a2[1].var4;
    if (*var4 >= 1)
    {
      v31 = 0;
      do
      {
        fprintf(this[1], " %5.1f:%d", ((*(var4 + v31 + 1) & 0xFFFFFFLL) / 100.0), *(var4 + v31 + 1) >> 24);
        ++v31;
        var4 = a2[1].var4;
      }

      while (v31 < *var4);
    }

    MTFEDebugVisitor::EndElement(this);
  }

  if (v5)
  {
    v32 = v7 + 1;
  }

  else
  {
    v32 = v7;
  }

  MTFESpeechElement::VisitChildren(a2, this);
  result = MTFEDebugVisitor::EndElement(this);
  *(this + 29) = v32;
  this[4] = a2;
  return result;
}

size_t MTFEDebugVisitor::VisitCommand(FILE **this, MTFECommand *a2)
{
  MTFEDebugVisitor::StartElement(this, "Command", 0);
  var9 = a2->var9;
  if ((var9 >> 24) <= 0x7F)
  {
    v5 = *(MEMORY[0x277D85DE0] + 4 * ((var9 >> 24) & 0x7F) + 60) & 0x100;
  }

  else
  {
    v5 = __maskrune(var9 >> 24, 0x100uLL);
  }

  v6 = this[1];
  var9_low = LODWORD(a2->var9);
  if (v5)
  {
    fprintf(v6, "%c%c%c%c %c%c%c%c", (SLODWORD(a2->var8) >> 24), ((LODWORD(a2->var8) << 8) >> 24));
  }

  else
  {
    fprintf(v6, "%c%c%c%c %08X");
  }

  return MTFEDebugVisitor::EndElement(this);
}

void MTFEDebugVisitor::Dump(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  v2 = *MEMORY[0x277D85DF8];
  v3[0] = &unk_2868F4E00;
  v3[1] = v2;
  v3[2] = 0;
  v4 = 0;
  v5 = 0;
  MTFESpeechVisitor::Visit(v3, this);
  MTFESpeechVisitor::~MTFESpeechVisitor(v3);
}

void sub_257B1766C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MTFESpeechVisitor::~MTFESpeechVisitor(va);
  _Unwind_Resume(a1);
}

void MTFEDebugVisitor::~MTFEDebugVisitor(MTFEDebugVisitor *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

MTFESpeechElement *MTFEPhrasing::VisitIntonationalPhrase(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  if (!BYTE4(a2[2].var6))
  {
    HIBYTE(this->var1) = a2->var1 < 10;
    *&this->var2 = 0;
    *(&this->var2 + 2) = 0;
    return MTFESpeechElement::VisitChildren(a2, this);
  }

  return this;
}

MTFEWord *MTFEPhrasing::VisitWord(MTFEWord *this, MTFEWord *a2)
{
  v3 = this;
  var15 = a2->var15;
  var11 = a2->var11;
  v6 = a2->var11 != 0;
  var1_low = LOBYTE(this->var1);
  v30 = -1;
  if (a2->var12 == 60 || (this = MTFEWord::PrevWord(a2)) == 0)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v8 = this;
    this = MTFEWord::POSForPrev(this, &v30, 0, 0);
    if (v8->var12 == 62)
    {
      LOBYTE(v9) = 0;
      if (!var11)
      {
LABEL_5:
        v6 = v8->var11 > 2u;
        goto LABEL_9;
      }
    }

    else
    {
      v9 = (LOBYTE(v8->var8) >> 4) & 1;
      if (!var11)
      {
        goto LABEL_5;
      }
    }

    v6 = 1;
  }

LABEL_9:
  v29 = -1;
  v28 = -1;
  v27 = -1;
  v10 = 1;
  v11 = 1;
  v12 = 1;
  if (a2->var12 != 62)
  {
    this = MTFEWord::NextWord(a2);
    if (!this)
    {
      goto LABEL_14;
    }

    v25 = 0;
    v26 = 0;
    MTFEWord::POSForNext(this, &v29, 0, &v26);
    v12 = v29 == 31;
    this = v26;
    if (!v26)
    {
      goto LABEL_14;
    }

    MTFEWord::POSForNext(v26, &v28, 0, &v25);
    v10 = v28 == 31;
    this = v25;
    if (v25)
    {
      this = MTFEWord::POSForNext(v25, &v27, 0, 0);
      v11 = v27 == 31;
    }

    else
    {
LABEL_14:
      v11 = 1;
    }
  }

  v13 = 1 << var15;
  if (var15 == 255)
  {
    v13 = 0;
  }

  v14 = v30;
  v15 = 1 << v30;
  if (v30 == 255)
  {
    v15 = 0;
  }

  v16 = v29;
  if (v29 == 255)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1 << v29;
  }

  if (var15 == 31)
  {
    v18 = *(&v3->var2 + 2);
    goto LABEL_57;
  }

  if (v12)
  {
    goto LABEL_53;
  }

  if (v3->var2 == 1)
  {
    v3->var2 = 0;
    v19 = 11;
    goto LABEL_51;
  }

  v20 = v27;
  v21 = (v17 & 0x102000) != 0;
  if (var15 != 14)
  {
    v21 = 0;
  }

  if (v30 != 255)
  {
    v21 = 0;
  }

  v3->var2 = v21;
  if (v6)
  {
    goto LABEL_53;
  }

  if (v14 == 255 || var15 != 11)
  {
    if (var15 != 14 || *(&v3->var2 + 2) < 5 || v16 == 6 || v14 == 8 || (v14 & 0xFE) == 2)
    {
      goto LABEL_43;
    }

LABEL_50:
    v19 = 12;
    goto LABEL_51;
  }

  if ((*(&v3->var2 + 1) & 1) == 0 && *(&v3->var2 + 2) >= 4 && v28 != 10)
  {
    goto LABEL_50;
  }

LABEL_43:
  if ((v15 & 0x200000) != 0 && *(&v3->var2 + 2) > 2)
  {
    goto LABEL_50;
  }

  if ((v13 & 0x140000) != 0 && *(&v3->var2 + 2) >= 4 && (v15 & 0x400) == 0)
  {
    goto LABEL_50;
  }

  v22 = *(&v3->var2 + 2);
  if (var15 == 12 && v22 > 4)
  {
    goto LABEL_50;
  }

  if (v22 >= 3 && (v15 & 0x33) != 0 && (v13 & 0x10C) != 0)
  {
    goto LABEL_61;
  }

  if (v14)
  {
    if (var15 == 10)
    {
LABEL_64:
      if (v22 >= 4 && !v10 && (v15 & 0xC00) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_79;
    }

    goto LABEL_79;
  }

  if (v22 >= 5 && (v17 & 0x110C) == 0 && v28 != 2 && (v13 & 0x10C) != 0 || ((var15 != 12) & v9) == 1 && (v17 & 0xC04) == 0 && v22 >= 4 && var15 == 1)
  {
LABEL_61:
    v19 = 13;
    goto LABEL_51;
  }

  if (var15 == 10)
  {
    goto LABEL_64;
  }

  if (var15 == 1)
  {
    if (v22 <= 2)
    {
      goto LABEL_100;
    }

    goto LABEL_61;
  }

LABEL_79:
  if (v14 == 19 && (v13 & 0x2080) == 0 && v22 >= 3 && (v13 & 0x41) != 0)
  {
LABEL_83:
    v19 = 14;
    goto LABEL_51;
  }

  if (var15 == 12)
  {
    v24 = v20 != 255 && ((1 << v20) & 0x10C) != 0;
    if (v22 < 4 || (v15 & 0x33) == 0 || v24)
    {
      goto LABEL_100;
    }

LABEL_99:
    v19 = 15;
    goto LABEL_51;
  }

  if (var15 == 17 && v22 >= 6 && (v15 & 0x214C) == 0 && v28 != 11)
  {
    goto LABEL_99;
  }

LABEL_100:
  if ((v15 & 0xA5273) != 0 && (v13 & 0xA5273) == 0)
  {
    var1_low = 0;
    v19 = 16;
    if (v14 != 4 || (v13 & 0x200000) == 0)
    {
LABEL_51:
      if (((v6 | var1_low) & 1) == 0)
      {
        a2->var11 = v19;
      }

      goto LABEL_53;
    }
  }

  if (var15 == 15 && v22 >= 4 && !v10 && !v11)
  {
    var1_low = 0;
    v19 = 16;
    goto LABEL_51;
  }

LABEL_53:
  v18 = *(&v3->var2 + 2);
  if (v18 >= 2)
  {
    *(&v3->var2 + 1) = 0;
  }

  if ((v13 & 0x2000) != 0)
  {
    *(&v3->var2 + 1) = 1;
  }

LABEL_57:
  *(&v3->var2 + 2) = v18 + 1;
  return this;
}

void MTFEPhrasing::~MTFEPhrasing(MTFEPhrasing *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

MTFESpeechElement *MTFEPOSResolver::VisitSentence(MTFEPOSResolver *this, MTFESpeechElement *a2)
{
  v2 = (a2[1].var0 & 8) != 0 || a2->var1 == 1 && a2->var3->var3->var1 == 1;
  *(this + 9) = v2;
  *(this + 10) = 0;
  return MTFESpeechElement::VisitChildren(a2, this);
}

MTFESpeechElement *MTFEPOSResolver::VisitIntonationalPhrase(MTFEPOSResolver *this, MTFESpeechElement *a2)
{
  *(this + 8) = 0;
  *(this + 4) = 100;
  *(this + 12) = a2[1].var0 & 1;
  var6 = a2->var6;
  if (var6)
  {
    if (var6[3].var1)
    {
      LOBYTE(var6) = (var6[3].var3 & 3) == 1;
    }

    else
    {
      LOBYTE(var6) = 0;
    }
  }

  *(this + 13) = var6;
  *(this + 14) = a2[3].var6 != 0;
  return MTFESpeechElement::VisitChildren(a2, this);
}

void MTFEPOSResolver::VisitWord(MTFEPOSResolver *this, MTFESpeechElement *a2)
{
  *(this + 11) = 0;
  MTFECommands::Visit(&a2[2], this);
  var5 = a2[1].var5;
  v863 = *(&a2[1].var5 + 4);
  v862 = -1;
  v861 = 0;
  MTFESpeechPedigree::MTFESpeechPedigree(v858, a2);
  if ((BYTE1(a2[1].var0) & 2) != 0)
  {
    BYTE6(a2[1].var4) = SLFirstPOSInSet();
  }

  v848 = a2;
  if (!var5)
  {
    v10 = 0;
    v846 = 0;
    var3 = a2->var3;
    LODWORD(var15) = 255;
    LODWORD(v13) = 255;
    goto LABEL_237;
  }

  v4.i32[0] = var5;
  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  v7 = a2->var1 == 1 && v5.i32[0] <= 1u && (var5 & 0x10880) == 0;
  v846 = var5;
  if (v7)
  {
    LODWORD(var15) = SLFirstPOSInSet();
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v14 = *MEMORY[0x277D85E08];
      v15 = *(MEMORY[0x277D65538] + 8 * var15);
      v16 = SLTagEng::Name(0);
      fprintf(v14, "POS %s %s%s%s %s [%d] %08x %08x\n", &a2[3].var5, v15, "", "", v16, 352, v846, v861);
    }

    var3 = 0;
    v10 = 0;
    goto LABEL_207;
  }

  v857 = 0;
  var17.var0[0] = 0;
  v855 = -1;
  v854.var0[0] = 0;
  if (*&a2[1].var1 == 60)
  {
    v8 = 0;
    v9 = 0;
    v838 = 1;
  }

  else
  {
    Word = MTFEWord::PrevWord(a2);
    v9 = Word;
    if (Word)
    {
      MTFEWord::POSForPrev(Word, &v862, &var17, &v857);
    }

    if (v857)
    {
      MTFEWord::POSForPrev(v857, &v855, &v854, 0);
    }

    if (v862 == 255)
    {
      v838 = *(v859 + 48) == 0;
      if (*(v859 + 176))
      {
        v8 = (*(v859 + 184) & 3) == 1;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
      v838 = 0;
    }
  }

  v852 = 0;
  v853 = 0;
  *v851 = 0;
  v850.var0[0] = 0;
  v849.var0[0] = 0;
  if (*&a2[1].var1 == 62)
  {
    v18 = 0;
    v840 = 0;
    v842 = 0;
    v19 = 0;
    v837 = 1;
    v835 = 0;
    v836 = 1;
    goto LABEL_56;
  }

  v20 = MTFEWord::NextWord(a2);
  v18 = v20;
  if (v20)
  {
    if ((v20[1].var0 & 0x40) != 0)
    {
      v21 = LOBYTE(v20[3].var5) != 60 || BYTE1(v20[3].var5) != 32 || BYTE2(v20[3].var5) != 0;
    }

    else
    {
      v21 = 0;
    }

    var0_high = HIBYTE(v20[1].var0);
    v19 = var0_high == 9 || var0_high == 4;
    MTFEWord::POSForNext(v20, &v861, &v850, &v853);
    if (v853)
    {
      if (v21)
      {
        v21 = (LOBYTE(v853->var8) >> 6) & 1;
      }

      MTFEWord::POSForNext(v853, &v851[1], &v849, &v852);
    }

    if (v852)
    {
      if (v21)
      {
        v21 = (LOBYTE(v852->var8) >> 6) & 1;
      }

      MTFEWord::POSForNext(v852, v851, 0, 0);
    }

    if (!v21)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v19 = 0;
  }

  if (!*(v860 + 40))
  {
    v840 = *(this + 13);
    v842 = 0;
    goto LABEL_55;
  }

LABEL_54:
  v840 = 0;
  v842 = 1;
LABEL_55:
  v836 = (v851[1] & 0x7FFFFFFF) == 0;
  v837 = (v861 & 0x7FFFFFFF) == 0;
  v835 = (v851[0] & 0x7FFFFFFF) != 0;
LABEL_56:
  if (SLWordTagSet::find(&v863))
  {
    var8 = v848->var8;
    if ((var8 & 0x80) != 0)
    {
      v26 = this;
      if ((*(this + 10) & ((var8 & 0x10000) >> 16)) != 0)
      {
        v25 = 71;
      }

      else
      {
        v25 = 70;
      }
    }

    else
    {
      v25 = 71;
      v26 = this;
    }

    if (MTFEPOSResolver::RequireTagAndPOS(v26, v848, v25, 0x7FFFFFFF))
    {
      v846 = *(this + 7);
      v863 = *(this + 2);
    }
  }

  else if (v848->var27[1])
  {
    *(this + 10) = (v848->var8 & 0x80) != 0;
  }

  if (SLWordTagSet::find(&v863))
  {
    v27 = (v848->var8 & 0x100) != 0 ? 72 : 73;
    if (MTFEPOSResolver::RequireTagAndPOS(this, v848, v27, 0x7FFFFFFF))
    {
      v846 = *(this + 7);
      v863 = *(this + 2);
    }
  }

  if (SLWordTagSet::find(&v863))
  {
    if ((v848->var8 & 0x200) != 0)
    {
      v28 = 1039;
    }

    else
    {
      v28 = SLWordTagSet::find(&v850) ? 1038 : 1039;
    }

    if (MTFEPOSResolver::RequireTagAndPOS(this, v848, v28, 0x7FFFFFFF))
    {
      v29 = *(this + 7);
      v863 = *(this + 2);
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v30 = *MEMORY[0x277D85E08];
        v31 = *(MEMORY[0x277D65538] + 2040);
        v32 = SLTagEng::Name(0);
        fprintf(v30, "POS %s %s%s%s %s [%d] %08x %08x\n", v848->var27, v31, "", "", v32, 480, v29, v861);
      }

      v846 = v29;
    }
  }

  if (SLWordTagSet::find(&v863))
  {
    if ((*(this + 9) & 1) != 0 || (*(this + 11) & 1) != 0 || *(this + 14) == 1 && strcmp(v848->var27, "THE") && (v848->var27[0] != 65 || v848->var27[1]))
    {
      goto LABEL_87;
    }

    LOWORD(v844) = 66;
    if (v848->var10 == 1)
    {
      goto LABEL_90;
    }

    v70 = (v848->var8 & 0x2000) != 0 ? 66 : 67;
    LOWORD(v844) = v70;
    if ((v842 | ((v848->var8 & 0x2000) >> 13)))
    {
      goto LABEL_90;
    }

    if (v19 || v848->var27[0] == 73 && v848->var27[1] == 84 && !v848->var27[2])
    {
      v848->var10 = 2;
    }

    if ((v840 & 1) == 0 || strcmp(v848->var27, "THE") && (v848->var27[0] != 65 || v848->var27[1]))
    {
LABEL_87:
      v33 = 66;
    }

    else
    {
      v33 = 67;
    }

    LOWORD(v844) = v33;
  }

  else
  {
    LOWORD(v844) = 0;
  }

LABEL_90:
  if (!SLWordTagSet::find(&v863))
  {
    goto LABEL_104;
  }

  v34 = v848;
  if ((v848->var8 & 0x8020) != 0x20 || *(this + 12) == 1 && (v35 = SLWordTagSet::find(&v850), v34 = v848, !v35) || (var27 = v34->var27, v34->var27[0] == 73) && !v34->var27[1])
  {
    if (MTFEPOSResolver::RequireTagAndPOS(this, v34, 77, 0x7FFFFFFF))
    {
      v846 = *(this + 7);
      v863 = *(this + 2);
    }

    goto LABEL_104;
  }

  if (!MTFEPOSResolver::RequireTagAndPOS(this, v34, 76, 0x7FFFFFFF))
  {
LABEL_104:
    LODWORD(var15) = 255;
    goto LABEL_105;
  }

  if (kMTFEDebugPOS)
  {
    MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
    kMTFEDebugPOS = 0;
  }

  if (byte_27F8F0908 == 1)
  {
    v37 = *MEMORY[0x277D85E08];
    v38 = *MEMORY[0x277D65538];
    v39 = SLTagEng::Name(0x4C);
    fprintf(v37, "POS %s %s%s%s %s [%d] %08x %08x\n", var27, v38, "", "", v39, 520, v846, v861);
  }

  LODWORD(var15) = 0;
  LOWORD(v844) = 76;
LABEL_105:
  v40 = v848->var27;
  if (!strcmp(v848->var27, "PRES."))
  {
    if (SLWordTagSet::find(&v850))
    {
      HIBYTE(v18[1].var0) = 2;
      strcpy(v40, "PRESIDENT");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v41 = *MEMORY[0x277D85E08];
        v42 = *(MEMORY[0x277D65538] + 8 * var15);
        v43 = SLTagEng::Name(0x40C);
        fprintf(v41, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v42, "", "", v43, 536, v846, v861);
      }

      v44 = 1036;
    }

    else
    {
      strcpy(v40, "PRESENTS");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v45 = *MEMORY[0x277D85E08];
        v46 = *(MEMORY[0x277D65538] + 8);
        v47 = SLTagEng::Name(0x40D);
        fprintf(v45, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v46, "", "", v47, 541, v846, v861);
      }

      LODWORD(var15) = 1;
      v44 = 1037;
    }

    LOWORD(v844) = v44;
  }

  if (!strcmp(v40, "EXPY"))
  {
    if ((SLWordTagSet::find(&var17) & 1) != 0 || v9 && (v9->var8 & 0x20) != 0)
    {
      v48 = 1056;
    }

    else
    {
      v48 = 1057;
    }

    v844 = v48;
    MTFEPOSResolver::RequireTagAndPOS(this, v848, v48, 0x7FFFFFFF);
    v49 = *(this + 7);
    v863 = *(this + 2);
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v50 = *MEMORY[0x277D85E08];
      v51 = *(MEMORY[0x277D65538] + 8 * var15);
      v52 = SLTagEng::Name(v844);
      fprintf(v50, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v51, "", "", v52, 556, v49, v861);
    }

    v846 = v49;
  }

  if (SLWordTagSet::find(&v863))
  {
    v53 = SLWordTagSet::find(&v863);
    if (SLWordTagSet::find(&var17))
    {
      *&v848->var10 = 516;
      strcpy(v40, "DRIVE");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v54 = *MEMORY[0x277D85E08];
        v55 = *MEMORY[0x277D65538];
        v56 = SLTagEng::Name(0x402);
        fprintf(v54, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v55, "", "", v56, 577, v846, v861);
      }

LABEL_206:
      LODWORD(var15) = 0;
      var3 = 0;
      v10 = 1026;
      goto LABEL_207;
    }

    if (v53)
    {
      if (SLWordTagSet::find(&v850))
      {
        HIBYTE(v18[1].var0) = 2;
        strcpy(v40, "DOCTOR");
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v64 = *MEMORY[0x277D85E08];
          v65 = *MEMORY[0x277D65538];
          v66 = SLTagEng::Name(0x403);
          fprintf(v64, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v65, "", "", v66, 582, v846, v861);
        }

LABEL_157:
        LODWORD(var15) = 0;
        var3 = 0;
        v10 = 1027;
        goto LABEL_207;
      }

      if (((1 << v862) & 0x41) == 0)
      {
        if ((v861 & 0x41) != 0)
        {
          HIBYTE(v18[1].var0) = 2;
          strcpy(v40, "DOCTOR");
          if (kMTFEDebugPOS)
          {
            MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
            kMTFEDebugPOS = 0;
          }

          if (byte_27F8F0908 == 1)
          {
            v121 = *MEMORY[0x277D85E08];
            v122 = *MEMORY[0x277D65538];
            v123 = SLTagEng::Name(0x403);
            fprintf(v121, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v122, "", "", v123, 593, v846, v861);
          }
        }

        else
        {
          strcpy(v40, "DOCTOR");
          if (kMTFEDebugPOS)
          {
            MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
            kMTFEDebugPOS = 0;
          }

          if (byte_27F8F0908 == 1)
          {
            v142 = *MEMORY[0x277D85E08];
            v143 = *MEMORY[0x277D65538];
            v144 = SLTagEng::Name(0x403);
            fprintf(v142, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v143, "", "", v144, 598, v846, v861);
          }
        }

        goto LABEL_157;
      }

LABEL_202:
      *&v848->var10 = 516;
      strcpy(v40, "DRIVE");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v81 = *MEMORY[0x277D85E08];
        v82 = *MEMORY[0x277D65538];
        v83 = SLTagEng::Name(0x402);
        fprintf(v81, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v82, "", "", v83, 588, v846, v861);
      }

      goto LABEL_206;
    }

    if (((1 << v862) & 0x41) != 0)
    {
      goto LABEL_202;
    }

    goto LABEL_332;
  }

  if (SLWordTagSet::find(&v863))
  {
    v57 = SLWordTagSet::find(&v863);
    if (v57 && SLWordTagSet::find(&v850))
    {
      HIBYTE(v18[1].var0) = 2;
      strcpy(v40, "SAINT");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v58 = *MEMORY[0x277D85E08];
        v59 = *MEMORY[0x277D65538];
        v60 = SLTagEng::Name(0x401);
        fprintf(v58, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v59, "", "", v60, 618, v846, v861);
      }

LABEL_142:
      LODWORD(var15) = 0;
      var3 = 0;
      v10 = 1025;
LABEL_207:
      LODWORD(v13) = 255;
      goto LABEL_208;
    }

    if (SLWordTagSet::find(&var17))
    {
      *&v848->var10 = 516;
      if (v57)
      {
        strcpy(v40, "STREET");
      }

      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v67 = *MEMORY[0x277D85E08];
        v68 = *MEMORY[0x277D65538];
        v69 = SLTagEng::Name(0x400);
        fprintf(v67, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v68, "", "", v69, 625, v846, v861);
      }
    }

    else if (((1 << v862) & 0x41) != 0)
    {
      v848->var10 = 4;
      if (v57)
      {
        strcpy(v40, "STREET");
      }

      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v78 = *MEMORY[0x277D85E08];
        v79 = *MEMORY[0x277D65538];
        v80 = SLTagEng::Name(0x400);
        fprintf(v78, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v79, "", "", v80, 631, v846, v861);
      }
    }

    else
    {
      if (!v57)
      {
        goto LABEL_332;
      }

      if ((v861 & 0x41) != 0)
      {
        HIBYTE(v18[1].var0) = 2;
        strcpy(v40, "SAINT");
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v113 = *MEMORY[0x277D85E08];
          v114 = *MEMORY[0x277D65538];
          v115 = SLTagEng::Name(0x401);
          fprintf(v113, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v114, "", "", v115, 636, v846, v861);
        }

        goto LABEL_142;
      }

      strcpy(v40, "STREET");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v152 = *MEMORY[0x277D85E08];
        v153 = *MEMORY[0x277D65538];
        v154 = SLTagEng::Name(0x400);
        fprintf(v152, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v153, "", "", v154, 642, v846, v861);
      }
    }

    LODWORD(var15) = 0;
    var3 = 0;
    v10 = 1024;
    goto LABEL_207;
  }

  if (SLWordTagSet::find(&v863))
  {
    if (SLWordTagSet::find(&v863) && SLWordTagSet::find(&v850))
    {
      HIBYTE(v18[1].var0) = 2;
      strcpy(v40, "FORT");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v61 = *MEMORY[0x277D85E08];
        v62 = *MEMORY[0x277D65538];
        v63 = SLTagEng::Name(0x404);
        fprintf(v61, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v62, "", "", v63, 652, v846, v861);
      }

      LODWORD(var15) = 0;
      var3 = 0;
      v10 = 1028;
    }

    else
    {
      v848->var11 = 2;
      strcpy(v40, "FEET");
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v75 = *MEMORY[0x277D85E08];
        v76 = *MEMORY[0x277D65538];
        v77 = SLTagEng::Name(0x405);
        fprintf(v75, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v76, "", "", v77, 657, v846, v861);
      }

      LODWORD(var15) = 0;
      var3 = 0;
      v10 = 1029;
    }

    goto LABEL_207;
  }

  if (SLWordTagSet::find(&v863))
  {
    if (SLWordTagSet::find(&var17))
    {
      v848->var11 = 2;
      if (v848->var27[2] == 83)
      {
        v71 = "POINTS";
      }

      else
      {
        v71 = "POINT";
      }

      strcpy(v40, v71);
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v72 = *MEMORY[0x277D85E08];
        v73 = *(MEMORY[0x277D65538] + 8 * var15);
        v74 = SLTagEng::Name(0x417);
        fprintf(v72, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v73, "", "", v74, 664, v846, v861);
      }
    }

    else
    {
      if (SLWordTagSet::find(&v850))
      {
        HIBYTE(v18[1].var0) = 2;
        if (v848->var27[2] == 83)
        {
          v116 = "PARTS";
        }

        else
        {
          v116 = "PART";
        }

        strcpy(v40, v116);
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v117 = *MEMORY[0x277D85E08];
          v118 = *(MEMORY[0x277D65538] + 8 * var15);
          v119 = SLTagEng::Name(0x416);
          fprintf(v117, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v118, "", "", v119, 669, v846, v861);
        }

        v120 = 1046;
        goto LABEL_328;
      }

      if (v848->var27[2] == 83)
      {
        v124 = "POINTS";
      }

      else
      {
        v124 = "POINT";
      }

      strcpy(v40, v124);
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v125 = *MEMORY[0x277D85E08];
        v126 = *(MEMORY[0x277D65538] + 8 * var15);
        v127 = SLTagEng::Name(0x417);
        fprintf(v125, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v126, "", "", v127, 673, v846, v861);
      }
    }

    v120 = 1047;
LABEL_328:
    LOWORD(v844) = v120;
    goto LABEL_329;
  }

  if (SLWordTagSet::find(&v863) && SLWordTagSet::find(&var17))
  {
    if (MTFEPOSResolver::RequireTagAndPOS(this, v848, 86, 0x7FFFFFFF))
    {
      v107 = *(this + 7);
      v863 = *(this + 2);
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v108 = *MEMORY[0x277D85E08];
        v109 = *(MEMORY[0x277D65538] + 8 * var15);
        v110 = SLTagEng::Name(v844);
        fprintf(v108, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v109, "", "", v110, 682, v107, v861);
      }

      v846 = v107;
    }

    goto LABEL_329;
  }

  v111 = SLWordTagSet::find(&v863) ^ 1;
  if (v844 == 66)
  {
    LOBYTE(v111) = 1;
  }

  if ((v111 & 1) == 0)
  {
    v112 = v848->var8;
    if ((v112 & 0x200) != 0)
    {
      if (v848->var15 || !MTFEPOSResolver::RequireTagAndPOS(this, v848, 65, 1))
      {
        goto LABEL_329;
      }

LABEL_436:
      v846 = *(this + 7);
      v863 = *(this + 2);
      goto LABEL_329;
    }

    if (v844)
    {
      if (!MTFEPOSResolver::RequireTagAndPOS(this, v848, 65, 0x7FFFFFFF))
      {
        goto LABEL_329;
      }

      goto LABEL_436;
    }

    v160 = (*(this + 12) != 1 || ((v158 = SLWordTagSet::find(&v863), v112 = v848->var8, (v112 & 0x4000) == 0) ? (v159 = 1) : (v159 = v158), v159 == 1)) && (v112 & 0x8000) == 0;
    v165 = SLWordTagSet::find(&var17);
    v166 = SLWordTagSet::find(&v850);
    if (v848->var8 & 0x20) != 0 && ((v160 | v165 | v166))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v167 = *MEMORY[0x277D85E08];
        v168 = *MEMORY[0x277D65538];
        v169 = SLTagEng::Name(0x40);
        fprintf(v167, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v168, "", "", v169, 707, v846, v861);
      }
    }

    else
    {
      if (!SLWordTagSet::find(&var17))
      {
        v173 = 65;
        goto LABEL_434;
      }

      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v170 = *MEMORY[0x277D85E08];
        v171 = *MEMORY[0x277D65538];
        v172 = SLTagEng::Name(0x40);
        fprintf(v170, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v171, "", "", v172, 714, v846, v861);
      }
    }

    LODWORD(var15) = 0;
    v173 = 64;
LABEL_434:
    if (!MTFEPOSResolver::RequireTagAndPOS(this, v848, v173, 0x7FFFFFFF))
    {
      LOWORD(v844) = 0;
      goto LABEL_329;
    }

    LOWORD(v844) = 0;
    goto LABEL_436;
  }

LABEL_329:
  if (var15 != 255)
  {
LABEL_330:
    var3 = 0;
LABEL_331:
    LODWORD(v13) = 255;
LABEL_401:
    v10 = v844;
    goto LABEL_208;
  }

LABEL_332:
  v128 = v848->var8;
  if ((v128 & 0x200) != 0)
  {
    v848->var8 = v128 & 0xFFFFFDFF;
    var15 = v848->var15;
    if ((v846 >> var15))
    {
      LODWORD(v13) = 255;
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "TTS: Tuple forced illegal POS %s for %s\n", *(MEMORY[0x277D65538] + 8 * var15), v40);
      LODWORD(var15) = SLFirstPOSInSet();
      LODWORD(v13) = v848->var15;
    }

    v132 = byte_27F8F0908;
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, (byte_27F8F0908 & 1));
      kMTFEDebugPOS = 0;
      v132 = byte_27F8F0908;
    }

    if (v132)
    {
      v133 = "";
      if (v13 == 255)
      {
        v134 = "";
      }

      else
      {
        v134 = "->";
      }

      if (v13 == 255)
      {
        v135 = 255;
      }

      else
      {
        v135 = v13;
        v133 = *(MEMORY[0x277D65538] + 8 * v13);
      }

      v139 = *MEMORY[0x277D85E08];
      v140 = *(MEMORY[0x277D65538] + 8 * var15);
      v141 = SLTagEng::Name(v844);
      fprintf(v139, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v140, v134, v133, v141, 754, v846, v861);
      v10 = v844;
      LODWORD(v13) = v135;
      goto LABEL_557;
    }

    goto LABEL_556;
  }

  if ((v846 & 0x100000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, (byte_27F8F0908 & 1));
      kMTFEDebugPOS = 0;
      if (byte_27F8F0908)
      {
        goto LABEL_370;
      }
    }

    else if (byte_27F8F0908)
    {
LABEL_370:
      v136 = *MEMORY[0x277D85E08];
      v137 = *(MEMORY[0x277D65538] + 160);
      v138 = SLTagEng::Name(v844);
      fprintf(v136, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v137, "", "", v138, 761, v846, v861);
    }

    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 20;
    goto LABEL_401;
  }

  if ((v846 & 0x200000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, (byte_27F8F0908 & 1));
      kMTFEDebugPOS = 0;
      if (byte_27F8F0908)
      {
        goto LABEL_399;
      }
    }

    else if (byte_27F8F0908)
    {
LABEL_399:
      v155 = *MEMORY[0x277D85E08];
      v156 = *(MEMORY[0x277D65538] + 168);
      v157 = SLTagEng::Name(v844);
      fprintf(v155, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v156, "", "", v157, 768, v846, v861);
    }

    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 21;
    goto LABEL_401;
  }

  if ((SLWordTagSet::find(&var17) & v846) == 1)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v129 = *MEMORY[0x277D85E08];
      v130 = *MEMORY[0x277D65538];
      v131 = SLTagEng::Name(v844);
      fprintf(v129, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v130, "", "", v131, 775, v846, v861);
    }

    goto LABEL_340;
  }

  if (SLWordTagSet::find(&var17) && (v846 & 0x40) != 0 && (v861 & 1) != 0 || ((v145 = SLWordTagSet::find(&v854), v146 = v862, v862 == 14) ? (v147 = v145) : (v147 = 0), v147 == 1 && (v846 & 0x40) != 0 && (v861 & 1) != 0))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v161 = *MEMORY[0x277D85E08];
      v162 = *(MEMORY[0x277D65538] + 48);
      v163 = SLTagEng::Name(v844);
      fprintf(v161, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v162, "", "", v163, 784, v846, v861);
    }

    goto LABEL_412;
  }

  if ((~v846 & 0x483) == 0)
  {
    v148 = 1 << v862;
    if (((1 << v862) & 0x22000) != 0 && (v861 & 0x22000) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      v10 = v844;
      if (byte_27F8F0908 == 1)
      {
        v149 = *MEMORY[0x277D85E08];
        v150 = *MEMORY[0x277D65538];
        v151 = SLTagEng::Name(v844);
        fprintf(v149, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v150, "", "", v151, 801, v846, v861);
LABEL_340:
        LODWORD(var15) = 0;
        goto LABEL_330;
      }

      goto LABEL_482;
    }

    if (!(v861 & 0x8000 | v148 & 0x100000) && ((v148 & 0x14100) == 0 || (v851[1] & 0x10E) != 0) && ((v148 & 0x10E) != 0 || (v861 & 0x200000) == 0 || (v851[1] & 0x10E) != 0))
    {
      if ((v148 & 0x250012) != 0 && ((v861 & 0x40000) != 0 || (v861 & 0x110000) != 0 && (v851[1] & 0x10E) != 0))
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v189 = *MEMORY[0x277D85E08];
          v190 = *(MEMORY[0x277D65538] + 80);
          v191 = SLTagEng::Name(v844);
          fprintf(v189, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v190, "", "", v191, 820, v846, v861);
        }

LABEL_522:
        var3 = 0;
        LODWORD(v13) = 255;
        LODWORD(var15) = 10;
        goto LABEL_401;
      }

      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v198 = *MEMORY[0x277D85E08];
        v199 = *(MEMORY[0x277D65538] + 56);
        v200 = SLTagEng::Name(v844);
        fprintf(v198, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v199, "", "", v200, 826, v846, v861);
      }

      goto LABEL_554;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    v10 = v844;
    if (byte_27F8F0908 == 1)
    {
      v174 = *MEMORY[0x277D85E08];
      v175 = *(MEMORY[0x277D65538] + 8);
      v176 = SLTagEng::Name(v844);
      fprintf(v174, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v175, "", "", v176, 811, v846, v861);
LABEL_527:
      var3 = 0;
      LODWORD(v13) = 255;
      LODWORD(var15) = 1;
      goto LABEL_401;
    }

    var3 = 0;
LABEL_474:
    LODWORD(v13) = 255;
    LODWORD(var15) = 1;
    goto LABEL_208;
  }

  if ((~v846 & 0x403) == 0)
  {
    if (((1 << v862) & 0x22000) != 0 && (v861 & 0x22000) == 0)
    {
LABEL_478:
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      v10 = v844;
      if (byte_27F8F0908 == 1)
      {
        v186 = *MEMORY[0x277D85E08];
        v187 = *MEMORY[0x277D65538];
        v188 = SLTagEng::Name(v844);
        fprintf(v186, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v187, "", "", v188, 840, v846, v861);
        goto LABEL_340;
      }

LABEL_482:
      LODWORD(var15) = 0;
      var3 = 0;
      goto LABEL_207;
    }

    if (((0x22000u >> v855) & 1) != 0 && v862 == 6)
    {
      v164 = v861;
      if ((v861 & 0x22000) == 0)
      {
        goto LABEL_478;
      }
    }

    else
    {
      if (v862 == 15)
      {
LABEL_523:
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v204 = *MEMORY[0x277D85E08];
          v205 = *(MEMORY[0x277D65538] + 8);
          v206 = SLTagEng::Name(v844);
          fprintf(v204, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v205, "", "", v206, 846, v846, v861);
        }

        goto LABEL_527;
      }

      if (v862 == 16)
      {
        v164 = v861;
        if ((v861 & 0x80000) == 0)
        {
          goto LABEL_478;
        }
      }

      else
      {
        v164 = v861;
      }
    }

    if ((v164 & 0x80000) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v201 = *MEMORY[0x277D85E08];
        v202 = *(MEMORY[0x277D65538] + 80);
        v203 = SLTagEng::Name(v844);
        fprintf(v201, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v202, "", "", v203, 852, v846, v861);
      }

      goto LABEL_522;
    }

    goto LABEL_523;
  }

  if ((~v846 & 0x12400) == 0)
  {
    if (((v838 & 1) != 0 || ((1 << v862) & 0xBE) != 0) && (v861 & 0x30000) == 0 && (v851[1] & 0x30000) == 0 && (v851[0] & 0x30000) == 0 && (v836 & ((v861 & 0x20) >> 5) & 1) == 0 && ((v861 & 0x20) == 0 || (v851[1] & 0x80) == 0 || v835) && ((v861 & 0x41) != 0 || (v861 & 0x4000) != 0 && (v851[1] & 0x41) != 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v250 = *MEMORY[0x277D85E08];
        v251 = *(MEMORY[0x277D65538] + 104);
        v252 = SLTagEng::Name(v844);
        fprintf(v250, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v251, "", "", v252, 868, v846, v861);
      }

LABEL_507:
      var3 = 0;
      LODWORD(v13) = 255;
      LODWORD(var15) = 13;
      goto LABEL_401;
    }

    v177 = 1 << v862;
    if (((1 << v862) & 0x4000) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v195 = *MEMORY[0x277D85E08];
        v196 = *(MEMORY[0x277D65538] + 80);
        v197 = SLTagEng::Name(v844);
        fprintf(v195, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v196, "", "", v197, 874, v846, v861);
      }

      goto LABEL_522;
    }

    if ((((v862 == 255) & ~v838) != 0 || (v177 & 0x210033) != 0) && (*(&v861 + 1) & 0x1720) != 0 && (v851[1] & 0x1CF) != 0 || (v177 & 0x32) != 0 && (v861 & 0x10) != 0 && (v851[1] & 0x10000) != 0 || (v177 & 0x290001) != 0 && (v861 & 0x10E) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v178 = *MEMORY[0x277D85E08];
        v179 = *(MEMORY[0x277D65538] + 80);
        v180 = SLTagEng::Name(v844);
        fprintf(v178, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v179, "", "", v180, 885, v846, v861);
      }

      goto LABEL_522;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v212 = *MEMORY[0x277D85E08];
      v213 = *(MEMORY[0x277D65538] + 128);
      v214 = SLTagEng::Name(v844);
      fprintf(v212, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v213, "", "", v214, 891, v846, v861);
    }

    goto LABEL_547;
  }

  v181 = v846 & 0x8080;
  if (v181 == 32896)
  {
    if ((v861 & 0x480) != 0 && (v861 & 0x2000) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v182 = *MEMORY[0x277D85E08];
        v183 = *(MEMORY[0x277D65538] + 56);
        v184 = *(MEMORY[0x277D65538] + 152);
        v185 = SLTagEng::Name(0x42);
        fprintf(v182, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v183, "->", v184, v185, 907, v846, v861);
      }

      LODWORD(var15) = 7;
      LODWORD(v13) = 19;
      goto LABEL_472;
    }

    if (v862 == 7)
    {
      if (v9->var27[0] != 79 || v9->var27[1] != 70)
      {
        goto LABEL_550;
      }

      v207 = v837;
      if (v9->var27[2])
      {
        v207 = 1;
      }

      if (v207)
      {
        goto LABEL_550;
      }
    }

    else if (v837)
    {
LABEL_550:
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v215 = *MEMORY[0x277D85E08];
        v216 = *(MEMORY[0x277D65538] + 56);
        v217 = SLTagEng::Name(v844);
        fprintf(v215, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v216, "", "", v217, 923, v846, v861);
      }

LABEL_554:
      LODWORD(var15) = 7;
LABEL_555:
      LODWORD(v13) = 255;
LABEL_556:
      v10 = v844;
      goto LABEL_557;
    }

    if ((v861 & 0x32C00) == 0 && ((v861 & 0x10E) != 0 || (v861 & 0x4000) != 0 && (v851[1] & 0x10E) != 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v244 = *MEMORY[0x277D85E08];
        v245 = *(MEMORY[0x277D65538] + 120);
        v246 = SLTagEng::Name(v844);
        fprintf(v244, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v245, "", "", v246, 916, v846, v861);
      }

      var3 = 0;
      LODWORD(v13) = 255;
      LODWORD(var15) = 15;
      goto LABEL_401;
    }

    goto LABEL_550;
  }

  if ((~v846 & 0x12000) == 0)
  {
    if ((v861 & 0x103) == 1 || (~v861 & 0x101) == 0 && (v851[1] & 0x10C) != 0 || (v861 & 0x4040) != 0 && (v851[1] & 0x41) != 0 && (v851[1] & 0x100) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v192 = *MEMORY[0x277D85E08];
        v193 = *(MEMORY[0x277D65538] + 104);
        v194 = SLTagEng::Name(v844);
        fprintf(v192, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v193, "", "", v194, 939, v846, v861);
      }

      goto LABEL_507;
    }

    if ((~v861 & 3) == 0 && (((1 << v862) & 0x32) != 0 || v836))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v232 = *MEMORY[0x277D85E08];
        v233 = *(MEMORY[0x277D65538] + 104);
        v234 = SLTagEng::Name(v844);
        fprintf(v232, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v233, "", "", v234, 947, v846, v861);
      }

      goto LABEL_507;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v235 = *MEMORY[0x277D85E08];
      v236 = *(MEMORY[0x277D65538] + 128);
      v237 = SLTagEng::Name(v844);
      fprintf(v235, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v236, "", "", v237, 953, v846, v861);
    }

LABEL_547:
    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 16;
    goto LABEL_401;
  }

  if ((~v846 & 0x14200) == 0)
  {
    v208 = v837 ^ 1;
    if (v862 != 255)
    {
      v208 = 1;
    }

    if ((v208 & 1) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v209 = *MEMORY[0x277D85E08];
        v210 = *(MEMORY[0x277D65538] + 72);
        v211 = SLTagEng::Name(v844);
        fprintf(v209, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v210, "", "", v211, 965, v846, v861);
      }

LABEL_579:
      var3 = 0;
      LODWORD(v13) = 255;
      LODWORD(var15) = 9;
      goto LABEL_401;
    }

    if ((v861 & 0x10C) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v224 = *MEMORY[0x277D85E08];
        v225 = *(MEMORY[0x277D65538] + 128);
        v226 = SLTagEng::Name(v844);
        fprintf(v224, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v225, "", "", v226, 972, v846, v861);
      }

      goto LABEL_547;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v247 = *MEMORY[0x277D85E08];
      v248 = *(MEMORY[0x277D65538] + 112);
      v249 = SLTagEng::Name(v844);
      fprintf(v247, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v248, "", "", v249, 979, v846, v861);
    }

    goto LABEL_675;
  }

  if ((~v846 & 0x4201) == 0)
  {
    v220 = v837 ^ 1;
    if (v862 != 255)
    {
      v220 = 1;
    }

    if ((v220 & 1) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v221 = *MEMORY[0x277D85E08];
        v222 = *(MEMORY[0x277D65538] + 72);
        v223 = SLTagEng::Name(v844);
        fprintf(v221, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v222, "", "", v223, 991, v846, v861);
      }

      goto LABEL_579;
    }

    if (((0x22040u >> v862) & 1) != 0 && (v861 & 0x60) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v275 = *MEMORY[0x277D85E08];
        v276 = *MEMORY[0x277D65538];
        v277 = SLTagEng::Name(v844);
        fprintf(v275, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v276, "", "", v277, 998, v846, v861);
      }

      goto LABEL_340;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v238 = *MEMORY[0x277D85E08];
      v239 = *(MEMORY[0x277D65538] + 112);
      v240 = SLTagEng::Name(v844);
      fprintf(v238, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v239, "", "", v240, 1005, v846, v861);
    }

LABEL_675:
    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 14;
    goto LABEL_401;
  }

  if ((v846 & 0x4043) == 0x4043)
  {
    v227 = 1 << v862;
    if (((1 << v862) & 0x108C00) != 0 || (((1 << v855) & 0x3E) != 0 ? (v228 = 1) : (v228 = (v227 & 0x10001) == 0), ((v837 | v228) & 1) == 0))
    {
      if ((v861 & 0x10E) == 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v260 = *MEMORY[0x277D85E08];
          v261 = *(MEMORY[0x277D65538] + 8);
          v262 = SLTagEng::Name(v844);
          fprintf(v260, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v261, "", "", v262, 1020, v846, v861);
        }

        goto LABEL_527;
      }
    }

    if ((v227 & 0x22040) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v268 = *MEMORY[0x277D85E08];
        v269 = *(MEMORY[0x277D65538] + 112);
        v270 = SLTagEng::Name(v844);
        fprintf(v268, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v269, "", "", v270, 1041, v846, v861);
      }

      goto LABEL_675;
    }

    if ((v861 & 0x41) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v278 = *MEMORY[0x277D85E08];
        v279 = *MEMORY[0x277D65538];
        v280 = SLTagEng::Name(v844);
        fprintf(v278, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v279, "", "", v280, 1027, v846, v861);
      }

      goto LABEL_340;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v229 = *MEMORY[0x277D85E08];
      v230 = *(MEMORY[0x277D65538] + 48);
      v231 = SLTagEng::Name(v844);
      fprintf(v229, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v230, "", "", v231, 1034, v846, v861);
    }

LABEL_412:
    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 6;
    goto LABEL_401;
  }

  if ((~v846 & 0x4042) == 0)
  {
    if (v862 == 15 || v9 && (!strcmp(v9->var27, "HELP") || !strcmp(v9->var27, "HELPS") || !strcmp(v9->var27, "HELPED")) || (v271 = v857) != 0 && (!strcmp(v857->var27, "HELP") && ((1 << v146) & 0x210000) != 0 || !strcmp(v271->var27, "HELPS") && ((1 << v146) & 0x210000) != 0 || !strcmp(v271->var27, "HELPED") && ((1 << v146) & 0x210000) != 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v241 = *MEMORY[0x277D85E08];
        v242 = *(MEMORY[0x277D65538] + 8);
        v243 = SLTagEng::Name(v844);
        fprintf(v241, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v242, "", "", v243, 1059, v846, v861);
      }

      goto LABEL_527;
    }

    if (v18 && !strcmp(&v18[3].var5, "FROM") && SLWordTagSet::find(&v849))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v272 = *MEMORY[0x277D85E08];
        v273 = *(MEMORY[0x277D65538] + 112);
        v274 = SLTagEng::Name(v844);
        fprintf(v272, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v273, "", "", v274, 1066, v846, v861);
      }

      goto LABEL_675;
    }

    if ((v838 & 1) != 0 || ((1 << v862) & 0x100D00) != 0 || (v288 = 1 << v855, ((1 << v862) & 0x10001) != 0) && (v288 & 0x13E) == 0 || v862 == 17 && v855 == 8 || !v862 && v855 == 10 || v862 == 14 && (v288 & 0x110001) != 0)
    {
      if ((v837 & 1) != 0 || (v861 & 0x880) != 0 || (v861 & 0x10E) == 0 || (~v861 & 0x43) == 0 && (v851[1] & 0x80080) == 0x80080 || (v851[1] & 0x10000) != 0 && (v851[0] & 0x10E) != 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v289 = *MEMORY[0x277D85E08];
          v290 = *(MEMORY[0x277D65538] + 8);
          v291 = SLTagEng::Name(v844);
          fprintf(v289, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v290, "", "", v291, 1086, v846, v861);
        }

        goto LABEL_527;
      }
    }

    if (((0x22040u >> v862) & 1) == 0 && ((v861 & 0x41) == 0 || (v861 & 0x10E) != 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v323 = *MEMORY[0x277D85E08];
        v324 = *(MEMORY[0x277D65538] + 112);
        v325 = SLTagEng::Name(v844);
        fprintf(v323, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v324, "", "", v325, 1100, v846, v861);
      }

      goto LABEL_675;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v308 = *MEMORY[0x277D85E08];
      v309 = *(MEMORY[0x277D65538] + 48);
      v310 = SLTagEng::Name(v844);
      fprintf(v308, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v309, "", "", v310, 1093, v846, v861);
    }

    goto LABEL_412;
  }

  v253 = v846 & 0x880;
  if (v253 == 2176 && (v861 & 0x100000) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v254 = *MEMORY[0x277D85E08];
      v255 = *(MEMORY[0x277D65538] + 56);
      v256 = SLTagEng::Name(v844);
      fprintf(v254, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v255, "", "", v256, 1109, v846, v861);
    }

    goto LABEL_554;
  }

  if ((~v846 & 0x4800) == 0 && v862 != 255 && (((v861 & 0x414E) == 0) & ~v837) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v257 = *MEMORY[0x277D85E08];
      v258 = *(MEMORY[0x277D65538] + 112);
      v259 = SLTagEng::Name(v844);
      fprintf(v257, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v258, "", "", v259, 1118, v846, v861);
    }

    goto LABEL_675;
  }

  if (!strcmp(v40, "WIND") && ((v861 & 0x2000) != 0 && (v851[1] & 0x41) != 0 || (v861 & 0x10000) != 0 && (v851[1] & 0x480) != 0))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v281 = *MEMORY[0x277D85E08];
      v282 = *(MEMORY[0x277D65538] + 8);
      v283 = SLTagEng::Name(v844);
      fprintf(v281, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v282, "", "", v283, 1128, v846, v861);
    }

    goto LABEL_527;
  }

  if ((v846 & 0x10000) != 0 && v146 == 6 && (!strcmp(v40, "ONE") || !strcmp(v40, "ONES")))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v292 = *MEMORY[0x277D85E08];
      v293 = *(MEMORY[0x277D65538] + 128);
      v294 = SLTagEng::Name(v844);
      fprintf(v292, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v293, "", "", v294, 1137, v846, v861);
    }

    goto LABEL_547;
  }

  v263 = strcmp(v40, "CLOSE");
  v264 = v837 ^ 1;
  if (v263)
  {
    v264 = 1;
  }

  if ((v264 & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v265 = *MEMORY[0x277D85E08];
      v266 = *(MEMORY[0x277D65538] + 48);
      v267 = SLTagEng::Name(v844);
      fprintf(v265, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v266, "", "", v267, 1147, v846, v861);
    }

    goto LABEL_412;
  }

  if ((v846 & 0x800) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v295 = *MEMORY[0x277D85E08];
      v296 = *(MEMORY[0x277D65538] + 88);
      v297 = SLTagEng::Name(v844);
      fprintf(v295, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v296, "", "", v297, 1153, v846, v861);
    }

    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 11;
    goto LABEL_401;
  }

  if ((v838 & ((v846 & 0x1000) >> 12)) == 1)
  {
    v284 = v861;
    if ((v861 & 0x10C) != 0 || (v861 & 0x41) != 0 && (v851[1] & 0x10C) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v285 = *MEMORY[0x277D85E08];
        v286 = *(MEMORY[0x277D65538] + 96);
        v287 = SLTagEng::Name(v844);
        fprintf(v285, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v286, "", "", v287, 1164, v846, v861);
      }

      goto LABEL_792;
    }

LABEL_781:
    if (v284 < 0)
    {
      if (((v837 | ((v851[1] & 2) >> 1)) & 1) == 0)
      {
        goto LABEL_783;
      }
    }

    else if (!v837)
    {
LABEL_783:
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v311 = *MEMORY[0x277D85E08];
        v312 = *(MEMORY[0x277D65538] + 80);
        v313 = SLTagEng::Name(v844);
        fprintf(v311, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v312, "", "", v313, 1179, v846, v861);
      }

      goto LABEL_522;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v314 = *MEMORY[0x277D85E08];
      v315 = *(MEMORY[0x277D65538] + 96);
      v316 = SLTagEng::Name(v844);
      fprintf(v314, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v315, "", "", v316, 1172, v846, v861);
    }

LABEL_792:
    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 12;
    goto LABEL_401;
  }

  if ((v846 & 0x1000) != 0)
  {
    v284 = v861;
    goto LABEL_781;
  }

  if ((v846 & 0x400) != 0 && (v861 & 0x150001) != 0 && (v851[1] & 0x10E) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v298 = *MEMORY[0x277D85E08];
      v299 = *(MEMORY[0x277D65538] + 80);
      v300 = SLTagEng::Name(v844);
      fprintf(v298, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v299, "", "", v300, 1186, v846, v861);
    }

    goto LABEL_522;
  }

  if ((~v846 & 0x4400) == 0 && ((v861 & 0x42) == 2 || (v861 & 0x410C) != 0 || (v861 & 3) == 2))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v320 = *MEMORY[0x277D85E08];
      v321 = *(MEMORY[0x277D65538] + 112);
      v322 = SLTagEng::Name(v844);
      fprintf(v320, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v321, "", "", v322, 1196, v846, v861);
    }

    goto LABEL_675;
  }

  v834 = v846 & 0x63;
  if (!v844 && v834 == 99)
  {
    v301 = v848->var3;
    v302 = 1 << v146;
    v303 = 1 << v855;
    if (((1 << v146) & 0x22040) != 0)
    {
      v304 = v861;
      if (!((1 << v855) & 0x10C | v861 & 0x22041))
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v305 = *MEMORY[0x277D85E08];
          v306 = *MEMORY[0x277D65538];
          v307 = SLTagEng::Name(0);
          fprintf(v305, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v306, "", "", v307, 1211, v846, v861);
        }

        LODWORD(var15) = 0;
        v10 = 0;
LABEL_842:
        var3 = v301;
        goto LABEL_207;
      }
    }

    else
    {
      if (v146 != 14 || (v303 & 0x26000) == 0)
      {
        goto LABEL_836;
      }

      v304 = v861;
    }

    if ((v304 & 0x41) != 0)
    {
      v301 = v301->var6;
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v326 = *MEMORY[0x277D85E08];
        v327 = *(MEMORY[0x277D65538] + 48);
        v328 = SLTagEng::Name(0);
        fprintf(v326, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v327, "", "", v328, 1219, v846, v861);
      }

      v10 = 0;
      LODWORD(var15) = 6;
      goto LABEL_842;
    }

LABEL_836:
    if ((v302 & 0x118100) != 0 || v9 && (!strcmp(v9->var27, "HELP") || !strcmp(v9->var27, "HELPS") || !strcmp(v9->var27, "HELPED")) || (v303 & 0x118100) != 0 && v146 == 14 || (v342 = v857) != 0 && ((v343 = strcmp(v857->var27, "HELP"), (v302 & 0x200000) != 0) && !v343 || (v344 = strcmp(v342->var27, "HELPS"), (v302 & 0x200000) != 0) && !v344 || (v345 = strcmp(v342->var27, "HELPED"), (v302 & 0x200000) != 0) && !v345))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v332 = *MEMORY[0x277D85E08];
        v333 = *(MEMORY[0x277D65538] + 8);
        v334 = SLTagEng::Name(0);
        fprintf(v332, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v333, "", "", v334, 1233, v846, v861);
      }

      v10 = 0;
      LODWORD(var15) = 1;
    }

    else
    {
      v301 = v301->var6;
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v346 = *MEMORY[0x277D85E08];
        v347 = *(MEMORY[0x277D65538] + 40);
        v348 = SLTagEng::Name(0);
        fprintf(v346, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v347, "", "", v348, 1243, v846, v861);
      }

      v10 = 0;
      LODWORD(var15) = 5;
    }

    goto LABEL_842;
  }

  if (!strcmp(v40, "USED"))
  {
    if ((v861 & 0x8000) != 0 && ((v851[1] & 0xE) != 0 || (v851[1] & 0x4000) != 0 && (v851[0] & 0xE) != 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v339 = *MEMORY[0x277D85E08];
        v340 = *(MEMORY[0x277D65538] + 8);
        v341 = SLTagEng::Name(0x41F);
        fprintf(v339, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v340, "", "", v341, 1256, v846, v861);
      }

      var3 = 0;
      v10 = 1055;
      goto LABEL_474;
    }

    if ((((1 << v146) & 0x22040) != 0 || v146 == 14 && ((1 << v855) & 0x26000) != 0) && (v861 & 0x41) != 0 && (v861 & 0x40C00) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v329 = *MEMORY[0x277D85E08];
        v330 = *(MEMORY[0x277D65538] + 48);
        v331 = SLTagEng::Name(0x41E);
        fprintf(v329, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v330, "", "", v331, 1264, v846, v861);
      }

LABEL_939:
      var3 = 0;
      v10 = 1054;
      LODWORD(v13) = 255;
      LODWORD(var15) = 6;
      goto LABEL_208;
    }

    if ((v861 & 0x8000) != 0 && (v851[1] & 0x10) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v376 = *MEMORY[0x277D85E08];
        v377 = *(MEMORY[0x277D65538] + 48);
        v378 = SLTagEng::Name(0x41E);
        fprintf(v376, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v377, "", "", v378, 1271, v846, v861);
      }

      goto LABEL_939;
    }

    if (((1 << v146) & 0x4003C) != 0)
    {
      if (v861)
      {
LABEL_930:
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v373 = *MEMORY[0x277D85E08];
          v374 = *(MEMORY[0x277D65538] + 8);
          v375 = SLTagEng::Name(0x41E);
          fprintf(v373, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v374, "", "", v375, 1286, v846, v861);
        }

        var3 = 0;
        v10 = 1054;
        goto LABEL_474;
      }
    }

    else if (v146 != 14 || (v861 & 1) != 0 || ((1 << v855) & 0x4003C) == 0)
    {
      goto LABEL_930;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v370 = *MEMORY[0x277D85E08];
      v371 = *(MEMORY[0x277D65538] + 40);
      v372 = SLTagEng::Name(0x41E);
      fprintf(v370, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v371, "", "", v372, 1279, v846, v861);
    }

    var3 = 0;
    v10 = 1054;
    LODWORD(v13) = 255;
    LODWORD(var15) = 5;
    goto LABEL_208;
  }

  v317 = v181 == 128 || v253 == 128;
  v318 = v317;
  if (v317 && (((v837 | ((v861 & 0x800) >> 11)) & 1) != 0 || (v861 & 0x4001) == 0x4000 && v836) && (*(this + 9) & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v353 = *MEMORY[0x277D85E08];
      v354 = *(MEMORY[0x277D65538] + 56);
      v355 = *(MEMORY[0x277D65538] + 152);
      v356 = SLTagEng::Name(v844);
      fprintf(v353, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v354, "->", v355, v356, 1305, v846, v861);
    }

    goto LABEL_905;
  }

  v319 = v855;
  if (v181 != 128)
  {
    if (v253 != 128 || v855 != 19 || v146 != 11)
    {
      if (!v318)
      {
        goto LABEL_885;
      }

      goto LABEL_880;
    }

    goto LABEL_846;
  }

  if (v855 != 19)
  {
    goto LABEL_880;
  }

  if (v146 == 11)
  {
LABEL_846:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v335 = *MEMORY[0x277D85E08];
      v336 = *(MEMORY[0x277D65538] + 56);
      v337 = *(MEMORY[0x277D65538] + 152);
      v338 = SLTagEng::Name(v844);
      fprintf(v335, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v336, "->", v337, v338, 1315, v846, v861);
    }

    goto LABEL_905;
  }

  v319 = 19;
LABEL_880:
  if ((((1 << v146) & 0x32) != 0 || ((1 << v146) & 0x210000) != 0 && ((1 << v319) & 0x32) != 0) && ((v861 & 0x2080) == 0x80 || (v861 & 0x236441) == 0))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v360 = *MEMORY[0x277D85E08];
      v361 = *(MEMORY[0x277D65538] + 56);
      v362 = *(MEMORY[0x277D65538] + 152);
      v363 = SLTagEng::Name(v844);
      fprintf(v360, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v361, "->", v362, v363, 1332, v846, v861);
    }

    goto LABEL_905;
  }

LABEL_885:
  if ((v846 & 0x80080) == 0x80080 && v146 == 14)
  {
    if ((v861 & 0x10C00) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v349 = *MEMORY[0x277D85E08];
        v350 = *(MEMORY[0x277D65538] + 56);
        v351 = *(MEMORY[0x277D65538] + 152);
        v352 = SLTagEng::Name(v844);
        fprintf(v349, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v350, "->", v351, v352, 1342, v846, v861);
      }

LABEL_905:
      LODWORD(var15) = 7;
      LODWORD(v13) = 19;
      goto LABEL_556;
    }

LABEL_897:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v357 = *MEMORY[0x277D85E08];
      v358 = *(MEMORY[0x277D65538] + 56);
      v359 = SLTagEng::Name(v844);
      fprintf(v357, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v358, "", "", v359, 1348, v846, v861);
    }

    goto LABEL_554;
  }

  if ((v846 & 0x80080) == 0x80080)
  {
    goto LABEL_897;
  }

  v364 = (~v846 & 0x4002) == 0 && v146 == 255;
  v365 = v364;
  v366 = v837;
  if (!v364)
  {
    v366 = 0;
  }

  if (v366 == 1)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v367 = *MEMORY[0x277D85E08];
      v368 = *(MEMORY[0x277D65538] + 8);
      v369 = SLTagEng::Name(v844);
      fprintf(v367, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v368, "", "", v369, 1359, v846, v861);
    }

    goto LABEL_527;
  }

  if (v146 != 255)
  {
    v384 = v146 == 11 && v319 == 255;
    v385 = (v846 >> 5) & 1;
    if (!v384)
    {
      v385 = 0;
    }

    if ((v837 & v385 & 1) == 0)
    {
      v389 = v146 == 0;
      v390 = v846 & 0x43;
      v391 = v390 == 67;
      v392 = v390 == 67 && v146 == 0;
      if (v837 & v392)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v393 = *MEMORY[0x277D85E08];
          v394 = *MEMORY[0x277D65538];
          v395 = SLTagEng::Name(v844);
          fprintf(v393, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v394, "", "", v395, 1377, v846, v861);
        }

        goto LABEL_340;
      }

      v380 = (~v846 & 0x4040) == 0;
      v833 = (~v846 & 3) == 0;
      goto LABEL_982;
    }

LABEL_955:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v386 = *MEMORY[0x277D85E08];
      v387 = *(MEMORY[0x277D65538] + 40);
      v388 = SLTagEng::Name(v844);
      fprintf(v386, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v387, "", "", v388, 1365, v846, v861);
    }

    goto LABEL_959;
  }

  v379 = v837 ^ 1;
  if ((v846 & 0x20) == 0)
  {
    v379 = 1;
  }

  if ((v379 & 1) == 0)
  {
    goto LABEL_955;
  }

  v380 = (~v846 & 0x4040) == 0;
  if (v380 && v836)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v381 = *MEMORY[0x277D85E08];
      v382 = *(MEMORY[0x277D65538] + 48);
      v383 = SLTagEng::Name(v844);
      fprintf(v381, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v382, "", "", v383, 1371, v846, v861);
    }

    goto LABEL_412;
  }

  v833 = (v846 & 3) == 3;
  if ((v846 & 3) == 3 && ((v836 & ((v861 & 0x10000) >> 16) & 1) != 0 || (v861 & 2) != 0 && (v851[1] & 0x4000) != 0 && !v835))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v396 = *MEMORY[0x277D85E08];
      v397 = *(MEMORY[0x277D65538] + 8);
      v398 = SLTagEng::Name(v844);
      fprintf(v396, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v397, "", "", v398, 1392, v846, v861);
    }

    goto LABEL_527;
  }

  if ((v846 & 0x43) == 0x43)
  {
    if ((*(&v861 + 1) & 0x220) != 0 && (v851[1] & 1) != 0 && !v835)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v423 = *MEMORY[0x277D85E08];
        v424 = *(MEMORY[0x277D65538] + 8);
        v425 = SLTagEng::Name(v844);
        fprintf(v423, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v424, "", "", v425, 1400, v846, v861);
      }

      goto LABEL_527;
    }

    v389 = 0;
    v390 = 67;
    v391 = 1;
  }

  else
  {
    v390 = v846 & 0x43;
    v391 = 0;
    v389 = 0;
  }

LABEL_982:
  if ((v838 | v8))
  {
    if (!v833)
    {
      v833 = 0;
      goto LABEL_994;
    }
  }

  else
  {
    v400 = v319 == 255 && v146 == 11;
    if (!v400 || !v833)
    {
      goto LABEL_994;
    }
  }

  if ((v837 | v836))
  {
    if (v844)
    {
      goto LABEL_994;
    }

LABEL_1018:
    v409 = v848->var3;
    v410 = *v409->var0;
    v411 = v409;
    LODWORD(var15) = SLFirstPOSInSet();
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v413 = *MEMORY[0x277D85E08];
      v414 = *(MEMORY[0x277D65538] + 8 * var15);
      v415 = SLTagEng::Name(v844);
      fprintf(v413, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v414, "", "", v415, 1409, v846, v861);
    }

    v10 = 0;
    LODWORD(v13) = 255;
    var3 = v411;
    goto LABEL_208;
  }

  v408 = v835;
  if (v844)
  {
    v408 = 1;
  }

  if ((v408 & 1) == 0)
  {
    goto LABEL_1018;
  }

LABEL_994:
  if ((v846 & 0x400) != 0 && v146 == 255 && (v861 & 0x10000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v417 = *MEMORY[0x277D85E08];
      v418 = *(MEMORY[0x277D65538] + 80);
      v419 = SLTagEng::Name(v844);
      fprintf(v417, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v418, "", "", v419, 1421, v846, v861);
    }

    goto LABEL_522;
  }

  v401 = v146 == 12 || v146 == 255;
  if (v401 && (v846 & 0x100) != 0 && (v851[1] & 0x10E) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v402 = *MEMORY[0x277D85E08];
      v403 = *(MEMORY[0x277D65538] + 64);
      v404 = SLTagEng::Name(v844);
      fprintf(v402, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v403, "", "", v404, 1438, v846, v861);
    }

LABEL_1008:
    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 8;
    goto LABEL_401;
  }

  if (v365)
  {
    if ((v861 & 0x10E) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v405 = *MEMORY[0x277D85E08];
        v406 = *(MEMORY[0x277D65538] + 112);
        v407 = SLTagEng::Name(v844);
        fprintf(v405, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v406, "", "", v407, 1444, v846, v861);
      }

      goto LABEL_675;
    }
  }

  else if (v146 != 11 && v146 != 255)
  {
    v832 = v846 & 0x10;
    v416 = (v846 & 0x10) == 0;
    goto LABEL_1043;
  }

  v832 = v846 & 0x10;
  v416 = v832 == 0;
  if ((v846 & 0x10) != 0)
  {
    if ((v861 & 0x320E0) != 0 || (v861 & 0x4000) != 0 && (v851[1] & 0x320E0) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v420 = *MEMORY[0x277D85E08];
        v421 = *(MEMORY[0x277D65538] + 32);
        v422 = SLTagEng::Name(v844);
        fprintf(v420, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v421, "", "", v422, 1452, v846, v861);
      }

      goto LABEL_1037;
    }

    v429 = v838;
    if (v146 != 255)
    {
      v429 = 1;
    }

    if ((v429 & 1) == 0)
    {
      if ((v861 & 0x41) != 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v430 = *MEMORY[0x277D85E08];
          v431 = *(MEMORY[0x277D65538] + 32);
          v432 = SLTagEng::Name(v844);
          fprintf(v430, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v431, "", "", v432, 1460, v846, v861);
        }

        goto LABEL_1037;
      }

      v416 = 0;
      goto LABEL_1045;
    }
  }

  if (v146 != 255)
  {
LABEL_1043:
    if (v146 != 11 || v319 != 255)
    {
      goto LABEL_1065;
    }
  }

LABEL_1045:
  if ((v391 || v833) && ((v861 & 0x222400) != 0 || (v861 & 0x10000) != 0 && (v851[1] & 0x80) != 0 || (v861 & 0x4000) != 0 && (v851[1] & 0x262080) != 0))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v426 = *MEMORY[0x277D85E08];
      v427 = *(MEMORY[0x277D65538] + 8);
      v428 = SLTagEng::Name(v844);
      fprintf(v426, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v427, "", "", v428, 1472, v846, v861);
    }

    goto LABEL_527;
  }

LABEL_1065:
  v433 = v838 ^ 1;
  if ((v846 & 2) == 0)
  {
    v433 = 1;
  }

  if ((v433 & 1) == 0 && (~v861 & 0x42) != 0 && (v861 & 0x11413C) == 0 && (v851[1] & 0x413C) == 0 && ((v861 & 1) == 0 || (v851[1] & 2) == 0))
  {
    if ((v861 & 0x80) != 0)
    {
      if (((v837 | ((v851[1] & 0x2000) >> 13)) & 1) == 0)
      {
        goto LABEL_1075;
      }
    }

    else if ((v837 & 1) == 0)
    {
LABEL_1075:
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v434 = *MEMORY[0x277D85E08];
        v435 = *(MEMORY[0x277D65538] + 8);
        v436 = SLTagEng::Name(v844);
        fprintf(v434, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v435, "", "", v436, 1488, v846, v861);
      }

      goto LABEL_527;
    }
  }

  v437 = v846 & 0x42;
  v438 = v838;
  if (v437 != 66)
  {
    v438 = 0;
  }

  if ((v837 & v438) == 1)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v439 = *MEMORY[0x277D85E08];
      v440 = *(MEMORY[0x277D65538] + 48);
      v441 = SLTagEng::Name(v844);
      fprintf(v439, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v440, "", "", v441, 1496, v846, v861);
    }

    goto LABEL_412;
  }

  if (v146 == 255 && (v846 & 0x40C0) == 0x40 && (~v861 & 0x41) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v442 = *MEMORY[0x277D85E08];
      v443 = *(MEMORY[0x277D65538] + 48);
      v444 = SLTagEng::Name(v844);
      fprintf(v442, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v443, "", "", v444, 1503, v846, v861);
    }

    goto LABEL_412;
  }

  if (v146 == 255 && (v846 & 0x4000) != 0 && (v861 & 0x51) == 0x50)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v445 = *MEMORY[0x277D85E08];
      v446 = *(MEMORY[0x277D65538] + 112);
      v447 = SLTagEng::Name(v844);
      fprintf(v445, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v446, "", "", v447, 1510, v846, v861);
    }

    goto LABEL_675;
  }

  v831 = v846 & 0x101;
  if (v831 == 257)
  {
    if (((1 << v146) & 0x2000) != 0 || ((1 << v146) & 0x40) != 0 && v319 == 13 || v146 == 17 && ((v861 & 0x20000) == 0 || (v851[1] & 2) == 0) && ((v861 & 4) == 0 || (v851[1] & 0x20) == 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v448 = *MEMORY[0x277D85E08];
        v449 = *MEMORY[0x277D65538];
        v450 = SLTagEng::Name(v844);
        fprintf(v448, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v449, "", "", v450, 1526, v846, v861);
      }

      goto LABEL_340;
    }

    if ((v861 & 0x10E) != 0 || (v861 & 0x20000) != 0 && (v851[1] & 0x10E) != 0 || (v861 & 0x10000) != 0 && (v851[1] & 0x10E) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v451 = *MEMORY[0x277D85E08];
        v452 = *(MEMORY[0x277D65538] + 64);
        v453 = SLTagEng::Name(v844);
        fprintf(v451, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v452, "", "", v453, 1535, v846, v861);
      }

      goto LABEL_1008;
    }
  }

  if (v146 == 5 && (v846 & 0x20) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v454 = *MEMORY[0x277D85E08];
      v455 = *(MEMORY[0x277D65538] + 40);
      v456 = SLTagEng::Name(v844);
      fprintf(v454, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v455, "", "", v456, 1554, v846, v861);
    }

LABEL_959:
    var3 = 0;
    LODWORD(v13) = 255;
    LODWORD(var15) = 5;
    goto LABEL_401;
  }

  if ((v846 & 8) != 0 && (v861 & 0x8000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v464 = *MEMORY[0x277D85E08];
      v465 = *(MEMORY[0x277D65538] + 24);
      v466 = *(MEMORY[0x277D65538] + 8);
      v467 = SLTagEng::Name(0x42);
      fprintf(v464, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v465, "->", v466, v467, 1564, v846, v861);
    }

    var3 = 0;
    v10 = 66;
    LODWORD(v13) = 1;
    LODWORD(var15) = 3;
    goto LABEL_208;
  }

  v458 = v146 == 14 && v319 == 15;
  if ((v146 == 15 || v458) && (v846 & 0x10C) != 0 && (v861 & 0x20) == 0)
  {
    LODWORD(var15) = SLFirstPOSInSet();
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v459 = *MEMORY[0x277D85E08];
      v460 = *(MEMORY[0x277D65538] + 8 * var15);
      v461 = *(MEMORY[0x277D65538] + 8);
      v462 = SLTagEng::Name(0x42);
      fprintf(v459, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v460, "->", v461, v462, 1575, v846, v861);
    }

LABEL_1269:
    LODWORD(v13) = 1;
LABEL_472:
    v10 = 66;
LABEL_557:
    v218 = var15 == 7 && v10 == 66;
    v219 = v842;
    if (!v218)
    {
      v219 = 1;
    }

    if (v219)
    {
      var3 = 0;
    }

    else
    {
      if (*(this + 9))
      {
        var3 = 0;
        v10 = 66;
      }

      else
      {
        v10 = 66;
        var3 = 0;
        if ((*(this + 11) & 1) == 0)
        {
          if (v848->var10 == 1)
          {
            v10 = 66;
          }

          else
          {
            v10 = 67;
          }
        }
      }

      LODWORD(var15) = 7;
    }

    goto LABEL_208;
  }

  v463 = 1 << v146;
  if (((1 << v146) & 0x110401) != 0)
  {
    if ((v846 & 0x100) == 0)
    {
      if ((v463 & 0x118441) != 0)
      {
        goto LABEL_1185;
      }

LABEL_1168:
      if (v146 != 14 || ((1 << v319) & 0x118441) == 0 || (v846 & 0x100) == 0)
      {
        goto LABEL_1178;
      }

      goto LABEL_1171;
    }
  }

  else if (v146 != 14 || ((1 << v319) & 0x110401) == 0 || (v846 & 0x100) == 0)
  {
    goto LABEL_1165;
  }

  if ((~v861 & 0x43) == 0 || (v861 & 0x4000) != 0 && (~v851[1] & 0x43) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v468 = *MEMORY[0x277D85E08];
      v469 = *(MEMORY[0x277D65538] + 64);
      v470 = SLTagEng::Name(v844);
      fprintf(v468, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v469, "", "", v470, 1586, v846, v861);
    }

    goto LABEL_1008;
  }

LABEL_1165:
  if ((v463 & 0x118441) == 0)
  {
    goto LABEL_1168;
  }

  if ((v846 & 0x100) == 0)
  {
    goto LABEL_1185;
  }

LABEL_1171:
  if ((v861 & 0x10E) != 0 || (v861 & 0x4000) != 0 && (v851[1] & 0x10E) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v471 = *MEMORY[0x277D85E08];
      v472 = *(MEMORY[0x277D65538] + 64);
      v473 = SLTagEng::Name(v844);
      fprintf(v471, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v472, "", "", v473, 1597, v846, v861);
    }

    goto LABEL_1008;
  }

LABEL_1178:
  if ((v463 & 0x1C00) != 0 && (v846 & 0x100) != 0 && (v861 & 0x10E) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v474 = *MEMORY[0x277D85E08];
      v475 = *(MEMORY[0x277D65538] + 64);
      v476 = SLTagEng::Name(v844);
      fprintf(v474, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v475, "", "", v476, 1605, v846, v861);
    }

    goto LABEL_1008;
  }

LABEL_1185:
  if (v146 == 8)
  {
    goto LABEL_1193;
  }

  if (v319 != 8)
  {
    if (v146 != 18)
    {
      if (v319 != 18 || v146 != 14)
      {
        goto LABEL_1199;
      }

      goto LABEL_1197;
    }

LABEL_1193:
    if ((v846 & 0x108) != 0)
    {
      goto LABEL_1198;
    }

    goto LABEL_1199;
  }

  if ((v463 & 0x14000) == 0 && v146 != 18)
  {
    goto LABEL_1199;
  }

LABEL_1197:
  if ((v846 & 0x108) != 0)
  {
LABEL_1198:
    if ((v861 & 0x30) == 0)
    {
      LODWORD(var15) = SLFirstPOSInSet();
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v487 = *MEMORY[0x277D85E08];
        v488 = *(MEMORY[0x277D65538] + 8 * var15);
        v489 = *(MEMORY[0x277D65538] + 8);
        v490 = SLTagEng::Name(0x42);
        fprintf(v487, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v488, "->", v489, v490, 1618, v846, v861);
      }

      goto LABEL_1269;
    }
  }

LABEL_1199:
  if (v146 == 12 && (v846 & 0x10C) != 0 && (v861 & 0x10000) != 0)
  {
    LODWORD(var15) = SLFirstPOSInSet();
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v509 = *MEMORY[0x277D85E08];
      v510 = *(MEMORY[0x277D65538] + 8 * var15);
      v511 = *(MEMORY[0x277D65538] + 8);
      v512 = SLTagEng::Name(0x42);
      fprintf(v509, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v510, "->", v511, v512, 1629, v846, v861);
    }

    goto LABEL_1269;
  }

  if ((v463 & 0x13E) == 0)
  {
    v482 = v837 ^ 1;
    if ((v846 & 0x10C) == 0)
    {
      v482 = 1;
    }

    if ((v482 & 1) == 0)
    {
      LODWORD(var15) = SLFirstPOSInSet();
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v483 = *MEMORY[0x277D85E08];
        v484 = *(MEMORY[0x277D65538] + 8 * var15);
        v485 = *(MEMORY[0x277D65538] + 8);
        v486 = SLTagEng::Name(0x42);
        fprintf(v483, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v484, "->", v485, v486, 1641, v846, v861);
      }

      goto LABEL_1269;
    }

    if ((v846 & 0x100) != 0 && (v861 & 0x13E) == 0 && (v851[1] & 0x13E) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v505 = *MEMORY[0x277D85E08];
        v506 = *(MEMORY[0x277D65538] + 64);
        v507 = *(MEMORY[0x277D65538] + 8);
        v508 = SLTagEng::Name(0x42);
        fprintf(v505, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v506, "->", v507, v508, 1655, v846, v861);
      }

      var3 = 0;
      v10 = 66;
      LODWORD(v13) = 1;
      LODWORD(var15) = 8;
      goto LABEL_208;
    }
  }

  if ((v463 & 0x22000) != 0)
  {
    if ((v846 & 0x10C) == 0)
    {
      goto LABEL_1229;
    }
  }

  else
  {
    if ((v846 & 0x10C) == 0)
    {
      goto LABEL_1229;
    }

    if (((v837 | ((v861 & 0x800) >> 11)) & 1) != 0 || (v836 & ((v861 & 0x4000) >> 14)) == 1)
    {
      LODWORD(var15) = SLFirstPOSInSet();
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v491 = *MEMORY[0x277D85E08];
        v492 = *(MEMORY[0x277D65538] + 8 * var15);
        v493 = *(MEMORY[0x277D65538] + 8);
        v494 = SLTagEng::Name(0x42);
        fprintf(v491, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v492, "->", v493, v494, 1667, v846, v861);
      }

      goto LABEL_1269;
    }
  }

  if ((((v861 & 0x800) == 0) & ~v837) == 0)
  {
    LODWORD(var15) = SLFirstPOSInSet();
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v478 = *MEMORY[0x277D85E08];
      v479 = *(MEMORY[0x277D65538] + 8 * var15);
      v480 = *MEMORY[0x277D65538];
      v481 = SLTagEng::Name(0x42);
      fprintf(v478, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v479, "->", v480, v481, 1677, v846, v861);
    }

    LODWORD(v13) = 0;
    goto LABEL_472;
  }

LABEL_1229:
  if ((v463 & 0x110C00) != 0 && (v846 & 0x100) != 0 && (v861 & 0x4000) != 0 && (v851[1] & 0xE) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v495 = *MEMORY[0x277D85E08];
      v496 = *(MEMORY[0x277D65538] + 64);
      v497 = SLTagEng::Name(v844);
      fprintf(v495, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v496, "", "", v497, 1686, v846, v861);
    }

    goto LABEL_1008;
  }

  v498 = 1 << v319;
  if (((1 << v319) & 0x110000) != 0 && (v463 & 0xE) != 0 && (v846 & 0x100) != 0 && (v861 & 0xE) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v499 = *MEMORY[0x277D85E08];
      v500 = *(MEMORY[0x277D65538] + 64);
      v501 = SLTagEng::Name(v844);
      fprintf(v499, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v500, "", "", v501, 1695, v846, v861);
    }

    goto LABEL_1008;
  }

  if (v319 == 12 && (v463 & 0x41) != 0 && (v846 & 0x100) != 0 && ((v861 & 0x10000) != 0 && (v851[1] & 0xE) != 0 || (v861 & 0x22000) != 0 && (v851[1] & 0xE) != 0))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v519 = *MEMORY[0x277D85E08];
      v520 = *(MEMORY[0x277D65538] + 64);
      v521 = SLTagEng::Name(v844);
      fprintf(v519, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v520, "", "", v521, 1704, v846, v861);
    }

    goto LABEL_1008;
  }

  if (v831 == 257)
  {
    if ((v861 & 0xE) != 0 || (v861 & 0x4000) != 0 && (v851[1] & 0xE) != 0)
    {
      goto LABEL_1253;
    }

    if (v146 == 11)
    {
      if ((v861 & 0x10000) == 0 || (v851[1] & 0xE) == 0)
      {
        goto LABEL_1282;
      }

LABEL_1253:
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v502 = *MEMORY[0x277D85E08];
        v503 = *(MEMORY[0x277D65538] + 64);
        v504 = SLTagEng::Name(v844);
        fprintf(v502, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v503, "", "", v504, 1714, v846, v861);
      }

      goto LABEL_1008;
    }
  }

  if (v146 == 15 && (v846 & 2) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v513 = *MEMORY[0x277D85E08];
      v514 = *(MEMORY[0x277D65538] + 8);
      v515 = SLTagEng::Name(v844);
      fprintf(v513, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v514, "", "", v515, 1725, v846, v861);
    }

    goto LABEL_527;
  }

LABEL_1282:
  if (((v463 & 0x4001C) != 0 || v146 == 14 && (v498 & 0x4001C) != 0) && (v846 & 0x20) != 0 && (v861 & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v516 = *MEMORY[0x277D85E08];
      v517 = *(MEMORY[0x277D65538] + 40);
      v518 = SLTagEng::Name(v844);
      fprintf(v516, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v517, "", "", v518, 1735, v846, v861);
    }

    goto LABEL_959;
  }

  if ((v463 & 0x40024) != 0)
  {
    if ((v837 | v416))
    {
      goto LABEL_1293;
    }

LABEL_1308:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v524 = *MEMORY[0x277D85E08];
      v525 = *(MEMORY[0x277D65538] + 32);
      v526 = SLTagEng::Name(v844);
      fprintf(v524, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v525, "", "", v526, 1743, v846, v861);
    }

    goto LABEL_1037;
  }

  v523 = (v498 & 0x40024) == 0 || v146 != 14;
  if (((v837 | v416 | v523) & 1) == 0)
  {
    goto LABEL_1308;
  }

LABEL_1293:
  if ((v463 & 0x4000C) != 0)
  {
    if (v834 != 66)
    {
      goto LABEL_1319;
    }

LABEL_1315:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v527 = *MEMORY[0x277D85E08];
      v528 = *(MEMORY[0x277D65538] + 48);
      v529 = SLTagEng::Name(v844);
      fprintf(v527, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v528, "", "", v529, 1752, v846, v861);
    }

    goto LABEL_412;
  }

  if (v146 == 14 && v834 == 66 && (v498 & 0x4000C) != 0)
  {
    goto LABEL_1315;
  }

LABEL_1319:
  if ((v463 & 0x22080) != 0)
  {
    if (v834 != 66)
    {
      goto LABEL_1330;
    }
  }

  else if (v146 != 14 || v834 != 66 || (v498 & 0x22080) == 0)
  {
    goto LABEL_1330;
  }

  if ((((v861 & 1) == 0) & ~v837) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v530 = *MEMORY[0x277D85E08];
      v531 = *(MEMORY[0x277D65538] + 48);
      v532 = SLTagEng::Name(v844);
      fprintf(v530, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v531, "", "", v532, 1761, v846, v861);
    }

    goto LABEL_412;
  }

LABEL_1330:
  if ((v389 || v146 == 14 && !v319) && (v846 & 0x62) == 0x60 && (((v861 & 0x80) == 0) & ~v837) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v533 = *MEMORY[0x277D85E08];
      v534 = *(MEMORY[0x277D65538] + 40);
      v535 = SLTagEng::Name(v844);
      fprintf(v533, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v534, "", "", v535, 1770, v846, v861);
    }

    goto LABEL_959;
  }

  if ((v463 & 0x40100) != 0)
  {
    if ((v846 & 2) == 0)
    {
      v536 = v498 & 0x40100;
      goto LABEL_1349;
    }

LABEL_1345:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v537 = *MEMORY[0x277D85E08];
      v538 = *(MEMORY[0x277D65538] + 8);
      v539 = SLTagEng::Name(v844);
      fprintf(v537, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v538, "", "", v539, 1778, v846, v861);
    }

    goto LABEL_527;
  }

  v536 = v498 & 0x40100;
  if (v146 == 14 && v536 && (v846 & 2) != 0)
  {
    goto LABEL_1345;
  }

LABEL_1349:
  if (v536 && (v463 & 0x310000) != 0 && (v846 & 2) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v540 = *MEMORY[0x277D85E08];
      v541 = *(MEMORY[0x277D65538] + 8);
      v542 = SLTagEng::Name(v844);
      fprintf(v540, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v541, "", "", v542, 1785, v846, v861);
    }

    goto LABEL_527;
  }

  if (v832)
  {
    if ((v861 & 0x21) == 0x20 && (v851[1] & 1) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v543 = *MEMORY[0x277D85E08];
        v544 = *(MEMORY[0x277D65538] + 32);
        v545 = SLTagEng::Name(v844);
        fprintf(v543, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v544, "", "", v545, 1792, v846, v861);
      }

LABEL_1037:
      var3 = 0;
      LODWORD(v13) = 255;
      LODWORD(var15) = 4;
      goto LABEL_401;
    }

    if ((v463 & 0x4090) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v546 = *MEMORY[0x277D85E08];
        v547 = *(MEMORY[0x277D65538] + 32);
        v548 = SLTagEng::Name(v844);
        fprintf(v546, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v547, "", "", v548, 1800, v846, v861);
      }

      goto LABEL_1037;
    }

    if (v146 == 10)
    {
      v549 = v837;
      if ((v861 & 0x10E) != 0)
      {
        v549 = 1;
      }

      if ((v549 & 1) == 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v553 = *MEMORY[0x277D85E08];
          v554 = *(MEMORY[0x277D65538] + 32);
          v555 = SLTagEng::Name(v844);
          fprintf(v553, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v554, "", "", v555, 1808, v846, v861);
        }

        goto LABEL_1037;
      }
    }

    if (v389 && SLWordTagSet::find(&v850) && (v851[1] & 0x4040) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v550 = *MEMORY[0x277D85E08];
        v551 = *(MEMORY[0x277D65538] + 32);
        v552 = SLTagEng::Name(v844);
        fprintf(v550, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v551, "", "", v552, 1815, v846, v861);
      }

      goto LABEL_1037;
    }
  }

  v556 = v862;
  if (v862 == 17)
  {
    if ((~v846 & 0x62) != 0)
    {
LABEL_1403:
      v560 = 0;
      goto LABEL_1405;
    }

LABEL_1389:
    if ((((v861 & 0x80) == 0) & ~v837) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v557 = *MEMORY[0x277D85E08];
        v558 = *(MEMORY[0x277D65538] + 40);
        v559 = SLTagEng::Name(v844);
        fprintf(v557, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v558, "", "", v559, 1824, v846, v861);
      }

      goto LABEL_959;
    }

    goto LABEL_1403;
  }

  if (v862 == 14 && v855 == 17 && (v846 & 0x62) == 0x62)
  {
    goto LABEL_1389;
  }

  v560 = v862 == 0;
  if (v560 && v391)
  {
    if ((v861 & 0x80) != 0 && (v851[1] & 0x32001) != 0 || (v861 & 3) == 1 && ((v851[1] & 0x10E) != 0 || v836))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v561 = *MEMORY[0x277D85E08];
        v562 = *(MEMORY[0x277D65538] + 48);
        v563 = SLTagEng::Name(v844);
        fprintf(v561, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v562, "", "", v563, 1834, v846, v861);
      }

      goto LABEL_412;
    }

    v560 = 1;
  }

LABEL_1405:
  if (v855 != 255)
  {
    v564 = ((0x22041u >> v855) & 1) == 0 && v560;
    if (v564 && v833 && ((v861 & 0x80) != 0 && (v851[1] & 0x32001) != 0 || (v861 & 3) == 1 && ((v851[1] & 0x10E) != 0 || v836)))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v565 = *MEMORY[0x277D85E08];
        v566 = *MEMORY[0x277D65538];
        v567 = SLTagEng::Name(v844);
        fprintf(v565, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v566, "", "", v567, 1846, v846, v861);
      }

      goto LABEL_340;
    }
  }

  v568 = 1 << v862;
  if (((1 << v862) & 0x118401) != 0)
  {
    if (v834 != 66)
    {
      goto LABEL_1425;
    }
  }

  else if (v834 != 66 || v862 != 14 || ((1 << v855) & 0x118401) == 0)
  {
    goto LABEL_1425;
  }

  if (((v837 | v861) & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v569 = *MEMORY[0x277D85E08];
      v570 = *(MEMORY[0x277D65538] + 8);
      v571 = SLTagEng::Name(v844);
      fprintf(v569, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v570, "", "", v571, 1856, v846, v861);
    }

    goto LABEL_1989;
  }

LABEL_1425:
  if (((v568 & 0x15C500) != 0 || v862 == 14 && ((1 << v855) & 0x158500) != 0) && v390 == 3)
  {
    if ((v861 & 0x480) == 0 && ((~v861 & 3) != 0 || ((BYTE2(v851[1]) | v836) & 1) == 0))
    {
      if ((v861 & 0x101) == 1 && (v851[1] & 0x10C) != 0)
      {
        goto LABEL_1445;
      }

      if ((v861 & 0x10C) != 0)
      {
        v390 = 3;
        if ((v861 & 0x22) == 2 || (v851[1] & 0x22) != 0 || v836)
        {
          goto LABEL_1446;
        }
      }

      else if ((v861 & 0x22) == 2)
      {
LABEL_1445:
        v390 = 3;
        goto LABEL_1446;
      }

      if ((v861 & 1) != 0 && (v851[1] & 0x22) == 2)
      {
        goto LABEL_1445;
      }
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v575 = *MEMORY[0x277D85E08];
      v576 = *(MEMORY[0x277D65538] + 8);
      v577 = SLTagEng::Name(v844);
      fprintf(v575, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v576, "", "", v577, 1871, v846, v861);
    }

    goto LABEL_1989;
  }

LABEL_1446:
  if (((1 << v855) & 0xC00) != 0 && (v568 & 0x110000) != 0 && v833)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v572 = *MEMORY[0x277D85E08];
      v573 = *(MEMORY[0x277D65538] + 8);
      v574 = SLTagEng::Name(v844);
      fprintf(v572, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v573, "", "", v574, 1880, v846, v861);
    }

LABEL_1989:
    var3 = 0;
    LODWORD(var15) = 1;
    goto LABEL_331;
  }

  if (v833 && (v836 & (v861 >> 7)) == 1)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v578 = *MEMORY[0x277D85E08];
      v579 = *(MEMORY[0x277D65538] + 8);
      v580 = SLTagEng::Name(v844);
      fprintf(v578, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v579, "", "", v580, 1888, v846, v861);
    }

    goto LABEL_1989;
  }

  if (!((((1 << v862) & 0xC00) == 0 || !v833) | v837 & 1) && v18 && (LOBYTE(v18[3].var5) != 79 || BYTE1(v18[3].var5) != 70 || BYTE2(v18[3].var5)) && (v861 & 0x10E) == 0 && (v851[1] & 0x10E) == 0 && (v851[0] & 0x10E) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v583 = *MEMORY[0x277D85E08];
      v584 = *(MEMORY[0x277D65538] + 8);
      v585 = SLTagEng::Name(v844);
      fprintf(v583, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v584, "", "", v585, 1898, v846, v861);
    }

    goto LABEL_1989;
  }

  v581 = v833 && v560;
  if (v833 && v560 && (v861 & 0x2000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v586 = *MEMORY[0x277D85E08];
      v587 = *(MEMORY[0x277D65538] + 8);
      v588 = SLTagEng::Name(v844);
      fprintf(v586, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v587, "", "", v588, 1907, v846, v861);
    }

    goto LABEL_1989;
  }

  if (v862 == 20)
  {
    v582 = v833;
    if (!v833)
    {
      goto LABEL_1520;
    }

LABEL_1487:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v590 = *MEMORY[0x277D85E08];
      v591 = *(MEMORY[0x277D65538] + 8);
      v592 = SLTagEng::Name(v844);
      fprintf(v590, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v591, "", "", v592, 1915, v846, v861);
    }

    goto LABEL_1989;
  }

  v582 = v862 == 14;
  v589 = v855 == 20 && v862 == 14;
  if (v833 && v589)
  {
    goto LABEL_1487;
  }

  if (v581 && (v861 & 0x4000) != 0 && ((v836 | (LOBYTE(v851[1]) >> 7)) & 1) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v593 = *MEMORY[0x277D85E08];
      v594 = *(MEMORY[0x277D65538] + 8);
      v595 = SLTagEng::Name(v844);
      fprintf(v593, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v594, "", "", v595, 1924, v846, v861);
    }

    goto LABEL_1989;
  }

  v597 = v862 == 14 && v855 != 2;
  if (v597 && v391)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v598 = *MEMORY[0x277D85E08];
      v599 = *(MEMORY[0x277D65538] + 8);
      v600 = SLTagEng::Name(v844);
      fprintf(v598, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v599, "", "", v600, 1931, v846, v861);
    }

    goto LABEL_1989;
  }

  if (((v862 == 255) & ~v838 & v391) == 1)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v601 = *MEMORY[0x277D85E08];
      v602 = *(MEMORY[0x277D65538] + 48);
      v603 = SLTagEng::Name(v844);
      fprintf(v601, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v602, "", "", v603, 1938, v846, v861);
    }

    goto LABEL_1977;
  }

  if (v862 != 1)
  {
LABEL_1520:
    v604 = v855 == 1 && v582;
    if (v604 && (v846 & 0x51) == 0x51)
    {
      goto LABEL_1525;
    }

    v608 = (~v846 & 0x60) == 0 && v604;
    if (!v608 || (v861 & 1) == 0)
    {
      if (v390 != 66)
      {
        LOBYTE(v604) = 0;
      }

      if (!v604)
      {
        goto LABEL_1549;
      }

      goto LABEL_1537;
    }

LABEL_1544:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v613 = *MEMORY[0x277D85E08];
      v614 = *(MEMORY[0x277D65538] + 48);
      v615 = SLTagEng::Name(v844);
      fprintf(v613, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v614, "", "", v615, 1963, v846, v861);
    }

    goto LABEL_1977;
  }

  if ((~v846 & 0x51) == 0)
  {
LABEL_1525:
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v605 = *MEMORY[0x277D85E08];
      v606 = *(MEMORY[0x277D65538] + 32);
      v607 = SLTagEng::Name(v844);
      fprintf(v605, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v606, "", "", v607, 1955, v846, v861);
    }

LABEL_1983:
    var3 = 0;
    LODWORD(var15) = 4;
    goto LABEL_331;
  }

  if (~v846 & 0x60) == 0 && (v861)
  {
    goto LABEL_1544;
  }

  if (v390 != 66)
  {
    goto LABEL_1549;
  }

LABEL_1537:
  v609 = v837 ^ 1;
  if ((v846 & 0x62) != 0x42)
  {
    v609 = 1;
  }

  if ((v609 & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v610 = *MEMORY[0x277D85E08];
      v611 = *(MEMORY[0x277D65538] + 48);
      v612 = SLTagEng::Name(v844);
      fprintf(v610, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v611, "", "", v612, 1973, v846, v861);
    }

    goto LABEL_1977;
  }

  v390 = 66;
LABEL_1549:
  if ((v568 & 0xE) != 0)
  {
    goto LABEL_1554;
  }

  v616 = !v582;
  if (((1 << v855) & 0xE) == 0)
  {
    v616 = 1;
  }

  if ((v616 & 1) == 0)
  {
LABEL_1554:
    if ((v846 & 0x4041) == 0x41 && v390 == 66)
    {
      if ((v861 & 0x80) == 0)
      {
        if (v861)
        {
          if (((v837 | SLWordTagSet::find(&v850)) & 1) == 0)
          {
            v556 = v862;
            v568 = 1 << v862;
            goto LABEL_1565;
          }
        }

        else if (!v837)
        {
          goto LABEL_1565;
        }
      }

      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v617 = *MEMORY[0x277D85E08];
        v618 = *(MEMORY[0x277D65538] + 48);
        v619 = SLTagEng::Name(v844);
        fprintf(v617, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v618, "", "", v619, 1985, v846, v861);
      }

      goto LABEL_1977;
    }
  }

LABEL_1565:
  if (((v568 & 0x22040) != 0 || v556 == 14 && ((1 << v855) & 0x220C0) != 0) && v390 == 66)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v620 = *MEMORY[0x277D85E08];
      v621 = *(MEMORY[0x277D65538] + 48);
      v622 = SLTagEng::Name(v844);
      fprintf(v620, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v621, "", "", v622, 1995, v846, v861);
    }

    goto LABEL_1977;
  }

  v623 = !v833;
  if (v556)
  {
    v623 = 1;
  }

  if ((v623 & 1) == 0)
  {
    if ((v861 & 0x8000) != 0)
    {
      if ((~v861 & 3) == 0 || (v851[1] & 3) != 1)
      {
        goto LABEL_1601;
      }
    }

    else if ((~v861 & 3) == 0)
    {
      goto LABEL_1601;
    }

    if ((v861 & 0x32000) != 0 && (v851[1] & 0x41) != 0)
    {
      goto LABEL_1607;
    }

    if ((v861 & 0x80) != 0)
    {
      if ((v861 & 0x80080) == 0x80000 || (v851[1] & 0x10) != 0)
      {
        goto LABEL_1607;
      }
    }

    else if ((v861 & 0x80000) != 0)
    {
LABEL_1607:
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v627 = *MEMORY[0x277D85E08];
        v628 = *(MEMORY[0x277D65538] + 8);
        v629 = SLTagEng::Name(v844);
        fprintf(v627, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v628, "", "", v629, 2015, v846, v861);
      }

      goto LABEL_1989;
    }

    if (v861 & 2) != 0 && (v851[1] & 0x22080) != 0 && (v851[0] & 0x51) != 0 || (v861 & 0x800) != 0 && (v851[1] & 3) == 2 && (v851[0] & 0x22041) != 0 || (v861 & 1) != 0 && (v851[1] & 0x80) != 0 && (v851[0] & 0x22041) != 0 || (v861 & 0x40) != 0 && ((v836 | ((BYTE1(v851[1]) & 4) >> 2)) & 1) != 0 || (v861 & 0x41) != 0 && (v851[1])
    {
      goto LABEL_1607;
    }
  }

LABEL_1601:
  if (v390 == 2 && (v861 & 0x22000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v624 = *MEMORY[0x277D85E08];
      v625 = *(MEMORY[0x277D65538] + 8);
      v626 = SLTagEng::Name(v844);
      fprintf(v624, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v625, "", "", v626, 2022, v846, v861);
    }

    goto LABEL_1989;
  }

  if ((v846 & 2) != 0 && v556 == 20)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v630 = *MEMORY[0x277D85E08];
      v631 = *(MEMORY[0x277D65538] + 8);
      v632 = SLTagEng::Name(v844);
      fprintf(v630, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v631, "", "", v632, 2028, v846, v861);
    }

    goto LABEL_1989;
  }

  v633 = v390 == 3 && v556 == 14;
  v634 = v837;
  if (!v633)
  {
    v634 = 1;
  }

  if ((v634 & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v638 = *MEMORY[0x277D85E08];
      v639 = *(MEMORY[0x277D65538] + 8);
      v640 = SLTagEng::Name(v844);
      fprintf(v638, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v639, "", "", v640, 2043, v846, v861);
    }

    goto LABEL_1989;
  }

  if ((v846 & 2) != 0 && v556 == 11)
  {
    if ((v861 & 0x200000) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v648 = *MEMORY[0x277D85E08];
        v649 = *(MEMORY[0x277D65538] + 8);
        v650 = SLTagEng::Name(v844);
        fprintf(v648, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v649, "", "", v650, 2050, v846, v861);
      }

      goto LABEL_1989;
    }

    if ((v836 & ((v861 & 0x4000) >> 14)) == 1)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v635 = *MEMORY[0x277D85E08];
        v636 = *(MEMORY[0x277D65538] + 8);
        v637 = SLTagEng::Name(v844);
        fprintf(v635, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v636, "", "", v637, 2057, v846, v861);
      }

      goto LABEL_1989;
    }
  }

  else
  {
    v7 = (v855 | v556) == 0;
    v641 = !v833;
    if (!v7)
    {
      v641 = 1;
    }

    if ((v641 & 1) == 0 && (v861 & 0x41) != 0 && (v851[1] & 0x41) != 0 && !v835)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v651 = *MEMORY[0x277D85E08];
        v652 = *(MEMORY[0x277D65538] + 8);
        v653 = SLTagEng::Name(v844);
        fprintf(v651, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v652, "", "", v653, 2088, v846, v861);
      }

      goto LABEL_1989;
    }
  }

  v642 = SLWordTagSet::find(&v863);
  v643 = v846 & 0x41;
  if (v643 == 65)
  {
    v644 = v642;
  }

  else
  {
    v644 = 0;
  }

  if (v644 == 1)
  {
    if ((SLWordTagSet::find(&v850) & 1) != 0 || SLWordTagSet::find(&v850))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v645 = *MEMORY[0x277D85E08];
        v646 = *MEMORY[0x277D65538];
        v647 = SLTagEng::Name(v844);
        fprintf(v645, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v646, "", "", v647, 2100, v846, v861);
      }

      goto LABEL_340;
    }

    v657 = v861;
    if ((v861 & 0x400) != 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v672 = *MEMORY[0x277D85E08];
        v673 = *MEMORY[0x277D65538];
        v674 = SLTagEng::Name(v844);
        fprintf(v672, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v673, "", "", v674, 2106, v846, v861);
      }

      goto LABEL_340;
    }

    if ((v861 & 0x41) == 1)
    {
      if (SLWordTagSet::find(&v850))
      {
        if (!MTFEPOSResolver::RequireTagAndPOS(this, v18, 65, 1))
        {
          if (kMTFEDebugPOS)
          {
            MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
            kMTFEDebugPOS = 0;
          }

          if (byte_27F8F0908 == 1)
          {
            v678 = *MEMORY[0x277D85E08];
            v679 = *MEMORY[0x277D65538];
            v680 = SLTagEng::Name(v844);
            fprintf(v678, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v679, "", "", v680, 2119, v846, v861);
          }

          goto LABEL_340;
        }

        HIBYTE(v18[1].var0) = 2;
        LODWORD(v18[1].var5) = *(this + 7);
        *(&v18[1].var5 + 4) = *(this + 2);
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v658 = *MEMORY[0x277D85E08];
          v659 = *(MEMORY[0x277D65538] + 48);
          v660 = SLTagEng::Name(v844);
          fprintf(v658, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v659, "", "", v660, 2116, v846, v861);
        }

LABEL_1977:
        var3 = 0;
        LODWORD(var15) = 6;
        goto LABEL_331;
      }

      v657 = v861;
    }

    if ((v657 & 0x41) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v687 = *MEMORY[0x277D85E08];
        v688 = *MEMORY[0x277D65538];
        v689 = SLTagEng::Name(v844);
        fprintf(v687, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v688, "", "", v689, 2127, v846, v861);
      }

      goto LABEL_340;
    }

    HIBYTE(v18[1].var0) = 2;
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v675 = *MEMORY[0x277D85E08];
      v676 = *(MEMORY[0x277D65538] + 48);
      v677 = SLTagEng::Name(v844);
      fprintf(v675, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v676, "", "", v677, 2124, v846, v861);
    }

    goto LABEL_1977;
  }

  if ((v846 & 0x4043) == 0x41 && ((v837 | !v836 | v861) & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v661 = *MEMORY[0x277D85E08];
      v662 = *MEMORY[0x277D65538];
      v663 = SLTagEng::Name(v844);
      fprintf(v661, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v662, "", "", v663, 2135, v846, v861);
    }

    goto LABEL_340;
  }

  if (v862 != 17 && v862 != 13)
  {
    goto LABEL_1687;
  }

  if (v390 == 65 && (v861 & 0x41) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v664 = *MEMORY[0x277D85E08];
      v665 = *MEMORY[0x277D65538];
      v666 = SLTagEng::Name(v844);
      fprintf(v664, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v665, "", "", v666, 2142, v846, v861);
    }

    goto LABEL_340;
  }

  if (v862 == 17 || v862 == 13)
  {
    if (v390 == 3)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v654 = *MEMORY[0x277D85E08];
        v655 = *MEMORY[0x277D65538];
        v656 = SLTagEng::Name(v844);
        fprintf(v654, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v655, "", "", v656, 2149, v846, v861);
      }

      goto LABEL_340;
    }

    v668 = 0;
    v667 = 1 << v862;
  }

  else
  {
LABEL_1687:
    v667 = 1 << v862;
    if (v390 == 3 && (v667 & 0x22040) != 0 && (v861 & 0x41) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v681 = *MEMORY[0x277D85E08];
        v682 = *MEMORY[0x277D65538];
        v683 = SLTagEng::Name(v844);
        fprintf(v681, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v682, "", "", v683, 2156, v846, v861);
      }

      goto LABEL_340;
    }

    v668 = v862 == 1;
    if (v862 == 1 && v643 == 65)
    {
      if ((~v861 & 0x80080) == 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v669 = *MEMORY[0x277D85E08];
          v670 = *MEMORY[0x277D65538];
          v671 = SLTagEng::Name(v844);
          fprintf(v669, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v670, "", "", v671, 2164, v846, v861);
        }

        goto LABEL_340;
      }

      v668 = 1;
    }
  }

  if (v831 == 1 && (v861 & 0x10C) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v684 = *MEMORY[0x277D85E08];
      v685 = *MEMORY[0x277D65538];
      v686 = SLTagEng::Name(v844);
      fprintf(v684, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v685, "", "", v686, 2170, v846, v861);
    }

    goto LABEL_340;
  }

  if (v862 == 17 || v862 == 13)
  {
    if (v643 == 1 && (v861 & 0x41) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v694 = *MEMORY[0x277D85E08];
        v695 = *MEMORY[0x277D65538];
        v696 = SLTagEng::Name(v844);
        fprintf(v694, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v695, "", "", v696, 2176, v846, v861);
      }

      goto LABEL_340;
    }

    v690 = 0;
  }

  else
  {
    v690 = v862 == 6;
    if (v862 == 6 && (v846 & 0x10041) == 1)
    {
      if ((v861 & 0x41) == 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v697 = *MEMORY[0x277D85E08];
          v698 = *MEMORY[0x277D65538];
          v699 = SLTagEng::Name(v844);
          fprintf(v697, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v698, "", "", v699, 2183, v846, v861);
        }

        goto LABEL_340;
      }

      v690 = 1;
    }
  }

  if ((v846 & 0x143) == 1 && *(this + 4) <= 1)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v691 = *MEMORY[0x277D85E08];
      v692 = *MEMORY[0x277D65538];
      v693 = SLTagEng::Name(v844);
      fprintf(v691, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v692, "", "", v693, 2189, v846, v861);
    }

    goto LABEL_340;
  }

  if ((v861 & 0x100000) != 0 && v643 == 1)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v700 = *MEMORY[0x277D85E08];
      v701 = *MEMORY[0x277D65538];
      v702 = SLTagEng::Name(v844);
      fprintf(v700, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v701, "", "", v702, 2195, v846, v861);
    }

    goto LABEL_340;
  }

  if (v862 == 7 && v643 == 1)
  {
    if ((v861 & 0x41) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v703 = *MEMORY[0x277D85E08];
        v704 = *MEMORY[0x277D65538];
        v705 = SLTagEng::Name(v844);
        fprintf(v703, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v704, "", "", v705, 2202, v846, v861);
      }

      goto LABEL_340;
    }
  }

  else
  {
    v706 = (v861 & 0x41) == 0 && v862 == 10;
    v707 = v833;
    if (!v706)
    {
      v707 = 0;
    }

    if (v707)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v708 = *MEMORY[0x277D85E08];
        v709 = *MEMORY[0x277D65538];
        v710 = SLTagEng::Name(v844);
        fprintf(v708, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v709, "", "", v710, 2209, v846, v861);
      }

      goto LABEL_340;
    }
  }

  if (v833)
  {
    if ((v861 & 0x43) == 2)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v711 = *MEMORY[0x277D85E08];
        v712 = *MEMORY[0x277D65538];
        v713 = SLTagEng::Name(v844);
        fprintf(v711, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v712, "", "", v713, 2216, v846, v861);
      }

      goto LABEL_340;
    }

    if (!v668)
    {
      goto LABEL_1786;
    }

    if ((v861 & 0x14000) != 0)
    {
      if ((v861 & 0x10000) == 0)
      {
        goto LABEL_1785;
      }

      v714 = v837;
      if ((v851[1] & 0x10E) == 0)
      {
        v714 = 1;
      }

      if (v714)
      {
LABEL_1785:
        if (((v837 | ((v861 & 0x4000) >> 14)) & 1) == 0)
        {
          if (kMTFEDebugPOS)
          {
            MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
            kMTFEDebugPOS = 0;
          }

          if (byte_27F8F0908 == 1)
          {
            v722 = *MEMORY[0x277D85E08];
            v723 = *(MEMORY[0x277D65538] + 8);
            v724 = SLTagEng::Name(v844);
            fprintf(v722, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v723, "", "", v724, 2231, v846, v861);
          }

          goto LABEL_1989;
        }

LABEL_1786:
        v715 = v837;
        if (v862 != 21)
        {
          v715 = 1;
        }

        if ((v715 & 1) == 0)
        {
          if (kMTFEDebugPOS)
          {
            MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
            kMTFEDebugPOS = 0;
          }

          if (byte_27F8F0908 == 1)
          {
            v716 = *MEMORY[0x277D85E08];
            v717 = *(MEMORY[0x277D65538] + 8);
            v718 = SLTagEng::Name(v844);
            fprintf(v716, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v717, "", "", v718, 2238, v846, v861);
          }

          goto LABEL_1989;
        }

        goto LABEL_1794;
      }
    }

    else if (v837)
    {
      goto LABEL_1794;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v725 = *MEMORY[0x277D85E08];
      v726 = *MEMORY[0x277D65538];
      v727 = SLTagEng::Name(v844);
      fprintf(v725, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v726, "", "", v727, 2224, v846, v861);
    }

    goto LABEL_340;
  }

LABEL_1794:
  if ((v861 & 0x41) == 0)
  {
    v690 = 0;
  }

  if (v391 && v690 && ((v861 & 2) == 0 || ((v836 | (BYTE1(v851[1]) >> 3)) & 1) != 0))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v719 = *MEMORY[0x277D85E08];
      v720 = *(MEMORY[0x277D65538] + 48);
      v721 = SLTagEng::Name(v844);
      fprintf(v719, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v720, "", "", v721, 2253, v846, v861);
    }

    goto LABEL_1977;
  }

  if (v862 == 255 || (v667 & 0x220C0) != 0)
  {
    if (v643 != 65 && (v846 & 0x50) != 0x50 && (v846 & 0x60) != 0x60)
    {
      goto LABEL_1832;
    }

    if ((v861 & 0x43) == 0x41 && ((v851[1] & 0xC41) != 0 || v836) && ((v861 & 0x10) == 0 || (v851[1] & 0x22000) == 0) && ((v861 & 0x4000) == 0 || (v851[1] & 2) == 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v731 = *MEMORY[0x277D85E08];
        v732 = *(MEMORY[0x277D65538] + 48);
        v733 = SLTagEng::Name(v844);
        fprintf(v731, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v732, "", "", v733, 2267, v846, v861);
      }

      goto LABEL_1977;
    }
  }

  if (v643 == 65 && v862 == 14)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v728 = *MEMORY[0x277D85E08];
      v729 = *(MEMORY[0x277D65538] + 48);
      v730 = SLTagEng::Name(v844);
      fprintf(v728, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v729, "", "", v730, 2274, v846, v861);
    }

    goto LABEL_1977;
  }

LABEL_1832:
  if (v846 != 1)
  {
    v738 = 1 << v862;
    if ((v861 & 0x43) == 0x41 && (v738 & 0x220C0) != 0 && (v846 & 0x40) != 0 && ((v861 & 0x10) == 0 || (v851[1] & 0x22000) == 0))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v743 = *MEMORY[0x277D85E08];
        v744 = *(MEMORY[0x277D65538] + 48);
        v745 = SLTagEng::Name(v844);
        fprintf(v743, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v744, "", "", v745, 2300, v846, v861);
      }

      goto LABEL_1977;
    }

    if (v738 & 0xC0) != 0 && (v846 & 0x40) != 0 && (v861 & v836)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v739 = *MEMORY[0x277D85E08];
        v740 = *(MEMORY[0x277D65538] + 48);
        v741 = SLTagEng::Name(v844);
        fprintf(v739, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v740, "", "", v741, 2308, v846, v861);
      }

      goto LABEL_1977;
    }

    if ((v861 & 0xCC1) != 0 && v862 == 1 && v437 == 66)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v746 = *MEMORY[0x277D85E08];
        v747 = *(MEMORY[0x277D65538] + 48);
        v748 = SLTagEng::Name(v844);
        fprintf(v746, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v747, "", "", v748, 2315, v846, v861);
      }

      goto LABEL_1977;
    }

    if ((v738 & 0x30) != 0 && v437 == 66)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v749 = *MEMORY[0x277D85E08];
        v750 = *(MEMORY[0x277D65538] + 48);
        v751 = SLTagEng::Name(v844);
        fprintf(v749, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v750, "", "", v751, 2322, v846, v861);
      }

      goto LABEL_1977;
    }

    v742 = v862 == 0;
    v752 = v437 == 66 && v862 == 0;
    if ((v837 & v752) == 1)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v753 = *MEMORY[0x277D85E08];
        v754 = *(MEMORY[0x277D65538] + 48);
        v755 = SLTagEng::Name(v844);
        fprintf(v753, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v754, "", "", v755, 2329, v846, v861);
      }

      goto LABEL_1977;
    }

    if (v862 == 14 && (v846 & 0x62) == 0x42)
    {
      if ((((v861 & 0x41) == 0) & ~v837) == 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v756 = *MEMORY[0x277D85E08];
          v757 = *(MEMORY[0x277D65538] + 48);
          v758 = SLTagEng::Name(v844);
          fprintf(v756, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v757, "", "", v758, 2337, v846, v861);
        }

        goto LABEL_1977;
      }
    }

    else
    {
      if ((~v846 & 0x60) != 0 || v862 != 10)
      {
        goto LABEL_1894;
      }

      if ((v861 & 0x41) != 0)
      {
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v759 = *MEMORY[0x277D85E08];
          v760 = *(MEMORY[0x277D65538] + 48);
          v761 = SLTagEng::Name(v844);
          fprintf(v759, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v760, "", "", v761, 2344, v846, v861);
        }

        goto LABEL_1977;
      }
    }

    v742 = 0;
    goto LABEL_1894;
  }

  if ((SLWordTagSet::find(&v863) & 1) == 0 && (v861 & 3) == 1 && SLWordTagSet::find(&v850))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v734 = *MEMORY[0x277D85E08];
      v735 = *MEMORY[0x277D65538];
      v736 = *(MEMORY[0x277D65538] + 48);
      v737 = SLTagEng::Name(v844);
      fprintf(v734, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v735, "->", v736, v737, 2287, 1, v861);
      LODWORD(var15) = 0;
      var3 = 0;
      LODWORD(v13) = 6;
      v846 = 1;
    }

    else
    {
      LODWORD(var15) = 0;
      var3 = 0;
      v846 = 1;
      LODWORD(v13) = 6;
    }

    goto LABEL_401;
  }

  v742 = v862 == 0;
  v738 = 1 << v862;
LABEL_1894:
  if (v380)
  {
    if ((v861 & 0x41) == 1)
    {
      if ((v861 & 2) != 0)
      {
        if ((v738 & 0x22080) == 0)
        {
          goto LABEL_1912;
        }

LABEL_1908:
        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        if (byte_27F8F0908 == 1)
        {
          v765 = *MEMORY[0x277D85E08];
          v766 = *(MEMORY[0x277D65538] + 48);
          v767 = SLTagEng::Name(v844);
          fprintf(v765, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v766, "", "", v767, 2361, v846, v861);
        }

        goto LABEL_1977;
      }

LABEL_1902:
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v762 = *MEMORY[0x277D85E08];
        v763 = *(MEMORY[0x277D65538] + 48);
        v764 = SLTagEng::Name(v844);
        fprintf(v762, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v763, "", "", v764, 2353, v846, v861);
      }

      goto LABEL_1977;
    }

    if (v861 & 0x40) != 0 && !v836 && (v861 & 2) == 0 && (v851[1])
    {
      goto LABEL_1902;
    }

    if ((v738 & 0x22080) != 0 && (v861 & 0x41) != 0)
    {
      goto LABEL_1908;
    }
  }

LABEL_1912:
  if ((~v846 & 0xC0) == 0 && (v738 & 0x41) != 0 && (v738 & 2) == 0 && (v861 & 0x41) != 0 && (v861 & 2) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v768 = *MEMORY[0x277D85E08];
      v769 = *(MEMORY[0x277D65538] + 56);
      v770 = SLTagEng::Name(v844);
      fprintf(v768, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v769, "", "", v770, 2376, v846, v861);
    }

LABEL_2019:
    LODWORD(v13) = 255;
    LODWORD(var15) = 7;
    goto LABEL_556;
  }

  if (~v846 & 0xC2) == 0 && (v861 & 1) != 0 && ((v836 | (LOBYTE(v851[1]) >> 1)))
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v771 = *MEMORY[0x277D85E08];
      v772 = *(MEMORY[0x277D65538] + 56);
      v773 = SLTagEng::Name(v844);
      fprintf(v771, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v772, "", "", v773, 2384, v846, v861);
    }

    goto LABEL_2019;
  }

  if ((~v846 & 0x11) == 0 && v742)
  {
    v774 = v837;
    if ((v861 & 0x41) != 0)
    {
      v774 = 1;
    }

    if ((v774 & 1) == 0)
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if (byte_27F8F0908 == 1)
      {
        v778 = *MEMORY[0x277D85E08];
        v779 = *(MEMORY[0x277D65538] + 32);
        v780 = SLTagEng::Name(v844);
        fprintf(v778, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v779, "", "", v780, 2392, v846, v861);
      }

      goto LABEL_1983;
    }
  }

  if ((v846 & 0x400) != 0 && (v861 & 0x132000) == 0x100000 && !v836)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v781 = *MEMORY[0x277D85E08];
      v782 = *(MEMORY[0x277D65538] + 80);
      v783 = SLTagEng::Name(v844);
      fprintf(v781, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v782, "", "", v783, 2399, v846, v861);
    }

    goto LABEL_1999;
  }

  if ((v846 & 0x80) != 0 && (v861 & 0x22000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v775 = *MEMORY[0x277D85E08];
      v776 = *(MEMORY[0x277D65538] + 56);
      v777 = SLTagEng::Name(v844);
      fprintf(v775, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v776, "", "", v777, 2406, v846, v861);
    }

    goto LABEL_2019;
  }

  if ((v846 & 0x24000) == 0x4000 && (v861 & 0x40) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v788 = *MEMORY[0x277D85E08];
      v789 = *(MEMORY[0x277D65538] + 112);
      v790 = SLTagEng::Name(v844);
      fprintf(v788, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v789, "", "", v790, 2413, v846, v861);
    }

    goto LABEL_2009;
  }

  v784 = v837 ^ 1;
  if ((v846 & 0x4000) == 0)
  {
    v784 = 1;
  }

  if ((v784 & 1) == 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v791 = *MEMORY[0x277D85E08];
      v792 = *(MEMORY[0x277D65538] + 112);
      v793 = SLTagEng::Name(v844);
      fprintf(v791, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v792, "", "", v793, 2420, v846, v861);
    }

    goto LABEL_2009;
  }

  if ((v846 & 8) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v794 = *MEMORY[0x277D85E08];
      v795 = *(MEMORY[0x277D65538] + 24);
      v796 = SLTagEng::Name(v844);
      fprintf(v794, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v795, "", "", v796, 2431, v846, v861);
    }

    var3 = 0;
    LODWORD(var15) = 3;
    goto LABEL_331;
  }

  if ((v846 & 0x40) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v797 = *MEMORY[0x277D85E08];
      v798 = *(MEMORY[0x277D65538] + 48);
      v799 = SLTagEng::Name(v844);
      fprintf(v797, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v798, "", "", v799, 2437, v846, v861);
    }

    goto LABEL_1977;
  }

  if (v846)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v785 = *MEMORY[0x277D85E08];
      v786 = *MEMORY[0x277D65538];
      v787 = SLTagEng::Name(v844);
      fprintf(v785, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v786, "", "", v787, 2443, v846, v861);
    }

    goto LABEL_340;
  }

  if (v832)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v800 = *MEMORY[0x277D85E08];
      v801 = *(MEMORY[0x277D65538] + 32);
      v802 = SLTagEng::Name(v844);
      fprintf(v800, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v801, "", "", v802, 2449, v846, v861);
    }

    goto LABEL_1983;
  }

  if ((v846 & 2) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v803 = *MEMORY[0x277D85E08];
      v804 = *(MEMORY[0x277D65538] + 8);
      v805 = SLTagEng::Name(v844);
      fprintf(v803, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v804, "", "", v805, 2455, v846, v861);
    }

    goto LABEL_1989;
  }

  if ((v846 & 0x20000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v809 = *MEMORY[0x277D85E08];
      v810 = *(MEMORY[0x277D65538] + 136);
      v811 = SLTagEng::Name(v844);
      fprintf(v809, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v810, "", "", v811, 2461, v846, v861);
    }

    var3 = 0;
    LODWORD(var15) = 17;
    goto LABEL_331;
  }

  if ((v846 & 0x4000) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v812 = *MEMORY[0x277D85E08];
      v813 = *(MEMORY[0x277D65538] + 112);
      v814 = SLTagEng::Name(v844);
      fprintf(v812, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v813, "", "", v814, 2467, v846, v861);
    }

LABEL_2009:
    var3 = 0;
    LODWORD(var15) = 14;
    goto LABEL_331;
  }

  if ((v846 & 0x20) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v815 = *MEMORY[0x277D85E08];
      v816 = *(MEMORY[0x277D65538] + 40);
      v817 = SLTagEng::Name(v844);
      fprintf(v815, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v816, "", "", v817, 2473, v846, v861);
    }

    var3 = 0;
    LODWORD(var15) = 5;
    goto LABEL_331;
  }

  if ((v846 & 0x80) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v818 = *MEMORY[0x277D85E08];
      v819 = *(MEMORY[0x277D65538] + 56);
      v820 = SLTagEng::Name(v844);
      fprintf(v818, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v819, "", "", v820, 2479, v846, v861);
    }

    goto LABEL_2019;
  }

  if ((v846 & 0x400) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v806 = *MEMORY[0x277D85E08];
      v807 = *(MEMORY[0x277D65538] + 80);
      v808 = SLTagEng::Name(v844);
      fprintf(v806, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v807, "", "", v808, 2485, v846, v861);
    }

LABEL_1999:
    var3 = 0;
    LODWORD(var15) = 10;
    goto LABEL_331;
  }

  if ((v846 & 0x2000) == 0)
  {
    LODWORD(var15) = SLFirstPOSInSet();
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v821 = *MEMORY[0x277D85E08];
      v822 = *(MEMORY[0x277D65538] + 8 * var15);
      v823 = SLTagEng::Name(v844);
      fprintf(v821, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v822, "", "", v823, 2517, v846, v861);
    }

    goto LABEL_555;
  }

  if (*v40 != 65 || (v848->var27[1] != 0) | v840 & 1 || (((v861 & 0x800) == 0) & ~v837) != 0)
  {
    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    if (byte_27F8F0908 == 1)
    {
      v828 = *MEMORY[0x277D85E08];
      v829 = *(MEMORY[0x277D65538] + 104);
      v830 = SLTagEng::Name(v844);
      fprintf(v828, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v829, "", "", v830, 2501, v846, v861);
    }

    var3 = 0;
    LODWORD(var15) = 13;
    goto LABEL_331;
  }

  if (kMTFEDebugPOS)
  {
    MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
    kMTFEDebugPOS = 0;
  }

  if (byte_27F8F0908 == 1)
  {
    v824 = *MEMORY[0x277D85E08];
    v825 = *(MEMORY[0x277D65538] + 104);
    v826 = *MEMORY[0x277D65538];
    v827 = SLTagEng::Name(0x42);
    fprintf(v824, "POS %s %s%s%s %s [%d] %08x %08x\n", v40, v825, "->", v826, v827, 2495, v846, v861);
  }

  LODWORD(v13) = 0;
  var3 = 0;
  v10 = 66;
  LODWORD(var15) = 13;
LABEL_208:
  if (var15 != 13)
  {
    goto LABEL_237;
  }

  *(this + 4) = 0;
  v845 = 13;
  LODWORD(var15) = 13;
  if (var3)
  {
    goto LABEL_255;
  }

  while (1)
  {
    v839 = v13;
    var3 = v848->var3;
    if (var3)
    {
      break;
    }

LABEL_236:
    MTBEAbort(v848);
    __break(1u);
LABEL_237:
    ++*(this + 4);
    v845 = var15;
    if (var3)
    {
      goto LABEL_255;
    }
  }

  v13 = 0;
  v84 = 0;
  v85 = v10;
  LODWORD(var15) = 1 << var15;
  v841 = v10 != 67;
  v843 = v10 == 67;
  do
  {
    v86 = *var3->var0;
    v88 = v87;
    if (!v85)
    {
      if ((*(v87 + 14) & var15) == 0)
      {
        goto LABEL_234;
      }

      v91 = byte_27F8F0908;
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, (byte_27F8F0908 & 1));
        kMTFEDebugPOS = 0;
        v91 = byte_27F8F0908;
      }

      if ((v91 & 1) == 0)
      {
        goto LABEL_252;
      }

      v90 = "POS match";
      goto LABEL_251;
    }

    if (SLWordTagSet::find((v87 + 60)))
    {
      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if ((byte_27F8F0908 & 1) == 0)
      {
        goto LABEL_252;
      }

      v90 = "Positive tag match";
      goto LABEL_251;
    }

    if ((SLWordTagSet::find(&v863) & 1) == 0 && !SLWordTagSet::find((v88 + 60)))
    {
      if ((*(v88 + 14) & var15) == 0)
      {
        if (v84)
        {
LABEL_226:
          v84 = 1;
          goto LABEL_234;
        }

        if (kMTFEDebugPOS)
        {
          MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
          kMTFEDebugPOS = 0;
        }

        v89 = "Negative tag match";
        v84 = v841;
        if ((byte_27F8F0908 & 1) == 0)
        {
          v84 = v841;
          goto LABEL_233;
        }

LABEL_231:
        fprintf(*MEMORY[0x277D85E08], "POS %s\n", v89);
        goto LABEL_233;
      }

      if (kMTFEDebugPOS)
      {
        MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
        kMTFEDebugPOS = 0;
      }

      if ((byte_27F8F0908 & 1) == 0)
      {
        goto LABEL_252;
      }

      v90 = "POS match / no tag mismatch";
LABEL_251:
      fprintf(*MEMORY[0x277D85E08], "POS %s\n", v90);
      goto LABEL_252;
    }

    if (v84)
    {
      goto LABEL_226;
    }

    if ((*(v88 + 14) & var15) == 0)
    {
      v84 = 0;
      goto LABEL_234;
    }

    if (kMTFEDebugPOS)
    {
      MTBEDebugParams::GetParam(kMTFEDebugPOS, &byte_27F8F0908, byte_27F8F0908);
      kMTFEDebugPOS = 0;
    }

    v89 = "POS match / tag mismatch";
    v84 = v843;
    if (byte_27F8F0908)
    {
      goto LABEL_231;
    }

    v84 = v843;
LABEL_233:
    v13 = v88;
LABEL_234:
    var3 = var3->var6;
  }

  while (var3);
  var3 = v13;
  if (!v13)
  {
    goto LABEL_236;
  }

LABEL_252:
  v92 = *var3->var0;
  {
    v845 = SLFirstPOSInSet();
  }

  LODWORD(v13) = v839;
LABEL_255:
  p_var17 = &v848->var17;
  var17 = v848->var17;
  v94 = *var3->var0;
  v848->var17.var0[0] = 0;
  v95 = var17.var0[0];
  if (var17.var0[0])
  {
    v96 = &var17.var0[1];
    do
    {
      v98 = *v96++;
      v97 = v98;
      if (SLWordTagSet::find(&v854))
      {
        if (SLWordTagSet::find(p_var17))
        {
          goto LABEL_265;
        }

        v99 = p_var17->var0[0];
        if (v99 >= 7)
        {
          goto LABEL_265;
        }
      }

      else
      {
        if (v97)
        {
          goto LABEL_265;
        }

        v97 |= 1u;
        if (SLWordTagSet::find(p_var17))
        {
          goto LABEL_265;
        }

        v99 = p_var17->var0[0];
        if (v99 > 6)
        {
          goto LABEL_265;
        }
      }

      v100 = v99 + 1;
      p_var17->var0[0] = v100;
      p_var17->var0[v100] = v97;
LABEL_265:
      --v95;
    }

    while (v95);
  }

  MTFESpeechElement::SelectChild(v848, var3);
  if (v13 != 255)
  {
    v848->var8 |= 0x200u;
    v845 = v13;
  }

  v848->var15 = v845;
  if ((v846 & (v846 - 1)) != 0)
  {
    v848->var8 |= 0x10u;
  }

  if (v862 == 255 && v845 <= 8 && ((1 << v845) & 0x10C) != 0)
  {
    *(this + 8) = 1;
  }

  if (!strcmp(v848->var27, "THAT"))
  {
    if (v845 != 13)
    {
      v105 = p_var17->var0[0];
      if (v105 <= 6)
      {
        v106 = v105 + 1;
        p_var17->var0[0] = v106;
        p_var17->var0[v106] = 75;
      }

      goto LABEL_275;
    }

    v104 = strchr(v848->var27, 124);
    if (v104)
    {
      v102 = v104;
      goto LABEL_281;
    }
  }

  else
  {
LABEL_275:
    v101 = strchr(v848->var27, 124);
    if (v101)
    {
      v102 = v101;
      if (v845 == 6)
      {
        v103 = strlen(v101 + 1);
        memmove(v848->var27, v102 + 1, v103 + 1);
        goto LABEL_282;
      }

LABEL_281:
      *v102 = 0;
    }
  }

LABEL_282:
  MTFESpeechVisitor::~MTFESpeechVisitor(v858);
}