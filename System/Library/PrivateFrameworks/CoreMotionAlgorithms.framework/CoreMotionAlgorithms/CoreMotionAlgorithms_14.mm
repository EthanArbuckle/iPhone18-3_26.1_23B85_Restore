uint64_t sub_245DF350C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 96);
  if (v5)
  {
    v7 = *(a1 + 8);
    PB::TextFormatter::format(this, "armedDuration");
    v5 = *(a1 + 96);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*(a1 + 96) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "armedDurationThreshold", *(a1 + 72));
  v5 = *(a1 + 96);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = *(a1 + 16);
  PB::TextFormatter::format(this, "armedDurationThresholdTimestamp");
  v5 = *(a1 + 96);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "btHint");
  v5 = *(a1 + 96);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = *(a1 + 32);
  PB::TextFormatter::format(this, "epochFirstTimestamp");
  v5 = *(a1 + 96);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = *(a1 + 40);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v5 = *(a1 + 96);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = *(a1 + 48);
  PB::TextFormatter::format(this, "firstTriggerTimestamp");
  v5 = *(a1 + 96);
  if ((v5 & 0x2000) == 0)
  {
LABEL_9:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = *(a1 + 92);
  PB::TextFormatter::format(this, "isBTHintDetected");
  v5 = *(a1 + 96);
  if ((v5 & 0x4000) == 0)
  {
LABEL_10:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = *(a1 + 93);
  PB::TextFormatter::format(this, "isClusterInBeginningOfDrive");
  v5 = *(a1 + 96);
  if ((v5 & 0x8000) == 0)
  {
LABEL_11:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(a1 + 94);
  PB::TextFormatter::format(this, "isTriggerCluster");
  v5 = *(a1 + 96);
  if ((v5 & 0x40) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a1 + 56);
  PB::TextFormatter::format(this, "lastTriggerTimestamp");
  v5 = *(a1 + 96);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = *(a1 + 76);
  PB::TextFormatter::format(this, "numTriggersInEpoch");
  v5 = *(a1 + 96);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v18 = *(a1 + 80);
  PB::TextFormatter::format(this, "numTriggersInWindow");
  v5 = *(a1 + 96);
  if ((v5 & 0x800) == 0)
  {
LABEL_15:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v19 = *(a1 + 84);
  PB::TextFormatter::format(this, "numTriggersThreshold");
  v5 = *(a1 + 96);
  if ((v5 & 0x80) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  v20 = *(a1 + 64);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 96) & 0x1000) != 0)
  {
LABEL_17:
    v6 = *(a1 + 88);
    PB::TextFormatter::format(this, "windowDuration");
  }

LABEL_18:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DF3750(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_304;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 300)
      {
        if (v22 > 304)
        {
          if (v22 <= 306)
          {
            if (v22 == 305)
            {
              *(a1 + 96) |= 1u;
              v99 = *(this + 1);
              v2 = *(this + 2);
              v100 = *this;
              if (v99 > 0xFFFFFFFFFFFFFFF5 || v99 + 10 > v2)
              {
                v188 = 0;
                v189 = 0;
                v103 = 0;
                if (v2 <= v99)
                {
                  v2 = *(this + 1);
                }

                v190 = v2 - v99;
                v191 = (v100 + v99);
                v192 = v99 + 1;
                while (1)
                {
                  if (!v190)
                  {
                    v103 = 0;
                    *(this + 24) = 1;
                    goto LABEL_291;
                  }

                  v193 = v192;
                  v194 = *v191;
                  *(this + 1) = v193;
                  v103 |= (v194 & 0x7F) << v188;
                  if ((v194 & 0x80) == 0)
                  {
                    break;
                  }

                  v188 += 7;
                  --v190;
                  ++v191;
                  v192 = v193 + 1;
                  v14 = v189++ > 8;
                  if (v14)
                  {
                    v103 = 0;
                    goto LABEL_290;
                  }
                }

                if (*(this + 24))
                {
                  v103 = 0;
                }

LABEL_290:
                v2 = v193;
              }

              else
              {
                v101 = 0;
                v102 = 0;
                v103 = 0;
                v104 = (v100 + v99);
                v105 = v99 + 1;
                while (1)
                {
                  v2 = v105;
                  *(this + 1) = v105;
                  v106 = *v104++;
                  v103 |= (v106 & 0x7F) << v101;
                  if ((v106 & 0x80) == 0)
                  {
                    break;
                  }

                  v101 += 7;
                  ++v105;
                  v14 = v102++ > 8;
                  if (v14)
                  {
                    v103 = 0;
                    break;
                  }
                }
              }

LABEL_291:
              *(a1 + 8) = v103;
            }

            else
            {
              *(a1 + 96) |= 0x400u;
              v41 = *(this + 1);
              v2 = *(this + 2);
              v42 = *this;
              if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
              {
                v139 = 0;
                v140 = 0;
                v45 = 0;
                if (v2 <= v41)
                {
                  v2 = *(this + 1);
                }

                v141 = v2 - v41;
                v142 = (v42 + v41);
                v143 = v41 + 1;
                while (1)
                {
                  if (!v141)
                  {
                    LODWORD(v45) = 0;
                    *(this + 24) = 1;
                    goto LABEL_263;
                  }

                  v144 = v143;
                  v145 = *v142;
                  *(this + 1) = v144;
                  v45 |= (v145 & 0x7F) << v139;
                  if ((v145 & 0x80) == 0)
                  {
                    break;
                  }

                  v139 += 7;
                  --v141;
                  ++v142;
                  v143 = v144 + 1;
                  v14 = v140++ > 8;
                  if (v14)
                  {
                    LODWORD(v45) = 0;
                    goto LABEL_262;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v45) = 0;
                }

LABEL_262:
                v2 = v144;
              }

              else
              {
                v43 = 0;
                v44 = 0;
                v45 = 0;
                v46 = (v42 + v41);
                v47 = v41 + 1;
                while (1)
                {
                  v2 = v47;
                  *(this + 1) = v47;
                  v48 = *v46++;
                  v45 |= (v48 & 0x7F) << v43;
                  if ((v48 & 0x80) == 0)
                  {
                    break;
                  }

                  v43 += 7;
                  ++v47;
                  v14 = v44++ > 8;
                  if (v14)
                  {
                    LODWORD(v45) = 0;
                    break;
                  }
                }
              }

LABEL_263:
              *(a1 + 80) = v45;
            }

            goto LABEL_300;
          }

          if (v22 == 307)
          {
            *(a1 + 96) |= 0x200u;
            v117 = *(this + 1);
            v2 = *(this + 2);
            v118 = *this;
            if (v117 > 0xFFFFFFFFFFFFFFF5 || v117 + 10 > v2)
            {
              v202 = 0;
              v203 = 0;
              v121 = 0;
              if (v2 <= v117)
              {
                v2 = *(this + 1);
              }

              v204 = v2 - v117;
              v205 = (v118 + v117);
              v206 = v117 + 1;
              while (1)
              {
                if (!v204)
                {
                  LODWORD(v121) = 0;
                  *(this + 24) = 1;
                  goto LABEL_299;
                }

                v207 = v206;
                v208 = *v205;
                *(this + 1) = v207;
                v121 |= (v208 & 0x7F) << v202;
                if ((v208 & 0x80) == 0)
                {
                  break;
                }

                v202 += 7;
                --v204;
                ++v205;
                v206 = v207 + 1;
                v14 = v203++ > 8;
                if (v14)
                {
                  LODWORD(v121) = 0;
                  goto LABEL_298;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v121) = 0;
              }

LABEL_298:
              v2 = v207;
            }

            else
            {
              v119 = 0;
              v120 = 0;
              v121 = 0;
              v122 = (v118 + v117);
              v123 = v117 + 1;
              while (1)
              {
                v2 = v123;
                *(this + 1) = v123;
                v124 = *v122++;
                v121 |= (v124 & 0x7F) << v119;
                if ((v124 & 0x80) == 0)
                {
                  break;
                }

                v119 += 7;
                ++v123;
                v14 = v120++ > 8;
                if (v14)
                {
                  LODWORD(v121) = 0;
                  break;
                }
              }
            }

LABEL_299:
            *(a1 + 76) = v121;
            goto LABEL_300;
          }

          if (v22 == 308)
          {
            *(a1 + 96) |= 4u;
            v73 = *(this + 1);
            v2 = *(this + 2);
            v74 = *this;
            if (v73 > 0xFFFFFFFFFFFFFFF5 || v73 + 10 > v2)
            {
              v167 = 0;
              v168 = 0;
              v77 = 0;
              if (v2 <= v73)
              {
                v2 = *(this + 1);
              }

              v169 = v2 - v73;
              v170 = (v74 + v73);
              v171 = v73 + 1;
              while (1)
              {
                if (!v169)
                {
                  v77 = 0;
                  *(this + 24) = 1;
                  goto LABEL_279;
                }

                v172 = v171;
                v173 = *v170;
                *(this + 1) = v172;
                v77 |= (v173 & 0x7F) << v167;
                if ((v173 & 0x80) == 0)
                {
                  break;
                }

                v167 += 7;
                --v169;
                ++v170;
                v171 = v172 + 1;
                v14 = v168++ > 8;
                if (v14)
                {
                  v77 = 0;
                  goto LABEL_278;
                }
              }

              if (*(this + 24))
              {
                v77 = 0;
              }

LABEL_278:
              v2 = v172;
            }

            else
            {
              v75 = 0;
              v76 = 0;
              v77 = 0;
              v78 = (v74 + v73);
              v79 = v73 + 1;
              while (1)
              {
                v2 = v79;
                *(this + 1) = v79;
                v80 = *v78++;
                v77 |= (v80 & 0x7F) << v75;
                if ((v80 & 0x80) == 0)
                {
                  break;
                }

                v75 += 7;
                ++v79;
                v14 = v76++ > 8;
                if (v14)
                {
                  v77 = 0;
                  break;
                }
              }
            }

LABEL_279:
            *(a1 + 24) = v77;
            goto LABEL_300;
          }
        }

        else
        {
          if (v22 > 302)
          {
            if (v22 == 303)
            {
              *(a1 + 96) |= 0x20u;
              v107 = *(this + 1);
              v2 = *(this + 2);
              v108 = *this;
              if (v107 > 0xFFFFFFFFFFFFFFF5 || v107 + 10 > v2)
              {
                v195 = 0;
                v196 = 0;
                v111 = 0;
                if (v2 <= v107)
                {
                  v2 = *(this + 1);
                }

                v197 = v2 - v107;
                v198 = (v108 + v107);
                v199 = v107 + 1;
                while (1)
                {
                  if (!v197)
                  {
                    v111 = 0;
                    *(this + 24) = 1;
                    goto LABEL_295;
                  }

                  v200 = v199;
                  v201 = *v198;
                  *(this + 1) = v200;
                  v111 |= (v201 & 0x7F) << v195;
                  if ((v201 & 0x80) == 0)
                  {
                    break;
                  }

                  v195 += 7;
                  --v197;
                  ++v198;
                  v199 = v200 + 1;
                  v14 = v196++ > 8;
                  if (v14)
                  {
                    v111 = 0;
                    goto LABEL_294;
                  }
                }

                if (*(this + 24))
                {
                  v111 = 0;
                }

LABEL_294:
                v2 = v200;
              }

              else
              {
                v109 = 0;
                v110 = 0;
                v111 = 0;
                v112 = (v108 + v107);
                v113 = v107 + 1;
                while (1)
                {
                  v2 = v113;
                  *(this + 1) = v113;
                  v114 = *v112++;
                  v111 |= (v114 & 0x7F) << v109;
                  if ((v114 & 0x80) == 0)
                  {
                    break;
                  }

                  v109 += 7;
                  ++v113;
                  v14 = v110++ > 8;
                  if (v14)
                  {
                    v111 = 0;
                    break;
                  }
                }
              }

LABEL_295:
              *(a1 + 48) = v111;
            }

            else
            {
              *(a1 + 96) |= 0x40u;
              v57 = *(this + 1);
              v2 = *(this + 2);
              v58 = *this;
              if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
              {
                v153 = 0;
                v154 = 0;
                v61 = 0;
                if (v2 <= v57)
                {
                  v2 = *(this + 1);
                }

                v155 = v2 - v57;
                v156 = (v58 + v57);
                v157 = v57 + 1;
                while (1)
                {
                  if (!v155)
                  {
                    v61 = 0;
                    *(this + 24) = 1;
                    goto LABEL_271;
                  }

                  v158 = v157;
                  v159 = *v156;
                  *(this + 1) = v158;
                  v61 |= (v159 & 0x7F) << v153;
                  if ((v159 & 0x80) == 0)
                  {
                    break;
                  }

                  v153 += 7;
                  --v155;
                  ++v156;
                  v157 = v158 + 1;
                  v14 = v154++ > 8;
                  if (v14)
                  {
                    v61 = 0;
                    goto LABEL_270;
                  }
                }

                if (*(this + 24))
                {
                  v61 = 0;
                }

LABEL_270:
                v2 = v158;
              }

              else
              {
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v62 = (v58 + v57);
                v63 = v57 + 1;
                while (1)
                {
                  v2 = v63;
                  *(this + 1) = v63;
                  v64 = *v62++;
                  v61 |= (v64 & 0x7F) << v59;
                  if ((v64 & 0x80) == 0)
                  {
                    break;
                  }

                  v59 += 7;
                  ++v63;
                  v14 = v60++ > 8;
                  if (v14)
                  {
                    v61 = 0;
                    break;
                  }
                }
              }

LABEL_271:
              *(a1 + 56) = v61;
            }

            goto LABEL_300;
          }

          if (v22 == 301)
          {
            *(a1 + 96) |= 8u;
            v89 = *(this + 1);
            v2 = *(this + 2);
            v90 = *this;
            if (v89 > 0xFFFFFFFFFFFFFFF5 || v89 + 10 > v2)
            {
              v181 = 0;
              v182 = 0;
              v93 = 0;
              if (v2 <= v89)
              {
                v2 = *(this + 1);
              }

              v183 = v2 - v89;
              v184 = (v90 + v89);
              v185 = v89 + 1;
              while (1)
              {
                if (!v183)
                {
                  v93 = 0;
                  *(this + 24) = 1;
                  goto LABEL_287;
                }

                v186 = v185;
                v187 = *v184;
                *(this + 1) = v186;
                v93 |= (v187 & 0x7F) << v181;
                if ((v187 & 0x80) == 0)
                {
                  break;
                }

                v181 += 7;
                --v183;
                ++v184;
                v185 = v186 + 1;
                v14 = v182++ > 8;
                if (v14)
                {
                  v93 = 0;
                  goto LABEL_286;
                }
              }

              if (*(this + 24))
              {
                v93 = 0;
              }

LABEL_286:
              v2 = v186;
            }

            else
            {
              v91 = 0;
              v92 = 0;
              v93 = 0;
              v94 = (v90 + v89);
              v95 = v89 + 1;
              while (1)
              {
                v2 = v95;
                *(this + 1) = v95;
                v96 = *v94++;
                v93 |= (v96 & 0x7F) << v91;
                if ((v96 & 0x80) == 0)
                {
                  break;
                }

                v91 += 7;
                ++v95;
                v14 = v92++ > 8;
                if (v14)
                {
                  v93 = 0;
                  break;
                }
              }
            }

LABEL_287:
            *(a1 + 32) = v93;
            goto LABEL_300;
          }

          if (v22 == 302)
          {
            *(a1 + 96) |= 0x10u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v132 = 0;
              v133 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v134 = v2 - v31;
              v135 = (v32 + v31);
              v136 = v31 + 1;
              while (1)
              {
                if (!v134)
                {
                  v35 = 0;
                  *(this + 24) = 1;
                  goto LABEL_259;
                }

                v137 = v136;
                v138 = *v135;
                *(this + 1) = v137;
                v35 |= (v138 & 0x7F) << v132;
                if ((v138 & 0x80) == 0)
                {
                  break;
                }

                v132 += 7;
                --v134;
                ++v135;
                v136 = v137 + 1;
                v14 = v133++ > 8;
                if (v14)
                {
                  v35 = 0;
                  goto LABEL_258;
                }
              }

              if (*(this + 24))
              {
                v35 = 0;
              }

LABEL_258:
              v2 = v137;
            }

            else
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              v36 = (v32 + v31);
              v37 = v31 + 1;
              while (1)
              {
                v2 = v37;
                *(this + 1) = v37;
                v38 = *v36++;
                v35 |= (v38 & 0x7F) << v33;
                if ((v38 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                ++v37;
                v14 = v34++ > 8;
                if (v14)
                {
                  v35 = 0;
                  break;
                }
              }
            }

LABEL_259:
            *(a1 + 40) = v35;
            goto LABEL_300;
          }
        }
      }

      else if (v22 > 201)
      {
        if (v22 <= 203)
        {
          if (v22 == 202)
          {
            *(a1 + 96) |= 0x8000u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v98 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v97 = *(*this + v2++);
              *(this + 1) = v2;
              v98 = v97 != 0;
            }

            *(a1 + 94) = v98;
          }

          else
          {
            *(a1 + 96) |= 0x4000u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v40 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v39 = *(*this + v2++);
              *(this + 1) = v2;
              v40 = v39 != 0;
            }

            *(a1 + 93) = v40;
          }

          goto LABEL_300;
        }

        if (v22 == 204)
        {
          *(a1 + 96) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v116 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v115 = *(*this + v2++);
            *(this + 1) = v2;
            v116 = v115 != 0;
          }

          *(a1 + 92) = v116;
          goto LABEL_300;
        }

        if (v22 == 205)
        {
          *(a1 + 96) |= 2u;
          v65 = *(this + 1);
          v2 = *(this + 2);
          v66 = *this;
          if (v65 > 0xFFFFFFFFFFFFFFF5 || v65 + 10 > v2)
          {
            v160 = 0;
            v161 = 0;
            v69 = 0;
            if (v2 <= v65)
            {
              v2 = *(this + 1);
            }

            v162 = v2 - v65;
            v163 = (v66 + v65);
            v164 = v65 + 1;
            while (1)
            {
              if (!v162)
              {
                v69 = 0;
                *(this + 24) = 1;
                goto LABEL_275;
              }

              v165 = v164;
              v166 = *v163;
              *(this + 1) = v165;
              v69 |= (v166 & 0x7F) << v160;
              if ((v166 & 0x80) == 0)
              {
                break;
              }

              v160 += 7;
              --v162;
              ++v163;
              v164 = v165 + 1;
              v14 = v161++ > 8;
              if (v14)
              {
                v69 = 0;
                goto LABEL_274;
              }
            }

            if (*(this + 24))
            {
              v69 = 0;
            }

LABEL_274:
            v2 = v165;
          }

          else
          {
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = (v66 + v65);
            v71 = v65 + 1;
            while (1)
            {
              v2 = v71;
              *(this + 1) = v71;
              v72 = *v70++;
              v69 |= (v72 & 0x7F) << v67;
              if ((v72 & 0x80) == 0)
              {
                break;
              }

              v67 += 7;
              ++v71;
              v14 = v68++ > 8;
              if (v14)
              {
                v69 = 0;
                break;
              }
            }
          }

LABEL_275:
          *(a1 + 16) = v69;
          goto LABEL_300;
        }
      }

      else if (v22 > 102)
      {
        if (v22 == 103)
        {
          *(a1 + 96) |= 0x100u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 72) = *(*this + v2);
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_300;
        }

        if (v22 == 201)
        {
          *(a1 + 96) |= 0x80u;
          v49 = *(this + 1);
          v2 = *(this + 2);
          v50 = *this;
          if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
          {
            v146 = 0;
            v147 = 0;
            v53 = 0;
            if (v2 <= v49)
            {
              v2 = *(this + 1);
            }

            v148 = v2 - v49;
            v149 = (v50 + v49);
            v150 = v49 + 1;
            while (1)
            {
              if (!v148)
              {
                v53 = 0;
                *(this + 24) = 1;
                goto LABEL_267;
              }

              v151 = v150;
              v152 = *v149;
              *(this + 1) = v151;
              v53 |= (v152 & 0x7F) << v146;
              if ((v152 & 0x80) == 0)
              {
                break;
              }

              v146 += 7;
              --v148;
              ++v149;
              v150 = v151 + 1;
              v14 = v147++ > 8;
              if (v14)
              {
                v53 = 0;
                goto LABEL_266;
              }
            }

            if (*(this + 24))
            {
              v53 = 0;
            }

LABEL_266:
            v2 = v151;
          }

          else
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = (v50 + v49);
            v55 = v49 + 1;
            while (1)
            {
              v2 = v55;
              *(this + 1) = v55;
              v56 = *v54++;
              v53 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              ++v55;
              v14 = v52++ > 8;
              if (v14)
              {
                v53 = 0;
                break;
              }
            }
          }

