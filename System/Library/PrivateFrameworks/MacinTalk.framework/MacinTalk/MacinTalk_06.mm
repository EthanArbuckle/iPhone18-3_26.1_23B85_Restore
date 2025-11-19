void SentenceLog::~SentenceLog(SentenceLog *this)
{
  MiniToolbox::BaseCompositeElement<SpeechElementLog,std::list>::~BaseCompositeElement(this);

  JUMPOUT(0x259C6DA90);
}

uint64_t MiniToolbox::CompositeElement<SpeechElementLog,MiniToolbox::CompositeElementNonComparable,MiniToolbox::Clonable,std::list>::Clone(void *a1)
{
  v2 = (*(*a1 + 24))(a1);
  v3 = a1[2];
  if (v3 != a1 + 1)
  {
    *((*(**(v3 + 16) + 16))(*(v3 + 16)) + 32) = v2;
    operator new();
  }

  return v2;
}

void non-virtual thunk toSentenceLog::~SentenceLog(SentenceLog *this)
{
  MiniToolbox::BaseCompositeElement<SpeechElementLog,std::list>::~BaseCompositeElement(this - 5);
}

{
  MiniToolbox::BaseCompositeElement<SpeechElementLog,std::list>::~BaseCompositeElement(this - 5);

  JUMPOUT(0x259C6DA90);
}

{
  MiniToolbox::BaseCompositeElement<SpeechElementLog,std::list>::~BaseCompositeElement(this - 6);
}

{
  MiniToolbox::BaseCompositeElement<SpeechElementLog,std::list>::~BaseCompositeElement(this - 6);

  JUMPOUT(0x259C6DA90);
}

{
  MiniToolbox::BaseCompositeElement<SpeechElementLog,std::list>::~BaseCompositeElement(this - 7);
}

{
  MiniToolbox::BaseCompositeElement<SpeechElementLog,std::list>::~BaseCompositeElement(this - 7);

  JUMPOUT(0x259C6DA90);
}

void MiniToolbox::BaseCompositeElement<SpeechElementLog,std::list>::~BaseCompositeElement(void *a1)
{
  MiniToolbox::BaseCompositeElement<SpeechElementLog,std::list>::~BaseCompositeElement(a1);

  JUMPOUT(0x259C6DA90);
}

void *MiniToolbox::BaseCompositeElement<SpeechElementLog,std::list>::~BaseCompositeElement(void *a1)
{
  *a1 = &unk_2868F88A8;
  MiniToolbox::BaseCompositeElement<SpeechElementLog,std::list>::DeleteAllChildren(a1);
  std::__list_imp<SpeechChannelManager *>::clear(a1 + 1);
  return a1;
}