LABEL_267:
          *(a1 + 64) = v53;
          goto LABEL_300;
        }
      }

      else
      {
        if (v22 == 101)
        {
          *(a1 + 96) |= 0x1000u;
          v81 = *(this + 1);
          v2 = *(this + 2);
          v82 = *this;
          if (v81 > 0xFFFFFFFFFFFFFFF5 || v81 + 10 > v2)
          {
            v174 = 0;
            v175 = 0;
            v85 = 0;
            if (v2 <= v81)
            {
              v2 = *(this + 1);
            }

            v176 = v2 - v81;
            v177 = (v82 + v81);
            v178 = v81 + 1;
            while (1)
            {
              if (!v176)
              {
                LODWORD(v85) = 0;
                *(this + 24) = 1;
                goto LABEL_283;
              }

              v179 = v178;
              v180 = *v177;
              *(this + 1) = v179;
              v85 |= (v180 & 0x7F) << v174;
              if ((v180 & 0x80) == 0)
              {
                break;
              }

              v174 += 7;
              --v176;
              ++v177;
              v178 = v179 + 1;
              v14 = v175++ > 8;
              if (v14)
              {
                LODWORD(v85) = 0;
                goto LABEL_282;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v85) = 0;
            }

LABEL_282:
            v2 = v179;
          }

          else
          {
            v83 = 0;
            v84 = 0;
            v85 = 0;
            v86 = (v82 + v81);
            v87 = v81 + 1;
            while (1)
            {
              v2 = v87;
              *(this + 1) = v87;
              v88 = *v86++;
              v85 |= (v88 & 0x7F) << v83;
              if ((v88 & 0x80) == 0)
              {
                break;
              }

              v83 += 7;
              ++v87;
              v14 = v84++ > 8;
              if (v14)
              {
                LODWORD(v85) = 0;
                break;
              }
            }
          }

LABEL_283:
          *(a1 + 88) = v85;
          goto LABEL_300;
        }

        if (v22 == 102)
        {
          *(a1 + 96) |= 0x800u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v125 = 0;
            v126 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v127 = v2 - v23;
            v128 = (v24 + v23);
            v129 = v23 + 1;
            while (1)
            {
              if (!v127)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_255;
              }

              v130 = v129;
              v131 = *v128;
              *(this + 1) = v130;
              v27 |= (v131 & 0x7F) << v125;
              if ((v131 & 0x80) == 0)
              {
                break;
              }

              v125 += 7;
              --v127;
              ++v128;
              v129 = v130 + 1;
              v14 = v126++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_254;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_254:
            v2 = v130;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            while (1)
            {
              v2 = v29;
              *(this + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                break;
              }
            }
          }

LABEL_255:
          *(a1 + 84) = v27;
          goto LABEL_300;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v209 = 0;
        return v209 & 1;
      }

      v2 = *(this + 1);
LABEL_300:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_304:
  v209 = v4 ^ 1;
  return v209 & 1;
}

uint64_t sub_245DF46BC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 96);
  if ((v4 & 0x1000) != 0)
  {
    v5 = *(result + 88);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 96);
    if ((v4 & 0x800) == 0)
    {
LABEL_3:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(result + 96) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x100) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 96);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x8000) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = *(v3 + 94);
  result = PB::Writer::write(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x4000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(v3 + 93);
  result = PB::Writer::write(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(v3 + 92);
  result = PB::Writer::write(this);
  v4 = *(v3 + 96);
  if ((v4 & 2) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = *(v3 + 56);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 1) == 0)
  {
LABEL_14:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = *(v3 + 8);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x400) == 0)
  {
LABEL_15:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    v18 = *(v3 + 76);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 96) & 4) == 0)
    {
      return result;
    }

    goto LABEL_33;
  }

LABEL_31:
  v17 = *(v3 + 80);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 96);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_33:
  v19 = *(v3 + 24);

  return PB::Writer::writeVarInt(this);
}