void *MiniToolbox::BaseCompositeElement<SpeechElementLog,std::list>::DeleteAllChildren(uint64_t a1)
{
  v1 = (a1 + 8);
  for (i = *(a1 + 16); i != v1; i = i[1])
  {
    v3 = i[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return std::__list_imp<SpeechChannelManager *>::clear(v1);
}

uint64_t (***MiniToolbox::BaseVisitable<void>::AcceptImpl<SentenceLog>(int a1, char **lpsrc))(void)
{
  v2 = **lpsrc;
  if (result)
  {
    v4 = **result;

    return v4();
  }

  return result;
}

MTFESpeechElement *MTFEPlaceBoundaries::VisitIntonationalPhrase(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  if (!BYTE4(a2[2].var6) && !a2[3].var6)
  {
    v3 = this;
    this->var6 = 0;
    *&this->var4 = 0u;
    *&this->var1 = 0u;
    LOBYTE(this[1].var5) = 1;
    MTFESpeechElement::VisitChildren(a2, this);
    LOBYTE(v3[1].var5) = 0;
    *&v3->var1 = 0u;
    *&v3->var4 = 0u;
    v3->var6 = 0;

    return MTFESpeechElement::VisitChildren(a2, v3);
  }

  return this;
}

MTFESpeechElement *MTFEPlaceBoundaries::VisitIntermediatePhrase(MTFEPlaceBoundaries *this, MTFESpeechElement *a2)
{
  v2 = a2;
  *(this + 13) = a2;
  do
  {
    *(this + 89) = 0;
    *(this + 12) = 0;
    *(this + 3) = 0;
    *(this + 10) = 0;
    result = MTFESpeechElement::VisitChildren(v2, this);
    v5 = v2 == *(this + 13);
    v2 = *(this + 13);
  }

  while (!v5);
  return result;
}

void MTFEPlaceBoundaries::VisitWord(MTFEPlaceBoundaries *this, MTFEWord *a2)
{
  MTFECommands::Visit(&a2->var18, this);
  if (a2->var12 == 60)
  {
    v4 = 0;
    v138 = 0;
LABEL_4:
    Word = MTFEWord::NextWord(a2);
    goto LABEL_5;
  }

  v4 = MTFEWord::PrevWord(a2);
  Word = 0;
  var12 = a2->var12;
  v138 = 0;
  if (var12 != 62)
  {
    goto LABEL_4;
  }

LABEL_5:
  v136 = 0;
  v137 = 0;
  var15 = a2->var15;
  v135 = -1;
  v134 = -1;
  v133 = -1;
  v132 = -1;
  v131 = -1;
  if (v4)
  {
    MTFEWord::POSForPrev(v4, &v135, 0, &v138);
    if (v138)
    {
      MTFEWord::POSForPrev(v138, &v134, 0, 0);
    }
  }

  if (Word)
  {
    MTFEWord::POSForNext(Word, &v133, 0, &v137);
  }

  if (v137)
  {
    MTFEWord::POSForNext(v137, &v132, 0, &v136);
  }

  if (v136)
  {
    MTFEWord::POSForNext(v136, &v131, 0, 0);
  }

  v8 = 1 << var15;
  v9 = v135;
  if (v135 == 255)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1 << v135;
  }

  if (v4 && (v8 & 0x41) != 0)
  {
    if ((v10 & 0x41) != 0)
    {
LABEL_25:
      v11 = 1;
      goto LABEL_26;
    }

    if ((v8 & 0x413E) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (!v4 || (v8 & 0x413E) == 0)
  {
    goto LABEL_31;
  }

  if (v135 == 14)
  {
    goto LABEL_25;
  }

LABEL_31:
  v11 = 0;
  if (!v4 || var15 != 5)
  {
LABEL_26:
    if (var15 == 11 && strchr(a2->var27, 39))
    {
      if (a2->var11)
      {
        if (!Word)
        {
          goto LABEL_39;
        }
      }

      else
      {
        a2->var11 = 2;
        if (!Word)
        {
          goto LABEL_39;
        }
      }

      if (!HIBYTE(Word[1].var0))
      {
        HIBYTE(Word[1].var0) = 2;
        if ((v11 & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }
    }

LABEL_39:
    if (!v11)
    {
      goto LABEL_40;
    }

LABEL_34:
    if (*(this + 88))
    {
      v12 = 1;
    }

    else
    {
      v13 = *(this + 10) + 1;
      *(this + 10) = v13;
      v12 = v13 < 0xA;
    }

    goto LABEL_41;
  }

  if ((v10 & 0x30) != 0)
  {
    goto LABEL_34;
  }

LABEL_40:
  v12 = 0;
  *(this + 10) = 0;
LABEL_41:
  if (*(this + 89) == 1)
  {
    if (Word)
    {
      v14 = *(this + 1);
      if (v14 >= 2 && ((v12 | ((Word[1].var0 & 0x40) >> 6)) & 1) == 0 && ((a2->var8 & 0x40) == 0 || a2->var6) && (!v4 || HIBYTE(v4[1].var0) <= 2u) && a2->var11 - 1 >= 2)
      {
        if ((v10 & 0x3E) != 0)
        {
          if (SLWordTagSet::find(&a2->var17))
          {
            goto LABEL_58;
          }

          v14 = *(this + 1);
          v9 = v135;
        }

        *(this + 6) = *(this + 2);
        *(this + 7) = v14;
        *(this + 4) = *(this + 2);
        *(this + 12) = a2;
        v15 = *(this + 88);
        if (v9 != 14)
        {
          v15 = 0;
        }

        if (var15 != 4)
        {
          v15 = 0;
        }

        *(this + 90) = v15;
      }
    }
  }

LABEL_58:
  if ((a2->var8 & 0x40) == 0)
  {
    if (!*(this + 4))
    {
      *(this + 4) = 1;
      v16 = a2;
      do
      {
        if ((v16[1].var0 & 0x40) != 0)
        {
          break;
        }

        ++*(this + 4);
        v16 = MTFEWord::NextWord(v16);
      }

      while (v16);
    }

    v17 = *(this + 5);
    if (!v17)
    {
      v17 = 1;
      *(this + 5) = 1;
      if (a2)
      {
        v18 = a2;
        do
        {
          if ((v18[1].var0 & 0x40) != 0 && BYTE6(v18[1].var4) == 31)
          {
            break;
          }

          ++*(this + 5);
          v18 = MTFEWord::NextWord(v18);
        }

        while (v18);
        v17 = *(this + 5);
      }
    }

    *(this + 8) = vaddq_s64(*(this + 8), vdupq_n_s64(1uLL));
    *(this + 24) = vaddq_s64(*(this + 24), xmmword_257B8C8E0);
    *(this + 5) = v17 - 1;
    if (var15 == 255)
    {
      v19 = 0xBu;
      if (!v4)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v19 = MTFEPlaceBoundaries::sPos2Class[var15];
      if (!v4)
      {
        goto LABEL_82;
      }
    }

    if ((v4[1].var0 & 0x40) == 0)
    {
      if (v135 == 255)
      {
        v20 = 0xBu;
      }

      else
      {
        v20 = MTFEPlaceBoundaries::sPos2Class[v135];
      }

LABEL_83:
      if (!v138 || (v138->var8 & 0x40) != 0)
      {
        v21 = 0xCu;
        if (!Word)
        {
          goto LABEL_96;
        }
      }

      else if (v134 == 255)
      {
        v21 = 0xBu;
        if (!Word)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v21 = MTFEPlaceBoundaries::sPos2Class[v134];
        if (!Word)
        {
          goto LABEL_96;
        }
      }

      if ((Word[1].var0 & 0x40) == 0)
      {
        if (v133 == 255)
        {
          v22 = 0xBu;
        }

        else
        {
          v22 = MTFEPlaceBoundaries::sPos2Class[v133];
        }

LABEL_97:
        if (!v137 || (v137->var8 & 0x40) != 0)
        {
          v23 = 0xCu;
        }

        else if (v132 == 255)
        {
          v23 = 0xBu;
        }

        else
        {
          v23 = MTFEPlaceBoundaries::sPos2Class[v132];
        }

        if (!v136 || (v136->var8 & 0x40) != 0)
        {
          v24 = 0xCu;
        }

        else if (v131 == 255)
        {
          v24 = 0xBu;
        }

        else
        {
          v24 = MTFEPlaceBoundaries::sPos2Class[v131];
        }

        v129 = MTFEPlaceBoundaries::sC2CD[v19];
        v127 = MTFEPlaceBoundaries::sC2CP[v19];
        v25 = MTFEPlaceBoundaries::sC2L2[v21];
        v130 = MTFEPlaceBoundaries::sC2LR[v20];
        v26 = MTFEPlaceBoundaries::sC2LR[v23];
        v27 = MTFEPlaceBoundaries::sC2LR[v24];
        v125 = MTFEPlaceBoundaries::sC2LR[v22];
        v126 = MTFEPlaceBoundaries::sC2RD[v22];
        v128 = MTFEPlaceBoundaries::sC2CC[v19];
        if (Word && v133 == 7)
        {
          if (LOBYTE(Word[3].var5) == 79 && BYTE1(Word[3].var5) == 70)
          {
            v28 = 0;
            v29 = BYTE2(Word[3].var5) == 0;
            goto LABEL_118;
          }
        }

        else
        {
          v29 = 0;
          v28 = 0;
          if (!Word || v133 != 15)
          {
LABEL_118:
            v124 = v28;
            if (kMTFEDebugBoundaries)
            {
              MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, byte_27F8F2B48);
              kMTFEDebugBoundaries = 0;
            }

            v30 = v27;
            v31 = v26;
            if (byte_27F8F2B48 == 1)
            {
              fprintf(*MEMORY[0x277D85DF8], "\nBnd after %s\n", a2->var27);
              v32 = byte_27F8F2B48;
              if (kMTFEDebugBoundaries)
              {
                MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                kMTFEDebugBoundaries = 0;
                v32 = byte_27F8F2B48;
              }

              if (v32)
              {
                fwrite("Bnd", 3uLL, 1uLL, *MEMORY[0x277D85DF8]);
                v33 = byte_27F8F2B48;
                if (kMTFEDebugBoundaries)
                {
                  MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                  kMTFEDebugBoundaries = 0;
                  v33 = byte_27F8F2B48;
                }

                if (v33)
                {
                  fprintf(*MEMORY[0x277D85DF8], " %s=%d", "l2", v25);
                  v34 = byte_27F8F2B48;
                  if (kMTFEDebugBoundaries)
                  {
                    MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                    kMTFEDebugBoundaries = 0;
                    v34 = byte_27F8F2B48;
                  }

                  if (v34)
                  {
                    fprintf(*MEMORY[0x277D85DF8], " %s=%d", "lp", v130);
                    v35 = byte_27F8F2B48;
                    if (kMTFEDebugBoundaries)
                    {
                      MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                      kMTFEDebugBoundaries = 0;
                      v35 = byte_27F8F2B48;
                    }

                    if (v35)
                    {
                      fprintf(*MEMORY[0x277D85DF8], " %s=%d", "cd", v129);
                      v36 = byte_27F8F2B48;
                      if (kMTFEDebugBoundaries)
                      {
                        MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                        kMTFEDebugBoundaries = 0;
                        v36 = byte_27F8F2B48;
                      }

                      if (v36)
                      {
                        fprintf(*MEMORY[0x277D85DF8], " %s=%d", "cc", v128);
                        v37 = byte_27F8F2B48;
                        if (kMTFEDebugBoundaries)
                        {
                          MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                          kMTFEDebugBoundaries = 0;
                          v37 = byte_27F8F2B48;
                        }

                        if (v37)
                        {
                          fprintf(*MEMORY[0x277D85DF8], " %s=%d", "cp", v127);
                          v38 = byte_27F8F2B48;
                          if (kMTFEDebugBoundaries)
                          {
                            MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                            kMTFEDebugBoundaries = 0;
                            v38 = byte_27F8F2B48;
                          }

                          if (v38)
                          {
                            fprintf(*MEMORY[0x277D85DF8], " %s=%d", "rd", v126);
                            v39 = byte_27F8F2B48;
                            if (kMTFEDebugBoundaries)
                            {
                              MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                              kMTFEDebugBoundaries = 0;
                              v39 = byte_27F8F2B48;
                            }

                            if (v39)
                            {
                              fprintf(*MEMORY[0x277D85DF8], " %s=%d", "rp", v125);
                              v40 = byte_27F8F2B48;
                              if (kMTFEDebugBoundaries)
                              {
                                MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                kMTFEDebugBoundaries = 0;
                                v40 = byte_27F8F2B48;
                              }

                              if (v40)
                              {
                                fprintf(*MEMORY[0x277D85DF8], " %s=%d", "r2", v26);
                                v41 = byte_27F8F2B48;
                                if (kMTFEDebugBoundaries)
                                {
                                  MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                  kMTFEDebugBoundaries = 0;
                                  v41 = byte_27F8F2B48;
                                }

                                if (v41)
                                {
                                  fprintf(*MEMORY[0x277D85DF8], " %s=%d", "r3", v27);
                                  v42 = byte_27F8F2B48;
                                  if (kMTFEDebugBoundaries)
                                  {
                                    MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                    kMTFEDebugBoundaries = 0;
                                    v42 = byte_27F8F2B48;
                                  }

                                  if (v42)
                                  {
                                    fprintf(*MEMORY[0x277D85DF8], " %s=%d", "fFromStart", *(this + 2));
                                    v43 = byte_27F8F2B48;
                                    if (kMTFEDebugBoundaries)
                                    {
                                      MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                      kMTFEDebugBoundaries = 0;
                                      v43 = byte_27F8F2B48;
                                    }

                                    if (v43)
                                    {
                                      fprintf(*MEMORY[0x277D85DF8], " %s=%d", "fFromLastSIL", *(this + 1));
                                      v44 = byte_27F8F2B48;
                                      if (kMTFEDebugBoundaries)
                                      {
                                        MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                        kMTFEDebugBoundaries = 0;
                                        v44 = byte_27F8F2B48;
                                      }

                                      if (v44)
                                      {
                                        fprintf(*MEMORY[0x277D85DF8], " %s=%d", "fFromLastBnd", *(this + 3));
                                        v45 = byte_27F8F2B48;
                                        if (kMTFEDebugBoundaries)
                                        {
                                          MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                          kMTFEDebugBoundaries = 0;
                                          v45 = byte_27F8F2B48;
                                        }

                                        if (v45)
                                        {
                                          fprintf(*MEMORY[0x277D85DF8], " %s=%d", "fToNextSIL", *(this + 4));
                                          v46 = byte_27F8F2B48;
                                          if (kMTFEDebugBoundaries)
                                          {
                                            MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                            kMTFEDebugBoundaries = 0;
                                            v46 = byte_27F8F2B48;
                                          }

                                          if (v46)
                                          {
                                            fprintf(*MEMORY[0x277D85DF8], " %s=%d", "fToNextPunct", *(this + 5));
                                            v47 = byte_27F8F2B48;
                                            if (kMTFEDebugBoundaries)
                                            {
                                              MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                              kMTFEDebugBoundaries = 0;
                                              v47 = byte_27F8F2B48;
                                            }

                                            if (v47)
                                            {
                                              fprintf(*MEMORY[0x277D85DF8], " %s=%d", "genitiveContext", v29);
                                              v48 = byte_27F8F2B48;
                                              if (kMTFEDebugBoundaries)
                                              {
                                                MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                                kMTFEDebugBoundaries = 0;
                                                v48 = byte_27F8F2B48;
                                              }

                                              if (v48)
                                              {
                                                fprintf(*MEMORY[0x277D85DF8], " %s=%d", "infinitiveContext", v124);
                                                v49 = byte_27F8F2B48;
                                                if (kMTFEDebugBoundaries)
                                                {
                                                  MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                                  kMTFEDebugBoundaries = 0;
                                                  v49 = byte_27F8F2B48;
                                                }

                                                if (v49)
                                                {
                                                  fputc(10, *MEMORY[0x277D85DF8]);
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v50 = *(this + 89);
            if (*(this + 88) == 1)
            {
              v51 = *(this + 2);
              if (kMTFEDebugBoundaries)
              {
                MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                kMTFEDebugBoundaries = 0;
                if (byte_27F8F2B48)
                {
LABEL_179:
                  fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", 1.0644, "sSilCoeffs.fIntercept");
                  v52 = kMTFEDebugBoundaries;
                  v53 = byte_27F8F2B48;
                  goto LABEL_185;
                }
              }

              else if (byte_27F8F2B48)
              {
                goto LABEL_179;
              }

              v53 = 0;
              v52 = 0;
LABEL_185:
              v57 = 1.0;
              if (!v50)
              {
                v57 = v51;
              }

              v58 = floorf(logf(v57) / 0.47);
              if (v52)
              {
                MTBEDebugParams::GetParam(v52, &byte_27F8F2B48, (v53 & 1));
                kMTFEDebugBoundaries = 0;
                v59 = v127;
                if (byte_27F8F2B48)
                {
LABEL_189:
                  fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", (v58 * 0.25655), "sSilCoeffs.fFromLastSilWrds*XFormWordCount(fromLastSIL)");
                  v60 = kMTFEDebugBoundaries;
                  v61 = byte_27F8F2B48;
                  goto LABEL_199;
                }
              }

              else
              {
                v59 = v127;
                if (v53)
                {
                  goto LABEL_189;
                }
              }

              v61 = 0;
              v60 = 0;
LABEL_199:
              v68 = ((1.0644 + 0.0) + (0.25655 * v58)) + (-0.14236 * floorf(logf(*(this + 5)) / 0.47));
              if (v60)
              {
                MTBEDebugParams::GetParam(v60, &byte_27F8F2B48, (v61 & 1));
                kMTFEDebugBoundaries = 0;
                if (byte_27F8F2B48)
                {
                  goto LABEL_201;
                }
              }

              else if (v61)
              {
LABEL_201:
                v69 = *MEMORY[0x277D85DF8];
                v70 = logf(*(this + 5));
                fprintf(v69, "Bnd %7.3f [%s]\n", (-0.14236 * floorf(v70 / 0.47)), "sSilCoeffs.fFromEndPunctWrds*XFormWordCount(fToNextPunct)");
                v71 = byte_27F8F2B48;
                v72 = v29;
                v73 = v68 + (-0.64336 * v29);
                if (kMTFEDebugBoundaries)
                {
                  MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                  kMTFEDebugBoundaries = 0;
                  v71 = byte_27F8F2B48;
                }

                v74 = v125;
                v75 = v128;
                if (v71)
                {
                  fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", (-0.64336 * v72), "sSilCoeffs.fGenitiveContextBit*genitiveContext");
                  v76 = v73 + (-0.47091 * v124);
                  if (kMTFEDebugBoundaries)
                  {
                    MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                    kMTFEDebugBoundaries = 0;
                    if (byte_27F8F2B48)
                    {
LABEL_250:
                      fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", (-0.47091 * v124), "sSilCoeffs.fInfinitiveContextBit*infinitiveContext");
                      v98 = &MTFEPlaceBoundaries::sSilCoeffs[3 * v129 + v125];
                      v100 = *(v98 + 5);
                      v99 = (v98 + 5);
                      v87 = v76 + v100;
                      if (kMTFEDebugBoundaries)
                      {
                        MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                        kMTFEDebugBoundaries = 0;
                        if (byte_27F8F2B48)
                        {
LABEL_258:
                          fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", *v99, "sSilCoeffs.fCurDet_RightPos[cd][rp]");
                          v104 = &MTFEPlaceBoundaries::sSilCoeffs[11 * v128 + v126];
                          v106 = *(v104 + 26);
                          v105 = (v104 + 26);
                          v88 = v87 + v106;
                          if (kMTFEDebugBoundaries)
                          {
                            MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                            kMTFEDebugBoundaries = 0;
                            if (byte_27F8F2B48)
                            {
LABEL_266:
                              fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", *v105, "sSilCoeffs.fCurCrs_RightDet[cc][rd]");
                              v110 = &MTFEPlaceBoundaries::sSilCoeffs[6 * v25 + 2 * v130 + v59];
                              v112 = *(v110 + 59);
                              v111 = (v110 + 59);
                              v89 = v88 + v112;
                              if (kMTFEDebugBoundaries)
                              {
                                MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                kMTFEDebugBoundaries = 0;
                                if (byte_27F8F2B48)
                                {
LABEL_274:
                                  fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", *v111, "sSilCoeffs.fLeft2Pos_LeftPos_CurPos[l2][lp][cp]");
                                  v116 = &MTFEPlaceBoundaries::sSilCoeffs[6 * v130 + 3 * v59 + v125];
                                  v90 = v89 + *(v116 + 71);
                                  if (kMTFEDebugBoundaries)
                                  {
                                    MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                    kMTFEDebugBoundaries = 0;
                                    if (byte_27F8F2B48)
                                    {
                                      goto LABEL_282;
                                    }
                                  }

                                  else if (byte_27F8F2B48)
                                  {
LABEL_282:
                                    fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", *(v116 + 71), "sSilCoeffs.fLeftPos_CurPos_RightPos[lp][cp][rp]");
                                    v118 = byte_27F8F2B48;
                                    v119 = &MTFEPlaceBoundaries::sSilCoeffs[27 * v128 + 9 * v125 + 3 * v31 + v30];
                                    v91 = v90 + *(v119 + 89);
                                    if (kMTFEDebugBoundaries)
                                    {
                                      MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                      kMTFEDebugBoundaries = 0;
                                      v118 = byte_27F8F2B48;
                                    }

                                    if (v118)
                                    {
                                      fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", *(v119 + 89), "sSilCoeffs.fCurCrs_RightPos_Right2Pos_Right3Pos[cc][rp][r2][r3]");
                                      v120 = byte_27F8F2B48;
                                      if (kMTFEDebugBoundaries)
                                      {
                                        MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                        kMTFEDebugBoundaries = 0;
                                        v120 = byte_27F8F2B48;
                                      }

                                      if (v120)
                                      {
                                        fprintf(*MEMORY[0x277D85DF8], "Bnd=%7.3f\n", v91);
                                      }
                                    }

LABEL_225:
                                    if (kMTFESilThreshold)
                                    {
                                      MTBEDebugParams::GetParam(kMTFESilThreshold, &dword_27F8F2B58, v67, *&dword_27F8F2B58);
                                      kMTFESilThreshold = 0;
                                    }

                                    if (v91 <= *&dword_27F8F2B58)
                                    {
                                      if (*(this + 89) != 1)
                                      {
                                        return;
                                      }

                                      v92 = 50.0;
LABEL_244:
                                      MTFEPlaceBoundaries::InsertBreak(this, v92);
                                      return;
                                    }

                                    goto LABEL_241;
                                  }

LABEL_224:
                                  v91 = v90 + *&MTFEPlaceBoundaries::sSilCoeffs[27 * v75 + 89 + 9 * v74 + 3 * v31 + v30];
                                  goto LABEL_225;
                                }
                              }

                              else if (byte_27F8F2B48)
                              {
                                goto LABEL_274;
                              }

LABEL_223:
                              v90 = v89 + *&MTFEPlaceBoundaries::sSilCoeffs[6 * v130 + 71 + 3 * v59 + v74];
                              goto LABEL_224;
                            }
                          }

                          else if (byte_27F8F2B48)
                          {
                            goto LABEL_266;
                          }

LABEL_222:
                          v89 = v88 + *&MTFEPlaceBoundaries::sSilCoeffs[6 * v25 + 59 + 2 * v130 + v59];
                          goto LABEL_223;
                        }
                      }

                      else if (byte_27F8F2B48)
                      {
                        goto LABEL_258;
                      }

LABEL_221:
                      v88 = v87 + *&MTFEPlaceBoundaries::sSilCoeffs[11 * v75 + 26 + v126];
                      goto LABEL_222;
                    }
                  }

                  else if (byte_27F8F2B48)
                  {
                    goto LABEL_250;
                  }

LABEL_220:
                  v87 = v76 + *&MTFEPlaceBoundaries::sSilCoeffs[3 * v129 + 5 + v74];
                  goto LABEL_221;
                }

LABEL_219:
                v76 = v73 + (-0.47091 * v124);
                goto LABEL_220;
              }

              v73 = v68 + (-0.64336 * v29);
              v74 = v125;
              v75 = v128;
              goto LABEL_219;
            }

            v54 = *(this + 6);
            if (kMTFEDebugBoundaries)
            {
              MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
              kMTFEDebugBoundaries = 0;
              if (byte_27F8F2B48)
              {
LABEL_182:
                fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", 1.5773, "sPhrCoeffs.fIntercept");
                v55 = kMTFEDebugBoundaries;
                v56 = byte_27F8F2B48;
                goto LABEL_192;
              }
            }

            else if (byte_27F8F2B48)
            {
              goto LABEL_182;
            }

            v56 = 0;
            v55 = 0;
LABEL_192:
            v62 = 1.0;
            if (!v50)
            {
              v62 = v54;
            }

            v63 = floorf(logf(v62) / 0.47);
            if (v55)
            {
              MTBEDebugParams::GetParam(v55, &byte_27F8F2B48, (v56 & 1));
              kMTFEDebugBoundaries = 0;
              v64 = v127;
              if (byte_27F8F2B48)
              {
LABEL_196:
                fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", (v63 * 0.22623), "sPhrCoeffs.fFromLastBndWrds*XFormWordCount(fromLastBnd)");
                v65 = kMTFEDebugBoundaries;
                v66 = byte_27F8F2B48;
                goto LABEL_209;
              }
            }

            else
            {
              v64 = v127;
              if (v56)
              {
                goto LABEL_196;
              }
            }

            v66 = 0;
            v65 = 0;
LABEL_209:
            v78 = ((1.5773 + 0.0) + (0.22623 * v63)) + (-0.0552 * floorf(logf(*(this + 4)) / 0.47));
            if (v65)
            {
              MTBEDebugParams::GetParam(v65, &byte_27F8F2B48, (v66 & 1));
              kMTFEDebugBoundaries = 0;
              if (byte_27F8F2B48)
              {
                goto LABEL_211;
              }
            }

            else if (v66)
            {
LABEL_211:
              v79 = *MEMORY[0x277D85DF8];
              v80 = logf(*(this + 4));
              fprintf(v79, "Bnd %7.3f [%s]\n", (-0.0552 * floorf(v80 / 0.47)), "sPhrCoeffs.fFromEndSilWrds*XFormWordCount(fToNextSIL)");
              v81 = byte_27F8F2B48;
              v82 = v29;
              v83 = v78 + (-0.24608 * v29);
              if (kMTFEDebugBoundaries)
              {
                MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                kMTFEDebugBoundaries = 0;
                v81 = byte_27F8F2B48;
              }

              v84 = v125;
              v85 = v128;
              if (v81)
              {
                fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", (-0.24608 * v82), "sPhrCoeffs.fGenitiveContextBit*genitiveContext");
                v86 = v83 + (-0.01337 * v124);
                if (kMTFEDebugBoundaries)
                {
                  MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                  kMTFEDebugBoundaries = 0;
                  if (byte_27F8F2B48)
                  {
LABEL_254:
                    fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", (-0.01337 * v124), "sPhrCoeffs.fInfinitiveContextBit*infinitiveContext");
                    v101 = &MTFEPlaceBoundaries::sPhrCoeffs[3 * v129 + v125];
                    v103 = *(v101 + 5);
                    v102 = (v101 + 5);
                    v93 = v86 + v103;
                    if (kMTFEDebugBoundaries)
                    {
                      MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                      kMTFEDebugBoundaries = 0;
                      if (byte_27F8F2B48)
                      {
LABEL_262:
                        fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", *v102, "sPhrCoeffs.fCurDet_RightPos[cd][rp]");
                        v107 = &MTFEPlaceBoundaries::sPhrCoeffs[11 * v128 + v126];
                        v109 = *(v107 + 26);
                        v108 = (v107 + 26);
                        v94 = v93 + v109;
                        if (kMTFEDebugBoundaries)
                        {
                          MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                          kMTFEDebugBoundaries = 0;
                          if (byte_27F8F2B48)
                          {
LABEL_270:
                            fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", *v108, "sPhrCoeffs.fCurCrs_RightDet[cc][rd]");
                            v113 = &MTFEPlaceBoundaries::sPhrCoeffs[6 * v25 + 2 * v130 + v64];
                            v115 = *(v113 + 59);
                            v114 = (v113 + 59);
                            v95 = v94 + v115;
                            if (kMTFEDebugBoundaries)
                            {
                              MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                              kMTFEDebugBoundaries = 0;
                              if (byte_27F8F2B48)
                              {
LABEL_278:
                                fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", *v114, "sPhrCoeffs.fLeft2Pos_LeftPos_CurPos[l2][lp][cp]");
                                v117 = &MTFEPlaceBoundaries::sPhrCoeffs[6 * v130 + 3 * v64 + v125];
                                v96 = v95 + *(v117 + 71);
                                if (kMTFEDebugBoundaries)
                                {
                                  MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                  kMTFEDebugBoundaries = 0;
                                  if (byte_27F8F2B48)
                                  {
                                    goto LABEL_290;
                                  }
                                }

                                else if (byte_27F8F2B48)
                                {
LABEL_290:
                                  fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", *(v117 + 71), "sPhrCoeffs.fLeftPos_CurPos_RightPos[lp][cp][rp]");
                                  v121 = byte_27F8F2B48;
                                  v122 = &MTFEPlaceBoundaries::sPhrCoeffs[27 * v128 + 9 * v125 + 3 * v31 + v30];
                                  v97 = v96 + *(v122 + 89);
                                  if (kMTFEDebugBoundaries)
                                  {
                                    MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                    kMTFEDebugBoundaries = 0;
                                    v121 = byte_27F8F2B48;
                                  }

                                  if (v121)
                                  {
                                    fprintf(*MEMORY[0x277D85DF8], "Bnd %7.3f [%s]\n", *(v122 + 89), "sPhrCoeffs.fCurCrs_RightPos_Right2Pos_Right3Pos[cc][rp][r2][r3]");
                                    v123 = byte_27F8F2B48;
                                    if (kMTFEDebugBoundaries)
                                    {
                                      MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, (byte_27F8F2B48 & 1));
                                      kMTFEDebugBoundaries = 0;
                                      v123 = byte_27F8F2B48;
                                    }

                                    if (v123)
                                    {
                                      fprintf(*MEMORY[0x277D85DF8], "Bnd=%7.3f\n", v97);
                                    }
                                  }

LABEL_238:
                                  if (kMTFEPhrThreshold)
                                  {
                                    MTBEDebugParams::GetParam(kMTFEPhrThreshold, &dword_27F8F2B68, v77, *&dword_27F8F2B68);
                                    kMTFEPhrThreshold = 0;
                                  }

                                  if (v97 <= *&dword_27F8F2B68)
                                  {
                                    if (*(this + 89) != 1)
                                    {
                                      return;
                                    }

                                    v92 = 0.0;
                                    goto LABEL_244;
                                  }

LABEL_241:
                                  *(this + 89) = 1;
                                  return;
                                }

LABEL_237:
                                v97 = v96 + *&MTFEPlaceBoundaries::sPhrCoeffs[27 * v85 + 89 + 9 * v84 + 3 * v31 + v30];
                                goto LABEL_238;
                              }
                            }

                            else if (byte_27F8F2B48)
                            {
                              goto LABEL_278;
                            }

LABEL_236:
                            v96 = v95 + *&MTFEPlaceBoundaries::sPhrCoeffs[6 * v130 + 71 + 3 * v64 + v84];
                            goto LABEL_237;
                          }
                        }

                        else if (byte_27F8F2B48)
                        {
                          goto LABEL_270;
                        }

LABEL_235:
                        v95 = v94 + *&MTFEPlaceBoundaries::sPhrCoeffs[6 * v25 + 59 + 2 * v130 + v64];
                        goto LABEL_236;
                      }
                    }

                    else if (byte_27F8F2B48)
                    {
                      goto LABEL_262;
                    }

LABEL_234:
                    v94 = v93 + *&MTFEPlaceBoundaries::sPhrCoeffs[11 * v85 + 26 + v126];
                    goto LABEL_235;
                  }
                }

                else if (byte_27F8F2B48)
                {
                  goto LABEL_254;
                }

LABEL_233:
                v93 = v86 + *&MTFEPlaceBoundaries::sPhrCoeffs[3 * v129 + 5 + v84];
                goto LABEL_234;
              }

LABEL_232:
              v86 = v83 + (-0.01337 * v124);
              goto LABEL_233;
            }

            v83 = v78 + (-0.24608 * v29);
            v84 = v125;
            v85 = v128;
            goto LABEL_232;
          }

          if (LOBYTE(Word[3].var5) == 84 && BYTE1(Word[3].var5) == 79)
          {
            v29 = 0;
            v28 = BYTE2(Word[3].var5) == 0;
            goto LABEL_118;
          }
        }

        v29 = 0;
        v28 = 0;
        goto LABEL_118;
      }

LABEL_96:
      v22 = 0xCu;
      goto LABEL_97;
    }

LABEL_82:
    v20 = 0xCu;
    goto LABEL_83;
  }

  if (Word && *(this + 89) == 1)
  {
    MTFEPlaceBoundaries::InsertBreak(this, 0.0);
  }

  *(this + 89) = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  if (var15 == 31)
  {
    *(this + 5) = 0;
  }
}

void MTFEPlaceBoundaries::InsertBreak(MTFEPlaceBoundaries *this, float a2)
{
  if (*(this + 12))
  {
    if (kMTFEDebugBoundaries)
    {
      MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, byte_27F8F2B48);
      kMTFEDebugBoundaries = 0;
    }

    if (byte_27F8F2B48 == 1)
    {
    }

    if (a2 != 0.0 && *(this + 90) == 1)
    {
      *(*(this + 13) + 81) = 3;
    }

    operator new();
  }

  if (kMTFEDebugBoundaries)
  {
    MTBEDebugParams::GetParam(kMTFEDebugBoundaries, &byte_27F8F2B48, byte_27F8F2B48);
    kMTFEDebugBoundaries = 0;
  }

  if (byte_27F8F2B48 == 1)
  {
    fwrite("\nNo suitable location found for break.\n", 0x27uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  *(this + 89) = 0;
}

void MTFEPlaceBoundaries::~MTFEPlaceBoundaries(MTFEPlaceBoundaries *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MEOWPPReader::MEOWPPReader(MEOWPPReader *this, MEOWReader *a2, int a3, unsigned int a4)
{
  v4 = *(*(a2 + 3808) + 12 * a3 + 4);
  v5 = *(a2 + 3809) + bswap32(*(*(a2 + 3808) + 12 * a3 + 8)) + 8 * a4;
  *this = &unk_2868F89B8;
  *(this + 1) = v5;
  *(this + 3) = *(a2 + 3810) + bswap32(v4);
  *(this + 4) = bswap32(*(v5 + 4));
  LOWORD(v4) = *v5 != 0;
  *(this + 20) = *v5 == 0;
  *(this + 11) = v4 << 15;
}

uint64_t MEOWPPReader::SegmentEnd(MEOWPPReader *this)
{
  v1 = *(this + 1);
  v2 = bswap32(*(v1 + 10)) >> 16;
  v3 = v2 > bswap32(*(v1 + 2)) >> 16;
  v4 = 1000000;
  if (v3)
  {
    v4 = v2;
  }

  return *(this + 3) + v4;
}

uint64_t MEOWPPReader::FindSegment(MEOWPPReader *this, unint64_t a2)
{
  v2 = 1000000;
  v3 = *(this + 1);
  v4 = bswap32(v3[5]) >> 16;
  v5 = *(this + 3);
  if (v4 > bswap32(v3[1]) >> 16)
  {
    while (v5 + v4 <= a2)
    {
      v6 = v3 + 4;
      *(this + 1) = v3 + 4;
      v4 = bswap32(v3[9]) >> 16;
      v7 = v4 > bswap32(v3[5]) >> 16;
      v3 += 4;
      if (!v7)
      {
        v3 = v6;
        goto LABEL_6;
      }
    }

    v2 = v4;
  }

LABEL_6:
  v8 = *v3;
  v9 = v8 == 0;
  v10 = v8 != 0;
  v11 = v9;
  *(this + 20) = v11;
  *(this + 11) = v10 << 15;
  return v5 + v2;
}

void MEOWFlatPPReader::MEOWFlatPPReader(MEOWFlatPPReader *this, MEOWReader *a2, int a3, unsigned int a4)
{
  v4 = *(*(a2 + 3808) + 12 * a3 + 4);
  v5 = *(a2 + 3809) + bswap32(*(*(a2 + 3808) + 12 * a3 + 8)) + 8 * a4;
  *(this + 1) = v5;
  v6 = *(a2 + 3810) + bswap32(v4);
  *(this + 3) = v6;
  *(this + 4) = bswap32(*(v5 + 4));
  v7 = *v5 != 0;
  *(this + 20) = *v5 == 0;
  *(this + 11) = v7 << 15;
  *this = &unk_2868F8A10;
  v8 = bswap32(*(v5 + 2));
  v9 = bswap32(*(v5 + 10)) >> 16;
  if (v9 <= HIWORD(v8))
  {
    v9 = 1000000;
  }

  *(this + 4) = v6 + HIWORD(v8);
  *(this + 5) = v6 + v9;
}

void *MEOWFlatPPReader::Skip(void *this, int a2)
{
  v2 = this[5];
  v3 = this[4] + 2 * a2;
  this[4] = v3;
  if (v3 >= v2)
  {
    v4 = this;
    this = MEOWPPReader::FindSegment(this, v3);
    v4[5] = this;
  }

  return this;
}

uint64_t MEOWFlatPPReader::Advance(uint64_t this, int a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (a2 >= 1)
  {
    v5 = *(this + 16);
    v6 = 2 * (a2 - 1);
    v7 = a2 + 1;
    v8 = *(this + 32);
    do
    {
      v9 = *v8++;
      v5 += bswap32(v9) >> 16;
      --v7;
    }

    while (v7 > 1);
    v4 += v6 + 2;
    *(this + 16) = v5;
  }

  *(this + 32) = v4;
  if (v4 >= *(this + 40))
  {
    this = MEOWPPReader::FindSegment(this, v4);
    *(v3 + 40) = this;
  }

  return this;
}

uint64_t MEOWFlatPPReader::Copy(uint64_t result, int a2, MEOWVectorBase *this)
{
  if (a2 >= 1)
  {
    v4 = result;
    v5 = a2 + 1;
    do
    {
      v6 = *(v4 + 32);
      v7 = *v6;
      *(v4 + 32) = v6 + 1;
      LODWORD(v6) = bswap32(v7);
      *(v4 + 16) += v6 >> 16;
      v8 = *(v4 + 22) | (v6 >> 16);
      result = MEOWVectorBase::Append(this);
      *(*this + 2 * *(this + 2) - 2) = v8;
      v9 = *(v4 + 32);
      if (v9 >= *(v4 + 40))
      {
        result = MEOWPPReader::FindSegment(v4, v9);
        *(v4 + 40) = result;
      }

      --v5;
    }

    while (v5 > 1);
  }

  return result;
}

uint64_t MEOWFlatPPReader::CopyTill(uint64_t result, unint64_t a2, MEOWVectorBase *this)
{
  v4 = *(result + 32);
  if (v4 < a2)
  {
    v6 = result;
    do
    {
      v8 = *v4;
      v7 = v8;
      *(v6 + 32) = v4 + 1;
      if (!v8)
      {
        break;
      }

      v9 = bswap32(v7);
      *(v6 + 16) += HIWORD(v9);
      v10 = *(v6 + 22) | HIWORD(v9);
      result = MEOWVectorBase::Append(this);
      *(*this + 2 * *(this + 2) - 2) = v10;
      v4 = *(v6 + 32);
      if (v4 >= *(v6 + 40))
      {
        result = MEOWPPReader::FindSegment(v6, v4);
        *(v6 + 40) = result;
        v4 = *(v6 + 32);
      }
    }

    while (v4 < a2);
  }

  return result;
}

uint64_t MEOWFlatPPReader::CopyLeftContext(uint64_t a1, MEOWVectorBase *this)
{
  if (*(a1 + 20) == 1 && (v4 = *(a1 + 32), v4 - *(a1 + 24) - (bswap32(*(*(a1 + 8) + 2)) >> 16) >= 5))
  {
    v5 = bswap32(*(v4 - 6)) >> 16;
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v5;
    v6 = bswap32(*(*(a1 + 32) - 4)) >> 16;
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v6;
    v7 = bswap32(*(*(a1 + 32) - 2)) >> 16;
    MEOWVectorBase::Append(this);
    result = 1;
  }

  else
  {
    MEOWVectorBase::Append(this);
    result = 0;
    LOWORD(v7) = -32438;
  }

  *(*this + 2 * *(this + 2) - 2) = v7;
  return result;
}

uint64_t MEOWFlatPPReader::CopyRightContext(uint64_t a1, MEOWVectorBase *this)
{
  if (*(a1 + 20) != 1)
  {
    goto LABEL_9;
  }

  v3 = *(this + 2);
  if (v3 < 3)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 32);
  if ((*(a1 + 40) - v5) < 5)
  {
    goto LABEL_9;
  }

  v6 = *this + 2 * v3;
  v7 = (v6 - 6);
  if (v6 < 6)
  {
    goto LABEL_8;
  }

  LOWORD(v8) = 0;
  do
  {
    v9 = *v7++;
    v8 = (v9 | v8);
  }

  while (v7 < v6);
  if (v8 < 0)
  {
LABEL_9:
    MEOWVectorBase::Append(this);
    result = 0;
    LOWORD(v12) = -32438;
  }

  else
  {
LABEL_8:
    v10 = bswap32(*v5) >> 16;
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v10;
    v11 = bswap32(*(*(a1 + 32) + 2)) >> 16;
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v11;
    v12 = bswap32(*(*(a1 + 32) + 4)) >> 16;
    MEOWVectorBase::Append(this);
    result = 1;
  }

  *(*this + 2 * *(this + 2) - 2) = v12;
  return result;
}

void MEOWEncodedPPReader::MEOWEncodedPPReader(MEOWEncodedPPReader *this, MEOWReader *a2, int a3, unsigned int a4)
{
  v4 = *(*(a2 + 3808) + 12 * a3 + 4);
  v5 = *(a2 + 3809) + bswap32(*(*(a2 + 3808) + 12 * a3 + 8)) + 8 * a4;
  *(this + 1) = v5;
  v6 = *(a2 + 3810) + bswap32(v4);
  *(this + 3) = v6;
  *(this + 4) = bswap32(*(v5 + 4));
  v7 = *v5 != 0;
  *(this + 20) = *v5 == 0;
  *(this + 11) = v7 << 15;
  *this = &unk_2868F8A68;
  v8 = bswap32(*(v5 + 2));
  v9 = bswap32(*(v5 + 10)) >> 16;
  if (v9 <= HIWORD(v8))
  {
    v9 = 1000000;
  }

  *(this + 4) = v6 + HIWORD(v8);
  *(this + 5) = v6 + v9;
}

void *MEOWEncodedPPReader::Skip(void *this, int a2)
{
  v3 = this;
  v4 = this[4];
  if (a2 >= 1)
  {
    do
    {
      v5 = (v4 + 1);
      do
      {
        this[4] = v5;
        v6 = *v5++;
      }

      while (v6 < 0);
      v4 = (v5 - 1);
      v7 = __OFSUB__(a2--, 1);
    }

    while (!((a2 < 0) ^ v7 | (a2 == 0)));
  }

  if (v4 >= this[5])
  {
    this = MEOWPPReader::FindSegment(this, v4);
    v3[5] = this;
  }

  return this;
}

uint64_t MEOWEncodedPPReader::Advance(uint64_t this, int a2)
{
  v2 = this;
  if (a2 <= 0)
  {
    v3 = *(this + 32);
  }

  else
  {
    v3 = *(this + 32);
    v4 = *(this + 16);
    do
    {
      v5 = 0;
      v6 = (v3 + 1);
      do
      {
        *(this + 32) = v6;
        v7 = *(v6 - 1) & 0x7F | (v5 << 7);
        v8 = *v6++;
        v5 = v7;
      }

      while (v8 < 0);
      v3 = (v6 - 1);
      v4 += v7;
      *(this + 16) = v4;
      v9 = __OFSUB__(a2--, 1);
    }

    while (!((a2 < 0) ^ v9 | (a2 == 0)));
  }

  if (v3 >= *(this + 40))
  {
    this = MEOWPPReader::FindSegment(this, v3);
    *(v2 + 40) = this;
  }

  return this;
}

uint64_t MEOWEncodedPPReader::Copy(uint64_t result, int a2, MEOWVectorBase *this)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = 0;
      v7 = (*(v5 + 32) + 1);
      do
      {
        *(v5 + 32) = v7;
        v8 = *(v7 - 1) & 0x7F | (v6 << 7);
        v9 = *v7++;
        v6 = v8;
      }

      while (v9 < 0);
      *(v5 + 16) += v8;
      v10 = *(v5 + 22) | v8;
      result = MEOWVectorBase::Append(this);
      *(*this + 2 * *(this + 2) - 2) = v10;
      v11 = *(v5 + 32);
      if (v11 >= *(v5 + 40))
      {
        result = MEOWPPReader::FindSegment(v5, v11);
        *(v5 + 40) = result;
      }
    }

    while (v4-- > 1);
  }

  return result;
}

uint64_t MEOWEncodedPPReader::CopyTill(uint64_t result, unint64_t a2, MEOWVectorBase *this)
{
  v4 = *(result + 32);
  if (v4 < a2)
  {
    v6 = result;
    v7 = 0;
    do
    {
      do
      {
        *(v6 + 32) = v4 + 1;
        v8 = *v4 & 0x7F | (v7 << 7);
        v9 = *++v4;
        v7 = v8;
      }

      while (v9 < 0);
      if (!v8)
      {
        break;
      }

      *(v6 + 16) += v8;
      v10 = *(v6 + 22) | v8;
      result = MEOWVectorBase::Append(this);
      *(*this + 2 * *(this + 2) - 2) = v10;
      v4 = *(v6 + 32);
      if (v4 >= *(v6 + 40))
      {
        result = MEOWPPReader::FindSegment(v6, v4);
        *(v6 + 40) = result;
        v4 = *(v6 + 32);
      }

      v7 = 0;
    }

    while (v4 < a2);
  }

  return result;
}

uint64_t MEOWEncodedPPReader::CopyLeftContext(uint64_t a1, MEOWVectorBase *this)
{
  if (*(a1 + 20) != 1)
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 24) + (bswap32(*(*(a1 + 8) + 2)) >> 16);
  if ((v3 - v4) < 3)
  {
    goto LABEL_10;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *--v3;
    v5 |= (v7 & 0x7F) << v6;
    v6 += 7;
  }

  while (v7 < 0);
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *--v3;
    v8 |= (v10 & 0x7F) << v9;
    v9 += 7;
  }

  while (v10 < 0);
  v11 = 0;
  v12 = 0;
  do
  {
    v13 = *--v3;
    v11 |= (v13 & 0x7F) << v12;
    v12 += 7;
  }

  while (v13 < 0);
  if (v3 >= v4)
  {
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v11;
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v8;
    MEOWVectorBase::Append(this);
    result = 1;
  }

  else
  {
LABEL_10:
    MEOWVectorBase::Append(this);
    result = 0;
    LOWORD(v5) = -32438;
  }

  *(*this + 2 * *(this + 2) - 2) = v5;
  return result;
}

uint64_t MEOWEncodedPPReader::CopyRightContext(uint64_t a1, MEOWVectorBase *this)
{
  if (*(a1 + 20) != 1)
  {
    goto LABEL_17;
  }

  v3 = *(this + 2);
  if (v3 < 3)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 8);
  v5 = bswap32(*(v4 + 10)) >> 16;
  if (v5 <= bswap32(*(v4 + 2)) >> 16)
  {
    v5 = 1000000;
  }

  v6 = *(a1 + 32);
  if (*(a1 + 24) + v5 - v6 < 3)
  {
    goto LABEL_17;
  }

  v7 = *this + 2 * v3;
  v8 = (v7 - 6);
  if (v7 >= 6)
  {
    LOWORD(v9) = 0;
    do
    {
      v10 = *v8++;
      v9 = (v10 | v9);
    }

    while (v8 < v7);
    if (v9 < 0)
    {
      goto LABEL_17;
    }
  }

  v11 = 0;
  v12 = *v6;
  do
  {
    v13 = *++v6;
    v11 = v12 & 0x7F | (v11 << 7);
    v12 = v13;
  }

  while (v13 < 0);
  v14 = 0;
  do
  {
    v15 = *++v6;
    v14 = v12 & 0x7F | (v14 << 7);
    v12 = v15;
  }

  while (v15 < 0);
  v16 = 0;
  do
  {
    v17 = *++v6;
    v16 = v12 & 0x7F | (v16 << 7);
    v12 = v17;
  }

  while (v17 < 0);
  if (v6 <= *(a1 + 40))
  {
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v11;
    MEOWVectorBase::Append(this);
    *(*this + 2 * *(this + 2) - 2) = v14;
    MEOWVectorBase::Append(this);
    result = 1;
  }

  else
  {
LABEL_17:
    MEOWVectorBase::Append(this);
    result = 0;
    v16 = -32438;
  }

  *(*this + 2 * *(this + 2) - 2) = v16;
  return result;
}

void MTMBUnitInstructions::MTMBUnitInstructions(MTMBUnitInstructions *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

void MTMBUnitInstructions::~MTMBUnitInstructions(MTMBUnitInstructions *this)
{
  v2 = *this;
  if (v2)
  {
    do
    {
      v3 = *v2;
      MEMORY[0x259C6DA90]();
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    do
    {
      v5 = *v4;
      MEMORY[0x259C6DA90]();
      v4 = v5;
    }

    while (v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    do
    {
      v7 = *v6;
      MEMORY[0x259C6DA90]();
      v6 = v7;
    }

    while (v7);
  }
}

void MTMBUnitInstructions::DeleteQueue(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      MEMORY[0x259C6DA90]();
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t ***MTMBUnitInstructions::AddCommand(uint64_t ***this, MTFECommand *a2)
{
  var8 = a2->var8;
  switch(var8)
  {
    case 0x6D666F72uLL:
LABEL_6:
      var9_low = LODWORD(a2->var9);
      MTMBUnitInstructions::AddToQueue(this, this, HIWORD(LODWORD(a2->var9)) & 0x7FFF);
    case 0x6D766574uLL:
      ++this;
      goto LABEL_6;
    case 0x6D6F7672uLL:
      this += 2;
      goto LABEL_6;
  }

  return this;
}

void MTMBUnitInstructions::AddToQueue(uint64_t a1, uint64_t ***a2, unsigned __int16 a3)
{
  for (i = *a2; i; *a2 = i)
  {
    v5 = *(i + 4);
    if (v5 > a3)
    {
      break;
    }

    a3 -= v5;
    i = *i;
  }

  operator new();
}

uint64_t *MTMBUnitInstructions::NextSlice(uint64_t **this)
{
  v2 = MTMBUnitInstructions::AdvanceQueue(this, this);
  v3 = MTMBUnitInstructions::AdvanceQueue(v2, this + 2);

  return MTMBUnitInstructions::AdvanceQueue(v3, this + 1);
}

uint64_t *MTMBUnitInstructions::AdvanceQueue(uint64_t a1, uint64_t **a2)
{
  result = *a2;
  if (*a2)
  {
    while (!*(result + 4))
    {
      v4 = *result;
      MEMORY[0x259C6DA90]();
      *a2 = v4;
      result = v4;
      if (!v4)
      {
        return result;
      }
    }

    --*(result + 4);
  }

  return result;
}

uint64_t MTMBUnitInstructions::ReadyInQueue(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  result = *a2;
  if (*a2)
  {
    if (*(result + 8))
    {
      return 0;
    }

    else
    {
      v5 = *result;
      *a3 = *(result + 10);
      MEMORY[0x259C6DA90]();
      *a2 = v5;
      return 1;
    }
  }

  return result;
}

MTFESpeechElement *MTFEQuestionPhrasing::VisitSentence(MTFEQuestionPhrasing *this, MTFESpeechElement *a2)
{
  *(this + 1) = a2;
  *(this + 17) = 1;
  return MTFESpeechElement::VisitChildren(a2, this);
}

MTFESpeechElement *MTFEQuestionPhrasing::VisitIntonationalPhrase(MTFEQuestionPhrasing *this, MTFESpeechElement *a2)
{
  *(this + 19) = BYTE4(a2[2].var6) != 0;
  if (*(this + 17) == 1)
  {
    *(this + 16) = 1;
    *(this + 20) = 0;
  }

  *(this + 18) = 0;
  result = MTFESpeechElement::VisitChildren(a2, this);
  *(this + 17) = *(this + 18);
  return result;
}

unsigned __int8 *MTFEQuestionPhrasing::VisitWord(MTFEQuestionPhrasing *this, MTFEWord *a2)
{
  var15 = a2->var15;
  result = a2->var6;
  if (result)
  {
    v6 = **result;
    if (result)
    {
      v7 = 1 << var15;
      if (var15 == 255)
      {
        LOWORD(v7) = 0;
      }

      v8 = var15 == 31 || result[86] == 31;
      if (!v8 && *(this + 17) == 1)
      {
        var7 = a2->var7;
        if (var7)
        {
          if (var7->var7 || *(this + 20) != 1 || (v7 & 0x1400) == 0)
          {
            return result;
          }

LABEL_27:
          *(this + 16) = 0;
          return result;
        }

        if (var15 == 12)
        {
          goto LABEL_27;
        }

        if ((v7 & 0x480) != 0)
        {
          *(this + 20) = 1;
        }
      }
    }
  }

  else if (var15 == 31)
  {
    result = a2->var3;
    {
      v11 = result[58];
    }

    else
    {
      v11 = 70;
    }

    if ((*(this + 16) & 1) == 0 && (*(this + 19) & 1) == 0 && v11 == 71)
    {
      result[58] = 70;
      a2->var11 = 6;
      *(*(this + 1) + 56) |= 0x20u;
    }

    *(this + 18) = v11 == 69;
  }

  return result;
}

void MTFEQuestionPhrasing::~MTFEQuestionPhrasing(MTFEQuestionPhrasing *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

MTFESpeechElement *MTFEMelodize::VisitIntonationalPhrase(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  var6 = a2[3].var6;
  *&this->var1 = var6;
  if (var6)
  {
    LOWORD(this->var3) = 0;
    HIDWORD(this->var3) = 0;
    LODWORD(this->var4) = 0;
    return MTFESpeechElement::VisitChildren(a2, this);
  }

  return this;
}

MTFESpeechElement *MTFEMelodize::VisitWord(MTFESpeechElement *this, MTFESpeechElement *a2)
{
  if ((a2[1].var0 & 0x40) == 0)
  {
    v3 = this;
    *(&this->var4 + 1) = *(&a2[3].var2 + 1);
    var3_low = SLOWORD(this->var3);
    if (SWORD2(a2[1].var0) > var3_low && var3_low != 0)
    {
      if (var3_low >= 1)
      {
        do
        {
          v6 = MTFEMelody::Pitch(*(v3 + 8), var3_low - 1);
          LOWORD(var3_low) = *(v3 + 16);
          if (v6 != 0.0)
          {
            break;
          }

          v7 = var3_low - 1;
          var3_low = (var3_low - 1);
          *(v3 + 16) = v7;
        }

        while (var3_low > 0);
      }

      v8 = *(v3 + 24) + var3_low;
      v9 = *(v3 + 20) - v8;
      MTFEMelody::SplitNote(*(v3 + 8), v8 - 1, v9 + 1);
      *(v3 + 24) += v9;
    }

    v10 = *(v3 + 20);
    v11 = *(v3 + 8);
    if (*(v11 + 16) > v10 && MTFEMelody::Pitch(v11, v10) == 0.0)
    {
      MTFEMelody::DurationFrames(*(v3 + 8), *(v3 + 20), *(v3 + 28));
      operator new();
    }

    v12 = WORD2(a2[1].var0);
    *(v3 + 16) = v12;
    WORD2(a2[1].var0) = v12 + *(v3 + 24);

    return MTFESpeechElement::VisitChildren(a2, v3);
  }

  return this;
}

void MTFEMelodize::VisitSyllable(MTFEMelodize *this, MTFESyllable *a2)
{
  v3 = *(this + 5);
  v4 = *(this + 1);
  v5 = v3;
  if (*(v4 + 16) > v3)
  {
    v6 = MTFEMelody::Pitch(v4, v3);
    v5 = *(this + 5);
    if (v6 == 0.0)
    {
      MTFEMelody::DurationFrames(*(this + 1), v5, *(this + 7));
      operator new();
    }
  }

  *(this + 5) = v5 + 1;
}

void MTFEMelodize::~MTFEMelodize(MTFEMelodize *this)
{
  MTFESpeechVisitor::~MTFESpeechVisitor(this);

  JUMPOUT(0x259C6DA90);
}

void MTFEMelody::MTFEMelody(MTFEMelody *this)
{
  MEOWVectorBase::MEOWVectorBase(this, 4);
  *(v1 + 32) = xmmword_257B96290;
  *(v1 + 48) = 0x100000000;
  *(v1 + 56) = 0;
}

{
  MEOWVectorBase::MEOWVectorBase(this, 4);
  *(v1 + 32) = xmmword_257B96290;
  *(v1 + 48) = 0x100000000;
  *(v1 + 56) = 0;
}

MTFEMelody *MTFEMelody::SetSwing(MTFEMelody *this, unsigned int a2)
{
  if (a2 == -65536)
  {
    v4 = -65536;
  }

  else
  {
    v2 = a2;
    v3 = a2 + 0x10000;
    do
    {
      v4 = v3;
      v3 = v2 % v3;
      v2 = v4;
    }

    while (v3);
  }

  v5 = 2 * (a2 / v4);
  v6 = (a2 + 0x10000) / v4;
  v7 = v5 - v6;
  v8 = 2 * v6;
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      v11 = v10;
      v10 = v9 % v10;
      v9 = v11;
    }

    while (v10);
  }

  else
  {
    v11 = v7;
  }

  *(this + 8) = v7 / v11;
  *(this + 9) = v8 / v11;
  return this;
}

unsigned __int8 *MTFEMelody::AddNotes(MTFEMelody *this, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  result = CFDataGetBytePtr(theData);
  if ((Length + 2) >= 5)
  {
    v6 = result;
    v7 = 0;
    if ((Length / 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = Length / 3;
    }

    do
    {
      if (*v6)
      {
        v9 = (*v6 + *(this + 56)) << 24;
      }

      else
      {
        v9 = 0;
      }

      v10 = v6[1];
      v11 = (4 * v10);
      v12 = v6[2];
      v13 = *(this + 10);
      if (v13)
      {
        v14 = 8 * v10;
        if (v13 < 1 || v14 >= v12)
        {
          v16 = *(this + 11);
          v17 = v16 * v11 - v13 * v12;
          v18 = v16 * v12;
          if (v18)
          {
            v19 = v17;
            v20 = v18;
            do
            {
              v21 = v20;
              v20 = v19 % v20;
              v19 = v21;
            }

            while (v20);
          }

          else
          {
            v21 = v17;
          }

          v11 = v17 / v21;
          v12 = v18 / v21;
        }

        else
        {
          v22 = *this + 4 * *(this + 2);
          v23 = *(this + 11);
          v24 = ((*(v22 - 4) >> 12) & 0xFFF) * v23 - (*(v22 - 4) & 0xFFF) * v13;
          v25 = (*(v22 - 4) & 0xFFF) * v23;
          if (v25)
          {
            v26 = v24;
            v27 = v25;
            do
            {
              v28 = v27;
              v27 = v26 % v27;
              v26 = v28;
            }

            while (v27);
          }

          else
          {
            v28 = v24;
          }

          *(v22 - 4) = *(v22 - 4) & 0xFF000000 | ((v24 / v28) << 12) | (v25 / v28);
        }
      }

      add(v11, v12, this + 12, this + 13);
      v29 = *(this + 8);
      if (v29 && *(this + 13) == 2)
      {
        v30 = *(this + 9);
        if (v30 * v12)
        {
          v31 = v29 * v12 + v30 * v11;
          v32 = v30 * v12;
          do
          {
            v33 = v32;
            v32 = v31 % v32;
            v31 = v33;
          }

          while (v32);
        }

        else
        {
          v33 = v29 * v12 + v30 * v11;
        }

        v37 = (v29 * v12 + v30 * v11) / v33;
        v38 = v30 * v12 / v33;
        add(v29, v30, this + 12, this + 13);
        *(this + 5) = *(this + 4);
      }

      else
      {
        *(this + 10) = 0;
        v34 = v11;
        if (v12)
        {
          v35 = v11;
          v36 = v12;
          do
          {
            v34 = v36;
            v36 = v35 % v36;
            v35 = v34;
          }

          while (v36);
        }

        v37 = v11 / v34;
        v38 = v12 / v34;
      }

      v6 += 3;
      result = MEOWVectorBase::Append(this);
      *(*this + 4 * *(this + 2) - 4) = v9 | (v37 << 12) | v38;
      ++v7;
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t add(uint64_t result, int a2, unsigned int *a3, unsigned int *a4)
{
  *a3 = *a3 * a2 + *a4 * result;
  v4 = *a4 * a2;
  *a4 = v4;
  if (v4)
  {
    v5 = *a3;
    do
    {
      v6 = v4;
      v4 = v5 % v4;
      v5 = v6;
    }

    while (v4);
  }

  else
  {
    v6 = *a3;
  }

  *a3 /= v6;
  *a4 /= v6;
  return result;
}

float MTFEMelody::Pitch(MTFEMelody *this, uint64_t a2)
{
  result = 0.0;
  v3 = HIBYTE(*(*this + 4 * a2));
  if (v3)
  {
    return expf(((v3 - 69) / 12.0) * 0.69315) * 440.0;
  }

  return result;
}

uint64_t MTFEMelody::SilenceSamples(MTFEMelody *this, uint64_t a2, float a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v5 = 0;
  v6 = *this - 4;
  do
  {
    v7 = *(v6 + 4 * v4);
    if (HIBYTE(v7) && (expf(((HIBYTE(v7) - 69) / 12.0) * 0.69315) * 440.0) >= 0.00000001)
    {
      break;
    }

    v5 = (v5 + ((((((v7 >> 12) & 0xFFF) / (v7 & 0xFFF)) * 1323000.0) / a3) + 0.5));
    --v4;
  }

  while (v4);
  return v5;
}

MTFEMelody *MTFEMelody::SplitNote(MTFEMelody *this, unint64_t a2, int a3)
{
  v5 = this;
  if (a3 < 2)
  {
    if (a3 != 1)
    {
      v15 = *(this + 2);
      v16 = (1 - a3);
      v17 = (*this + 4 * a2);
      v18 = (*v17 >> 12) & 0xFFF;
      v19 = *v17 & 0xFFF;
      if (a3)
      {
        v20 = 2;
        if (v16 > 2)
        {
          v20 = (1 - a3);
        }

        v21 = 1;
        do
        {
          v22 = v17[v21] & 0xFFF;
          v23 = v22 * v18 + ((v17[v21] >> 12) & 0xFFF) * v19;
          v24 = v22 * v19;
          if (v24)
          {
            v25 = v23;
            v26 = v24;
            do
            {
              v27 = v26;
              v26 = v25 % v26;
              v25 = v27;
            }

            while (v26);
          }

          else
          {
            v27 = v23;
          }

          v18 = v23 / v27;
          ++v21;
          v19 = v24 / v27;
        }

        while (v21 != v20);
      }

      *v17 = *v17 & 0xFF000000 | (v18 << 12) | v19;
      v28 = (v17 + 1);

      return memmove(v28, &v28[4 * v16], 4 * (v15 - (v16 + a2)));
    }
  }

  else
  {
    v6 = (a3 - 1);
    v7 = *(this + 2);
    v8 = v7 + v6;
    if (*(this + 3) < (v7 + v6))
    {
      MEOWVectorBase::Allocate(this, v7 + v6, 1);
    }

    *(v5 + 2) = v8;
    v9 = a2 + a3;
    this = memmove((*v5 + 4 * v9), (*v5 + 4 * (a2 + 1)), 4 * (v7 - (a2 + 1)));
    v10 = *(*v5 + 4 * a2);
    v11 = (v10 & 0xFFF) * a3;
    if (v11)
    {
      v12 = (v10 >> 12) & 0xFFF;
      v13 = (*(*v5 + 4 * a2) & 0xFFF) * a3;
      do
      {
        v14 = v13;
        v13 = v12 % v13;
        v12 = v14;
      }

      while (v13);
    }

    else
    {
      v14 = (v10 >> 12) & 0xFFF;
    }

    if (v9 > a2)
    {
      v29 = 0;
      v30 = v10 & 0xFF000000 | ((((v10 >> 12) & 0xFFF) / v14) << 12) | (v11 / v14);
      v31 = vdupq_n_s64(a3 - 1);
      v32 = (*v5 + 4 * a2 + 8);
      do
      {
        v33 = vdupq_n_s64(v29);
        v34 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_257B895F0)));
        if (vuzp1_s16(v34, *v31.i8).u8[0])
        {
          *(v32 - 2) = v30;
        }

        if (vuzp1_s16(v34, *&v31).i8[2])
        {
          *(v32 - 1) = v30;
        }

        if (vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_257B895E0)))).i32[1])
        {
          *v32 = v30;
          v32[1] = v30;
        }

        v29 += 4;
        v32 += 4;
      }

      while (((a3 + 3) & 0xFFFFFFFC) != v29);
    }
  }

  return this;
}

void MTFEPitchCoeffs::MTFEPitchCoeffs(MTFEPitchCoeffs *this, const __CFDictionary *a2)
{
  MTFEPitchCoeffs::Initialize(this);
  SetFloatCoeff(a2, @"BackupHighPhraseProm", this);
  SetFloatCoeff(a2, @"BackupLowPhraseProm", this + 1);
  SetIntCoeff(a2, @"ClosestPhraseAccentHigh", this + 2);
  SetIntCoeff(a2, @"ClosestPhraseAccentLow", this + 3);
  SetFloatCoeff(a2, @"CommaBoundary", this + 4);
  SetFloatCoeff(a2, @"DownsteppedHighStarLegIntercept", this + 5);
  SetFloatCoeff(a2, @"DownsteppedHighStarLegSlope", this + 6);
  SetFloatCoeff(a2, @"ExclamBoundary", this + 7);
  SetFloatCoeff(a2, @"ExclamLastAccentProm", this + 8);
  SetFloatCoeff(a2, @"ExplicitAccentProm", this + 9);
  SetIntCoeff(a2, @"FinalLoweringDuration", this + 10);
  SetFloatCoeff(a2, @"FinalLoweringRatio", this + 11);
  SetFloatCoeff(a2, @"FirstAccentProm", this + 12);
  SetFloatCoeff(a2, @"FirstAccentPromForTwoAccentsPhrase", this + 13);
  SetFloatCoeff(a2, @"HighAlternatingProm", this + 14);
  SetFloatCoeff(a2, @"HighFinalBoundaryProm", this + 15);
  SetIntCoeff(a2, @"HighFinalBoundaryWidth", this + 16);
  SetFloatCoeff(a2, @"HighPlusDownstepIntercept", this + 17);
  SetFloatCoeff(a2, @"HighPlusDownstepSlope", this + 18);
  SetIntCoeff(a2, @"HighPlusDownsteppedHighStarWidth", this + 19);
  SetFloatCoeff(a2, @"HighPlusIntercept", this + 20);
  SetIntCoeff(a2, @"HighPlusLowStarWidth", this + 21);
  SetFloatCoeff(a2, @"HighPlusSlope", this + 22);
  SetFloatCoeff(a2, @"HighStarLegIntercept", this + 23);
  SetFloatCoeff(a2, @"HighStarLegSlope", this + 24);
  SetIntCoeff(a2, @"HighStarWidth", this + 25);
  SetIntCoeff(a2, @"IntermediateNuclearTail", this + 26);
  SetIntCoeff(a2, @"IntonationalNuclearTail", this + 27);
  SetFloatCoeff(a2, @"LastAccentProm", this + 28);
  SetFloatCoeff(a2, @"LongURLBoost", this + 29);
  SetFloatCoeff(a2, @"LowAlternatingProm", this + 30);
  SetIntCoeff(a2, @"LowPhraseAccentRecoverSlopeWidth", this + 31);
  SetIntCoeff(a2, @"LowPlusHighStarWidth", this + 32);
  SetFloatCoeff(a2, @"LowPlusIntercept", this + 33);
  SetFloatCoeff(a2, @"LowPlusSlope", this + 34);
  SetIntCoeff(a2, @"LowPlusWidth", this + 35);
  SetFloatCoeff(a2, @"LowStarLegIntercept", this + 36);
  SetFloatCoeff(a2, @"LowStarLegSlope", this + 37);
  SetIntCoeff(a2, @"LowStarPlusHighWidth", this + 38);
  SetIntCoeff(a2, @"LowStarPlusLegDelay", this + 39);
  SetFloatCoeff(a2, @"LowStarPlusLegIntercept", this + 40);
  SetFloatCoeff(a2, @"LowStarPlusLegSlope", this + 41);
  SetIntCoeff(a2, @"LowStarWidth", this + 42);
  SetFloatCoeff(a2, @"NonQuestPhraseProm", this + 43);
  SetFloatCoeff(a2, @"ParagraphInitialBoost", this + 44);
  SetFloatCoeff(a2, @"ParagraphRangePhrasalDownStep", this + 45);
  SetFloatCoeff(a2, @"ParenBoost", this + 46);
  SetFloatCoeff(a2, @"PeriodBoundary", this + 47);
  SetFloatCoeff(a2, @"PerturbConsNoStress", this + 48);
  SetFloatCoeff(a2, @"PerturbConsPrimaryStress", this + 49);
  SetFloatCoeff(a2, @"PerturbConsSecondaryStress", this + 50);
  SetFloatCoeff(a2, @"PerturbHClosureIntercept", this + 51);
  SetFloatCoeff(a2, @"PerturbHClosureSlope", this + 52);
  SetFloatCoeff(a2, @"PerturbHReleaseIntercept", this + 53);
  SetFloatCoeff(a2, @"PerturbHReleaseSlope", this + 54);
  SetIntCoeff(a2, @"PerturbPostConsFrames", this + 55);
  SetIntCoeff(a2, @"PerturbPreConsFrames", this + 56);
  SetFloatCoeff(a2, @"PerturbSonorClosureIntercept", this + 57);
  SetFloatCoeff(a2, @"PerturbSonorClosureSlope", this + 58);
  SetFloatCoeff(a2, @"PerturbSonorReleaseIntercept", this + 59);
  SetFloatCoeff(a2, @"PerturbSonorReleaseSlope", this + 60);
  SetFloatCoeff(a2, @"PerturbUObstClosureIntercept", this + 61);
  SetFloatCoeff(a2, @"PerturbUObstClosureSlope", this + 62);
  SetFloatCoeff(a2, @"PerturbUObstReleaseIntercept", this + 63);
  SetFloatCoeff(a2, @"PerturbUObstReleaseSlope", this + 64);
  SetFloatCoeff(a2, @"PerturbVObstClosureIntercept", this + 65);
  SetFloatCoeff(a2, @"PerturbVObstClosureSlope", this + 66);
  SetFloatCoeff(a2, @"PerturbVObstReleaseIntercept", this + 67);
  SetFloatCoeff(a2, @"PerturbVObstReleaseSlope", this + 68);
  SetFloatCoeff(a2, @"PerturbVowelNoStress", this + 69);
  SetFloatCoeff(a2, @"PerturbVowelPrimaryStress", this + 70);
  SetFloatCoeff(a2, @"PerturbVowelSecondaryStress", this + 71);
  SetFloatCoeff(a2, @"Perturb_AA", this + 72);
  SetFloatCoeff(a2, @"Perturb_AE", this + 73);
  SetFloatCoeff(a2, @"Perturb_AH", this + 74);
  SetFloatCoeff(a2, @"Perturb_AO", this + 75);
  SetFloatCoeff(a2, @"Perturb_AR", this + 76);
  SetFloatCoeff(a2, @"Perturb_AW", this + 77);
  SetFloatCoeff(a2, @"Perturb_AX", this + 78);
  SetFloatCoeff(a2, @"Perturb_AY", this + 79);
  SetFloatCoeff(a2, @"Perturb_EH", this + 80);
  SetFloatCoeff(a2, @"Perturb_EL", this + 81);
  SetFloatCoeff(a2, @"Perturb_EN", this + 82);
  SetFloatCoeff(a2, @"Perturb_ER", this + 83);
  SetFloatCoeff(a2, @"Perturb_EY", this + 84);
  SetFloatCoeff(a2, @"Perturb_IH", this + 85);
  SetFloatCoeff(a2, @"Perturb_IR", this + 86);
  SetFloatCoeff(a2, @"Perturb_IX", this + 87);
  SetFloatCoeff(a2, @"Perturb_IY", this + 88);
  SetFloatCoeff(a2, @"Perturb_LX", this + 89);
  SetFloatCoeff(a2, @"Perturb_OR", this + 90);
  SetFloatCoeff(a2, @"Perturb_OW", this + 91);
  SetFloatCoeff(a2, @"Perturb_OY", this + 92);
  SetFloatCoeff(a2, @"Perturb_RX", this + 93);
  SetFloatCoeff(a2, @"Perturb_UH", this + 94);
  SetFloatCoeff(a2, @"Perturb_UR", this + 95);
  SetFloatCoeff(a2, @"Perturb_UW", this + 96);
  SetFloatCoeff(a2, @"Perturb_XR", this + 97);
  SetFloatCoeff(a2, @"Perturb_YU", this + 98);
  SetIntCoeff(a2, @"PhraseAccentRangeHigh", this + 99);
  SetIntCoeff(a2, @"PhraseAccentRangeLow", this + 100);
  SetIntCoeff(a2, @"PitchSmoothWindow", this + 101);
  SetIntCoeff(a2, @"PlusDownsteppedHighStarLegDelay", this + 102);
  SetFloatCoeff(a2, @"PlusHighIntercept", this + 103);
  SetFloatCoeff(a2, @"PlusHighSlope", this + 104);
  SetFloatCoeff(a2, @"PlusHighStarIntercept", this + 105);
  SetFloatCoeff(a2, @"PlusHighStarSlope", this + 106);
  SetIntCoeff(a2, @"PlusHighStarWidth", this + 107);
  SetIntCoeff(a2, @"PlusLowStarLegDelay", this + 108);
  SetFloatCoeff(a2, @"PlusLowStarLegIntercept", this + 109);
  SetFloatCoeff(a2, @"PlusLowStarLegSlope", this + 110);
  SetFloatCoeff(a2, @"QuestBoundary", this + 111);
  SetFloatCoeff(a2, @"QuestPhraseProm", this + 112);
  SetFloatCoeff(a2, @"QuoteBoost", this + 113);
  SetFloatCoeff(a2, @"RefProportion", this + 114);
  SetFloatCoeff(a2, @"Sep1Prom", this + 115);
  SetFloatCoeff(a2, @"Sep2Prom", this + 116);
  SetFloatCoeff(a2, @"Sep3Prom", this + 117);
  SetFloatCoeff(a2, @"Sep4Prom", this + 118);
  SetFloatCoeff(a2, @"Sep5Prom", this + 119);
  SetFloatCoeff(a2, @"Sep6Prom", this + 120);
  SetFloatCoeff(a2, @"Sep7Prom", this + 121);
  SetFloatCoeff(a2, @"ShortURLBoost", this + 122);
  SetIntCoeff(a2, @"SlopeDelayRange", this + 123);
  SetFloatCoeff(a2, @"SlopeEarly", this + 124);
  SetIntCoeff(a2, @"SlopeEarlyDelay", this + 125);
  SetFloatCoeff(a2, @"SlopeInterAccentDistance", this + 126);
  SetFloatCoeff(a2, @"SlopeNonIntonationalPhraseFinal", this + 127);
  SetFloatCoeff(a2, @"SlopeNonNuclear", this + 128);
  SetFloatCoeff(a2, @"SlopeRange", this + 129);
  SetFloatCoeff(a2, @"SlopeWordEnd", this + 130);
  SetFloatCoeff(a2, @"URLDownStep", this + 131);
  SetFloatCoeff(a2, @"VoicePitchFloor", this + 132);
  SetFloatCoeff(a2, @"VoicePitchRange", this + 133);
  SetFloatCoeff(a2, @"WHQuestBoundary", this + 134);
}

double MTFEPitchCoeffs::Initialize(MTFEPitchCoeffs *this)
{
  *this = 0x3F7FFF3A3F7FAE38;
  *(this + 1) = 0x1900000019;
  *(this + 1) = xmmword_257B96320;
  *(this + 4) = 0x3EFF48703F733333;
  *(this + 10) = 400;
  *(this + 44) = xmmword_257B96330;
  *(this + 60) = 0x1C3E4CCCCDLL;
  *(this + 68) = 0x3ED88C4FBE996A75;
  *(this + 76) = 24;
  *(this + 21) = 36;
  *(this + 11) = 0x3E42DDDB3F666666;
  *(this + 24) = 1054594115;
  *(this + 100) = 0x3A00000019;
  *(this + 27) = 67;
  *(this + 14) = 0x3FC000003F666666;
  *(this + 30) = 1061997773;
  *(this + 124) = 0x2400000017;
  *(this + 132) = 0x3EB853663D40DF1ALL;
  *(this + 35) = 12;
  *(this + 18) = 0x3F7B003C00000000;
  *(this + 19) = 0x1400000028;
  *(this + 20) = 0x3E99999A00000000;
  *(this + 42) = 33;
  *(this + 172) = xmmword_257B96340;
  *(this + 188) = xmmword_257B96350;
  *(this + 204) = xmmword_257B96360;
  *(this + 220) = 0xC00000014;
  *(this + 228) = xmmword_257B96370;
  *(this + 244) = xmmword_257B96380;
  *(this + 260) = xmmword_257B96390;
  *(this + 276) = xmmword_257B963A0;
  *(this + 292) = xmmword_257B963B0;
  *(this + 308) = xmmword_257B963C0;
  *(this + 324) = xmmword_257B963D0;
  *(this + 340) = xmmword_257B963E0;
  *(this + 356) = xmmword_257B963F0;
  *(this + 372) = xmmword_257B96400;
  *(this + 388) = 0x3D4CCCCD3B5A740ELL;
  *(this + 396) = xmmword_257B96410;
  *(this + 412) = xmmword_257B96420;
  *(this + 428) = 0x1400000011;
  *(this + 436) = xmmword_257B96430;
  *(this + 452) = xmmword_257B96440;
  *(this + 468) = xmmword_257B96450;
  *(this + 484) = 0x3F80000000000000;
  *(this + 492) = 0x3D4CCCCD00000010;
  *(this + 125) = -12;
  *(this + 504) = xmmword_257B96460;
  result = 0.0000305175852;
  *(this + 520) = xmmword_257B96470;
  *(this + 134) = 1065353216;
  return result;
}

uint64_t sub_257B751C8()
{
  sub_257B8474C();
  sub_257B752E0();
  type metadata accessor for MTMacinTalkAUSPAudioUnit();
  v1 = sub_257B753B8();
  sub_257B8474C();
  sub_257B75410();
  v2 = sub_257B843CC();

  MEMORY[0x277D82BD8](v1);

  return v2;
}

unint64_t sub_257B752E0()
{
  v2 = qword_2811811E8;
  if (!qword_2811811E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2811811E8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for MTMacinTalkAUSPAudioUnit()
{
  v1 = qword_281181690;
  if (!qword_281181690)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

id sub_257B753B8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t sub_257B7543C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

uint64_t sub_257B754D8(char a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  return 2;
}

unint64_t sub_257B75588()
{
  v2 = qword_27F8F2B70;
  if (!qword_27F8F2B70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2B70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_257B756D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257B7543C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_257B75704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257B754D8(*v1);
  *a1 = result;
  return result;
}

uint64_t static MTMacinTalkAUSPAudioUnit.registerAudioUnit()()
{
  v11 = 0;
  sub_257B8474C();
  v1 = String.mtOSType()();

  v8 = __PAIR64__(v1, 1635087216);
  v9 = 1634758764;
  v10 = 0;
  v2 = objc_opt_self();
  type metadata accessor for MTMacinTalkAUSPAudioUnit();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_257B8474C();
  v4 = sub_257B846DC();

  v5[0] = 1635087216;
  v5[1] = v1;
  v6 = 1634758764;
  v7 = 0;
  [v2 registerSubclass:ObjCClassFromMetadata asComponentDescription:v5 name:v4 version:0];
  return MEMORY[0x277D82BD8](v4);
}

Swift::UInt32 __swiftcall String.mtOSType()()
{
  v24 = v1;
  v23 = v0;
  v22 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v20 = 0;
  v27 = sub_257B8471C();
  v21 = *(v27 - 8);
  v25 = v21;
  v2 = *(v21 + 64);
  v3 = MEMORY[0x28223BE20](v23, v24);
  v26 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v3;
  v35 = v5;
  v33 = 0;
  sub_257B8470C();
  sub_257B801FC();
  v6 = sub_257B846FC();
  v30 = v7;
  v28 = v6;
  v29 = v7;
  (*(v25 + 8))(v26, v27);
  if (v30 >> 60 == 15)
  {
    v17 = v20;
  }

  else
  {
    v18 = v28;
    v19 = v29;
    v15 = v29;
    v16 = v28;
    v31 = v28;
    v32 = v29;
    if (MEMORY[0x259C6CBE0]() == 4)
    {
      v8 = v20;
      sub_257B80458(v16, v15);
      v13 = &v11;
      MEMORY[0x28223BE20](&v11, v9);
      sub_257B8442C();
      v14 = v8;
      if (v8)
      {
        goto LABEL_11;
      }

      sub_257B80208(v16, v15);
      sub_257B80208(v16, v15);
      v17 = v14;
    }

    else
    {
      sub_257B80208(v16, v15);
      v17 = v20;
    }
  }

  v12 = v33;
  if (!HIDWORD(v33))
  {
    return v12;
  }

  sub_257B8495C();
  __break(1u);
LABEL_11:
  result = sub_257B80208(v16, v15);
  __break(1u);
  return result;
}

uint64_t sub_257B75B80()
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  return static MTMacinTalkAUSPAudioUnit.registerAudioUnit()();
}

uint64_t sub_257B75BBC()
{
  v2 = (v0 + qword_2811812C0);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0]();
  swift_endAccess();
  return v3;
}

uint64_t sub_257B75C2C(uint64_t a1)
{
  MEMORY[0x277D82BE0]();
  v4 = (v1 + qword_2811812C0);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B75D7C()
{
  v2 = (v0 + qword_2811812D8);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B75DEC(uint64_t a1)
{
  MEMORY[0x277D82BE0]();
  v4 = (v1 + qword_2811812D8);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B75F24()
{
  v2 = (v0 + qword_2811812C8);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_257B75F8C(uint64_t a1)
{

  v4 = (v1 + qword_2811812C8);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_257B7607C()
{
  v2 = (v0 + qword_2811812D0);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B760EC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + qword_2811812D0);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

id sub_257B761F0()
{
  sub_257B80568();
  sub_257B8474C();
  return sub_257B76240();
}

uint64_t sub_257B76288()
{
  v2 = (v0 + qword_2811812E0);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B762F8(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + qword_2811812E0);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B76460@<X0>(void *a1@<X8>)
{
  v3 = (v1 + qword_281181680);
  swift_beginAccess();
  sub_257B805CC(v3, a1);
  return swift_endAccess();
}

uint64_t sub_257B764C4(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B78, &qword_257B964A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v4 - v4;
  v11 = MEMORY[0x28223BE20](v8, v2);
  v10 = v1;
  sub_257B805CC(v11, &v4 - v4);
  v6 = (v1 + qword_281181680);
  v7 = &v9;
  swift_beginAccess();
  sub_257B80760(v5, v6);
  swift_endAccess();
  return sub_257B80988(v8);
}

uint64_t sub_257B76614()
{
  v2 = (v0 + qword_2811816E8);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B76684(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + qword_2811816E8);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B76788()
{
  v2 = (v0 + qword_2811816B0);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_257B767EC(uint64_t a1)
{
  v3 = (v1 + qword_2811816B0);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_257B768C4()
{
  v2 = (v0 + qword_2811816A8);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B76934(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + qword_2811816A8);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B76A38()
{
  v2 = (v0 + qword_2811816A0);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B76AA8(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + qword_2811816A0);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B76C08()
{
  v2 = (v0 + qword_2811816D8);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_257B76C78(uint64_t a1)
{
  MEMORY[0x277D82BE0]();
  v4 = (v1 + qword_2811816D8);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

float sub_257B76D80()
{
  v15 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v0);
  v1 = &v4 - v5;
  v10 = &v4 - v5;
  v15 = v2;
  v6 = v2 + qword_2811816C0;
  v7 = &v14;
  swift_beginAccess();
  (*(v8 + 16))(v1, v6, v11);
  swift_endAccess();
  sub_257B8447C();
  v12 = v13;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_257B76ECC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  sub_257B8448C();
  return swift_endAccess();
}

void (*sub_257B76F5C(void *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v2[7] = sub_257B8446C();
  return sub_257B77020;
}

void sub_257B77020(void **a1)
{
  v1 = *a1;
  v1[7](v1, 0);
  swift_endAccess();
  free(v1);
}

uint64_t sub_257B770B4()
{
  v2 = objc_opt_self();
  sub_257B8474C();
  v5 = sub_257B846DC();

  sub_257B8474C();
  sub_257B751C8();

  v4 = sub_257B846DC();

  v3 = sub_257B754D8(2);
  type metadata accessor for AudioUnitParameterOptions();
  sub_257B8499C();
  sub_257B80B2C();
  sub_257B848CC();
  LODWORD(v0) = 1128792064;
  [v2 createParameterWithIdentifier:v5 name:v4 address:v3 min:3 max:0 unit:v6 unitName:0.0 flags:v0 valueStrings:0 dependentParameters:0];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  sub_257B7729C();
  return sub_257B844AC();
}

uint64_t sub_257B772B4()
{
  v14 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v0);
  v1 = &v4 - v5;
  v11 = &v4 - v5;
  v14 = v2;
  v6 = v2 + qword_2811816C0;
  v7 = &v13;
  swift_beginAccess();
  (*(v8 + 16))(v1, v6, v10);
  swift_endAccess();
  v12 = sub_257B8449C();
  (*(v8 + 8))(v11, v10);
  return v12;
}

uint64_t sub_257B773FC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + qword_2811816C0;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_257B7749C(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v11);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + qword_2811816C0;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

float sub_257B775FC()
{
  v15 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v0);
  v1 = &v4 - v5;
  v10 = &v4 - v5;
  v15 = v2;
  v6 = v2 + qword_2811816C8;
  v7 = &v14;
  swift_beginAccess();
  (*(v8 + 16))(v1, v6, v11);
  swift_endAccess();
  sub_257B8447C();
  v12 = v13;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_257B77748()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  sub_257B8448C();
  return swift_endAccess();
}

void (*sub_257B777D8(void *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v2[7] = sub_257B8446C();
  return sub_257B77020;
}

uint64_t sub_257B7789C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v18 = 0;
  v15 = sub_257B845BC();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v8[0] = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v1);
  v2 = v8 - v8[0];
  v16 = v8 - v8[0];
  v20 = objc_opt_self();
  v8[2] = 7;
  v9 = 1;
  sub_257B8474C();
  v8[1] = v3;
  v24 = sub_257B846DC();

  sub_257B8474C();
  v10 = v4;
  v11 = sub_257B751C8();
  v12 = v5;

  v23 = sub_257B846DC();

  v21 = sub_257B754D8(0);
  (*(v13 + 104))(v2, *MEMORY[0x277D70370], v15);
  sub_257B845AC();
  v17 = v6;
  v22 = sub_257B846DC();
  (*(v13 + 8))(v16, v15);

  type metadata accessor for AudioUnitParameterOptions();
  v19 = sub_257B8499C();
  sub_257B80B2C();
  sub_257B848CC();
  v25 = 1112014848;
  v31 = [v20 createParameterWithIdentifier:v24 name:v23 address:v21 min:26 max:v22 unit:v33[1] unitName:0 flags:0 valueStrings:? dependentParameters:?];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  v27 = v33;
  v33[0] = v25;
  v28 = v32;
  memset(v32, 0, sizeof(v32));
  v29 = MEMORY[0x277D83A90];
  v30 = MEMORY[0x277D703B0];
  sub_257B7729C();
  return sub_257B844AC();
}

uint64_t sub_257B77B98()
{
  v14 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v0);
  v1 = &v4 - v5;
  v11 = &v4 - v5;
  v14 = v2;
  v6 = v2 + qword_2811816C8;
  v7 = &v13;
  swift_beginAccess();
  (*(v8 + 16))(v1, v6, v10);
  swift_endAccess();
  v12 = sub_257B8449C();
  (*(v8 + 8))(v11, v10);
  return v12;
}

uint64_t sub_257B77CE0@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + qword_2811816C8;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_257B77D80(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v11);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + qword_2811816C8;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

float sub_257B77EE0()
{
  v15 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v0);
  v1 = &v4 - v5;
  v10 = &v4 - v5;
  v15 = v2;
  v6 = v2 + qword_2811816D0;
  v7 = &v14;
  swift_beginAccess();
  (*(v8 + 16))(v1, v6, v11);
  swift_endAccess();
  sub_257B8447C();
  v12 = v13;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_257B7802C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  sub_257B8448C();
  return swift_endAccess();
}

void (*sub_257B780BC(void *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v2[7] = sub_257B8446C();
  return sub_257B77020;
}

uint64_t sub_257B78180@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v23 = 0;
  v20 = sub_257B845BC();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v11 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v1);
  v2 = &v10 - v11;
  v21 = &v10 - v11;
  v25 = objc_opt_self();
  v13 = 7;
  v17 = 1;
  sub_257B8474C();
  v12 = v3;
  v29 = sub_257B846DC();

  sub_257B8474C();
  v14 = v4;
  v15 = sub_257B751C8();
  v16 = v5;

  v28 = sub_257B846DC();

  v26 = sub_257B754D8(v17);
  (*(v18 + 104))(v2, *MEMORY[0x277D70370], v20);
  sub_257B845AC();
  v22 = v6;
  v27 = sub_257B846DC();
  (*(v18 + 8))(v21, v20);

  type metadata accessor for AudioUnitParameterOptions();
  v24 = sub_257B8499C();
  sub_257B80B2C();
  sub_257B848CC();
  LODWORD(v7) = 1127219200;
  LODWORD(v8) = 1147207680;
  v35 = [v25 createParameterWithIdentifier:v29 name:v28 address:v26 min:26 max:v27 unit:v37[1] unitName:v7 flags:v8 valueStrings:0 dependentParameters:0];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  v31 = v37;
  v37[0] = 1140457472;
  v32 = v36;
  memset(v36, 0, sizeof(v36));
  v33 = MEMORY[0x277D83A90];
  v34 = MEMORY[0x277D703B0];
  sub_257B7729C();
  return sub_257B844AC();
}

uint64_t sub_257B78474()
{
  v14 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v0);
  v1 = &v4 - v5;
  v11 = &v4 - v5;
  v14 = v2;
  v6 = v2 + qword_2811816D0;
  v7 = &v13;
  swift_beginAccess();
  (*(v8 + 16))(v1, v6, v10);
  swift_endAccess();
  v12 = sub_257B8449C();
  (*(v8 + 8))(v11, v10);
  return v12;
}

uint64_t sub_257B785BC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + qword_2811816D0;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_257B7865C(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v11);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + qword_2811816D0;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

id sub_257B787BC(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v14 = 0;
  v12[0] = a1;
  v12[1] = a2;
  v13 = a3;
  v11 = [objc_allocWithZone(v4) initWithComponentDescription:v12 options:a4 error:&v14];
  v10 = v14;
  MEMORY[0x277D82BE0]();
  v5 = v15;
  v15 = v10;
  MEMORY[0x277D82BD8](v5);
  if (v11)
  {
    *MEMORY[0x277D85DE8];
    return v11;
  }

  else
  {
    v9 = v15;
    sub_257B843EC();
    MEMORY[0x277D82BD8](v9);
    swift_willThrow();
    v7 = __OFSUB__(*MEMORY[0x277D85DE8], v16);
    return v8;
  }
}

uint64_t sub_257B78960(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v95 = a4;
  v203 = *MEMORY[0x277D85DE8];
  v195 = 0;
  v192 = 0;
  v193 = 0;
  v124 = 0;
  v194 = 0;
  v191 = 0;
  v186 = 0;
  v185 = 0;
  v177 = a1;
  v178 = a2;
  v179 = a3;
  v96 = HIDWORD(a1);
  v93 = a1;
  v97 = a2;
  v94 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B88, &qword_257B964B8);
  v91 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6);
  v173 = &v53 - v91;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B90, &qword_257B964C0);
  v92 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8);
  v171 = &v53 - v92;
  v172 = 0;
  v149 = sub_257B845BC();
  v125 = *(v149 - 8);
  v126 = v149 - 8;
  v9 = (v125[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v172, v10);
  v152 = &v53 - v12;
  v192 = __PAIR64__(v96, v13);
  v193 = v97;
  v194 = v14;
  v191 = v15;
  v195 = v4;
  *(v4 + qword_2811812D8) = v11;
  v99 = v195;
  v98 = qword_2811812C8;
  sub_257B80504();
  v16 = sub_257B8499C();
  v17 = v172;
  *(v99 + v98) = v16;
  *(v195 + qword_2811812D0) = v17;
  v101 = v195;
  v100 = qword_2811812E0;
  sub_257B80568();
  v169 = 1;
  sub_257B8474C();
  *(v101 + v100) = sub_257B76240();
  v103 = v195;
  v102 = qword_281181680;
  v18 = sub_257B845EC();
  (*(*(v18 - 8) + 56))(v103 + v102, v169);
  v19 = v172;
  *(v195 + qword_2811816E8) = v172;
  *(v195 + qword_2811816B0) = v19;
  *(v195 + qword_2811816A8) = v19;
  *(v195 + qword_2811816A0) = v19;
  v105 = v195;
  v104 = qword_2811816D8;
  sub_257B80A30();
  *(v105 + v104) = sub_257B76BD8();
  v116 = v195;
  v115 = qword_2811816C0;
  v139 = 0x277CEF000uLL;
  v111 = objc_opt_self();
  sub_257B8474C();
  v106 = v20;
  v114 = sub_257B846DC();

  sub_257B8474C();
  v107 = v21;
  v108 = sub_257B751C8();
  v109 = v22;

  v113 = sub_257B846DC();

  v112 = sub_257B754D8(2);
  v148 = type metadata accessor for AudioUnitParameterOptions();
  v110 = sub_257B8499C();
  v154 = sub_257B80B2C();
  sub_257B848CC();
  v23 = v152;
  v155 = 0x1FB60E000uLL;
  LODWORD(v24) = 1128792064;
  v119 = [v111 0x1FB60EFF8];
  MEMORY[0x277D82BD8](v113);
  MEMORY[0x277D82BD8](v114);
  v117 = v190;
  v190[0] = 1120403456;
  v118 = v202;
  memset(v202, 0, sizeof(v202));
  v166 = MEMORY[0x277D83A90];
  v167 = MEMORY[0x277D703B0];
  sub_257B7729C();
  sub_257B844AC();
  v135 = v195;
  v134 = qword_2811816C8;
  v25 = *(v139 + 3400);
  v128 = objc_opt_self();
  v141 = 7;
  sub_257B8474C();
  v120 = v26;
  v132 = sub_257B846DC();

  sub_257B8474C();
  v121 = v27;
  v122 = sub_257B751C8();
  v123 = v28;

  v131 = sub_257B846DC();

  v129 = sub_257B754D8(v124);
  v145 = MEMORY[0x277D70370];
  v29 = *MEMORY[0x277D70370];
  v147 = v125[13];
  v146 = v125 + 13;
  v147(v23, v29, v149);
  sub_257B845AC();
  v127 = v30;
  v130 = sub_257B846DC();
  v151 = v125[1];
  v150 = v125 + 1;
  v151(v152, v149);

  sub_257B8499C();
  sub_257B848CC();
  v31 = v152;
  v133 = 1112014848;
  v158 = 26;
  v138 = [v128 (v155 + 4088)];
  MEMORY[0x277D82BD8](v130);
  MEMORY[0x277D82BD8](v131);
  MEMORY[0x277D82BD8](v132);
  v136 = &v189;
  v189 = v133;
  v137 = v201;
  memset(v201, 0, sizeof(v201));
  sub_257B7729C();
  sub_257B844AC();
  v163 = v195;
  v162 = qword_2811816D0;
  v32 = *(v139 + 3400);
  v156 = objc_opt_self();
  sub_257B8474C();
  v140 = v33;
  v161 = sub_257B846DC();

  sub_257B8474C();
  v142 = v34;
  v143 = sub_257B751C8();
  v144 = v35;

  v160 = sub_257B846DC();

  v157 = sub_257B754D8(v169);
  v147(v31, *v145, v149);
  sub_257B845AC();
  v153 = v36;
  v159 = sub_257B846DC();
  v151(v152, v149);

  sub_257B8499C();
  sub_257B848CC();
  LODWORD(v37) = 1127219200;
  LODWORD(v38) = 1147207680;
  v168 = [v156 (v155 + 4088)];
  MEMORY[0x277D82BD8](v159);
  MEMORY[0x277D82BD8](v160);
  MEMORY[0x277D82BD8](v161);
  v164 = v188;
  v188[0] = 1140457472;
  v165 = v200;
  memset(v200, 0, sizeof(v200));
  sub_257B7729C();
  sub_257B844AC();
  *(v195 + qword_281181678) = v172;
  type metadata accessor for CMFormatDescription();
  v170 = __dst;
  memcpy(__dst, &macinTalkOutputFormat, sizeof(__dst));
  v39 = sub_257B8468C();
  (*(*(v39 - 8) + 56))(v171, v169);
  v40 = sub_257B8488C();
  (*(*(v40 - 8) + 56))(v173, v169);
  v41 = v174;
  sub_257B8469C();
  v175 = v41;
  v176 = v41;
  if (v41)
  {
    swift_unexpectedError();
    __break(1u);
    goto LABEL_6;
  }

  v83 = v187;
  v186 = v187;
  v84 = 0;
  sub_257B80C44();
  MEMORY[0x277D82BE0](v83);
  v87 = sub_257B79A6C(v83);
  v185 = v87;
  v85 = v195;
  v86 = sub_257B80CA8();
  MEMORY[0x277D82BE0](v87);
  v42 = v175;
  v43 = sub_257B79AAC(v87);
  v88 = v42;
  v89 = v43;
  v90 = v42;
  if (v42)
  {
LABEL_6:
    v64 = v90;
    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](v83);
    v65 = v64;
    v66 = 32638;
    goto LABEL_8;
  }

  *(v85 + qword_2811812C0) = v89;
  v79 = v195;
  v199 = 0;
  v184 = 0;
  v80 = &v184;
  v44 = type metadata accessor for MTMacinTalkAUSPAudioUnit();
  v183.receiver = v79;
  v183.super_class = v44;
  v180[0] = v93;
  v180[1] = v96;
  v181 = v97;
  v182 = v94;
  v82 = objc_msgSendSuper2(&v183, sel_initWithComponentDescription_options_error_, v180, v95, v80);
  v81 = v184;
  MEMORY[0x277D82BE0](v184);
  v45 = v199;
  v199 = v81;
  MEMORY[0x277D82BD8](v45);
  if (v82)
  {
    v78 = v82;
    v72 = v82;
    MEMORY[0x277D82BE0](v82);
    v195 = v72;
    v73 = v72;
    sub_257B80D98();
    MEMORY[0x277D82BE0](v72);
    v71 = sub_257B8499C();
    v68 = v46;
    v67 = (v195 + qword_2811812C0);
    v70 = &v198;
    v74 = 0;
    swift_beginAccess();
    v69 = *v67;
    MEMORY[0x277D82BE0](v69);
    *v68 = v69;
    swift_endAccess();
    sub_257B79B2C();
    v76 = sub_257B79B70(v72, 2);
    v75 = (v73 + qword_2811812D8);
    v77 = &v197;
    swift_beginAccess();
    v47 = *v75;
    *v75 = v76;
    MEMORY[0x277D82BD8](v47);
    swift_endAccess();
    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v195);
    *MEMORY[0x277D85DE8];
    return v72;
  }

  v62 = v199;
  v63 = sub_257B843EC();
  MEMORY[0x277D82BD8](v62);
  swift_willThrow();
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](v83);
  v65 = v63;
  v66 = 0xFFFF;
LABEL_8:
  v59 = v66;
  v60 = v65;
  if ((v66 & 0x8000) == 0)
  {
    if (v59)
    {
      MEMORY[0x277D82BD8](*(v195 + qword_2811812C0));
    }

    sub_257B80D0C((v195 + qword_2811812D8));
    sub_257B80D40((v195 + qword_2811812C8));
    sub_257B80D0C((v195 + qword_2811812D0));
    MEMORY[0x277D82BD8](*(v195 + qword_2811812E0));
    sub_257B80988(v195 + qword_281181680);
    sub_257B80D0C((v195 + qword_2811816E8));
    sub_257B80D0C((v195 + qword_2811816A8));
    sub_257B80D0C((v195 + qword_2811816A0));
    MEMORY[0x277D82BD8](*(v195 + qword_2811816D8));
    v54 = v195 + qword_2811816C0;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
    v49 = *(v55 - 8);
    v57 = *(v49 + 8);
    v56 = v49 + 8;
    v57(v54);
    (v57)(v195 + qword_2811816C8, v55);
    (v57)(v195 + qword_2811816D0, v55);
    sub_257B80D6C((v195 + qword_281181678));
    v58 = v195;
    type metadata accessor for MTMacinTalkAUSPAudioUnit();
    v50 = *((*v58 & *MEMORY[0x277D85000]) + 0x30);
    v51 = *((*v58 & *MEMORY[0x277D85000]) + 0x34);
    swift_deallocPartialClassInstance();
  }

  v52 = __OFSUB__(*MEMORY[0x277D85DE8], v203);
  return v61;
}

id sub_257B79AAC(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_257B81484(a1);
  if (v4)
  {
    return v3;
  }

  else
  {
    return v6;
  }
}

id sub_257B79CD8(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v3 = sub_257B79D44();
  MEMORY[0x277D82BD8](a1);

  return v3;
}

uint64_t sub_257B79D44()
{
  v2 = sub_257B75D7C();
  if (v2)
  {
    return v2;
  }

  sub_257B8495C();
  __break(1u);
  return v1;
}

uint64_t sub_257B79DFC()
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = v0;
  MEMORY[0x277D82BE0](v0);
  v10 = 0;
  v8 = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for MTMacinTalkAUSPAudioUnit();
  v6 = objc_msgSendSuper2(&v7, sel_allocateRenderResourcesAndReturnError_, &v8);
  v5 = v8;
  MEMORY[0x277D82BE0](v8);
  v1 = v10;
  v10 = v5;
  MEMORY[0x277D82BD8](v1);
  if (v6)
  {
    result = (MEMORY[0x277D82BD8])();
    v3 = __OFSUB__(*MEMORY[0x277D85DE8], v11);
  }

  else
  {
    v4 = v10;
    sub_257B843EC();
    MEMORY[0x277D82BD8](v4);
    swift_willThrow();
    result = (MEMORY[0x277D82BD8])();
    *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t sub_257B79F70(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_257B79DFC();
  MEMORY[0x277D82BD8](a1);
  return 1;
}

id sub_257B7A080(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = sub_257B7A15C();
  v5 = v1;
  MEMORY[0x277D82BD8](a1);
  v12 = v4;
  v13 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v8 = 1107296256;
  v9 = 0;
  v10 = sub_257B7A208;
  v11 = &block_descriptor;
  v6 = _Block_copy(&aBlock);

  return v6;
}

uint64_t (*sub_257B7A15C())(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  return sub_257B80E60;
}

uint64_t sub_257B7A208(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);

  v20 = _Block_copy(a8);
  if (v20)
  {
    *(swift_allocObject() + 16) = v20;
    v10 = sub_257B833AC;
  }

  else
  {
    v10 = 0;
  }

  v9 = v17(a2, a3, a4, a5, a6, a7);
  sub_257B83378(v10);

  return v9;
}

uint64_t sub_257B7A3A4(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v243 = a1;
  v242 = a2;
  v235 = a3;
  v248 = a4;
  v236 = a5;
  v237 = a6;
  v238 = a7;
  v239 = a8;
  v240 = a9;
  v241 = 0;
  v201 = sub_257B831E0;
  v202 = "Fatal error";
  v203 = "Unexpectedly found nil while unwrapping an Optional value";
  v204 = "MacinTalk/MacinTalkAUSPAudioUnit.swift";
  v205 = "Negative value is not representable";
  v206 = "Swift/Integers.swift";
  v207 = "Not enough bits to represent the passed value";
  v208 = "MacinTalkAUSP failed to start speaking with error %@";
  v209 = &dword_257B07000;
  v210 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v329 = 0;
  v328 = 0;
  v327 = 0;
  v326 = 0;
  v325 = 0;
  v324 = 0;
  v323 = 0;
  v322 = 0;
  v321 = 0;
  v319 = 0;
  v320 = 0;
  v318 = 0;
  v316 = 0;
  v314 = 0;
  v315 = 0;
  v310 = 0;
  v308 = 0;
  v309 = 0;
  v301 = 0;
  v299 = 0;
  v297 = 0;
  v295 = 0;
  v296 = 0;
  v290 = 0;
  v286 = 0;
  v268 = 0;
  v269 = 0;
  v211 = 0;
  v267 = 0;
  v264 = 0;
  v265 = 0;
  v256 = 0;
  v253 = 0;
  v229 = 0;
  v212 = sub_257B844EC();
  v213 = *(v212 - 8);
  v214 = v212 - 8;
  v215 = (*(v213 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v212, v9);
  v216 = (&v58 - v215);
  v217 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B78, &qword_257B964A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v229, v10);
  v218 = &v58 - v217;
  v219 = sub_257B845EC();
  v220 = *(v219 - 8);
  v221 = v219 - 8;
  v222 = (*(v220 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v229, v11);
  v223 = &v58 - v222;
  v329 = &v58 - v222;
  v224 = sub_257B8460C();
  v225 = *(v224 - 8);
  v226 = v224 - 8;
  v227 = (*(v225 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v229, v12);
  v228 = &v58 - v227;
  v328 = &v58 - v227;
  v230 = sub_257B8462C();
  v231 = *(v230 - 8);
  v232 = v230 - 8;
  v233 = (*(v231 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v229, v13);
  v234 = &v58 - v233;
  v327 = &v58 - v233;
  v244 = sub_257B8465C();
  v245 = *(v244 - 8);
  v246 = v244 - 8;
  v247 = (*(v245 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v243, v242);
  v249 = &v58 - v247;
  v326 = v14;
  v325 = v15;
  v324 = v16;
  v323 = v248;
  v322 = v17;
  v321 = v18;
  v319 = v19;
  v320 = v20;
  v250 = v21 + 16;
  v318 = v21 + 16;
  v251 = &v317;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return -1;
  }

  v200 = Strong;
  v196 = Strong;
  v316 = Strong;
  sub_257B8466C();
  v197 = &v313;
  v22 = sub_257B8467C();
  v311 = v23;
  v312 = v24;
  v198 = v24;
  v314 = v23;
  v315 = v24;
  v22();
  (*(v245 + 8))(v249, v244);
  if (v198)
  {
    v195 = v198;
  }

  else
  {
    sub_257B8495C();
    __break(1u);
  }

  v191 = v195;
  v310 = v195;
  v306 = 0;
  v307 = v235;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2CF0, &qword_257B968D0);
  v193 = sub_257B82FA4();
  sub_257B8485C();
  for (i = v211; ; i = v25)
  {
    v187 = i;
    v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2D00, &qword_257B968D8);
    sub_257B8494C();
    v189 = v304;
    v190 = v188;
    if (v305)
    {
      break;
    }

    v186 = v189;
    v25 = v187;
    v253 = v189;
    *(v191 + 4 * v189) = 0;
  }

  v182 = v190;
  v184 = sub_257B75F24();
  v183 = sub_257B80504();
  v185 = sub_257B8480C();

  if (!v185)
  {
    MEMORY[0x277D82BD8](v196);
    return -10863;
  }

  v180 = sub_257B75F24();
  v303 = v180;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BE0, &qword_257B964F8);
  v179 = sub_257B81F0C();
  sub_257B8483C();
  v181 = v302;

  if (v181)
  {
    v177 = v181;
  }

  else
  {
    sub_257B8495C();
    __break(1u);
  }

  v176 = v177;
  v301 = v177;
  v300 = sub_257B7607C();
  v175 = v300 == 0;
  v174 = v175;
  sub_257B80D0C(&v300);
  if (v174)
  {
    v26 = v187;
    v169 = [v176 ssmlRepresentation];
    v170 = sub_257B846EC();
    v171 = v27;
    v268 = v170;
    v269 = v27;
    MEMORY[0x277D82BD8](v169);

    sub_257B8461C();
    v172 = v26;
    v173 = v26;
    if (v26)
    {
      v68 = v173;
      MEMORY[0x259C6E4E0]();
      v267 = v68;
      v69 = AXTTSLogCommon();
      if (v69)
      {
        v67 = v69;
      }

      else
      {
        sub_257B8495C();
        __break(1u);
      }

      v65 = v67;
      v63 = sub_257B8487C();
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BC0, &qword_257B964E8);
      v62 = sub_257B8499C();
      v60 = v50;
      swift_getErrorValue();
      v58 = sub_257B849CC();
      v59 = v51;
      v60[3] = MEMORY[0x277D837D0];
      v52 = sub_257B83048();
      v53 = v58;
      v54 = v59;
      v55 = v60;
      v56 = v52;
      v57 = v62;
      v60[4] = v56;
      *v55 = v53;
      v55[1] = v54;
      sub_257B79B2C();
      v64 = v57;
      sub_257B8463C();

      MEMORY[0x277D82BD8](v65);
      [v196 cancelSpeechRequest];
      v66 = sub_257B8464C();

      MEMORY[0x277D82BD8](v176);
      MEMORY[0x277D82BD8](v196);
      return v66;
    }

    v144 = sub_257B775FC();
    sub_257B77EE0();
    sub_257B8450C();
    v145 = v266;
    v266[3] = v230;
    v266[4] = MEMORY[0x277D70390];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v266);
    (*(v231 + 16))(boxed_opaque_existential_1, v234, v230);
    sub_257B845FC();
    __swift_destroy_boxed_opaque_existential_1(v145);
    v155 = sub_257B845CC();
    v156 = v29;
    v264 = v155;
    v265 = v29;
    (*(v220 + 16))(v218, v223, v219);
    (*(v220 + 56))(v218, 0, 1, v219);
    sub_257B764C4(v218);
    v166 = 0;
    sub_257B8457C();
    v152 = sub_257B8456C();
    v151 = [v176 ssmlRepresentation];
    v146 = sub_257B846EC();
    v147 = v30;

    v31 = v216;
    v32 = v147;
    v33 = v213;
    v34 = v155;
    v35 = v156;
    *v216 = v146;
    v31[1] = v32;
    v31[2] = v34;
    v31[3] = v35;
    v36 = *MEMORY[0x277D70190];
    (*(v33 + 104))();
    v150 = [v176 jobIdentifier];
    v148 = sub_257B846EC();
    v149 = v37;
    sub_257B8455C();

    MEMORY[0x277D82BD8](v150);
    (*(v213 + 8))(v216, v212);
    MEMORY[0x277D82BD8](v151);
    MEMORY[0x277D82BD8](v152);
    v154 = sub_257B76C08();
    MEMORY[0x277D82BE0](v176);
    v38 = swift_allocObject();
    v39 = v201;
    *(v38 + 16) = v176;
    v262 = v39;
    v263 = v38;
    v257 = MEMORY[0x277D85DD0];
    v258 = 1107296256;
    v259 = 0;
    v260 = sub_257B7C234;
    v261 = &block_descriptor_20;
    v153 = _Block_copy(&v257);

    [v154 setMatchLogger_];
    _Block_release(v153);
    MEMORY[0x277D82BD8](v154);
    v158 = sub_257B76C08();

    v157 = sub_257B846DC();

    v159 = [v158 processText_];
    MEMORY[0x277D82BD8](v157);
    MEMORY[0x277D82BD8](v158);
    sub_257B762F8(v159);
    v160 = sub_257B8324C();
    v161 = sub_257B76288();
    v164 = [v161 transformedString];
    v162 = sub_257B846EC();
    v163 = v40;
    MEMORY[0x277D82BD8](v161);
    v165 = sub_257B7C35C();
    MEMORY[0x277D82BD8](v164);
    v256 = v165;
    v167 = sub_257B832B0();
    v168 = sub_257B768C4();
    if (v168)
    {
      v143 = v168;
    }

    else
    {
      sub_257B8495C();
      __break(1u);
    }

    v142 = v143;
    MEMORY[0x277D82BE0](v165);
    v41 = sub_257B7C3A4(v142, v165);
    sub_257B760EC(v41);
    v255 = sub_257B7607C();
    if (v255)
    {
      v138 = &v255;
      v141 = v255;
      MEMORY[0x277D82BE0](v255);
      sub_257B80D0C(v138);
      v139 = sub_257B83314();
      sub_257B76D80();
      v140 = sub_257B7C3EC();
      [v141 setPitchModulation_];
      MEMORY[0x277D82BD8](v140);
      MEMORY[0x277D82BD8](v141);
    }

    else
    {
      sub_257B80D0C(&v255);
    }

    v254 = sub_257B7607C();
    if (v254)
    {
      v136 = &v254;
      v137 = v254;
      MEMORY[0x277D82BE0](v254);
      sub_257B80D0C(v136);
      MEMORY[0x277D82BE0](v196);
      [v137 setDelegate_];
      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v137);
    }

    else
    {
      sub_257B80D0C(&v254);
    }

    MEMORY[0x277D82BD8](v165);

    (*(v220 + 8))(v223, v219);
    (*(v225 + 8))(v228, v224);
    (*(v231 + 8))(v234, v230);

    v135 = v172;
  }

  else
  {
    v135 = v187;
  }

  v133 = v135;
  v134 = sub_257B7607C();
  if (!v134)
  {
    v131 = sub_257B8464C();
    MEMORY[0x277D82BD8](v176);
    MEMORY[0x277D82BD8](v196);
    return v131;
  }

  v132 = v134;
  v130 = v134;
  v299 = v134;
  v298 = sub_257B76614();
  v129 = v298 == 0;
  v128 = v129;
  sub_257B80D0C(&v298);
  if (v128)
  {
    sub_257B76684([v130 nextBuffer]);
    v277 = sub_257B76614();
    v127 = v277 == 0;
    v126 = v127;
    sub_257B80D0C(&v277);
    MEMORY[0x277D82BE0](v196);
    if (v126)
    {
      v125 = 1;
    }

    else
    {
      v276 = sub_257B76614();
      if (v276)
      {
        v121 = &v276;
        v122 = v276;
        MEMORY[0x277D82BE0](v276);
        sub_257B80D0C(v121);
        v123 = [v122 frameLength];
        MEMORY[0x277D82BD8](v122);
        v124 = v123;
      }

      else
      {
        sub_257B80D0C(&v276);
        v124 = 0x100000000;
      }

      v119 = HIDWORD(v124);
      v120 = v124;
      v272 = v124;
      v273 = BYTE4(v124) & 1;
      v274 = 0;
      v275 = 0;
      if ((v124 & 0x100000000) != 0)
      {
        v118 = 0;
      }

      else
      {
        v270 = v120;
        v271 = v119 & 1;
        v118 = v120 == v274;
      }

      v125 = v118;
    }

    v117 = v125;
    MEMORY[0x277D82BD8](v196);
    if (v117)
    {
      v115 = 0;
      sub_257B76684(0);
      sub_257B760EC(v115);
      sub_257B767EC(v115);
      *v243 = 128;
      v42 = sub_257B8499C();
      sub_257B75F8C(v42);
      v116 = sub_257B8464C();
      MEMORY[0x277D82BD8](v130);
      MEMORY[0x277D82BD8](v176);
      MEMORY[0x277D82BD8](v196);
      return v116;
    }

    sub_257B767EC(0);
  }

  v112 = 0;
  v297 = 0;
  v293 = 0;
  v294 = v235;
  sub_257B8485C();
  v113 = v112;
  for (j = v133; ; j = v108)
  {
    v108 = j;
    v109 = v113;
    result = sub_257B8494C();
    v110 = v291;
    v111 = v109;
    if (v292)
    {
      v106 = v111;
      goto LABEL_87;
    }

    v107 = v110;
    v102 = v110;
    v290 = v110;
    v103 = sub_257B75F24();
    v289[1] = v103;
    v104 = sub_257B8484C();

    result = v104;
    v105 = v109;
    if (v104)
    {
      v106 = v105;
      goto LABEL_87;
    }

    v101 = sub_257B76788();
    v289[0] = sub_257B76614();
    if (v289[0])
    {
      v97 = v289;
      v98 = v289[0];
      MEMORY[0x277D82BE0](v289[0]);
      sub_257B80D0C(v97);
      v99 = [v98 frameLength];
      MEMORY[0x277D82BD8](v98);
      v100 = v99;
    }

    else
    {
      sub_257B80D0C(v289);
      v100 = 0x100000000;
    }

    v287 = v100;
    v288 = BYTE4(v100) & 1;
    v96 = (v100 & 0x100000000) != 0 ? 0 : v287;
    if (v101 >= v96)
    {
      break;
    }

LABEL_72:
    v82 = sub_257B76614();
    if (v82)
    {
      v81 = v82;
    }

    else
    {
      sub_257B8495C();
      __break(1u);
    }

    v78 = v81;
    v79 = [v81 mutableAudioBufferList];
    MEMORY[0x277D82BD8](v78);
    v80 = v79[2];
    if (v80)
    {
      v77 = v80;
    }

    else
    {
      sub_257B8495C();
      __break(1u);
    }

    v75 = v77;
    v286 = v77;
    result = sub_257B76788();
    v44 = v109;
    *(v191 + 4 * v102) = *(v75 + 4 * result);
    v76 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_99;
    }

    v297 = v76;
    result = sub_257B76858();
    v72 = result;
    v73 = v46;
    v47 = __OFADD__(*v46, 1);
    v74 = *v46 + 1;
    v48 = v47;
    if (v48)
    {
      goto LABEL_100;
    }

    v49 = v72;
    *v73 = v74;
    v49();
    v113 = v76;
  }

  sub_257B76684([v130 nextBuffer]);
  v285[0] = sub_257B76614();
  v95 = v285[0] == 0;
  v94 = v95;
  sub_257B80D0C(v285);
  MEMORY[0x277D82BE0](v196);
  if (v94)
  {
    v93 = 1;
  }

  else
  {
    v284 = sub_257B76614();
    if (v284)
    {
      v89 = &v284;
      v90 = v284;
      MEMORY[0x277D82BE0](v284);
      sub_257B80D0C(v89);
      v91 = [v90 frameLength];
      MEMORY[0x277D82BD8](v90);
      v92 = v91;
    }

    else
    {
      sub_257B80D0C(&v284);
      v92 = 0x100000000;
    }

    v87 = HIDWORD(v92);
    v88 = v92;
    v280 = v92;
    v281 = BYTE4(v92) & 1;
    v282 = 0;
    v283 = 0;
    if ((v92 & 0x100000000) != 0)
    {
      v86 = 0;
    }

    else
    {
      v278 = v88;
      v279 = v87 & 1;
      v86 = v88 == v282;
    }

    v93 = v86;
  }

  v84 = v93;
  MEMORY[0x277D82BD8](v196);
  v85 = v109;
  if ((v84 & 1) == 0)
  {
    sub_257B767EC(0);
    goto LABEL_72;
  }

  v83 = v85;
  result = sub_257B76684(0);
  v106 = v83;
LABEL_87:
  v71 = 4 * v106;
  if ((4 * v106) >> 64 != (4 * v106) >> 63)
  {
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    return result;
  }

  if (v71 < 0)
  {
    sub_257B8495C();
    __break(1u);
  }

  if (v71 > 0xFFFFFFFFLL)
  {
    sub_257B8495C();
    __break(1u);
  }

  else
  {
    HIDWORD(v314) = v71;
    LODWORD(v314) = 1;
    v70 = sub_257B8464C();
    MEMORY[0x277D82BD8](v130);
    MEMORY[0x277D82BD8](v176);
    MEMORY[0x277D82BD8](v196);
    return v70;
  }

  return v199;
}

uint64_t sub_257B7BF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v23 = a1;
  v24 = a2;
  v27 = a3;
  v28 = a4;
  v25 = a5;
  v26 = a6;
  v22 = a7;
  v29 = a8;
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v20[1] = 0;
  v36 = sub_257B844EC();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v21 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v24);
  v35 = v20 - v21;
  v45 = v8;
  v46 = v9;
  v43 = v10;
  v44 = v11;
  v41 = v12;
  v42 = v13;
  v40 = v14;
  v39 = v15;
  sub_257B8457C();
  v38 = sub_257B8456C();

  v37 = [v22 identifier];
  v16 = sub_257B846EC();
  __src[0] = v23;
  __src[1] = v24;
  __src[2] = v25;
  __src[3] = v26;
  __src[4] = v27;
  __src[5] = v28;
  __src[6] = v16;
  __src[7] = v17;
  memcpy(v35, __src, 0x40uLL);
  (*(v33 + 104))(v35, *MEMORY[0x277D70170], v36);
  v32 = [v29 jobIdentifier];
  v30 = sub_257B846EC();
  v31 = v18;
  sub_257B8455C();

  MEMORY[0x277D82BD8](v32);
  (*(v33 + 8))(v35, v36);
  MEMORY[0x277D82BD8](v37);
  return MEMORY[0x277D82BD8](v38);
}

uint64_t sub_257B7C234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 32);
  v19 = *(a1 + 40);

  MEMORY[0x277D82BE0](a2);
  v13 = sub_257B846EC();
  v17 = v6;
  MEMORY[0x277D82BE0](a5);
  v11 = sub_257B846EC();
  v15 = v7;
  MEMORY[0x277D82BE0](a6);
  v12(v13, v17, a3, a4, v11, v15, a6);
  MEMORY[0x277D82BD8](a6);

  MEMORY[0x277D82BD8](a5);

  MEMORY[0x277D82BD8](a2);
}

void sub_257B7C42C(void *a1)
{
  v136 = a1;
  v133 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v148 = 0;
  v115 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BA0, &qword_257B964D0);
  v116 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2 - 8, v3);
  v117 = v43 - v116;
  v118 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BA8, &qword_257B964D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v133, v4);
  v119 = v43 - v118;
  v120 = sub_257B844FC();
  v121 = *(v120 - 8);
  v122 = v121;
  v5 = *(v121 + 64);
  MEMORY[0x28223BE20](v120 - 8, v120);
  v123 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v123;
  v124 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BB0, &qword_257B964E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v133, v7);
  v125 = v43 - v124;
  v126 = sub_257B8441C();
  v127 = *(v126 - 8);
  v128 = v127;
  v129 = *(v127 + 64);
  v8 = MEMORY[0x28223BE20](v133, v126);
  v131 = (v129 + 15) & 0xFFFFFFFFFFFFFFF0;
  v130 = v43 - v131;
  MEMORY[0x28223BE20](v8, v43 - v131);
  v132 = v43 - v131;
  v159 = v43 - v131;
  v143 = sub_257B844EC();
  v134 = *(v143 - 8);
  v141 = v134;
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v133, v9);
  v142 = v43 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v10;
  v157 = v1;
  sub_257B8457C();
  v144 = sub_257B8456C();
  (*(v141 + 104))(v142, *MEMORY[0x277D70180], v143);
  v140 = [v136 jobIdentifier];
  v137 = sub_257B846EC();
  v139 = v11;
  sub_257B8455C();

  (*(v141 + 8))(v142, v143);
  v156 = sub_257B76A38();
  if (v156)
  {
    v108 = v156;
    v12 = v156;
    sub_257B80D0C(&v156);
    v110 = [v108 identifier];
    v13 = sub_257B846EC();
    v109 = v14;
    v111 = v13;

    v112 = v109;
    v113 = v111;
    v114 = v112;
  }

  else
  {
    sub_257B80D0C(&v156);
    v113 = 0;
    v114 = 0;
  }

  v104 = v114;
  v103 = v113;

  v100 = [v136 voice];
  v99 = [v100 identifier];
  v102 = sub_257B846EC();
  v105 = v15;

  v101 = v105;

  v106 = v154;
  v107 = v155;
  v154[0] = v103;
  v154[1] = v104;
  v155[0] = v102;
  v155[1] = v105;
  if (v104)
  {
    sub_257B8136C(v106, v146);
    if (v107[1])
    {
      v145 = *v107;
      v97 = MEMORY[0x259C6CF00](v146[0], v146[1], v145, *(&v145 + 1));
      sub_257B8104C(&v145);
      sub_257B8104C(v146);
      sub_257B8104C(v106);
      v98 = v97;
      goto LABEL_9;
    }

    sub_257B8104C(v146);
    goto LABEL_11;
  }

  if (v107[1])
  {
LABEL_11:
    sub_257B80E88(v154);
    v98 = 0;
    goto LABEL_9;
  }

  sub_257B8104C(v106);
  v98 = 1;
LABEL_9:
  v96 = v98;

  if (v96)
  {
    v73 = v115;
LABEL_23:
    v47 = v73;
    sub_257B76AA8([v136 voice]);
    v46 = 0;
    v43[1] = sub_257B80504();
    v45 = 1;
    v44 = sub_257B8499C();
    v43[0] = v39;
    v40 = v136;
    v41 = v44;
    *v43[0] = v136;
    sub_257B79B2C();
    sub_257B75F8C(v41);
    sub_257B80568();
    sub_257B8474C();
    v42 = sub_257B76240();
    sub_257B762F8(v42);
    sub_257B760EC(v46);
    v71 = v47;
    return;
  }

  v16 = v138;
  v95 = [v136 voice];
  (*(class metadata base offset for MTMacinTalkAUSPAudioUnit + (*v16 & *MEMORY[0x277D85000]) + 512))();

  if ((*(v128 + 48))(v125, 1, v126) == 1)
  {
    sub_257B80EC0(v125);
    v48 = 25;
    v51 = 1;
    v152 = sub_257B8498C();
    v153 = v33;
    v34 = sub_257B8474C();
    v49 = v35;
    v53 = &v152;
    MEMORY[0x259C6D120](v34);

    v151 = [v136 voice];
    v56 = 0;
    v50 = sub_257B80F68();
    sub_257B80FCC();
    sub_257B8496C();

    v36 = sub_257B8474C();
    v52 = v37;
    MEMORY[0x259C6D120](v36);

    v55 = v152;
    v54 = v153;

    sub_257B8104C(v53);
    v57 = sub_257B8473C();
    v59 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BC0, &qword_257B964E8);
    v58 = sub_257B8499C();
    sub_257B8444C();

    v71 = v115;
    return;
  }

  v17 = v130;
  (*(v128 + 32))(v132, v125, v126);
  v93 = *MEMORY[0x277CBECE8];
  v18 = v93;
  (*(v128 + 16))(v17, v132, v126);
  v89 = sub_257B8440C();
  v94 = CFBundleCreate(v93, v89);
  v90 = v94;

  v91 = *(v128 + 8);
  v92 = (v128 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v91(v130, v126);

  if (!v94)
  {
    v60 = 26;
    v62 = 1;
    v149 = sub_257B8498C();
    v150 = v27;
    v28 = sub_257B8474C();
    v61 = v29;
    v64 = &v149;
    MEMORY[0x259C6D120](v28);

    sub_257B81078();
    sub_257B8496C();
    v67 = 0;
    v30 = sub_257B8474C();
    v63 = v31;
    MEMORY[0x259C6D120](v30);

    v66 = v149;
    v65 = v150;

    sub_257B8104C(v64);
    v68 = sub_257B8473C();
    v70 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BC0, &qword_257B964E8);
    v69 = sub_257B8499C();
    sub_257B8444C();

    v91(v132, v126);
    v71 = v115;
    return;
  }

  v88 = v90;
  v81 = v90;
  v148 = v90;
  v19 = [objc_opt_self() loadVoiceBundle_];
  sub_257B76934(v19);
  v82 = sub_257B76C08();
  [v82 reset];

  sub_257B8454C();
  v87 = sub_257B8453C();
  v83 = [v136 voice];
  v86 = [v83 identifier];
  v84 = sub_257B846EC();
  v85 = v20;

  sub_257B8452C();

  if ((*(v122 + 48))(v119, 1, v120) == 1)
  {
    v21 = v115;
    sub_257B810F8(v119);
    v80 = v21;
LABEL_19:
    v72 = v80;

    v91(v132, v126);
    v73 = v72;
    goto LABEL_23;
  }

  v22 = v115;
  (*(v122 + 32))(v123, v119, v120);
  v74 = 0;
  sub_257B8459C();
  v23 = sub_257B8445C();
  (*(*(v23 - 8) + 56))(v117, 1);
  v75 = sub_257B8458C();
  sub_257B811A0(v117);
  v147 = v75;
  v24 = v138;
  v76 = v43;
  MEMORY[0x28223BE20](v43, v25);
  v77 = &v43[-4];
  v43[-2] = v26;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BD0, &qword_257B964F0);
  sub_257B81270();
  sub_257B8479C();
  v79 = v22;
  if (!v22)
  {

    sub_257B80D40(&v147);
    (*(v122 + 8))(v123, v120);
    v80 = v79;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_257B7D634(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_257B76C08();
  [v3 loadRuleSet_];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_257B7D6A8(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a1);
  sub_257B7C42C(a3);
  MEMORY[0x277D82BD8](a1);
  return MEMORY[0x277D82BD8](a3);
}

uint64_t sub_257B7D720()
{
  type metadata accessor for TTSSpeechGender();
  sub_257B81E8C();
  if (sub_257B846CC())
  {
    return 2;
  }

  else
  {
    return (sub_257B846CC() & 1) != 0;
  }
}

id sub_257B7D800(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_257B7D890();
  MEMORY[0x277D82BD8](a1);
  sub_257B80F68();
  v3 = sub_257B847DC();

  return v3;
}

uint64_t sub_257B7D8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a1);
  sub_257B80F68();
  sub_257B847EC();
  sub_257B7D954();
  MEMORY[0x277D82BD8](a3);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B7D988()
{
  v33 = 0;
  v17 = 0;
  v21 = sub_257B844EC();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v18 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1);
  v22 = &v7 - v18;
  v33 = v0;
  sub_257B8457C();
  v23 = sub_257B8456C();
  (*(v19 + 104))(v22, *MEMORY[0x277D70178], v21);
  v25 = sub_257B75F24();
  v30 = v25;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BE0, &qword_257B964F8);
  sub_257B81F0C();
  sub_257B8483C();
  v26 = v29;

  if (v26)
  {
    v16 = v26;
    v10 = v26;
    v11 = [v26 jobIdentifier];
    v12 = sub_257B846EC();
    v13 = v2;
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v27 = v14;
  v28 = v15;
  if (v15)
  {
    v31 = v27;
    v32 = v28;
  }

  else
  {
    v31 = sub_257B8474C();
    v32 = v3;
    if (v28)
    {
      sub_257B8104C(&v27);
    }
  }

  v7 = v32;
  sub_257B8455C();

  (*(v19 + 8))(v22, v21);
  MEMORY[0x277D82BD8](v23);
  v8 = sub_257B76C08();
  [v8 cancelProcessing];
  MEMORY[0x277D82BD8](v8);
  v9 = 0;
  sub_257B80504();
  v4 = sub_257B8499C();
  sub_257B75F8C(v4);
  sub_257B80568();
  sub_257B8474C();
  v5 = sub_257B76240();
  sub_257B762F8(v5);
  sub_257B76684(v9);
  return sub_257B767EC(v9);
}

uint64_t sub_257B7DCB0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_257B7D988();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B7DD00()
{
  v7 = (v0 + qword_281181678);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  sub_257B844DC();
  sub_257B7DE08();
  v4 = sub_257B844CC();

  v3 = (v6 + qword_281181678);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;

  swift_endAccess();
  return v4;
}

uint64_t sub_257B7DE24(uint64_t a1)
{

  v4 = (v1 + qword_281181678);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t (*sub_257B7DEA4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_257B7DD00();
  return sub_257B7DF00;
}

uint64_t sub_257B7DF00(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_257B7DE24(*a1);
  }

  v5 = *a1;

  sub_257B7DE24(v5);
  v4 = *a1;
}

uint64_t sub_257B7DF70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v21 = a1;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BA8, &qword_257B964D8);
  v16 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4);
  v27 = v12 - v16;
  v17 = 0;
  v28 = sub_257B844FC();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v18 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v5);
  v19 = v12 - v18;
  v33 = v12 - v18;
  v32 = v6;
  v31 = v2;
  v20 = sub_257B8454C();
  v24 = sub_257B8453C();
  v23 = [v21 identifier];
  sub_257B846EC();
  v22 = v7;
  sub_257B8452C();

  MEMORY[0x277D82BD8](v23);

  if ((*(v25 + 48))(v27, 1, v28) == 1)
  {
    sub_257B810F8(v27);
  }

  else
  {
    (*(v25 + 32))(v19, v27, v28);
    v12[4] = sub_257B8453C();
    v13 = sub_257B8451C();
    v14 = v8;

    if (v14)
    {
      v12[2] = v13;
      v12[3] = v14;
      v12[1] = v14;
      v29 = v13;
      v30 = v14;
      sub_257B843FC();
      v9 = sub_257B8441C();
      (*(*(v9 - 8) + 56))(v15, 0, 1);

      return (*(v25 + 8))(v19, v28);
    }

    (*(v25 + 8))(v19, v28);
  }

  v11 = sub_257B8441C();
  return (*(*(v11 - 8) + 56))(v15, 1);
}

uint64_t sub_257B7E2CC(uint64_t a1, int a2)
{
  v19 = 0;
  v24 = a1;
  v23 = a2;
  v22 = v2;
  v21 = sub_257B75F24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BE0, &qword_257B964F8);
  sub_257B81F0C();
  sub_257B8483C();
  v17 = v20;
  if (!v20)
  {
  }

  v19 = v20;

  sub_257B81FE8();
  v18[0] = sub_257B8498C();
  v18[1] = v3;
  v4 = sub_257B8474C();
  MEMORY[0x259C6D120](v4);

  sub_257B8496C();
  v5 = sub_257B8474C();
  MEMORY[0x259C6D120](v5);

  sub_257B8104C(v18);
  result = sub_257B8473C();
  if ((4 * a1) >> 64 == (4 * a1) >> 63)
  {
    v13 = sub_257B7E6C0();
    (MEMORY[0x277D82BE0])();
    v14 = [v16 speechSynthesisOutputMetadataBlock];
    if (v14)
    {
      *(swift_allocObject() + 16) = v14;
      v12 = sub_257B8204C;
    }

    else
    {
      v12 = 0;
    }

    (MEMORY[0x277D82BD8])();
    if (v12)
    {
      v11 = v12;
    }

    else
    {
      sub_257B8495C();
      __break(1u);
    }

    v10 = sub_257B8499C();
    v9 = v7;
    MEMORY[0x277D82BE0](v13);
    *v9 = v13;
    sub_257B79B2C();
    (v11)(v10, v17, v8);

    MEMORY[0x277D82BD8](v13);
    return MEMORY[0x277D82BD8](v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257B7E710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_257B81FE8();
  v5 = sub_257B847DC();
  (*(a3 + 16))();
  return MEMORY[0x277D82BD8](v5);
}

uint64_t sub_257B7E778(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  MEMORY[0x277D82BE0](a1);
  sub_257B7E2CC(a3, a4);
  return MEMORY[0x277D82BD8](a1);
}

unint64_t sub_257B7E7D8(uint64_t a1, unint64_t a2, int a3)
{
  v91 = a1;
  v90 = a2;
  v89 = a3;
  v81 = "Fatal error";
  v82 = "Unexpectedly found nil while unwrapping an Optional value";
  v83 = "MacinTalk/MacinTalkAUSPAudioUnit.swift";
  v84 = "Not enough bits to represent the passed value";
  v85 = "Swift/Integers.swift";
  v86 = sub_257B8204C;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v125 = 0;
  v117 = 0;
  v118 = 0;
  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v112 = 0;
  v109 = 0;
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B78, &qword_257B964A8);
  v87 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5);
  v88 = &v26 - v87;
  v92 = sub_257B845EC();
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v91, v90);
  v96 = &v26 - v95;
  v132 = &v26 - v95;
  v131 = v6;
  v130 = v7;
  v129 = v8;
  v128 = v3;
  v97 = sub_257B75F24();
  v127 = v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BE0, &qword_257B964F8);
  sub_257B81F0C();
  sub_257B8483C();
  v99 = v126;
  if (!v126)
  {
  }

  v79 = v99;
  v78 = v99;
  v125 = v99;

  sub_257B76460(v88);
  if ((*(v93 + 48))(v88, 1, v92) == 1)
  {
    sub_257B80988(v88);
    return MEMORY[0x277D82BD8](v78);
  }

  (*(v93 + 32))(v96, v88, v92);
  v77 = sub_257B76288();
  if (v90 > 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_257B8495C();
    __break(1u);
  }

  v138 = v90;
  v137 = v89;
  v139 = v90;
  v140 = v89;
  v123 = v90;
  v124 = v89;
  v121 = v90;
  v122 = v89;
  v119 = [v77 translateRangeInTransformedString_];
  v120 = v10;
  v75 = v119;
  v74 = v10;
  result = MEMORY[0x277D82BD8](v77);
  v117 = v75;
  v118 = v74;
  v76 = &v75[v74];
  if (__OFADD__(v75, v74))
  {
    __break(1u);
    goto LABEL_28;
  }

  if (!v76)
  {
    (*(v93 + 8))(v96, v92);
    return MEMORY[0x277D82BD8](v78);
  }

  v67 = sub_257B76288();
  v72 = [v67 originalString];
  v68 = sub_257B846EC();
  v69 = v12;
  MEMORY[0x277D82BD8](v67);
  v70 = sub_257B8486C();
  v71 = v13;
  v73 = v14;

  MEMORY[0x277D82BD8](v72);
  if (v73)
  {
    (*(v93 + 8))(v96, v92);
    return MEMORY[0x277D82BD8](v78);
  }

  v65 = v70;
  v66 = v71;
  v60 = v71;
  v59 = v70;
  v115 = v70;
  v116 = v71;
  v58 = [v78 ssmlRepresentation];
  v61 = sub_257B846EC();
  v62 = v15;
  v113 = v61;
  v114 = v15;
  MEMORY[0x277D82BD8](v58);
  v63 = sub_257B845DC();
  v64 = v16;
  if (v17)
  {

    (*(v93 + 8))(v96, v92);
    return MEMORY[0x277D82BD8](v78);
  }

  v56 = v63;
  v57 = v64;
  v43 = v64;
  v44 = v63;
  v111 = v63;
  v112 = v64;
  v42 = v110;
  v110[0] = v61;
  v110[1] = v62;
  sub_257B82054();
  v50 = sub_257B8476C();
  v109 = v50;
  sub_257B8478C();
  v45 = v18;
  v46 = sub_257B848AC();
  v47 = v19;
  v48 = v20;
  v49 = v21;

  v105 = v46;
  v106 = v47;
  v107 = v48;
  v108 = v49;
  sub_257B820CC();
  v51 = sub_257B8482C();

  v134 = v50;
  v133 = v51;
  v135 = v50;
  v136 = v51;
  v103 = v50;
  v104 = v51;
  v52 = v50;
  v53 = v51;
  v101 = v50;
  v102 = v51;
  result = sub_257B81FE8();
  v54 = result;
  v55 = 4 * v91;
  if ((4 * v91) >> 64 != (4 * v91) >> 63)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v40 = sub_257B7F188(1, v52, v53, v55);
  v100 = v40;
  MEMORY[0x277D82BE0](v80);
  v41 = [v80 speechSynthesisOutputMetadataBlock];
  if (v41)
  {
    v39 = v41;
    v36 = v41;
    v22 = swift_allocObject();
    v23 = v86;
    *(v22 + 16) = v36;
    v37 = v23;
    v38 = v22;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v34 = v38;
  v35 = v37;
  MEMORY[0x277D82BD8](v80);
  if (v35)
  {
    v32 = v35;
    v33 = v34;
  }

  else
  {
    sub_257B8495C();
    __break(1u);
  }

  v31 = v33;
  v29 = v32;
  v28 = sub_257B8499C();
  v27 = v24;
  MEMORY[0x277D82BE0](v40);
  v25 = v28;
  *v27 = v40;
  sub_257B79B2C();
  v30 = v25;
  v29();

  MEMORY[0x277D82BD8](v40);

  (*(v93 + 8))(v96, v92);
  return MEMORY[0x277D82BD8](v78);
}