double sub_245DF48B4(uint64_t a1)
{
  *a1 = &unk_2858CE300;
  *(a1 + 120) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_245DF48F0(PB::Base *this)
{
  *this = &unk_2858CE300;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  PB::Base::~Base(this);
}

void sub_245DF4974(PB::Base *a1)
{
  sub_245DF48F0(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DF49AC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  *a1 = &unk_2858CE300;
  *(a1 + 120) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  v5 = *(a2 + 120);
  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 88);
    v6 = 2;
    *(a1 + 120) = 2;
    *(a1 + 88) = v7;
    v5 = *(a2 + 120);
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((*(a2 + 120) & 0x200) != 0)
  {
LABEL_5:
    v8 = *(a2 + 118);
    v6 |= 0x200u;
    *(a1 + 120) = v6;
    *(a1 + 118) = v8;
    v5 = *(a2 + 120);
  }

LABEL_6:
  if (v5)
  {
    v9 = *(a2 + 80);
    *(a1 + 120) = v6 | 1;
    *(a1 + 80) = v9;
  }

  if (a1 != a2)
  {
    sub_245DF86C8(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_245DF843C((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  }

  v10 = *(a2 + 120);
  if ((v10 & 0x80) != 0)
  {
    v13 = *(a2 + 116);
    *(a1 + 120) |= 0x80u;
    *(a1 + 116) = v13;
    v10 = *(a2 + 120);
    if ((v10 & 0x100) == 0)
    {
LABEL_12:
      if ((v10 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a2 + 120) & 0x100) == 0)
  {
    goto LABEL_12;
  }

  v14 = *(a2 + 117);
  *(a1 + 120) |= 0x100u;
  *(a1 + 117) = v14;
  v10 = *(a2 + 120);
  if ((v10 & 4) == 0)
  {
LABEL_13:
    if ((v10 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  v15 = *(a2 + 96);
  *(a1 + 120) |= 4u;
  *(a1 + 96) = v15;
  v10 = *(a2 + 120);
  if ((v10 & 8) == 0)
  {
LABEL_14:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = *(a2 + 100);
  *(a1 + 120) |= 8u;
  *(a1 + 100) = v16;
  v10 = *(a2 + 120);
  if ((v10 & 0x40) == 0)
  {
LABEL_15:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    v18 = *(a2 + 108);
    *(a1 + 120) |= 0x20u;
    *(a1 + 108) = v18;
    if ((*(a2 + 120) & 0x10) == 0)
    {
      return a1;
    }

    goto LABEL_17;
  }

LABEL_23:
  v17 = *(a2 + 112);
  *(a1 + 120) |= 0x40u;
  *(a1 + 112) = v17;
  v10 = *(a2 + 120);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v10 & 0x10) != 0)
  {
LABEL_17:
    v11 = *(a2 + 104);
    *(a1 + 120) |= 0x10u;
    *(a1 + 104) = v11;
  }

  return a1;
}

uint64_t sub_245DF4B94(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 120);
  if (v5)
  {
    PB::TextFormatter::format(this, "avgHorizontalDecelMax", *(a1 + 80));
    v5 = *(a1 + 120);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "avgHorizontalDecelThresholdCoupled", *(a1 + 96));
  if ((*(a1 + 120) & 8) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "impactThresholdUncoupled", *(a1 + 100));
  }

LABEL_5:
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "inertialAccel", v8);
  }

  v9 = *(a1 + 120);
  if ((v9 & 0x80) != 0)
  {
    v19 = *(a1 + 116);
    PB::TextFormatter::format(this, "isMounted");
    v9 = *(a1 + 120);
    if ((v9 & 0x100) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }
  }

  else if ((*(a1 + 120) & 0x100) == 0)
  {
    goto LABEL_9;
  }

  v20 = *(a1 + 117);
  PB::TextFormatter::format(this, "isSimulated");
  v9 = *(a1 + 120);
  if ((v9 & 0x10) == 0)
  {
LABEL_10:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_28:
  v21 = *(a1 + 104);
  PB::TextFormatter::format(this, "nAccelGap");
  if ((*(a1 + 120) & 0x20) != 0)
  {
LABEL_11:
    v10 = *(a1 + 108);
    PB::TextFormatter::format(this, "numResets");
  }

LABEL_12:
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "prevQ", v13);
  }

  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "rawClampedAccel", v16);
  }

  v17 = *(a1 + 120);
  if ((v17 & 0x200) != 0)
  {
    v22 = *(a1 + 118);
    PB::TextFormatter::format(this, "shouldTrigger");
    v17 = *(a1 + 120);
    if ((v17 & 2) == 0)
    {
LABEL_18:
      if ((v17 & 0x40) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_18;
  }

  v23 = *(a1 + 88);
  PB::TextFormatter::format(this, "timestamp");
  if ((*(a1 + 120) & 0x40) != 0)
  {
LABEL_19:
    v18 = *(a1 + 112);
    PB::TextFormatter::format(this, "triggerPathBitmap");
  }

LABEL_20:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DF4DAC(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_236;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 120) |= 2u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 <= 0xFFFFFFFFFFFFFFF5 && v24 + 10 <= v23)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            do
            {
              *(this + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_210;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_153:
            v28 = 0;
            goto LABEL_210;
          }

          v137 = 0;
          v138 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v139 = v23 - v24;
          if (!v17)
          {
            v139 = 0;
          }

          v140 = (v25 + v24);
          v141 = v24 + 1;
          while (2)
          {
            if (v139)
            {
              v142 = *v140;
              *(this + 1) = v141;
              v28 |= (v142 & 0x7F) << v137;
              if (v142 < 0)
              {
                v137 += 7;
                --v139;
                ++v140;
                ++v141;
                v14 = v138++ > 8;
                if (v14)
                {
                  goto LABEL_153;
                }

                continue;
              }

              if (*(this + 24))
              {
                v28 = 0;
              }
            }

            else
            {
              v28 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_210:
          *(a1 + 88) = v28;
          goto LABEL_232;
        case 2u:
          *(a1 + 120) |= 0x200u;
          v88 = *(this + 1);
          if (v88 >= *(this + 2))
          {
            v91 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v89 = v88 + 1;
            v90 = *(*this + v88);
            *(this + 1) = v89;
            v91 = v90 != 0;
          }

          *(a1 + 118) = v91;
          goto LABEL_232;
        case 3u:
          *(a1 + 120) |= 1u;
          v67 = *(this + 1);
          if (v67 > 0xFFFFFFFFFFFFFFF7 || v67 + 8 > *(this + 2))
          {
            goto LABEL_228;
          }

          *(a1 + 80) = *(*this + v67);
          goto LABEL_222;
        case 4u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_238;
            }

            v68 = *(this + 1);
            v69 = *(this + 2);
            while (v68 < v69 && (*(this + 24) & 1) == 0)
            {
              v71 = *(a1 + 16);
              v70 = *(a1 + 24);
              if (v71 >= v70)
              {
                v73 = *(a1 + 8);
                v74 = v71 - v73;
                v75 = (v71 - v73) >> 3;
                v76 = v75 + 1;
                if ((v75 + 1) >> 61)
                {
                  goto LABEL_240;
                }

                v77 = v70 - v73;
                if (v77 >> 2 > v76)
                {
                  v76 = v77 >> 2;
                }

                if (v77 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v78 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v78 = v76;
                }

                if (v78)
                {
                  sub_245DF8830(a1 + 8, v78);
                }

                v79 = (v71 - v73) >> 3;
                v80 = (8 * v75);
                v81 = (8 * v75 - 8 * v79);
                *v80 = 0;
                v72 = v80 + 1;
                memcpy(v81, v73, v74);
                v82 = *(a1 + 8);
                *(a1 + 8) = v81;
                *(a1 + 16) = v72;
                *(a1 + 24) = 0;
                if (v82)
                {
                  operator delete(v82);
                }
              }

              else
              {
                *v71 = 0;
                v72 = v71 + 8;
              }

              *(a1 + 16) = v72;
              v83 = *(this + 1);
              if (v83 > 0xFFFFFFFFFFFFFFF7 || v83 + 8 > *(this + 2))
              {
                goto LABEL_172;
              }

              *(v72 - 1) = *(*this + v83);
              v69 = *(this + 2);
              v68 = *(this + 1) + 8;
              *(this + 1) = v68;
            }

            goto LABEL_173;
          }

          v144 = *(a1 + 16);
          v143 = *(a1 + 24);
          if (v144 >= v143)
          {
            v160 = *(a1 + 8);
            v161 = v144 - v160;
            v162 = (v144 - v160) >> 3;
            v163 = v162 + 1;
            if ((v162 + 1) >> 61)
            {
LABEL_240:
              sub_245DF85A4();
            }

            v164 = v143 - v160;
            if (v164 >> 2 > v163)
            {
              v163 = v164 >> 2;
            }

            if (v164 >= 0x7FFFFFFFFFFFFFF8)
            {
              v165 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v165 = v163;
            }

            if (v165)
            {
              sub_245DF8830(a1 + 8, v165);
            }

            v176 = (v144 - v160) >> 3;
            v177 = (8 * v162);
            v178 = (8 * v162 - 8 * v176);
            *v177 = 0;
            v145 = v177 + 1;
            memcpy(v178, v160, v161);
            v179 = *(a1 + 8);
            *(a1 + 8) = v178;
            *(a1 + 16) = v145;
            *(a1 + 24) = 0;
            if (v179)
            {
              operator delete(v179);
            }
          }

          else
          {
            *v144 = 0;
            v145 = v144 + 8;
          }

          *(a1 + 16) = v145;
          v180 = *(this + 1);
          if (v180 <= 0xFFFFFFFFFFFFFFF7 && v180 + 8 <= *(this + 2))
          {
            *(v145 - 1) = *(*this + v180);
LABEL_222:
            v181 = *(this + 1) + 8;
            goto LABEL_231;
          }

          goto LABEL_228;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_238;
            }

            v41 = *(this + 1);
            v42 = *(this + 2);
            while (v41 < v42 && (*(this + 24) & 1) == 0)
            {
              v44 = *(a1 + 64);
              v43 = *(a1 + 72);
              if (v44 >= v43)
              {
                v46 = *(a1 + 56);
                v47 = v44 - v46;
                v48 = (v44 - v46) >> 2;
                v49 = v48 + 1;
                if ((v48 + 1) >> 62)
                {
                  goto LABEL_239;
                }

                v50 = v43 - v46;
                if (v50 >> 1 > v49)
                {
                  v49 = v50 >> 1;
                }

                if (v50 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v51 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v51 = v49;
                }

                if (v51)
                {
                  sub_245DF85BC(a1 + 56, v51);
                }

                v52 = (v44 - v46) >> 2;
                v53 = (4 * v48);
                v54 = (4 * v48 - 4 * v52);
                *v53 = 0;
                v45 = v53 + 1;
                memcpy(v54, v46, v47);
                v55 = *(a1 + 56);
                *(a1 + 56) = v54;
                *(a1 + 64) = v45;
                *(a1 + 72) = 0;
                if (v55)
                {
                  operator delete(v55);
                }
              }

              else
              {
                *v44 = 0;
                v45 = v44 + 4;
              }

              *(a1 + 64) = v45;
              v56 = *(this + 1);
              if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(this + 2))
              {
                goto LABEL_172;
              }

              *(v45 - 1) = *(*this + v56);
              v42 = *(this + 2);
              v41 = *(this + 1) + 4;
              *(this + 1) = v41;
            }

            goto LABEL_173;
          }

          v135 = *(a1 + 64);
          v134 = *(a1 + 72);
          if (v135 >= v134)
          {
            v154 = *(a1 + 56);
            v155 = v135 - v154;
            v156 = (v135 - v154) >> 2;
            v157 = v156 + 1;
            if ((v156 + 1) >> 62)
            {
              goto LABEL_239;
            }

            v158 = v134 - v154;
            if (v158 >> 1 > v157)
            {
              v157 = v158 >> 1;
            }

            if (v158 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v159 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v159 = v157;
            }

            if (v159)
            {
              sub_245DF85BC(a1 + 56, v159);
            }

            v172 = (v135 - v154) >> 2;
            v173 = (4 * v156);
            v174 = (4 * v156 - 4 * v172);
            *v173 = 0;
            v136 = v173 + 1;
            memcpy(v174, v154, v155);
            v175 = *(a1 + 56);
            *(a1 + 56) = v174;
            *(a1 + 64) = v136;
            *(a1 + 72) = 0;
            if (v175)
            {
              operator delete(v175);
            }
          }

          else
          {
            *v135 = 0;
            v136 = v135 + 4;
          }

          *(a1 + 64) = v136;
          goto LABEL_226;
        case 6u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_238:
              v187 = 0;
              return v187 & 1;
            }

            v92 = *(this + 1);
            v93 = *(this + 2);
            while (v92 < v93 && (*(this + 24) & 1) == 0)
            {
              v95 = *(a1 + 40);
              v94 = *(a1 + 48);
              if (v95 >= v94)
              {
                v97 = *(a1 + 32);
                v98 = v95 - v97;
                v99 = (v95 - v97) >> 2;
                v100 = v99 + 1;
                if ((v99 + 1) >> 62)
                {
                  goto LABEL_239;
                }

                v101 = v94 - v97;
                if (v101 >> 1 > v100)
                {
                  v100 = v101 >> 1;
                }

                if (v101 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v102 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v102 = v100;
                }

                if (v102)
                {
                  sub_245DF85BC(a1 + 32, v102);
                }

                v103 = (v95 - v97) >> 2;
                v104 = (4 * v99);
                v105 = (4 * v99 - 4 * v103);
                *v104 = 0;
                v96 = v104 + 1;
                memcpy(v105, v97, v98);
                v106 = *(a1 + 32);
                *(a1 + 32) = v105;
                *(a1 + 40) = v96;
                *(a1 + 48) = 0;
                if (v106)
                {
                  operator delete(v106);
                }
              }

              else
              {
                *v95 = 0;
                v96 = v95 + 4;
              }

              *(a1 + 40) = v96;
              v107 = *(this + 1);
              if (v107 > 0xFFFFFFFFFFFFFFFBLL || v107 + 4 > *(this + 2))
              {
LABEL_172:
                *(this + 24) = 1;
                break;
              }

              *(v96 - 1) = *(*this + v107);
              v93 = *(this + 2);
              v92 = *(this + 1) + 4;
              *(this + 1) = v92;
            }

LABEL_173:
            PB::Reader::recallMark();
          }

          else
          {
            v147 = *(a1 + 40);
            v146 = *(a1 + 48);
            if (v147 >= v146)
            {
              v166 = *(a1 + 32);
              v167 = v147 - v166;
              v168 = (v147 - v166) >> 2;
              v169 = v168 + 1;
              if ((v168 + 1) >> 62)
              {
LABEL_239:
                sub_245DF85A4();
              }

              v170 = v146 - v166;
              if (v170 >> 1 > v169)
              {
                v169 = v170 >> 1;
              }

              if (v170 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v171 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v171 = v169;
              }

              if (v171)
              {
                sub_245DF85BC(a1 + 32, v171);
              }

              v182 = (v147 - v166) >> 2;
              v183 = (4 * v168);
              v184 = (4 * v168 - 4 * v182);
              *v183 = 0;
              v136 = v183 + 1;
              memcpy(v184, v166, v167);
              v185 = *(a1 + 32);
              *(a1 + 32) = v184;
              *(a1 + 40) = v136;
              *(a1 + 48) = 0;
              if (v185)
              {
                operator delete(v185);
              }
            }

            else
            {
              *v147 = 0;
              v136 = v147 + 4;
            }

            *(a1 + 40) = v136;
LABEL_226:
            v186 = *(this + 1);
            if (v186 <= 0xFFFFFFFFFFFFFFFBLL && v186 + 4 <= *(this + 2))
            {
              *(v136 - 1) = *(*this + v186);
LABEL_230:
              v181 = *(this + 1) + 4;
LABEL_231:
              *(this + 1) = v181;
            }

            else
            {
LABEL_228:
              *(this + 24) = 1;
            }
          }

LABEL_232:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_236;
          }

          break;
        case 7u:
          *(a1 + 120) |= 0x80u;
          v108 = *(this + 1);
          if (v108 >= *(this + 2))
          {
            v111 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v109 = v108 + 1;
            v110 = *(*this + v108);
            *(this + 1) = v109;
            v111 = v110 != 0;
          }

          *(a1 + 116) = v111;
          goto LABEL_232;
        case 8u:
          *(a1 + 120) |= 0x100u;
          v84 = *(this + 1);
          if (v84 >= *(this + 2))
          {
            v87 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v85 = v84 + 1;
            v86 = *(*this + v84);
            *(this + 1) = v85;
            v87 = v86 != 0;
          }

          *(a1 + 117) = v87;
          goto LABEL_232;
        case 9u:
          *(a1 + 120) |= 4u;
          v121 = *(this + 1);
          if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(this + 2))
          {
            goto LABEL_228;
          }

          *(a1 + 96) = *(*this + v121);
          goto LABEL_230;
        case 0xAu:
          *(a1 + 120) |= 8u;
          v66 = *(this + 1);
          if (v66 > 0xFFFFFFFFFFFFFFFBLL || v66 + 4 > *(this + 2))
          {
            goto LABEL_228;
          }

          *(a1 + 100) = *(*this + v66);
          goto LABEL_230;
        case 0xBu:
          *(a1 + 120) |= 0x40u;
          v113 = *(this + 1);
          v112 = *(this + 2);
          v114 = *this;
          if (v113 <= 0xFFFFFFFFFFFFFFF5 && v113 + 10 <= v112)
          {
            v115 = 0;
            v116 = 0;
            v117 = 0;
            v118 = (v114 + v113);
            v119 = v113 + 1;
            do
            {
              *(this + 1) = v119;
              v120 = *v118++;
              v117 |= (v120 & 0x7F) << v115;
              if ((v120 & 0x80) == 0)
              {
                goto LABEL_213;
              }

              v115 += 7;
              ++v119;
              v14 = v116++ > 8;
            }

            while (!v14);
LABEL_169:
            LODWORD(v117) = 0;
            goto LABEL_213;
          }

          v148 = 0;
          v149 = 0;
          v117 = 0;
          v17 = v112 >= v113;
          v150 = v112 - v113;
          if (!v17)
          {
            v150 = 0;
          }

          v151 = (v114 + v113);
          v152 = v113 + 1;
          while (2)
          {
            if (v150)
            {
              v153 = *v151;
              *(this + 1) = v152;
              v117 |= (v153 & 0x7F) << v148;
              if (v153 < 0)
              {
                v148 += 7;
                --v150;
                ++v151;
                ++v152;
                v14 = v149++ > 8;
                if (v14)
                {
                  goto LABEL_169;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v117) = 0;
              }
            }

            else
            {
              LODWORD(v117) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_213:
          *(a1 + 112) = v117;
          goto LABEL_232;
        case 0xCu:
          *(a1 + 120) |= 0x20u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 <= 0xFFFFFFFFFFFFFFF5 && v33 + 10 <= v32)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            do
            {
              *(this + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                goto LABEL_204;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
            }

            while (!v14);
LABEL_135:
            LODWORD(v37) = 0;
            goto LABEL_204;
          }

          v122 = 0;
          v123 = 0;
          v37 = 0;
          v17 = v32 >= v33;
          v124 = v32 - v33;
          if (!v17)
          {
            v124 = 0;
          }

          v125 = (v34 + v33);
          v126 = v33 + 1;
          while (2)
          {
            if (v124)
            {
              v127 = *v125;
              *(this + 1) = v126;
              v37 |= (v127 & 0x7F) << v122;
              if (v127 < 0)
              {
                v122 += 7;
                --v124;
                ++v125;
                ++v126;
                v14 = v123++ > 8;
                if (v14)
                {
                  goto LABEL_135;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v37) = 0;
              }
            }

            else
            {
              LODWORD(v37) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_204:
          *(a1 + 108) = v37;
          goto LABEL_232;
        case 0xDu:
          *(a1 + 120) |= 0x10u;
          v58 = *(this + 1);
          v57 = *(this + 2);
          v59 = *this;
          if (v58 <= 0xFFFFFFFFFFFFFFF5 && v58 + 10 <= v57)
          {
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v63 = (v59 + v58);
            v64 = v58 + 1;
            do
            {
              *(this + 1) = v64;
              v65 = *v63++;
              v62 |= (v65 & 0x7F) << v60;
              if ((v65 & 0x80) == 0)
              {
                goto LABEL_207;
              }

              v60 += 7;
              ++v64;
              v14 = v61++ > 8;
            }

            while (!v14);
LABEL_143:
            LODWORD(v62) = 0;
            goto LABEL_207;
          }

          v128 = 0;
          v129 = 0;
          v62 = 0;
          v17 = v57 >= v58;
          v130 = v57 - v58;
          if (!v17)
          {
            v130 = 0;
          }

          v131 = (v59 + v58);
          v132 = v58 + 1;
          while (2)
          {
            if (v130)
            {
              v133 = *v131;
              *(this + 1) = v132;
              v62 |= (v133 & 0x7F) << v128;
              if (v133 < 0)
              {
                v128 += 7;
                --v130;
                ++v131;
                ++v132;
                v14 = v129++ > 8;
                if (v14)
                {
                  goto LABEL_143;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v62) = 0;
              }
            }

            else
            {
              LODWORD(v62) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_207:
          *(a1 + 104) = v62;
          goto LABEL_232;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_238;
          }

          goto LABEL_232;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(this + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(this + 24) = 1;
  }

LABEL_236:
  v187 = v4 ^ 1;
  return v187 & 1;
}

uint64_t sub_245DF5A58(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 120);
  if ((v4 & 2) == 0)
  {
    if ((*(result + 120) & 0x200) == 0)
    {
      goto LABEL_3;
    }

LABEL_23:
    v16 = *(v3 + 118);
    result = PB::Writer::write(this);
    if ((*(v3 + 120) & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v15 = *(result + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 120);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v4)
  {
LABEL_4:
    result = PB::Writer::write(this, *(v3 + 80));
  }

LABEL_5:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::write(this, v10);
  }

  v11 = *(v3 + 32);
  v12 = *(v3 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    result = PB::Writer::write(this, v13);
  }

  v14 = *(v3 + 120);
  if ((v14 & 0x80) != 0)
  {
    v17 = *(v3 + 116);
    result = PB::Writer::write(this);
    v14 = *(v3 + 120);
    if ((v14 & 0x100) == 0)
    {
LABEL_16:
      if ((v14 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }
  }

  else if ((*(v3 + 120) & 0x100) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(v3 + 117);
  result = PB::Writer::write(this);
  v14 = *(v3 + 120);
  if ((v14 & 4) == 0)
  {
LABEL_17:
    if ((v14 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 96));
  v14 = *(v3 + 120);
  if ((v14 & 8) == 0)
  {
LABEL_18:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 100));
  v14 = *(v3 + 120);
  if ((v14 & 0x40) == 0)
  {
LABEL_19:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_30:
    v20 = *(v3 + 108);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 120) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_29:
  v19 = *(v3 + 112);
  result = PB::Writer::writeVarInt(this);
  v14 = *(v3 + 120);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  if ((v14 & 0x10) == 0)
  {
    return result;
  }

LABEL_31:
  v21 = *(v3 + 104);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245DF5C14(uint64_t result)
{
  *result = &unk_2858CE338;
  *(result + 16) = 0;
  return result;
}

void sub_245DF5C3C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DF5C74(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CE338;
  *(result + 16) = 0;
  if (*(a2 + 16))
  {
    v2 = *(a2 + 8);
    *(result + 16) = 1;
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_245DF5CB0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DF5D10(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_51;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 16) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              v27 = 0;
              *(this + 24) = 1;
              goto LABEL_46;
            }

            v36 = v35;
            v37 = *v34;
            *(this + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              v27 = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            v27 = 0;
          }

LABEL_45:
          v3 = v36;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v3 = v29;
            *(this + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              v27 = 0;
              break;
            }
          }
        }

LABEL_46:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_245DF5F84(uint64_t result, PB::Writer *this)
{
  if (*(result + 16))
  {
    v2 = *(result + 8);
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void *sub_245DF5FA4(void *result)
{
  *result = &unk_2858CE370;
  *(result + 164) = 0;
  return result;
}

void sub_245DF5FCC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DF6004(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CE370;
  *(result + 164) = 0;
  v2 = *(a2 + 164);
  if ((v2 & 0x100000000) != 0)
  {
    v4 = *(a2 + 160);
    v3 = 0x100000000;
    *(result + 164) = 0x100000000;
    *(result + 160) = v4;
    v2 = *(a2 + 164);
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x100000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 112);
    v3 |= 0x100000uLL;
    *(result + 164) = v3;
    *(result + 112) = v5;
    v2 = *(a2 + 164);
  }

LABEL_6:
  if ((v2 & 0x80000) != 0)
  {
    v6 = *(a2 + 108);
    v3 |= 0x80000uLL;
    *(result + 164) = v3;
    *(result + 108) = v6;
    v2 = *(a2 + 164);
    if ((v2 & 0x1000000) == 0)
    {
LABEL_8:
      if ((v2 & 0x20000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_40;
    }
  }

  else if ((v2 & 0x1000000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 128);
  v3 |= 0x1000000uLL;
  *(result + 164) = v3;
  *(result + 128) = v7;
  v2 = *(a2 + 164);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  v8 = *(a2 + 148);
  v3 |= 0x20000000uLL;
  *(result + 164) = v3;
  *(result + 148) = v8;
  v2 = *(a2 + 164);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_10:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  v9 = *(a2 + 136);
  v3 |= 0x4000000uLL;
  *(result + 164) = v3;
  *(result + 136) = v9;
  v2 = *(a2 + 164);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  v10 = *(a2 + 156);
  v3 |= 0x80000000uLL;
  *(result + 164) = v3;
  *(result + 156) = v10;
  v2 = *(a2 + 164);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_12:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  v11 = *(a2 + 144);
  v3 |= 0x10000000uLL;
  *(result + 164) = v3;
  *(result + 144) = v11;
  v2 = *(a2 + 164);
  if ((v2 & 0x200000) == 0)
  {
LABEL_13:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  v12 = *(a2 + 116);
  v3 |= 0x200000uLL;
  *(result + 164) = v3;
  *(result + 116) = v12;
  v2 = *(a2 + 164);
  if ((v2 & 0x400000) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  v13 = *(a2 + 120);
  v3 |= 0x400000uLL;
  *(result + 164) = v3;
  *(result + 120) = v13;
  v2 = *(a2 + 164);
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  v14 = *(a2 + 40);
  v3 |= 0x10uLL;
  *(result + 164) = v3;
  *(result + 40) = v14;
  v2 = *(a2 + 164);
  if ((v2 & 8) == 0)
  {
LABEL_16:
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  v15 = *(a2 + 32);
  v3 |= 8uLL;
  *(result + 164) = v3;
  *(result + 32) = v15;
  v2 = *(a2 + 164);
  if ((v2 & 4) == 0)
  {
LABEL_17:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  v16 = *(a2 + 24);
  v3 |= 4uLL;
  *(result + 164) = v3;
  *(result + 24) = v16;
  v2 = *(a2 + 164);
  if ((v2 & 0x8000) == 0)
  {
LABEL_18:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  v17 = *(a2 + 92);
  v3 |= 0x8000uLL;
  *(result + 164) = v3;
  *(result + 92) = v17;
  v2 = *(a2 + 164);
  if ((v2 & 0x20000) == 0)
  {
LABEL_19:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  v18 = *(a2 + 100);
  v3 |= 0x20000uLL;
  *(result + 164) = v3;
  *(result + 100) = v18;
  v2 = *(a2 + 164);
  if ((v2 & 0x10000) == 0)
  {
LABEL_20:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  v19 = *(a2 + 96);
  v3 |= 0x10000uLL;
  *(result + 164) = v3;
  *(result + 96) = v19;
  v2 = *(a2 + 164);
  if ((v2 & 0x40000) == 0)
  {
LABEL_21:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  v20 = *(a2 + 104);
  v3 |= 0x40000uLL;
  *(result + 164) = v3;
  *(result + 104) = v20;
  v2 = *(a2 + 164);
  if ((v2 & 0x4000) == 0)
  {
LABEL_22:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  v21 = *(a2 + 88);
  v3 |= 0x4000uLL;
  *(result + 164) = v3;
  *(result + 88) = v21;
  v2 = *(a2 + 164);
  if ((v2 & 0x40) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  v22 = *(a2 + 56);
  v3 |= 0x40uLL;
  *(result + 164) = v3;
  *(result + 56) = v22;
  v2 = *(a2 + 164);
  if ((v2 & 0x80) == 0)
  {
LABEL_24:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  v23 = *(a2 + 60);
  v3 |= 0x80uLL;
  *(result + 164) = v3;
  *(result + 60) = v23;
  v2 = *(a2 + 164);
  if ((v2 & 0x800) == 0)
  {
LABEL_25:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  v24 = *(a2 + 76);
  v3 |= 0x800uLL;
  *(result + 164) = v3;
  *(result + 76) = v24;
  v2 = *(a2 + 164);
  if ((v2 & 0x1000) == 0)
  {
LABEL_26:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  v25 = *(a2 + 80);
  v3 |= 0x1000uLL;
  *(result + 164) = v3;
  *(result + 80) = v25;
  v2 = *(a2 + 164);
  if ((v2 & 0x2000) == 0)
  {
LABEL_27:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  v26 = *(a2 + 84);
  v3 |= 0x2000uLL;
  *(result + 164) = v3;
  *(result + 84) = v26;
  v2 = *(a2 + 164);
  if ((v2 & 0x100) == 0)
  {
LABEL_28:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  v27 = *(a2 + 64);
  v3 |= 0x100uLL;
  *(result + 164) = v3;
  *(result + 64) = v27;
  v2 = *(a2 + 164);
  if ((v2 & 0x200) == 0)
  {
LABEL_29:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  v28 = *(a2 + 68);
  v3 |= 0x200uLL;
  *(result + 164) = v3;
  *(result + 68) = v28;
  v2 = *(a2 + 164);
  if ((v2 & 0x400) == 0)
  {
LABEL_30:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  v29 = *(a2 + 72);
  v3 |= 0x400uLL;
  *(result + 164) = v3;
  *(result + 72) = v29;
  v2 = *(a2 + 164);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_31:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

LABEL_62:
  v30 = *(a2 + 140);
  v3 |= 0x8000000uLL;
  *(result + 164) = v3;
  *(result + 140) = v30;
  v2 = *(a2 + 164);
  if ((v2 & 0x800000) == 0)
  {
LABEL_32:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_64;
  }

LABEL_63:
  v31 = *(a2 + 124);
  v3 |= 0x800000uLL;
  *(result + 164) = v3;
  *(result + 124) = v31;
  v2 = *(a2 + 164);
  if ((v2 & 0x20) == 0)
  {
LABEL_33:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_65;
  }

LABEL_64:
  v32 = *(a2 + 48);
  v3 |= 0x20uLL;
  *(result + 164) = v3;
  *(result + 48) = v32;
  v2 = *(a2 + 164);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_34:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_66;
  }

LABEL_65:
  v33 = *(a2 + 132);
  v3 |= 0x2000000uLL;
  *(result + 164) = v3;
  *(result + 132) = v33;
  v2 = *(a2 + 164);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_35:
    if ((v2 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_67;
  }

LABEL_66:
  v34 = *(a2 + 152);
  v3 |= 0x40000000uLL;
  *(result + 164) = v3;
  *(result + 152) = v34;
  v2 = *(a2 + 164);
  if ((v2 & 1) == 0)
  {
LABEL_36:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_68:
    v36 = *(a2 + 16);
    *(result + 164) = v3 | 2;
    *(result + 16) = v36;
    return result;
  }

LABEL_67:
  v35 = *(a2 + 8);
  v3 |= 1uLL;
  *(result + 164) = v3;
  *(result + 8) = v35;
  if ((*(a2 + 164) & 2) != 0)
  {
    goto LABEL_68;
  }

  return result;
}

uint64_t sub_245DF63CC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 164);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "configAccelThresholdNorm", *(a1 + 56));
    v5 = *(a1 + 164);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 60);
  PB::TextFormatter::format(this, "configHardware");
  v5 = *(a1 + 164);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "configIx", *(a1 + 64));
  v5 = *(a1 + 164);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "configIy", *(a1 + 68));
  v5 = *(a1 + 164);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "configIz", *(a1 + 72));
  v5 = *(a1 + 164);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "configLx", *(a1 + 76));
  v5 = *(a1 + 164);
  if ((v5 & 0x1000) == 0)
  {
LABEL_8:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "configLy", *(a1 + 80));
  v5 = *(a1 + 164);
  if ((v5 & 0x2000) == 0)
  {
LABEL_9:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "configLz", *(a1 + 84));
  v5 = *(a1 + 164);
  if ((v5 & 0x4000) == 0)
  {
LABEL_10:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "configZgThreshold", *(a1 + 88));
  v5 = *(a1 + 164);
  if ((v5 & 0x8000) == 0)
  {
LABEL_11:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  v8 = *(a1 + 92);
  PB::TextFormatter::format(this, "debugCountOfAccelDataDrop");
  v5 = *(a1 + 164);
  if ((v5 & 0x10000) == 0)
  {
LABEL_12:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  v9 = *(a1 + 96);
  PB::TextFormatter::format(this, "debugCountOfDmDataDrop");
  v5 = *(a1 + 164);
  if ((v5 & 0x20000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "debugMaxTimeBetweenAccelSample", *(a1 + 100));
  v5 = *(a1 + 164);
  if ((v5 & 0x40000) == 0)
  {
LABEL_14:
    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "debugMaxTimeBetweenDmSample", *(a1 + 104));
  v5 = *(a1 + 164);
  if ((v5 & 1) == 0)
  {
LABEL_15:
    if ((v5 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  v10 = *(a1 + 8);
  PB::TextFormatter::format(this, "epochFirstTimestamp");
  v5 = *(a1 + 164);
  if ((v5 & 2) == 0)
  {
LABEL_16:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  v11 = *(a1 + 16);
  PB::TextFormatter::format(this, "epochLastTimestamp");
  v5 = *(a1 + 164);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  v12 = *(a1 + 160);
  PB::TextFormatter::format(this, "freefallTpQualifier");
  v5 = *(a1 + 164);
  if ((v5 & 0x80000) == 0)
  {
LABEL_18:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  v13 = *(a1 + 108);
  PB::TextFormatter::format(this, "metaCountOfFreefallImpactPassed");
  v5 = *(a1 + 164);
  if ((v5 & 0x100000) == 0)
  {
LABEL_19:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  v14 = *(a1 + 112);
  PB::TextFormatter::format(this, "metaCountOfFreefallTimePassed");
  v5 = *(a1 + 164);
  if ((v5 & 0x200000) == 0)
  {
LABEL_20:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  v15 = *(a1 + 116);
  PB::TextFormatter::format(this, "metaCountOfSigImpact");
  v5 = *(a1 + 164);
  if ((v5 & 0x400000) == 0)
  {
LABEL_21:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

LABEL_57:
  v16 = *(a1 + 120);
  PB::TextFormatter::format(this, "metaCountOfZgSegment");
  v5 = *(a1 + 164);
  if ((v5 & 0x800000) == 0)
  {
LABEL_22:
    if ((v5 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  v17 = *(a1 + 124);
  PB::TextFormatter::format(this, "metaCrossingCount");
  v5 = *(a1 + 164);
  if ((v5 & 4) == 0)
  {
LABEL_23:
    if ((v5 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  v18 = *(a1 + 24);
  PB::TextFormatter::format(this, "metaDtBwFirstAndLastFreeFall");
  v5 = *(a1 + 164);
  if ((v5 & 8) == 0)
  {
LABEL_24:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  v19 = *(a1 + 32);
  PB::TextFormatter::format(this, "metaDtBwFirstFreeFall");
  v5 = *(a1 + 164);
  if ((v5 & 0x10) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  v20 = *(a1 + 40);
  PB::TextFormatter::format(this, "metaDtBwFirstSigImpact");
  v5 = *(a1 + 164);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "metaFreefallTime", *(a1 + 128));
  v5 = *(a1 + 164);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "metaFreefallTimeForImpact", *(a1 + 132));
  v5 = *(a1 + 164);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "metaMaxOfAccel", *(a1 + 136));
  v5 = *(a1 + 164);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(this, "metaMaxPower", *(a1 + 140));
  v5 = *(a1 + 164);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "metaMaxZgSegmentTime", *(a1 + 144));
  v5 = *(a1 + 164);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(this, "metaNormOfAccel", *(a1 + 148));
  v5 = *(a1 + 164);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(this, "metaNormOfImpact", *(a1 + 152));
  v5 = *(a1 + 164);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_69:
  PB::TextFormatter::format(this, "metaTotalZgTime", *(a1 + 156));
  if ((*(a1 + 164) & 0x20) != 0)
  {
LABEL_34:
    v6 = *(a1 + 48);
    PB::TextFormatter::format(this, "timestamp");
  }

LABEL_35:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DF6830(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 >= v3 || (*(this + 24) & 1) != 0)
  {
LABEL_357:
    v256 = v4 ^ 1;
    return v256 & 1;
  }

  v4 = 0;
  while (2)
  {
    v7 = *this;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = v3 >= v2;
      v18 = v3 - v2;
      if (!v17)
      {
        v18 = 0;
      }

      v19 = (v7 + v2);
      v20 = v2 + 1;
      while (v18)
      {
        v21 = *v19;
        *(this + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          if (v4)
          {
            v10 = 0;
          }

          goto LABEL_21;
        }

        v15 += 7;
        --v18;
        ++v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
LABEL_18:
          v10 = 0;
          goto LABEL_21;
        }
      }

      v4 = 1;
      *(this + 24) = 1;
      goto LABEL_357;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(this + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_18;
      }
    }

LABEL_21:
    if (v4 & 1 | ((v10 & 7) == 4))
    {
      goto LABEL_357;
    }

    v22 = v10 >> 3;
    switch((v10 >> 3))
    {
      case 1u:
        *(a1 + 164) |= 0x100000000uLL;
        v23 = *(this + 1);
        if (v23 >= *(this + 2))
        {
          v26 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v24 = v23 + 1;
          v25 = *(*this + v23);
          *(this + 1) = v24;
          v26 = v25 != 0;
        }

        *(a1 + 160) = v26;
        goto LABEL_297;
      case 2u:
        *(a1 + 164) |= 0x100000uLL;
        v98 = *(this + 1);
        v97 = *(this + 2);
        v99 = *this;
        if (v98 <= 0xFFFFFFFFFFFFFFF5 && v98 + 10 <= v97)
        {
          v100 = 0;
          v101 = 0;
          v102 = 0;
          v103 = (v99 + v98);
          v104 = v98 + 1;
          do
          {
            *(this + 1) = v104;
            v105 = *v103++;
            v102 |= (v105 & 0x7F) << v100;
            if ((v105 & 0x80) == 0)
            {
              goto LABEL_334;
            }

            v100 += 7;
            ++v104;
            v14 = v101++ > 8;
          }

          while (!v14);
LABEL_236:
          LODWORD(v102) = 0;
          goto LABEL_334;
        }

        v207 = 0;
        v208 = 0;
        v102 = 0;
        v17 = v97 >= v98;
        v209 = v97 - v98;
        if (!v17)
        {
          v209 = 0;
        }

        v210 = (v99 + v98);
        v211 = v98 + 1;
        while (2)
        {
          if (v209)
          {
            v212 = *v210;
            *(this + 1) = v211;
            v102 |= (v212 & 0x7F) << v207;
            if (v212 < 0)
            {
              v207 += 7;
              --v209;
              ++v210;
              ++v211;
              v14 = v208++ > 8;
              if (v14)
              {
                goto LABEL_236;
              }

              continue;
            }

            if (*(this + 24))
            {
              LODWORD(v102) = 0;
            }
          }

          else
          {
            LODWORD(v102) = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_334:
        *(a1 + 112) = v102;
        goto LABEL_297;
      case 3u:
        *(a1 + 164) |= 0x80000uLL;
        v78 = *(this + 1);
        v77 = *(this + 2);
        v79 = *this;
        if (v78 <= 0xFFFFFFFFFFFFFFF5 && v78 + 10 <= v77)
        {
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = (v79 + v78);
          v84 = v78 + 1;
          do
          {
            *(this + 1) = v84;
            v85 = *v83++;
            v82 |= (v85 & 0x7F) << v80;
            if ((v85 & 0x80) == 0)
            {
              goto LABEL_328;
            }

            v80 += 7;
            ++v84;
            v14 = v81++ > 8;
          }

          while (!v14);
LABEL_220:
          LODWORD(v82) = 0;
          goto LABEL_328;
        }

        v195 = 0;
        v196 = 0;
        v82 = 0;
        v17 = v77 >= v78;
        v197 = v77 - v78;
        if (!v17)
        {
          v197 = 0;
        }

        v198 = (v79 + v78);
        v199 = v78 + 1;
        while (2)
        {
          if (v197)
          {
            v200 = *v198;
            *(this + 1) = v199;
            v82 |= (v200 & 0x7F) << v195;
            if (v200 < 0)
            {
              v195 += 7;
              --v197;
              ++v198;
              ++v199;
              v14 = v196++ > 8;
              if (v14)
              {
                goto LABEL_220;
              }

              continue;
            }

            if (*(this + 24))
            {
              LODWORD(v82) = 0;
            }
          }

          else
          {
            LODWORD(v82) = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_328:
        *(a1 + 108) = v82;
        goto LABEL_297;
      case 4u:
        *(a1 + 164) |= 0x1000000uLL;
        v95 = *(this + 1);
        if (v95 > 0xFFFFFFFFFFFFFFFBLL || v95 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 128) = *(*this + v95);
        goto LABEL_296;
      case 5u:
        *(a1 + 164) |= 0x20000000uLL;
        v56 = *(this + 1);
        if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 148) = *(*this + v56);
        goto LABEL_296;
      case 6u:
        *(a1 + 164) |= 0x4000000uLL;
        v117 = *(this + 1);
        if (v117 > 0xFFFFFFFFFFFFFFFBLL || v117 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 136) = *(*this + v117);
        goto LABEL_296;
      case 7u:
        *(a1 + 164) |= 0x80000000uLL;
        v128 = *(this + 1);
        if (v128 > 0xFFFFFFFFFFFFFFFBLL || v128 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 156) = *(*this + v128);
        goto LABEL_296;
      case 8u:
        *(a1 + 164) |= 0x10000000uLL;
        v96 = *(this + 1);
        if (v96 > 0xFFFFFFFFFFFFFFFBLL || v96 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 144) = *(*this + v96);
        goto LABEL_296;
      case 9u:
        *(a1 + 164) |= 0x200000uLL;
        v140 = *(this + 1);
        v139 = *(this + 2);
        v141 = *this;
        if (v140 <= 0xFFFFFFFFFFFFFFF5 && v140 + 10 <= v139)
        {
          v142 = 0;
          v143 = 0;
          v144 = 0;
          v145 = (v141 + v140);
          v146 = v140 + 1;
          do
          {
            *(this + 1) = v146;
            v147 = *v145++;
            v144 |= (v147 & 0x7F) << v142;
            if ((v147 & 0x80) == 0)
            {
              goto LABEL_349;
            }

            v142 += 7;
            ++v146;
            v14 = v143++ > 8;
          }

          while (!v14);
LABEL_278:
          LODWORD(v144) = 0;
          goto LABEL_349;
        }

        v237 = 0;
        v238 = 0;
        v144 = 0;
        v17 = v139 >= v140;
        v239 = v139 - v140;
        if (!v17)
        {
          v239 = 0;
        }

        v240 = (v141 + v140);
        v241 = v140 + 1;
        while (2)
        {
          if (v239)
          {
            v242 = *v240;
            *(this + 1) = v241;
            v144 |= (v242 & 0x7F) << v237;
            if (v242 < 0)
            {
              v237 += 7;
              --v239;
              ++v240;
              ++v241;
              v14 = v238++ > 8;
              if (v14)
              {
                goto LABEL_278;
              }

              continue;
            }

            if (*(this + 24))
            {
              LODWORD(v144) = 0;
            }
          }

          else
          {
            LODWORD(v144) = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_349:
        *(a1 + 116) = v144;
        goto LABEL_297;
      case 0xAu:
        *(a1 + 164) |= 0x400000uLL;
        v67 = *(this + 1);
        v66 = *(this + 2);
        v68 = *this;
        if (v67 <= 0xFFFFFFFFFFFFFFF5 && v67 + 10 <= v66)
        {
          v69 = 0;
          v70 = 0;
          v71 = 0;
          v72 = (v68 + v67);
          v73 = v67 + 1;
          do
          {
            *(this + 1) = v73;
            v74 = *v72++;
            v71 |= (v74 & 0x7F) << v69;
            if ((v74 & 0x80) == 0)
            {
              goto LABEL_325;
            }

            v69 += 7;
            ++v73;
            v14 = v70++ > 8;
          }

          while (!v14);
LABEL_212:
          LODWORD(v71) = 0;
          goto LABEL_325;
        }

        v189 = 0;
        v190 = 0;
        v71 = 0;
        v17 = v66 >= v67;
        v191 = v66 - v67;
        if (!v17)
        {
          v191 = 0;
        }

        v192 = (v68 + v67);
        v193 = v67 + 1;
        while (2)
        {
          if (v191)
          {
            v194 = *v192;
            *(this + 1) = v193;
            v71 |= (v194 & 0x7F) << v189;
            if (v194 < 0)
            {
              v189 += 7;
              --v191;
              ++v192;
              ++v193;
              v14 = v190++ > 8;
              if (v14)
              {
                goto LABEL_212;
              }

              continue;
            }

            if (*(this + 24))
            {
              LODWORD(v71) = 0;
            }
          }

          else
          {
            LODWORD(v71) = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_325:
        *(a1 + 120) = v71;
        goto LABEL_297;
      case 0xBu:
        *(a1 + 164) |= 0x10uLL;
        v131 = *(this + 1);
        v130 = *(this + 2);
        v132 = *this;
        if (v131 <= 0xFFFFFFFFFFFFFFF5 && v131 + 10 <= v130)
        {
          v133 = 0;
          v134 = 0;
          v135 = 0;
          v136 = (v132 + v131);
          v137 = v131 + 1;
          do
          {
            *(this + 1) = v137;
            v138 = *v136++;
            v135 |= (v138 & 0x7F) << v133;
            if ((v138 & 0x80) == 0)
            {
              goto LABEL_346;
            }

            v133 += 7;
            ++v137;
            v14 = v134++ > 8;
          }

          while (!v14);
LABEL_270:
          v135 = 0;
          goto LABEL_346;
        }

        v231 = 0;
        v232 = 0;
        v135 = 0;
        v17 = v130 >= v131;
        v233 = v130 - v131;
        if (!v17)
        {
          v233 = 0;
        }

        v234 = (v132 + v131);
        v235 = v131 + 1;
        while (2)
        {
          if (v233)
          {
            v236 = *v234;
            *(this + 1) = v235;
            v135 |= (v236 & 0x7F) << v231;
            if (v236 < 0)
            {
              v231 += 7;
              --v233;
              ++v234;
              ++v235;
              v14 = v232++ > 8;
              if (v14)
              {
                goto LABEL_270;
              }

              continue;
            }

            if (*(this + 24))
            {
              v135 = 0;
            }
          }

          else
          {
            v135 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_346:
        *(a1 + 40) = v135;
        goto LABEL_297;
      case 0xCu:
        *(a1 + 164) |= 8uLL;
        v48 = *(this + 1);
        v47 = *(this + 2);
        v49 = *this;
        if (v48 <= 0xFFFFFFFFFFFFFFF5 && v48 + 10 <= v47)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            *(this + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_319;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
LABEL_196:
          v52 = 0;
          goto LABEL_319;
        }

        v177 = 0;
        v178 = 0;
        v52 = 0;
        v17 = v47 >= v48;
        v179 = v47 - v48;
        if (!v17)
        {
          v179 = 0;
        }

        v180 = (v49 + v48);
        v181 = v48 + 1;
        while (2)
        {
          if (v179)
          {
            v182 = *v180;
            *(this + 1) = v181;
            v52 |= (v182 & 0x7F) << v177;
            if (v182 < 0)
            {
              v177 += 7;
              --v179;
              ++v180;
              ++v181;
              v14 = v178++ > 8;
              if (v14)
              {
                goto LABEL_196;
              }

              continue;
            }

            if (*(this + 24))
            {
              v52 = 0;
            }
          }

          else
          {
            v52 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_319:
        *(a1 + 32) = v52;
        goto LABEL_297;
      case 0xDu:
        *(a1 + 164) |= 4uLL;
        v58 = *(this + 1);
        v57 = *(this + 2);
        v59 = *this;
        if (v58 <= 0xFFFFFFFFFFFFFFF5 && v58 + 10 <= v57)
        {
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = (v59 + v58);
          v64 = v58 + 1;
          do
          {
            *(this + 1) = v64;
            v65 = *v63++;
            v62 |= (v65 & 0x7F) << v60;
            if ((v65 & 0x80) == 0)
            {
              goto LABEL_322;
            }

            v60 += 7;
            ++v64;
            v14 = v61++ > 8;
          }

          while (!v14);
LABEL_204:
          v62 = 0;
          goto LABEL_322;
        }

        v183 = 0;
        v184 = 0;
        v62 = 0;
        v17 = v57 >= v58;
        v185 = v57 - v58;
        if (!v17)
        {
          v185 = 0;
        }

        v186 = (v59 + v58);
        v187 = v58 + 1;
        while (2)
        {
          if (v185)
          {
            v188 = *v186;
            *(this + 1) = v187;
            v62 |= (v188 & 0x7F) << v183;
            if (v188 < 0)
            {
              v183 += 7;
              --v185;
              ++v186;
              ++v187;
              v14 = v184++ > 8;
              if (v14)
              {
                goto LABEL_204;
              }

              continue;
            }

            if (*(this + 24))
            {
              v62 = 0;
            }
          }

          else
          {
            v62 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_322:
        *(a1 + 24) = v62;
        goto LABEL_297;
      case 0xEu:
        *(a1 + 164) |= 0x8000uLL;
        v120 = *(this + 1);
        v119 = *(this + 2);
        v121 = *this;
        if (v120 <= 0xFFFFFFFFFFFFFFF5 && v120 + 10 <= v119)
        {
          v122 = 0;
          v123 = 0;
          v124 = 0;
          v125 = (v121 + v120);
          v126 = v120 + 1;
          do
          {
            *(this + 1) = v126;
            v127 = *v125++;
            v124 |= (v127 & 0x7F) << v122;
            if ((v127 & 0x80) == 0)
            {
              goto LABEL_343;
            }

            v122 += 7;
            ++v126;
            v14 = v123++ > 8;
          }

          while (!v14);
LABEL_262:
          LODWORD(v124) = 0;
          goto LABEL_343;
        }

        v225 = 0;
        v226 = 0;
        v124 = 0;
        v17 = v119 >= v120;
        v227 = v119 - v120;
        if (!v17)
        {
          v227 = 0;
        }

        v228 = (v121 + v120);
        v229 = v120 + 1;
        while (2)
        {
          if (v227)
          {
            v230 = *v228;
            *(this + 1) = v229;
            v124 |= (v230 & 0x7F) << v225;
            if (v230 < 0)
            {
              v225 += 7;
              --v227;
              ++v228;
              ++v229;
              v14 = v226++ > 8;
              if (v14)
              {
                goto LABEL_262;
              }

              continue;
            }

            if (*(this + 24))
            {
              LODWORD(v124) = 0;
            }
          }

          else
          {
            LODWORD(v124) = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_343:
        *(a1 + 92) = v124;
        goto LABEL_297;
      case 0xFu:
        *(a1 + 164) |= 0x20000uLL;
        v46 = *(this + 1);
        if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 100) = *(*this + v46);
        goto LABEL_296;
      case 0x10u:
        *(a1 + 164) |= 0x10000uLL;
        v87 = *(this + 1);
        v86 = *(this + 2);
        v88 = *this;
        if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = (v88 + v87);
          v93 = v87 + 1;
          do
          {
            *(this + 1) = v93;
            v94 = *v92++;
            v91 |= (v94 & 0x7F) << v89;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_331;
            }

            v89 += 7;
            ++v93;
            v14 = v90++ > 8;
          }

          while (!v14);
LABEL_228:
          LODWORD(v91) = 0;
          goto LABEL_331;
        }

        v201 = 0;
        v202 = 0;
        v91 = 0;
        v17 = v86 >= v87;
        v203 = v86 - v87;
        if (!v17)
        {
          v203 = 0;
        }

        v204 = (v88 + v87);
        v205 = v87 + 1;
        while (2)
        {
          if (v203)
          {
            v206 = *v204;
            *(this + 1) = v205;
            v91 |= (v206 & 0x7F) << v201;
            if (v206 < 0)
            {
              v201 += 7;
              --v203;
              ++v204;
              ++v205;
              v14 = v202++ > 8;
              if (v14)
              {
                goto LABEL_228;
              }

              continue;
            }

            if (*(this + 24))
            {
              LODWORD(v91) = 0;
            }
          }

          else
          {
            LODWORD(v91) = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_331:
        *(a1 + 96) = v91;
        goto LABEL_297;
      case 0x11u:
        *(a1 + 164) |= 0x40000uLL;
        v45 = *(this + 1);
        if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 104) = *(*this + v45);
        goto LABEL_296;
      case 0x12u:
        *(a1 + 164) |= 0x4000uLL;
        v115 = *(this + 1);
        if (v115 > 0xFFFFFFFFFFFFFFFBLL || v115 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 88) = *(*this + v115);
        goto LABEL_296;
      case 0x13u:
        *(a1 + 164) |= 0x40uLL;
        v129 = *(this + 1);
        if (v129 > 0xFFFFFFFFFFFFFFFBLL || v129 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 56) = *(*this + v129);
        goto LABEL_296;
      case 0x14u:
        *(a1 + 164) |= 0x80uLL;
        v151 = *(this + 1);
        v150 = *(this + 2);
        v152 = *this;
        if (v151 <= 0xFFFFFFFFFFFFFFF5 && v151 + 10 <= v150)
        {
          v153 = 0;
          v154 = 0;
          v155 = 0;
          v156 = (v152 + v151);
          v157 = v151 + 1;
          do
          {
            *(this + 1) = v157;
            v158 = *v156++;
            v155 |= (v158 & 0x7F) << v153;
            if ((v158 & 0x80) == 0)
            {
              goto LABEL_352;
            }

            v153 += 7;
            ++v157;
            v14 = v154++ > 8;
          }

          while (!v14);
LABEL_286:
          LODWORD(v155) = 0;
          goto LABEL_352;
        }

        v243 = 0;
        v244 = 0;
        v155 = 0;
        v17 = v150 >= v151;
        v245 = v150 - v151;
        if (!v17)
        {
          v245 = 0;
        }

        v246 = (v152 + v151);
        v247 = v151 + 1;
        while (2)
        {
          if (v245)
          {
            v248 = *v246;
            *(this + 1) = v247;
            v155 |= (v248 & 0x7F) << v243;
            if (v248 < 0)
            {
              v243 += 7;
              --v245;
              ++v246;
              ++v247;
              v14 = v244++ > 8;
              if (v14)
              {
                goto LABEL_286;
              }

              continue;
            }

            if (*(this + 24))
            {
              LODWORD(v155) = 0;
            }
          }

          else
          {
            LODWORD(v155) = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_352:
        *(a1 + 60) = v155;
        goto LABEL_297;
      case 0x15u:
        *(a1 + 164) |= 0x800uLL;
        v116 = *(this + 1);
        if (v116 > 0xFFFFFFFFFFFFFFFBLL || v116 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 76) = *(*this + v116);
        goto LABEL_296;
      case 0x16u:
        *(a1 + 164) |= 0x1000uLL;
        v118 = *(this + 1);
        if (v118 > 0xFFFFFFFFFFFFFFFBLL || v118 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 80) = *(*this + v118);
        goto LABEL_296;
      case 0x17u:
        *(a1 + 164) |= 0x2000uLL;
        v149 = *(this + 1);
        if (v149 > 0xFFFFFFFFFFFFFFFBLL || v149 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 84) = *(*this + v149);
        goto LABEL_296;
      case 0x18u:
        *(a1 + 164) |= 0x100uLL;
        v159 = *(this + 1);
        if (v159 > 0xFFFFFFFFFFFFFFFBLL || v159 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 64) = *(*this + v159);
        goto LABEL_296;
      case 0x19u:
        *(a1 + 164) |= 0x200uLL;
        v76 = *(this + 1);
        if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 68) = *(*this + v76);
        goto LABEL_296;
      case 0x1Au:
        *(a1 + 164) |= 0x400uLL;
        v75 = *(this + 1);
        if (v75 > 0xFFFFFFFFFFFFFFFBLL || v75 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 72) = *(*this + v75);
        goto LABEL_296;
      case 0x1Bu:
        *(a1 + 164) |= 0x8000000uLL;
        v170 = *(this + 1);
        if (v170 > 0xFFFFFFFFFFFFFFFBLL || v170 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 140) = *(*this + v170);
        goto LABEL_296;
      case 0x1Cu:
        *(a1 + 164) |= 0x800000uLL;
        v37 = *(this + 1);
        v36 = *(this + 2);
        v38 = *this;
        if (v37 <= 0xFFFFFFFFFFFFFFF5 && v37 + 10 <= v36)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = (v38 + v37);
          v43 = v37 + 1;
          do
          {
            *(this + 1) = v43;
            v44 = *v42++;
            v41 |= (v44 & 0x7F) << v39;
            if ((v44 & 0x80) == 0)
            {
              goto LABEL_316;
            }

            v39 += 7;
            ++v43;
            v14 = v40++ > 8;
          }

          while (!v14);
LABEL_188:
          LODWORD(v41) = 0;
          goto LABEL_316;
        }

        v171 = 0;
        v172 = 0;
        v41 = 0;
        v17 = v36 >= v37;
        v173 = v36 - v37;
        if (!v17)
        {
          v173 = 0;
        }

        v174 = (v38 + v37);
        v175 = v37 + 1;
        while (2)
        {
          if (v173)
          {
            v176 = *v174;
            *(this + 1) = v175;
            v41 |= (v176 & 0x7F) << v171;
            if (v176 < 0)
            {
              v171 += 7;
              --v173;
              ++v174;
              ++v175;
              v14 = v172++ > 8;
              if (v14)
              {
                goto LABEL_188;
              }

              continue;
            }

            if (*(this + 24))
            {
              LODWORD(v41) = 0;
            }
          }

          else
          {
            LODWORD(v41) = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_316:
        *(a1 + 124) = v41;
        goto LABEL_297;
      case 0x1Du:
        *(a1 + 164) |= 0x20uLL;
        v161 = *(this + 1);
        v160 = *(this + 2);
        v162 = *this;
        if (v161 <= 0xFFFFFFFFFFFFFFF5 && v161 + 10 <= v160)
        {
          v163 = 0;
          v164 = 0;
          v165 = 0;
          v166 = (v162 + v161);
          v167 = v161 + 1;
          do
          {
            *(this + 1) = v167;
            v168 = *v166++;
            v165 |= (v168 & 0x7F) << v163;
            if ((v168 & 0x80) == 0)
            {
              goto LABEL_355;
            }

            v163 += 7;
            ++v167;
            v14 = v164++ > 8;
          }

          while (!v14);
LABEL_294:
          v165 = 0;
          goto LABEL_355;
        }

        v249 = 0;
        v250 = 0;
        v165 = 0;
        v17 = v160 >= v161;
        v251 = v160 - v161;
        if (!v17)
        {
          v251 = 0;
        }

        v252 = (v162 + v161);
        v253 = v161 + 1;
        while (2)
        {
          if (v251)
          {
            v254 = *v252;
            *(this + 1) = v253;
            v165 |= (v254 & 0x7F) << v249;
            if (v254 < 0)
            {
              v249 += 7;
              --v251;
              ++v252;
              ++v253;
              v14 = v250++ > 8;
              if (v14)
              {
                goto LABEL_294;
              }

              continue;
            }

            if (*(this + 24))
            {
              v165 = 0;
            }
          }

          else
          {
            v165 = 0;
            *(this + 24) = 1;
          }

          break;
        }

LABEL_355:
        *(a1 + 48) = v165;
        goto LABEL_297;
      case 0x1Eu:
        *(a1 + 164) |= 0x2000000uLL;
        v169 = *(this + 1);
        if (v169 > 0xFFFFFFFFFFFFFFFBLL || v169 + 4 > *(this + 2))
        {
          goto LABEL_178;
        }

        *(a1 + 132) = *(*this + v169);
        goto LABEL_296;
      case 0x1Fu:
        *(a1 + 164) |= 0x40000000uLL;
        v148 = *(this + 1);
        if (v148 > 0xFFFFFFFFFFFFFFFBLL || v148 + 4 > *(this + 2))
        {
LABEL_178:
          *(this + 24) = 1;
        }

        else
        {
          *(a1 + 152) = *(*this + v148);
LABEL_296:
          *(this + 1) += 4;
        }

        goto LABEL_297;
      default:
        if (v22 == 201)
        {
          *(a1 + 164) |= 1uLL;
          v107 = *(this + 1);
          v106 = *(this + 2);
          v108 = *this;
          if (v107 > 0xFFFFFFFFFFFFFFF5 || v107 + 10 > v106)
          {
            v213 = 0;
            v214 = 0;
            v111 = 0;
            v17 = v106 >= v107;
            v215 = v106 - v107;
            if (!v17)
            {
              v215 = 0;
            }

            v216 = (v108 + v107);
            v217 = v107 + 1;
            while (1)
            {
              if (!v215)
              {
                v111 = 0;
                *(this + 24) = 1;
                goto LABEL_337;
              }

              v218 = *v216;
              *(this + 1) = v217;
              v111 |= (v218 & 0x7F) << v213;
              if ((v218 & 0x80) == 0)
              {
                break;
              }

              v213 += 7;
              --v215;
              ++v216;
              ++v217;
              v14 = v214++ > 8;
              if (v14)
              {
LABEL_244:
                v111 = 0;
                goto LABEL_337;
              }
            }

            if (*(this + 24))
            {
              v111 = 0;
            }
          }

          else
          {
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = (v108 + v107);
            v113 = v107 + 1;
            while (1)
            {
              *(this + 1) = v113;
              v114 = *v112++;
              v111 |= (v114 & 0x7F) << v109;
              if ((v114 & 0x80) == 0)
              {
                break;
              }

              v109 += 7;
              ++v113;
              v14 = v110++ > 8;
              if (v14)
              {
                goto LABEL_244;
              }
            }
          }

LABEL_337:
          *(a1 + 8) = v111;
          goto LABEL_297;
        }

        if (v22 == 202)
        {
          *(a1 + 164) |= 2uLL;
          v28 = *(this + 1);
          v27 = *(this + 2);
          v29 = *this;
          if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
          {
            v219 = 0;
            v220 = 0;
            v32 = 0;
            v17 = v27 >= v28;
            v221 = v27 - v28;
            if (!v17)
            {
              v221 = 0;
            }

            v222 = (v29 + v28);
            v223 = v28 + 1;
            while (1)
            {
              if (!v221)
              {
                v32 = 0;
                *(this + 24) = 1;
                goto LABEL_340;
              }

              v224 = *v222;
              *(this + 1) = v223;
              v32 |= (v224 & 0x7F) << v219;
              if ((v224 & 0x80) == 0)
              {
                break;
              }

              v219 += 7;
              --v221;
              ++v222;
              ++v223;
              v14 = v220++ > 8;
              if (v14)
              {
LABEL_254:
                v32 = 0;
                goto LABEL_340;
              }
            }

            if (*(this + 24))
            {
              v32 = 0;
            }
          }

          else
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = (v29 + v28);
            v34 = v28 + 1;
            while (1)
            {
              *(this + 1) = v34;
              v35 = *v33++;
              v32 |= (v35 & 0x7F) << v30;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              ++v34;
              v14 = v31++ > 8;
              if (v14)
              {
                goto LABEL_254;
              }
            }
          }

LABEL_340:
          *(a1 + 16) = v32;
          goto LABEL_297;
        }

        if (PB::Reader::skip(this))
        {
LABEL_297:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_357;
          }

          continue;
        }

        v256 = 0;
        return v256 & 1;
    }
  }
}

uint64_t sub_245DF7BF0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 164);
  if ((v4 & 0x100000000) != 0)
  {
    v5 = *(result + 160);
    result = PB::Writer::write(this);
    v4 = *(v3 + 164);
    if ((v4 & 0x100000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v4 & 0x100000) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 112);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x80000) == 0)
  {
LABEL_4:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  v7 = *(v3 + 108);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 164);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 148));
  v4 = *(v3 + 164);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_7:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 164);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 156));
  v4 = *(v3 + 164);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 164);
  if ((v4 & 0x200000) == 0)
  {
LABEL_10:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  v8 = *(v3 + 116);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x400000) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v9 = *(v3 + 120);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  v10 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  v11 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 4) == 0)
  {
LABEL_14:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  v12 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x8000) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v13 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 164);
  if ((v4 & 0x10000) == 0)
  {
LABEL_17:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  v14 = *(v3 + 96);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x40000) == 0)
  {
LABEL_18:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 164);
  if ((v4 & 0x4000) == 0)
  {
LABEL_19:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 164);
  if ((v4 & 0x40) == 0)
  {
LABEL_20:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 164);
  if ((v4 & 0x80) == 0)
  {
LABEL_21:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  v15 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x800) == 0)
  {
LABEL_22:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 164);
  if ((v4 & 0x1000) == 0)
  {
LABEL_23:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 164);
  if ((v4 & 0x2000) == 0)
  {
LABEL_24:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 164);
  if ((v4 & 0x100) == 0)
  {
LABEL_25:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 164);
  if ((v4 & 0x200) == 0)
  {
LABEL_26:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 164);
  if ((v4 & 0x400) == 0)
  {
LABEL_27:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 164);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 164);
  if ((v4 & 0x800000) == 0)
  {
LABEL_29:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  v16 = *(v3 + 124);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x20) == 0)
  {
LABEL_30:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_64;
  }

LABEL_63:
  v17 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 164);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 164);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v4 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_66:
    v18 = *(v3 + 8);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 164) & 2) == 0)
    {
      return result;
    }

    goto LABEL_67;
  }

LABEL_65:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 164);
  if (v4)
  {
    goto LABEL_66;
  }

LABEL_33:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_67:
  v19 = *(v3 + 16);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245DF7FC4(uint64_t result)
{
  *result = &unk_2858CE3A8;
  *(result + 20) = 0;
  return result;
}

void sub_245DF7FEC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DF8024(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CE3A8;
  *(result + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 8);
    *(result + 20) = 1;
    *(result + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 16);
    *(result + 20) = v2;
    *(result + 16) = v4;
  }

  return result;
}

uint64_t sub_245DF8088(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    v6 = *(a1 + 16);
    PB::TextFormatter::format(this, "attached");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DF8104(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_38;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v2 = *(this + 1);
        if (v2 >= *(this + 2))
        {
          v23 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v22 = *(*this + v2++);
          *(this + 1) = v2;
          v23 = v22 != 0;
        }

        *(a1 + 16) = v23;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
        {
          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_38:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_245DF8310(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(this);
  }

  return result;
}

void sub_245DF837C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_245DF83D0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_245DF83D0(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void *sub_245DF843C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_245DF8568(v6, v10);
    }

    sub_245DF85A4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

void sub_245DF8568(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_245DF85BC(a1, a2);
  }

  sub_245DF85A4();
}

void sub_245DF85BC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_245DF8694();
}

void sub_245DF8604(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_245DF8660(exception, a1);
  __cxa_throw(exception, off_278E96CF8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_245DF8660(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_245DF8694()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *sub_245DF86C8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_245DF87F4(v6, v10);
    }

    sub_245DF85A4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

void sub_245DF87F4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_245DF8830(a1, a2);
  }

  sub_245DF85A4();
}

void sub_245DF8830(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_245DF8694();
}

void *sub_245DF8878(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_245DF891C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_245DF8934(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x24C194490);
  }
}

void ***sub_245DF8990(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    free(*v2);

    JUMPOUT(0x24C194490);
  }

  return result;
}

void sub_245DF89F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_245DF8694();
}

uint64_t sub_245DF8A38(uint64_t a1)
{
  sub_245DF8A70(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_245DF8A70(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

id sub_245DF8AE4()
{
  v4[9] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE375C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE375C8))
  {
    v4[0] = @"LoggingEnabled";
    v4[1] = @"FilePrefix";
    v4[2] = @"FileBasePath";
    v4[3] = @"FileSize";
    v4[4] = @"FileTimeInterval";
    v4[5] = @"FilesToKeep";
    v4[6] = @"FileExtension";
    v4[7] = @"ProtectionClass";
    v4[8] = @"FlushTimeout";
    qword_27EE375C0 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v3, v4, 9);
    __cxa_guard_release(&qword_27EE375C8);
  }

  v0 = qword_27EE375C0;
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id sub_245DF8C0C()
{
  if (qword_27EE375D0 != -1)
  {
    sub_245F2ABF4();
  }

  v1 = qword_27EE38A20;

  return v1;
}

void sub_245DF8C50()
{
  v0 = dispatch_queue_create("com.apple.Msl.DefaultsQueue", 0);
  v1 = qword_27EE38A20;
  qword_27EE38A20 = v0;
}

void sub_245DF8C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (*(a2 + 63) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, a2 + 40, a4);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *(a2 + 40), a4);
  }
  v36 = ;
  objc_msgSend_setValue_forKey_(v6, v7, v36, @"FilePrefix");

  v10 = *(a1 + 16);
  if (*(a2 + 39) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, a2 + 16, v9);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, *(a2 + 16), v9);
  }
  v37 = ;
  objc_msgSend_setValue_forKey_(v10, v11, v37, @"FileBasePath");

  v12 = *(a1 + 16);
  v38 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v13, *a2, v14);
  objc_msgSend_setValue_forKey_(v12, v15, v38, @"FileSize");

  v16 = *(a1 + 16);
  v39 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v17, *(a2 + 8), v18);
  objc_msgSend_setValue_forKey_(v16, v19, v39, @"FileTimeInterval");

  v20 = *(a1 + 16);
  v40 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v21, *(a2 + 12), v22);
  objc_msgSend_setValue_forKey_(v20, v23, v40, @"FilesToKeep");

  v26 = *(a1 + 16);
  if (*(a2 + 87) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, a2 + 64, v25);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, *(a2 + 64), v25);
  }
  v41 = ;
  objc_msgSend_setValue_forKey_(v26, v27, v41, @"FileExtension");

  v28 = *(a1 + 16);
  v42 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v29, *(a2 + 88), v30);
  objc_msgSend_setValue_forKey_(v28, v31, v42, @"ProtectionClass");

  v32 = *(a1 + 16);
  v43 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v33, *(a2 + 96), v34);
  objc_msgSend_setValue_forKey_(v32, v35, v43, @"FlushTimeout");
}

void sub_245DF8EE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1048576000;
  *(a2 + 8) = 0x3200015180;
  sub_245DF9B2C((a2 + 16), "/tmp/");
  sub_245DF9B2C((a2 + 40), &unk_245F3EE63);
  sub_245DF9B2C((a2 + 64), "msl");
  *(a2 + 88) = 2;
  *(a2 + 96) = 300;
  v63 = objc_msgSend_allKeys(*(a1 + 16), v4, v5, v6);
  if (objc_msgSend_containsObject_(v63, v7, @"FilePrefix", v8))
  {
    v11 = objc_msgSend_valueForKey_(*(a1 + 16), v9, @"FilePrefix", v10);
    v12 = v11;
    v16 = objc_msgSend_UTF8String(v12, v13, v14, v15);
    sub_245DF9CA0((a2 + 40), v16);
  }

  if (objc_msgSend_containsObject_(v63, v9, @"FileBasePath", v10))
  {
    v19 = objc_msgSend_valueForKey_(*(a1 + 16), v17, @"FileBasePath", v18);
    v20 = v19;
    v24 = objc_msgSend_UTF8String(v20, v21, v22, v23);
    sub_245DF9CA0((a2 + 16), v24);
  }

  if (objc_msgSend_containsObject_(v63, v17, @"FileExtension", v18))
  {
    v27 = objc_msgSend_valueForKey_(*(a1 + 16), v25, @"FileExtension", v26);
    v28 = v27;
    v32 = objc_msgSend_UTF8String(v28, v29, v30, v31);
    sub_245DF9CA0((a2 + 64), v32);
  }

  if (objc_msgSend_containsObject_(v63, v25, @"FileTimeInterval", v26))
  {
    v35 = objc_msgSend_valueForKey_(*(a1 + 16), v33, @"FileTimeInterval", v34);
    *(a2 + 8) = objc_msgSend_unsignedIntValue(v35, v36, v37, v38);
  }

  if (objc_msgSend_containsObject_(v63, v33, @"FilesToKeep", v34))
  {
    v41 = objc_msgSend_valueForKey_(*(a1 + 16), v39, @"FilesToKeep", v40);
    *(a2 + 12) = objc_msgSend_unsignedIntValue(v41, v42, v43, v44);
  }

  if (objc_msgSend_containsObject_(v63, v39, @"FileSize", v40))
  {
    v47 = objc_msgSend_valueForKey_(*(a1 + 16), v45, @"FileSize", v46);
    *a2 = objc_msgSend_unsignedIntValue(v47, v48, v49, v50);
  }

  if (objc_msgSend_containsObject_(v63, v45, @"ProtectionClass", v46))
  {
    v53 = objc_msgSend_valueForKey_(*(a1 + 16), v51, @"ProtectionClass", v52);
    *(a2 + 88) = objc_msgSend_unsignedIntValue(v53, v54, v55, v56);
  }

  if (objc_msgSend_containsObject_(v63, v51, @"FlushTimeout", v52))
  {
    v59 = objc_msgSend_valueForKey_(*(a1 + 16), v57, @"FlushTimeout", v58);
    *(a2 + 96) = objc_msgSend_longLongValue(v59, v60, v61, v62);
  }
}

uint64_t sub_245DF91EC(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_245DF9240(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = sub_245DF8AE4();
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v22, v26, 16);
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = objc_msgSend_objectForKey_(*(a1 + 32), v4, v9, v5, v22);
        v13 = objc_msgSend_objectForKey_(*(a1 + 32), v11, v9, v12);
        v14 = v13 == 0;

        if (!v14)
        {
          v18 = objc_msgSend_copy(v10, v15, v16, v17);
          objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 16), v19, v18, v9);
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v22, v26, 16);
    }

    while (v6);
  }

  if (qword_27EE375E0 != -1)
  {
    sub_245F2AC08();
  }

  v20 = qword_27EE375D8;
  if (os_log_type_enabled(qword_27EE375D8, OS_LOG_TYPE_DEBUG))
  {
    sub_245F2AC30(a1, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_245DF940C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4);
  if (*(a2 + 23) >= 0)
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, a2, v8);
  }

  else
  {
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, *a2, v8);
  }
  *(a1 + 24) = ;
  v9 = objc_alloc(MEMORY[0x277CBEBD0]);
  *(a1 + 32) = objc_msgSend_initWithSuiteName_(v9, v10, *(a1 + 24), v11);
  *(a1 + 40) = objc_opt_new();
  if (!*(a1 + 32))
  {
    if (qword_27EE375E0 != -1)
    {
      sub_245F2ACAC();
    }

    v14 = qword_27EE375D8;
    if (os_log_type_enabled(qword_27EE375D8, OS_LOG_TYPE_FAULT))
    {
      sub_245F2ACC0((a1 + 24), v14);
    }
  }

  sub_245DF8C90(a1, a4, v12, v13);
  sub_245DF9240(a1);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = sub_245DF8AE4();
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v23, v27, 16);
  if (v18)
  {
    v19 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v15);
        }

        objc_msgSend_addObserver_forKeyPath_options_context_(*(a1 + 32), v17, *(a1 + 40), *(*(&v23 + 1) + 8 * i), 1, a1, v23);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v23, v27, 16);
    }

    while (v18);
  }

  v21 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_245DF963C(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = sub_245DF8AE4();
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v10, v14, 16);
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_removeObserver_forKeyPath_context_(*(a1 + 32), v4, *(a1 + 40), *(*(&v10 + 1) + 8 * v7++), a1, v10);
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v10, v14, 16);
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_245DF9758(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_245D81068(a1);
  }

  _Unwind_Resume(a1);
}