uint64_t sub_257B7F1E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  MEMORY[0x277D82BE0](a1);
  sub_257B7E7D8(a3, a4, a5);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B7F26C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_257B7F248();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_257B7F2E0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_257B7F2CC();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t *sub_257B7F330()
{
  MEMORY[0x277D82BD8](*(v0 + qword_2811812C0));
  sub_257B80D0C((v0 + qword_2811812D8));
  sub_257B80D40((v0 + qword_2811812C8));
  sub_257B80D0C((v0 + qword_2811812D0));
  MEMORY[0x277D82BD8](*(v0 + qword_2811812E0));
  sub_257B80988(v0 + qword_281181680);
  sub_257B80D0C((v0 + qword_2811816E8));
  sub_257B80D0C((v0 + qword_2811816A8));
  sub_257B80D0C((v0 + qword_2811816A0));
  MEMORY[0x277D82BD8](*(v0 + qword_2811816D8));
  v2 = qword_2811816C0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2);
  (v4)(v0 + qword_2811816C8, v3);
  (v4)(v0 + qword_2811816D0, v3);
  return sub_257B80D6C((v0 + qword_281181678));
}

id MTMacinTalkAUSPAudioUnit.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTMacinTalkAUSPAudioUnit();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *sub_257B7F53C(uint64_t a1)
{
  MEMORY[0x277D82BD8](*(a1 + qword_2811812C0));
  sub_257B80D0C((a1 + qword_2811812D8));
  sub_257B80D40((a1 + qword_2811812C8));
  sub_257B80D0C((a1 + qword_2811812D0));
  MEMORY[0x277D82BD8](*(a1 + qword_2811812E0));
  sub_257B80988(a1 + qword_281181680);
  sub_257B80D0C((a1 + qword_2811816E8));
  sub_257B80D0C((a1 + qword_2811816A8));
  sub_257B80D0C((a1 + qword_2811816A0));
  MEMORY[0x277D82BD8](*(a1 + qword_2811816D8));
  v2 = qword_2811816C0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B80, &qword_257B964B0);
  v4 = *(*(v3 - 8) + 8);
  v4(a1 + v2);
  (v4)(a1 + qword_2811816C8, v3);
  (v4)(a1 + qword_2811816D0, v3);
  return sub_257B80D6C((a1 + qword_281181678));
}