void sub_245DF9778(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = objc_msgSend_copy(a3, v6, v7, v8);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 16), v10, v9, v5);

  if ((*a1 & 1) == 0)
  {
    *a1 = 1;
    v11 = dispatch_time(0, 10000000000);
    v12 = sub_245DF8C0C();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_245DF9884;
    block[3] = &unk_278E96D20;
    block[4] = a1;
    dispatch_after(v11, v12, block);
  }
}

void sub_245DF9884(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock((*(v1 + 8) + 24));
  v2 = *(v1 + 8);
  operator new();
}

void sub_245DF9958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_245DF91EC(va);
  MEMORY[0x24C194490](v2, 0x1032C4044EE41C5);
  std::mutex::unlock((v3 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_245DF999C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_objectForKey_(*(a1 + 16), a2, @"LoggingEnabled", a4);
  v8 = objc_msgSend_BOOLValue(v4, v5, v6, v7);

  return v8;
}

_BYTE *sub_245DF9B2C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_245DF891C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

std::string *sub_245DF9BE4(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_245DF9CA0(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_245DF9BE4(a1, __s, v4);
}

void sub_245DF9CE8()
{
  v0 = os_log_create("com.apple.MotionSensorLogging", "MSL");
  v1 = qword_27EE375D8;
  qword_27EE375D8 = v0;
}

void sub_245DF9D2C(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 24) = 850045863;
  *(a1 + 16) = 0;
  *a1 = &unk_2858CF008;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  operator new();
}

void sub_245DFA0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_245DF91EC(&a9);
  MEMORY[0x24C194490](v10, v9);
  _Unwind_Resume(a1);
}

uint64_t sub_245DFA114(uint64_t a1)
{
  *a1 = &unk_2858CF008;
  if (qword_27EE375F0 != -1)
  {
    sub_245F2AD3C();
  }

  v2 = qword_27EE375E8;
  if (os_log_type_enabled(qword_27EE375E8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_245D80000, v2, OS_LOG_TYPE_DEFAULT, "[MSLManager] Ending.", v5, 2u);
  }

  std::mutex::lock((a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_245E48140(v3);
  }

  std::mutex::unlock((a1 + 24));
  std::mutex::~mutex((a1 + 24));
  sub_245DFA610((a1 + 16), 0);
  sub_245DFA5C4((a1 + 8), 0);
  return a1;
}

void sub_245DFA1FC(uint64_t a1)
{
  sub_245DFA114(a1);

  JUMPOUT(0x24C194490);
}

void sub_245DFA234(uint64_t a1, uint64_t a2)
{
  if (qword_27EE375F0 != -1)
  {
    sub_245F2AD3C();
  }

  v4 = qword_27EE375E8;
  if (os_log_type_enabled(qword_27EE375E8, OS_LOG_TYPE_DEBUG))
  {
    sub_245F2AD50(v4);
  }

  if (*(a1 + 16))
  {
    if (sub_245DF999C(*(a1 + 8), v5, v6, v7))
    {
      std::mutex::lock((a1 + 24));
      sub_245E4805C(*(a1 + 16), a2);
      std::mutex::unlock((a1 + 24));
    }

    else
    {
      if (qword_27EE375F0 != -1)
      {
        sub_245F2AD94();
      }

      v9 = qword_27EE375E8;
      if (os_log_type_enabled(qword_27EE375E8, OS_LOG_TYPE_DEBUG))
      {
        sub_245F2ADBC(v9);
      }
    }
  }

  else
  {
    if (qword_27EE375F0 != -1)
    {
      sub_245F2AD94();
    }

    v8 = qword_27EE375E8;
    if (os_log_type_enabled(qword_27EE375E8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_245D80000, v8, OS_LOG_TYPE_DEFAULT, "[MSLManager] Logging Msl item failed due to an invalid logger pointer.", v10, 2u);
    }
  }
}

void sub_245DFA37C(uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  sub_245E48140(*(a1 + 16));

  std::mutex::unlock((a1 + 24));
}

_BYTE *sub_245DFA3D4@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, char *a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  if (qword_27EE375F0 != -1)
  {
    sub_245F2AD3C();
  }

  v18 = qword_27EE375E8;
  if (os_log_type_enabled(qword_27EE375E8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136316930;
    v22 = a1;
    v23 = 2080;
    v24 = a2;
    v25 = 2080;
    v26 = a6;
    v27 = 1024;
    v28 = a7;
    v29 = 2048;
    v30 = a3;
    v31 = 1024;
    v32 = a4;
    v33 = 1024;
    v34 = a5;
    v35 = 2048;
    v36 = a8;
    _os_log_impl(&dword_245D80000, v18, OS_LOG_TYPE_DEFAULT, "[CMMsl] Creating config with, file prefix, %s, file path, %s, file extension, %s, protection class, %d, file size, %lld, file time interval, %u, files to keep, %u, flush timeout, %lld", &v21, 0x46u);
  }

  *a9 = a3;
  *(a9 + 8) = a4;
  *(a9 + 12) = a5;
  sub_245DF9B2C((a9 + 16), a2);
  sub_245DF9B2C((a9 + 40), a1);
  result = sub_245DF9B2C((a9 + 64), a6);
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245DFA544(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_245DFA580()
{
  v0 = os_log_create("com.apple.MotionSensorLogging", "MSL");
  v1 = qword_27EE375E8;
  qword_27EE375E8 = v0;
}

uint64_t sub_245DFA5C4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_245DF9774();

    JUMPOUT(0x24C194490);
  }

  return result;
}

uint64_t sub_245DFA610(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_245E47368();

    JUMPOUT(0x24C194490);
  }

  return result;
}