uint64_t sub_257B7F70C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v58 = a1;
  v53 = a2;
  v54 = a3;
  v57 = a4;
  v55 = a5;
  v56 = a6;
  v50 = "Fatal error";
  v51 = "Range requires lowerBound <= upperBound";
  v52 = "Swift/Range.swift";
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v77 = 0;
  v78 = 0;
  v75 = 0;
  v59 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2BA0, &qword_257B964D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v60 = &v19 - v59;
  v81 = MEMORY[0x28223BE20](v58, v53);
  v82 = v6;
  v79 = v7;
  v80 = v8 & 1;
  v77 = v9;
  v78 = v10;
  if (v8)
  {
    v76[2] = v55;
    v76[3] = v56;
    v25 = v76;
    v76[0] = v58;
    v76[1] = v53;
    v23 = 0;
    v16 = *(*(sub_257B8445C() - 8) + 56);
    v24 = 1;
    v16(v60, 1);
    sub_257B82054();
    v26 = sub_257B848BC();
    v27 = v17;
    sub_257B811A0(v60);
    if (v27)
    {
      v20 = 0;
      v21 = 1;
    }

    else
    {
      v22 = v26;
      v20 = v26;
      v21 = 0;
    }

    v45 = v20;
    v46 = v21;
  }

  else
  {
    v49 = v54;
    v47 = v54;
    v75 = v54;
    v48 = &v74;
    v74 = v54;
    v73 = MEMORY[0x259C6CF20](v55, v56);
    if (sub_257B846BC())
    {
      v45 = 0;
      v46 = 1;
    }

    else
    {
      v69 = v55;
      v70 = v56;
      v67 = v58;
      v68 = v53;
      v44 = MEMORY[0x259C6CF20]();
      if (v44 >> 14 < v47 >> 14)
      {
        sub_257B8495C();
        __break(1u);
      }

      v37 = sub_257B8445C();
      v11 = *(v37 - 8);
      v38 = *(v11 + 56);
      v39 = v11 + 56;
      v43 = 1;
      v38(v60, 1);
      v40 = sub_257B82054();
      *&v41 = sub_257B848BC();
      *(&v41 + 1) = v12;
      v42 = v13;
      sub_257B811A0(v60);
      v65 = v41;
      v66 = v42 & 1 & v43;

      if (v66)
      {
        v63 = v55;
        v64 = v56;
        v61 = v58;
        v62 = v53;
        v36 = sub_257B8472C();
        if (v47 >> 14 < v36 >> 14)
        {
          sub_257B8495C();
          __break(1u);
        }

        v34 = 1;
        (v38)(v60, 1, 1, v37);
        v35 = sub_257B848BC();
        v32 = v14;
        v33 = v15;
        sub_257B811A0(v60);
        *&v71 = v35;
        *(&v71 + 1) = v32;
        v72 = v33 & 1 & v34;
      }

      else
      {
        v71 = v65;
        v72 = 0;
      }

      v31 = v71;
      if (v72)
      {
        v28 = 0;
        v29 = 1;
      }

      else
      {
        v30 = v31;
        v28 = v31;
        v29 = 0;
      }

      v45 = v28;
      v46 = v29;
    }
  }

  return v45;
}