void *sub_245DFA65C(void *result)
{
  *result = &unk_2858CF058;
  result[1] = 0;
  return result;
}

void sub_245DFA67C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CF058;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245DFA6FC(PB::Base *a1)
{
  sub_245DFA67C(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245DFA734(void *result, uint64_t a2)
{
  *result = &unk_2858CF058;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245DFA7E0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFA85C(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

double sub_245DFAAA0(uint64_t a1)
{
  *a1 = &unk_2858CF598;
  *(a1 + 44) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_245DFAAD0(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245DFAAEC(void *result)
{
  *result = &unk_2858CF090;
  result[1] = 0;
  return result;
}

void sub_245DFAB0C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858CF090;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245DFAB8C(PB::Base *a1)
{
  sub_245DFAB0C(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245DFABC4(void *result, uint64_t a2)
{
  *result = &unk_2858CF090;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245DFAC70(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFACEC(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_245DFAF28(uint64_t result)
{
  *result = &unk_2858CF6B0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_245DFAF50(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_245DFAF6C(uint64_t result)
{
  *result = &unk_2858CF0C8;
  *(result + 12) = 0;
  return result;
}

void sub_245DFAF94(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245DFAFCC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CF0C8;
  *(a1 + 12) = 0;
  if (*(a2 + 12))
  {
    result = *(a2 + 8);
    *(a1 + 12) = 1;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_245DFB008(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    PB::TextFormatter::format(this, "alsTrustedLux", *(a1 + 8));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFB068(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_33;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
        {
          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 4;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v22 = 0;
          return v22 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_33:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_245DFB228(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    return PB::Writer::write(this, *(result + 8));
  }

  return result;
}

uint64_t sub_245DFB244(uint64_t result)
{
  *result = &unk_2858CF100;
  *(result + 20) = 0;
  return result;
}

void sub_245DFB26C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245DFB2A4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858CF100;
  *(a1 + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 8);
    *(a1 + 20) = 1;
    *(a1 + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 16);
    *(a1 + 20) = v2;
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_245DFB308(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "lux", *(a1 + 16));
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    v6 = *(a1 + 8);
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFB384(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_54;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
        {
          *(a1 + 16) = *(*this + v2);
          v2 = *(this + 1) + 4;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v22 = *(this + 1);
        v2 = *(this + 2);
        v23 = *this;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(this + 1);
          }

          v32 = v2 - v22;
          v33 = (v23 + v22);
          v34 = v22 + 1;
          while (1)
          {
            if (!v32)
            {
              v26 = 0;
              *(this + 24) = 1;
              goto LABEL_49;
            }

            v35 = v34;
            v36 = *v33;
            *(this + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            --v32;
            ++v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              v26 = 0;
              goto LABEL_48;
            }
          }

          if (*(this + 24))
          {
            v26 = 0;
          }

LABEL_48:
          v2 = v35;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v2 = v28;
            *(this + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              v26 = 0;
              break;
            }
          }
        }

LABEL_49:
        *(a1 + 8) = v26;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_54:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_245DFB650(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    v5 = *(result + 8);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 16);

    return PB::Writer::write(this, v6);
  }

  return result;
}

void sub_245DFB6E0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DFB718(int a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFB758(int a1, PB::Reader *this)
{
  while (1)
  {
    v4 = *(this + 1);
    v3 = *(this + 2);
    v5 = *(this + 24);
    v6 = v3 - v4;
    if (v3 <= v4 || (*(this + 24) & 1) != 0)
    {
      goto LABEL_23;
    }

    v7 = *this;
    v8 = v4 > 0xFFFFFFFFFFFFFFF5 || v4 + 10 > v3;
    if (v8)
    {
      break;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = (v7 + v4);
    v19 = v4 + 1;
    while (1)
    {
      *(this + 1) = v19;
      v20 = *v18++;
      v17 |= (v20 & 0x7F) << v15;
      if ((v20 & 0x80) == 0)
      {
        break;
      }

      v15 += 7;
      ++v19;
      v8 = v16++ > 8;
      if (v8)
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    if ((v17 & 7) == 4)
    {
      v5 = 0;
LABEL_23:
      v21 = v5 ^ 1;
      return v21 & 1;
    }

    if ((PB::Reader::skip(this) & 1) == 0)
    {
      v21 = 0;
      return v21 & 1;
    }
  }

  v9 = 0;
  v10 = 0;
  v17 = 0;
  v11 = (v7 + v4);
  v12 = v4 + 1;
  while (v6)
  {
    v13 = *v11;
    *(this + 1) = v12;
    v17 |= (v13 & 0x7F) << v9;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    v9 += 7;
    --v6;
    ++v11;
    ++v12;
    if (v10++ >= 9)
    {
LABEL_17:
      LOBYTE(v17) = 0;
      goto LABEL_18;
    }
  }

  v21 = 0;
  *(this + 24) = 1;
  return v21 & 1;
}

void *sub_245DFB884(void *result)
{
  *result = &unk_2858CF170;
  result[1] = 0;
  return result;
}

void sub_245DFB8A4(PB::Base *this)
{
  *this = &unk_2858CF170;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_245DF8934(v2, v3);
  }

  PB::Base::~Base(this);
}

void sub_245DFB908(PB::Base *a1)
{
  sub_245DFB8A4(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245DFB940(void *result, uint64_t a2)
{
  *result = &unk_2858CF170;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245DFBA00(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFBA5C(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if (!PB::Reader::skip(this))
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_245DFBC30(uint64_t result)
{
  if (*(result + 8))
  {
    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_245DFBC4C(uint64_t result)
{
  *result = &unk_2858CF1A8;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  return result;
}

void sub_245DFBC78(PB::Base *this)
{
  *this = &unk_2858CF1A8;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_245DFBCDC(PB::Base *a1)
{
  sub_245DFBC78(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DFBD14(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = &unk_2858CF1A8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  v5 = *(a2 + 56);
  if (v5)
  {
    v7 = *(a2 + 32);
    v6 = 1;
    *(a1 + 56) = 1;
    *(a1 + 32) = v7;
    v5 = *(a2 + 56);
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((*(a2 + 56) & 4) != 0)
  {
LABEL_5:
    v8 = *(a2 + 44);
    v6 |= 4u;
    *(a1 + 56) = v6;
    *(a1 + 44) = v8;
    v5 = *(a2 + 56);
  }

LABEL_6:
  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = *(a2 + 48);
  v6 |= 8u;
  *(a1 + 56) = v6;
  *(a1 + 48) = v12;
  if ((*(a2 + 56) & 0x10) != 0)
  {
LABEL_8:
    v9 = *(a2 + 52);
    *(a1 + 56) = v6 | 0x10;
    *(a1 + 52) = v9;
  }

LABEL_9:
  if (a1 != a2)
  {
    sub_245DF86C8(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  if ((*(a2 + 56) & 2) != 0)
  {
    v10 = *(a2 + 40);
    *(a1 + 56) |= 2u;
    *(a1 + 40) = v10;
  }

  return a1;
}

uint64_t sub_245DFBE18(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "attitude", v7);
  }

  v8 = *(a1 + 56);
  if ((v8 & 2) != 0)
  {
    v9 = *(a1 + 40);
    PB::TextFormatter::format(this, "status");
    v8 = *(a1 + 56);
    if ((v8 & 1) == 0)
    {
LABEL_5:
      if ((v8 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_5;
  }

  PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  v8 = *(a1 + 56);
  if ((v8 & 4) == 0)
  {
LABEL_6:
    if ((v8 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "x", *(a1 + 44));
  v8 = *(a1 + 56);
  if ((v8 & 8) == 0)
  {
LABEL_7:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_15:
  PB::TextFormatter::format(this, "y", *(a1 + 48));
  if ((*(a1 + 56) & 0x10) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "z", *(a1 + 52));
  }

LABEL_9:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFBF38(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_107;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_107;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        break;
      }

      if (v22 == 4)
      {
        *(a1 + 56) |= 0x10u;
        v34 = *(this + 1);
        if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(this + 2))
        {
          goto LABEL_99;
        }

        *(a1 + 52) = *(*this + v34);
LABEL_50:
        v36 = *(this + 1) + 4;
LABEL_102:
        *(this + 1) = v36;
        goto LABEL_103;
      }

      if (v22 != 5)
      {
        if (v22 == 6)
        {
          *(a1 + 56) |= 2u;
          v25 = *(this + 1);
          v24 = *(this + 2);
          v26 = *this;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
          {
            v53 = 0;
            v54 = 0;
            v29 = 0;
            v17 = v24 >= v25;
            v55 = v24 - v25;
            if (!v17)
            {
              v55 = 0;
            }

            v56 = (v26 + v25);
            v57 = v25 + 1;
            while (1)
            {
              if (!v55)
              {
                LODWORD(v29) = 0;
                *(this + 24) = 1;
                goto LABEL_92;
              }

              v58 = *v56;
              *(this + 1) = v57;
              v29 |= (v58 & 0x7F) << v53;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              --v55;
              ++v56;
              ++v57;
              v14 = v54++ > 8;
              if (v14)
              {
LABEL_78:
                LODWORD(v29) = 0;
                goto LABEL_92;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v29) = 0;
            }
          }

          else
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = (v26 + v25);
            v31 = v25 + 1;
            while (1)
            {
              *(this + 1) = v31;
              v32 = *v30++;
              v29 |= (v32 & 0x7F) << v27;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              ++v31;
              v14 = v28++ > 8;
              if (v14)
              {
                goto LABEL_78;
              }
            }
          }

LABEL_92:
          *(a1 + 40) = v29;
          goto LABEL_103;
        }

LABEL_45:
        if ((PB::Reader::skip(this) & 1) == 0)
        {
          goto LABEL_109;
        }

        goto LABEL_103;
      }

      if ((v10 & 7) != 2)
      {
        v60 = *(a1 + 16);
        v59 = *(a1 + 24);
        if (v60 >= v59)
        {
          v62 = *(a1 + 8);
          v63 = v60 - v62;
          v64 = (v60 - v62) >> 3;
          v65 = v64 + 1;
          if ((v64 + 1) >> 61)
          {
LABEL_110:
            sub_245DF85A4();
          }

          v66 = v59 - v62;
          if (v66 >> 2 > v65)
          {
            v65 = v66 >> 2;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFF8)
          {
            v67 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v67 = v65;
          }

          if (v67)
          {
            sub_245DF8830(a1 + 8, v67);
          }

          v68 = (v60 - v62) >> 3;
          v69 = (8 * v64);
          v70 = (8 * v64 - 8 * v68);
          *v69 = 0;
          v61 = v69 + 1;
          memcpy(v70, v62, v63);
          v71 = *(a1 + 8);
          *(a1 + 8) = v70;
          *(a1 + 16) = v61;
          *(a1 + 24) = 0;
          if (v71)
          {
            operator delete(v71);
          }
        }

        else
        {
          *v60 = 0;
          v61 = v60 + 8;
        }

        *(a1 + 16) = v61;
        v72 = *(this + 1);
        if (v72 > 0xFFFFFFFFFFFFFFF7 || v72 + 8 > *(this + 2))
        {
LABEL_99:
          *(this + 24) = 1;
          goto LABEL_103;
        }

        *(v61 - 1) = *(*this + v72);
LABEL_101:
        v36 = *(this + 1) + 8;
        goto LABEL_102;
      }

      if (PB::Reader::placeMark())
      {
LABEL_109:
        v73 = 0;
        return v73 & 1;
      }

      v37 = *(this + 1);
      v38 = *(this + 2);
      while (v37 < v38 && (*(this + 24) & 1) == 0)
      {
        v40 = *(a1 + 16);
        v39 = *(a1 + 24);
        if (v40 >= v39)
        {
          v42 = *(a1 + 8);
          v43 = v40 - v42;
          v44 = (v40 - v42) >> 3;
          v45 = v44 + 1;
          if ((v44 + 1) >> 61)
          {
            goto LABEL_110;
          }

          v46 = v39 - v42;
          if (v46 >> 2 > v45)
          {
            v45 = v46 >> 2;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFF8)
          {
            v47 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v45;
          }

          if (v47)
          {
            sub_245DF8830(a1 + 8, v47);
          }

          v48 = (v40 - v42) >> 3;
          v49 = (8 * v44);
          v50 = (8 * v44 - 8 * v48);
          *v49 = 0;
          v41 = v49 + 1;
          memcpy(v50, v42, v43);
          v51 = *(a1 + 8);
          *(a1 + 8) = v50;
          *(a1 + 16) = v41;
          *(a1 + 24) = 0;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          *v40 = 0;
          v41 = v40 + 8;
        }

        *(a1 + 16) = v41;
        v52 = *(this + 1);
        if (v52 > 0xFFFFFFFFFFFFFFF7 || v52 + 8 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v41 - 1) = *(*this + v52);
        v38 = *(this + 2);
        v37 = *(this + 1) + 8;
        *(this + 1) = v37;
      }

      PB::Reader::recallMark();
LABEL_103:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_107;
      }
    }

    switch(v22)
    {
      case 1:
        *(a1 + 56) |= 1u;
        v33 = *(this + 1);
        if (v33 > 0xFFFFFFFFFFFFFFF7 || v33 + 8 > *(this + 2))
        {
          goto LABEL_99;
        }

        *(a1 + 32) = *(*this + v33);
        goto LABEL_101;
      case 2:
        *(a1 + 56) |= 4u;
        v35 = *(this + 1);
        if (v35 > 0xFFFFFFFFFFFFFFFBLL || v35 + 4 > *(this + 2))
        {
          goto LABEL_99;
        }

        *(a1 + 44) = *(*this + v35);
        goto LABEL_50;
      case 3:
        *(a1 + 56) |= 8u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
        {
          goto LABEL_99;
        }

        *(a1 + 48) = *(*this + v23);
        goto LABEL_50;
    }

    goto LABEL_45;
  }

LABEL_107:
  v73 = v4 ^ 1;
  return v73 & 1;
}

uint64_t sub_245DFC4CC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      result = PB::Writer::write(this, *(v3 + 48));
      if ((*(v3 + 56) & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(result + 56) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 56);
  if ((v4 & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v4 & 0x10) != 0)
  {
LABEL_5:
    result = PB::Writer::write(this, *(v3 + 52));
  }

LABEL_6:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  if ((*(v3 + 56) & 2) != 0)
  {
    v8 = *(v3 + 40);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void *sub_245DFC5BC(void *result)
{
  *result = &unk_2858CF1E0;
  result[1] = 0;
  return result;
}

void sub_245DFC5E0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245DFC618(uint64_t result, uint64_t a2)
{
  *result = &unk_2858CF1E0;
  *(result + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(result + 12) = 1;
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_245DFC650(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    v5 = *(a1 + 8);
    PB::TextFormatter::format(this, "state");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245DFC6B0(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_51;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_46;
            }

            v36 = v35;
            v37 = *v34;
            *(this + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_45:
          v3 = v36;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v3 = v29;
            *(this + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_46:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}