Swift::UInt32 __swiftcall String.osType()()
{
  v24 = v1;
  v23 = v0;
  v22 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v20 = 0;
  v27 = sub_257B8471C();
  v21 = *(v27 - 8);
  v25 = v21;
  v2 = *(v21 + 64);
  v3 = MEMORY[0x28223BE20](v23, v24);
  v26 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v3;
  v35 = v5;
  v33 = 0;
  sub_257B8470C();
  sub_257B801FC();
  v6 = sub_257B846FC();
  v30 = v7;
  v28 = v6;
  v29 = v7;
  (*(v25 + 8))(v26, v27);
  if (v30 >> 60 == 15)
  {
    v17 = v20;
  }

  else
  {
    v18 = v28;
    v19 = v29;
    v15 = v29;
    v16 = v28;
    v31 = v28;
    v32 = v29;
    if (MEMORY[0x259C6CBE0]() == 4)
    {
      v8 = v20;
      sub_257B80458(v16, v15);
      v13 = &v11;
      MEMORY[0x28223BE20](&v11, v9);
      sub_257B8442C();
      v14 = v8;
      if (v8)
      {
        goto LABEL_11;
      }

      sub_257B80208(v16, v15);
      sub_257B80208(v16, v15);
      v17 = v14;
    }

    else
    {
      sub_257B80208(v16, v15);
      v17 = v20;
    }
  }

  v12 = v33;
  if (!HIDWORD(v33))
  {
    return v12;
  }

  sub_257B8495C();
  __break(1u);
LABEL_11:
  result = sub_257B80208(v16, v15);
  __break(1u);
  return result;
}

uint64_t sub_257B80208(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_257B80284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (MEMORY[0x259C6CBE0]() < 0)
  {
    sub_257B8495C();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2CC8, &qword_257B968B8);
  sub_257B82DC4();
  sub_257B8485C();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2CE0, &qword_257B968C0);
    result = sub_257B8494C();
    if (v12)
    {
      break;
    }

    v5 = *a4 << 8;
    v6 = *(a1 + v11);
    v8 = v5 + v6;
    if (__CFADD__(v5, v6))
    {
      __break(1u);
      return result;
    }

    *a4 = v8;
  }

  return result;
}

uint64_t sub_257B80458(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

unint64_t sub_257B80504()
{
  v2 = qword_2811811F0;
  if (!qword_2811811F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2811811F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_257B80568()
{
  v2 = qword_281181248;
  if (!qword_281181248)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_281181248);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_257B805CC(const void *a1, void *a2)
{
  v6 = sub_257B845EC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B78, &qword_257B964A8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

void *sub_257B80760(const void *a1, void *a2)
{
  v7 = sub_257B845EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B78, &qword_257B964A8);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2B78, &qword_257B964A8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_257B80988(uint64_t a1)
{
  v3 = sub_257B845EC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_257B80A30()
{
  v2 = qword_281181240;
  if (!qword_281181240)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_281181240);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for AudioUnitParameterOptions()
{
  v4 = qword_281181200;
  if (!qword_281181200)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_281181200);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_257B80B2C()
{
  v2 = qword_281181218;
  if (!qword_281181218)
  {
    type metadata accessor for AudioUnitParameterOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181218);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for CMFormatDescription()
{
  v4 = qword_281181230;
  if (!qword_281181230)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_281181230);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_257B80C44()
{
  v2 = qword_281181270;
  if (!qword_281181270)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_281181270);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_257B80CA8()
{
  v2 = qword_281181268;
  if (!qword_281181268)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_281181268);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_257B80D40(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_257B80D6C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_257B80D98()
{
  v2 = qword_281181238;
  if (!qword_281181238)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_281181238);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_257B80E88(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

uint64_t sub_257B80EC0(uint64_t a1)
{
  v3 = sub_257B8441C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_257B80F68()
{
  v2 = qword_2811811F8;
  if (!qword_2811811F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2811811F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_257B80FCC()
{
  v2 = qword_27F8F2BB8;
  if (!qword_27F8F2BB8)
  {
    sub_257B80F68();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2BB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_257B8104C(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

unint64_t sub_257B81078()
{
  v2 = qword_27F8F2BC8;
  if (!qword_27F8F2BC8)
  {
    sub_257B8441C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2BC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_257B810F8(uint64_t a1)
{
  v3 = sub_257B844FC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_257B811A0(uint64_t a1)
{
  v3 = sub_257B8445C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_257B81270()
{
  v2 = qword_27F8F2BD8;
  if (!qword_27F8F2BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F2BD0, &qword_257B964F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2BD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

void *sub_257B8136C(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

id sub_257B813AC()
{
  v2 = sub_257B846DC();
  v3 = [v1 initWithOriginalString_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

id sub_257B81434(uint64_t a1)
{
  v4 = [v1 initWithCMAudioFormatDescription_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id sub_257B81484(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2D28, &qword_257B968E0);
  sub_257B833B4();
  sub_257B849BC();
  v6 = [v4 initWithFormat:a1 error:v7];
  MEMORY[0x277D82BE0]();
  MEMORY[0x277D82BD8](0);
  if (v6)
  {
    MEMORY[0x277D82BD8](a1);
    *MEMORY[0x277D85DE8];
    return v6;
  }

  else
  {
    sub_257B843EC();
    MEMORY[0x277D82BD8](0);
    swift_willThrow();
    MEMORY[0x277D82BD8](a1);
    v2 = __OFSUB__(*MEMORY[0x277D85DE8], v8);
    return v3;
  }
}

id sub_257B8161C(uint64_t a1, uint64_t a2)
{
  sub_257B80CA8();
  v5 = sub_257B847DC();
  v7 = [v4 initWithAudioUnit:a1 busType:a2 busses:?];
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](a1);
  return v7;
}

id sub_257B816B0()
{
  v2 = sub_257B846DC();
  v3 = [v1 initWithString_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

id sub_257B81714(uint64_t a1, uint64_t a2)
{
  v6 = [v2 initWithVoice_frontend_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v6;
}

id sub_257B817A4()
{
  v2 = sub_257B846DC();
  v3 = [v1 initWithBookmarkName_atByteSampleOffset_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

uint64_t sub_257B81860()
{
  sub_257B82C4C();
  sub_257B82CCC();
  return sub_257B84A7C();
}

uint64_t sub_257B81A64()
{
  sub_257B82C4C();
  sub_257B82CCC();
  return sub_257B84A6C();
}

uint64_t sub_257B81AA8()
{
  sub_257B82C4C();
  sub_257B82CCC();
  return sub_257B84A4C();
}

uint64_t sub_257B81AEC()
{
  sub_257B82C4C();
  sub_257B82CCC();
  return sub_257B84A5C();
}

uint64_t sub_257B81CE4@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_257B81D14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_257B81D54@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_257B81D84@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_257B81DC4@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for TTSSpeechGender()
{
  v4 = qword_281181250;
  if (!qword_281181250)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_281181250);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_257B81E8C()
{
  v2 = qword_281181260;
  if (!qword_281181260)
  {
    type metadata accessor for TTSSpeechGender();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181260);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B81F0C()
{
  v2 = qword_27F8F2BE8;
  if (!qword_27F8F2BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F2BE0, &qword_257B964F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2BE8);
    return WitnessTable;
  }

  return v2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t sub_257B81FE8()
{
  v2 = qword_27F8F2BF0;
  if (!qword_27F8F2BF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27F8F2BF0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_257B82054()
{
  v2 = qword_281181288;
  if (!qword_281181288)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181288);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B820CC()
{
  v2 = qword_27F8F2BF8;
  if (!qword_27F8F2BF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2BF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B8215C()
{
  v2 = qword_27F8F2C00;
  if (!qword_27F8F2C00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2C00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_257B821E8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_257B82350(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_257B82570()
{
  v4 = sub_257B82918();
  inited = v4;
  if (v0 <= 0x3F)
  {
    v6 = *(v4 - 8) + 64;
    v3 = sub_257B829B4();
    inited = v3;
    if (v1 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      inited = swift_initClassMetadata2();
      if (!inited)
      {
        return 0;
      }
    }
  }

  return inited;
}

uint64_t sub_257B82918()
{
  v4 = qword_281181280;
  if (!qword_281181280)
  {
    sub_257B845EC();
    v3 = sub_257B8489C();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_281181280);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_257B829B4()
{
  v4 = qword_2811812E8;
  if (!qword_2811812E8)
  {
    v3 = sub_257B844BC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2811812E8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_257B82A84()
{
  v2 = qword_281181220;
  if (!qword_281181220)
  {
    type metadata accessor for AudioUnitParameterOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B82B34()
{
  v2 = qword_281181228;
  if (!qword_281181228)
  {
    type metadata accessor for AudioUnitParameterOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B82BCC()
{
  v2 = qword_281181210;
  if (!qword_281181210)
  {
    type metadata accessor for AudioUnitParameterOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B82C4C()
{
  v2 = qword_281181208;
  if (!qword_281181208)
  {
    type metadata accessor for AudioUnitParameterOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181208);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B82CCC()
{
  v2 = qword_2811812B8;
  if (!qword_2811812B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2811812B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B82D44()
{
  v2 = qword_281181258;
  if (!qword_281181258)
  {
    type metadata accessor for TTSSpeechGender();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181258);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B82DC4()
{
  v2 = qword_27F8F2CD0;
  if (!qword_27F8F2CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F2CC8, &qword_257B968B8);
    sub_257B82E68();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2CD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B82E68()
{
  v2 = qword_27F8F2CD8;
  if (!qword_27F8F2CD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2CD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_257B82EEC(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F2CE8, &qword_257B968C8);
    v1 = sub_257B847FC();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_257B82FA4()
{
  v2 = qword_27F8F2CF8;
  if (!qword_27F8F2CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F2CF0, &qword_257B968D0);
    sub_257B82E68();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2CF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_257B83048()
{
  v2 = qword_27F8F2D08;
  if (!qword_27F8F2D08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F8F2D08);
    return WitnessTable;
  }

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_257B8324C()
{
  v2 = qword_27F8F2D10;
  if (!qword_27F8F2D10)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27F8F2D10);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_257B832B0()
{
  v2 = qword_27F8F2D18;
  if (!qword_27F8F2D18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27F8F2D18);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_257B83314()
{
  v2 = qword_27F8F2D20;
  if (!qword_27F8F2D20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27F8F2D20);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_257B83378(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_257B833B4()
{
  v2 = qword_281181278;
  if (!qword_281181278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F2D28, &qword_257B968E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281181278);
    return WitnessTable;
  }

  return v2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_257B83450(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_257B83530(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3)
    {
      *(result + 24) = 1;
    }
  }

  else if (a3)
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t type metadata accessor for AudioBufferList()
{
  v4 = qword_27F8F2D30;
  if (!qword_27F8F2D30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D30);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_257B837A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 64))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_257B838AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3)
    {
      *(result + 64) = 1;
    }
  }

  else if (a3)
  {
    *(result + 64) = 0;
  }

  return result;
}

uint64_t type metadata accessor for AudioTimeStamp()
{
  v4 = qword_27F8F2D38;
  if (!qword_27F8F2D38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D38);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AudioUnitRenderActionFlags()
{
  v4 = qword_27F8F2D40;
  if (!qword_27F8F2D40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D40);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for AudioTimeStampFlags()
{
  v4 = qword_27F8F2D48;
  if (!qword_27F8F2D48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D48);
      return v1;
    }
  }

  return v4;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t type metadata accessor for SMPTETime()
{
  v4 = qword_27F8F2D50;
  if (!qword_27F8F2D50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D50);
      return v1;
    }
  }

  return v4;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_257B83CEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_257B83DF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t type metadata accessor for AudioBuffer()
{
  v4 = qword_27F8F2D58;
  if (!qword_27F8F2D58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D58);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SMPTETimeFlags()
{
  v4 = qword_27F8F2D60;
  if (!qword_27F8F2D60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D60);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SMPTETimeType()
{
  v4 = qword_27F8F2D68;
  if (!qword_27F8F2D68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F8F2D68);
      return v1;
    }
  }

  return v4;
}

void MTBERemoteIOSoundOutput::WaitForOutputToStop(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 134217984;
  *a3 = a2;
  _os_log_error_impl(&dword_257B07000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MTX WaitForOutputToStop AvailableCapacity not increasing %lu", buf, 0xCu);
}

void SLML::Fatal(SLML *this, const char *a2, ...)
{
  va_start(va, a2);
  v3 = MEMORY[0x277D85DF8];
  fwrite("SpeechMatrix: ", 0xEuLL, 1uLL, *MEMORY[0x277D85DF8]);
  vfprintf(*v3, this, va);
  fputc(10, *v3);
  abort();
}

void MTBEAbort(FILE *a1, MTFESpeechVisitor *a2, uint64_t a3)
{
  fclose(a1);
  MTFESpeechVisitor::~MTFESpeechVisitor(a2);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }
}

void SLCFArrayBuilder::~SLCFArrayBuilder(SLCFArrayBuilder *this)
{
  MEMORY[0x2821CC848](this);
}

{
  MEMORY[0x2821CC850](this);
}

void SLCFStringTextSource::SLCFStringTextSource(SLCFStringTextSource *this, const __CFString *a2)
{
  MEMORY[0x2821CC858](this, a2);
}

{
  MEMORY[0x2821CC860](this, a2);
}

void SLCFStringTextSource::~SLCFStringTextSource(SLCFStringTextSource *this)
{
  MEMORY[0x2821CC868](this);
}

{
  MEMORY[0x2821CC870](this);
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}