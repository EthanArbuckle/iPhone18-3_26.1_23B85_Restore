int *agxps_timeseries_compare_st_0(int a1, int a2, unint64_t a3, int *a4, int *a5, int a6, uint64_t a7)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        a7 = 0;
        if (!a4 || !a5)
        {
          return a7;
        }

        if ((a5[8] & 1) == 0)
        {
          v28 = *(a4 + 1);
          if (v28 == *(a5 + 1))
          {
            v29 = *a4;
            v30 = *a5;
            switch(a2)
            {
              case 2:
                switch(v29)
                {
                  case 2:
                    switch(v30)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v704 = *(a4 + 2);
                            v705 = *(a5 + 2);
                            do
                            {
                              v706 = *v704++;
                              *v705++ = v706 < a3;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v340 = *(a4 + 2);
                          v341 = *(a5 + 2);
                          do
                          {
                            v342 = *v340++;
                            *v341++ = v342 < a3;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v624 = *(a4 + 2);
                            v625 = *(a5 + 2);
                            do
                            {
                              v626 = *v624++;
                              *v625++ = a3 > v626;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v292 = *(a4 + 2);
                          v293 = *(a5 + 2);
                          do
                          {
                            v294 = *v292++;
                            *v293++ = a3 > v294;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v729 = *(a4 + 2);
                            v730 = *(a5 + 2);
                            do
                            {
                              v731 = *v729++;
                              if (a3 <= v731)
                              {
                                v732 = 0.0;
                              }

                              else
                              {
                                v732 = 1.0;
                              }

                              *v730++ = v732;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v133 = *(a4 + 2);
                          v134 = *(a5 + 2);
                          do
                          {
                            v135 = *v133++;
                            if (a3 <= v135)
                            {
                              v136 = 0.0;
                            }

                            else
                            {
                              v136 = 1.0;
                            }

                            *v134++ = v136;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v30)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v618 = *(a4 + 2);
                            v619 = *(a5 + 2);
                            do
                            {
                              v620 = *v618;
                              v618 += 8;
                              *v619++ = a3 > v620;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v286 = *(a4 + 2);
                          v287 = *(a5 + 2);
                          do
                          {
                            v288 = *v286;
                            v286 += 8;
                            *v287++ = a3 > v288;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v586 = *(a4 + 2);
                            v587 = *(a5 + 2);
                            do
                            {
                              v588 = *v586++;
                              *v587++ = a3 > v588;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v262 = *(a4 + 2);
                          v263 = *(a5 + 2);
                          do
                          {
                            v264 = *v262++;
                            *v263++ = a3 > v264;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v645 = *(a4 + 2);
                            v646 = *(a5 + 2);
                            do
                            {
                              v647 = *v645++;
                              if (a3 <= v647)
                              {
                                v648 = 0.0;
                              }

                              else
                              {
                                v648 = 1.0;
                              }

                              *v646++ = v648;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v117 = *(a4 + 2);
                          v118 = *(a5 + 2);
                          do
                          {
                            v119 = *v117++;
                            if (a3 <= v119)
                            {
                              v120 = 0.0;
                            }

                            else
                            {
                              v120 = 1.0;
                            }

                            *v118++ = v120;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v30)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v736 = *(a4 + 2);
                            v737 = *(a5 + 2);
                            do
                            {
                              v738 = *v736++;
                              *v737++ = v738 < a3;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v364 = *(a4 + 2);
                          v365 = *(a5 + 2);
                          do
                          {
                            v366 = *v364++;
                            *v365++ = v366 < a3;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v658 = *(a4 + 2);
                            v659 = *(a5 + 2);
                            do
                            {
                              v660 = *v658++;
                              *v659++ = a3 > v660;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v310 = *(a4 + 2);
                          v311 = *(a5 + 2);
                          do
                          {
                            v312 = *v310++;
                            *v311++ = a3 > v312;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v787 = *(a4 + 2);
                            v788 = *(a5 + 2);
                            do
                            {
                              v789 = *v787++;
                              if (v789 >= a3)
                              {
                                v790 = 0.0;
                              }

                              else
                              {
                                v790 = 1.0;
                              }

                              *v788++ = v790;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v61 = *(a4 + 2);
                          v62 = *(a5 + 2);
                          do
                          {
                            v63 = *v61++;
                            if (v63 >= a3)
                            {
                              v64 = 0.0;
                            }

                            else
                            {
                              v64 = 1.0;
                            }

                            *v62++ = v64;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                    }

                    break;
                }

                break;
              case 1:
                switch(v29)
                {
                  case 2:
                    switch(v30)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v612 = *(a4 + 2);
                            v613 = *(a5 + 2);
                            do
                            {
                              v614 = *v612++;
                              *v613++ = v614 < a3;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v280 = *(a4 + 2);
                          v281 = *(a5 + 2);
                          do
                          {
                            v282 = *v280++;
                            *v281++ = v282 < a3;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v580 = *(a4 + 2);
                            v581 = *(a5 + 2);
                            do
                            {
                              v582 = *v580++;
                              *v581++ = a3 > v582;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v256 = *(a4 + 2);
                          v257 = *(a5 + 2);
                          do
                          {
                            v258 = *v256++;
                            *v257++ = a3 > v258;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v637 = *(a4 + 2);
                            v638 = *(a5 + 2);
                            do
                            {
                              v639 = *v637++;
                              if (a3 <= v639)
                              {
                                v640 = 0.0;
                              }

                              else
                              {
                                v640 = 1.0;
                              }

                              *v638++ = v640;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v109 = *(a4 + 2);
                          v110 = *(a5 + 2);
                          do
                          {
                            v111 = *v109++;
                            if (a3 <= v111)
                            {
                              v112 = 0.0;
                            }

                            else
                            {
                              v112 = 1.0;
                            }

                            *v110++ = v112;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v30)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v574 = *(a4 + 2);
                            v575 = *(a5 + 2);
                            do
                            {
                              v576 = *v574;
                              v574 += 8;
                              *v575++ = a3 > v576;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v250 = *(a4 + 2);
                          v251 = *(a5 + 2);
                          do
                          {
                            v252 = *v250;
                            v250 += 8;
                            *v251++ = a3 > v252;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v568 = *(a4 + 2);
                            v569 = *(a5 + 2);
                            do
                            {
                              v570 = *v568++;
                              *v569++ = v570 < a3;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v244 = *(a4 + 2);
                          v245 = *(a5 + 2);
                          do
                          {
                            v246 = *v244++;
                            *v245++ = v246 < a3;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v593 = *(a4 + 2);
                            v594 = *(a5 + 2);
                            do
                            {
                              v595 = *v593++;
                              if (a3 <= v595)
                              {
                                v596 = 0.0;
                              }

                              else
                              {
                                v596 = 1.0;
                              }

                              *v594++ = v596;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v101 = *(a4 + 2);
                          v102 = *(a5 + 2);
                          do
                          {
                            v103 = *v101++;
                            if (a3 <= v103)
                            {
                              v104 = 0.0;
                            }

                            else
                            {
                              v104 = 1.0;
                            }

                            *v102++ = v104;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v30)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v652 = *(a4 + 2);
                            v653 = *(a5 + 2);
                            do
                            {
                              v654 = *v652++;
                              *v653++ = v654 < a3;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v304 = *(a4 + 2);
                          v305 = *(a5 + 2);
                          do
                          {
                            v306 = *v304++;
                            *v305++ = v306 < a3;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v600 = *(a4 + 2);
                            v601 = *(a5 + 2);
                            do
                            {
                              v602 = *v600++;
                              *v601++ = a3 > v602;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v268 = *(a4 + 2);
                          v269 = *(a5 + 2);
                          do
                          {
                            v270 = *v268++;
                            *v269++ = a3 > v270;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v683 = *(a4 + 2);
                            v684 = *(a5 + 2);
                            do
                            {
                              v685 = *v683++;
                              if (v685 >= a3)
                              {
                                v686 = 0.0;
                              }

                              else
                              {
                                v686 = 1.0;
                              }

                              *v684++ = v686;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v53 = *(a4 + 2);
                          v54 = *(a5 + 2);
                          do
                          {
                            v55 = *v53++;
                            if (v55 >= a3)
                            {
                              v56 = 0.0;
                            }

                            else
                            {
                              v56 = 1.0;
                            }

                            *v54++ = v56;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                    }

                    break;
                }

                break;
              case 0:
                switch(v29)
                {
                  case 2:
                    switch(v30)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v742 = *(a4 + 2);
                            v743 = *(a5 + 2);
                            do
                            {
                              v744 = *v742++;
                              *v743++ = v744 < *&a3;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v370 = *(a4 + 2);
                          v371 = *(a5 + 2);
                          do
                          {
                            v372 = *v370++;
                            *v371++ = v372 < *&a3;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v670 = *(a4 + 2);
                            v671 = *(a5 + 2);
                            do
                            {
                              v672 = *v670++;
                              *v671++ = *&a3 > v672;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v322 = *(a4 + 2);
                          v323 = *(a5 + 2);
                          do
                          {
                            v324 = *v322++;
                            *v323++ = *&a3 > v324;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v795 = *(a4 + 2);
                            v796 = *(a5 + 2);
                            do
                            {
                              v797 = *v795++;
                              if (*&a3 <= v797)
                              {
                                v798 = 0.0;
                              }

                              else
                              {
                                v798 = 1.0;
                              }

                              *v796++ = v798;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v149 = *(a4 + 2);
                          v150 = *(a5 + 2);
                          do
                          {
                            v151 = *v149++;
                            if (*&a3 <= v151)
                            {
                              v152 = 0.0;
                            }

                            else
                            {
                              v152 = 1.0;
                            }

                            *v150++ = v152;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v30)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v664 = *(a4 + 2);
                            v665 = *(a5 + 2);
                            do
                            {
                              v666 = *v664;
                              v664 += 8;
                              *v665++ = *&a3 > v666;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v316 = *(a4 + 2);
                          v317 = *(a5 + 2);
                          do
                          {
                            v318 = *v316;
                            v316 += 8;
                            *v317++ = *&a3 > v318;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v606 = *(a4 + 2);
                            v607 = *(a5 + 2);
                            do
                            {
                              v608 = *v606++;
                              *v607++ = v608 < *&a3;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v274 = *(a4 + 2);
                          v275 = *(a5 + 2);
                          do
                          {
                            v276 = *v274++;
                            *v275++ = v276 < *&a3;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v691 = *(a4 + 2);
                            v692 = *(a5 + 2);
                            do
                            {
                              v693 = *v691++;
                              if (*&a3 <= v693)
                              {
                                v694 = 0.0;
                              }

                              else
                              {
                                v694 = 1.0;
                              }

                              *v692++ = v694;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v125 = *(a4 + 2);
                          v126 = *(a5 + 2);
                          do
                          {
                            v127 = *v125++;
                            if (*&a3 <= v127)
                            {
                              v128 = 0.0;
                            }

                            else
                            {
                              v128 = 1.0;
                            }

                            *v126++ = v128;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v30)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v802 = *(a4 + 2);
                            v803 = *(a5 + 2);
                            do
                            {
                              v804 = *v802++;
                              *v803++ = *&a3 > v804;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v406 = *(a4 + 2);
                          v407 = *(a5 + 2);
                          do
                          {
                            v408 = *v406++;
                            *v407++ = *&a3 > v408;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v698 = *(a4 + 2);
                            v699 = *(a5 + 2);
                            do
                            {
                              v700 = *v698++;
                              *v699++ = *&a3 > v700;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v334 = *(a4 + 2);
                          v335 = *(a5 + 2);
                          do
                          {
                            v336 = *v334++;
                            *v335++ = *&a3 > v336;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v28)
                          {
                            v847 = *(a4 + 2);
                            v848 = *(a5 + 2);
                            do
                            {
                              v849 = *v847++;
                              if (v849 >= *&a3)
                              {
                                v850 = 0.0;
                              }

                              else
                              {
                                v850 = 1.0;
                              }

                              *v848++ = v850;
                              --v28;
                            }

                            while (v28);
                          }
                        }

                        else if (!a6 && v28)
                        {
                          v31 = *(a4 + 2);
                          v32 = *(a5 + 2);
                          do
                          {
                            v33 = *v31++;
                            if (v33 >= *&a3)
                            {
                              v34 = 0.0;
                            }

                            else
                            {
                              v34 = 1.0;
                            }

                            *v32++ = v34;
                            --v28;
                          }

                          while (v28);
                        }

                        break;
                    }

                    break;
                }

                break;
            }

            return a5;
          }
        }

        break;
      case 4:
        a7 = 0;
        if (!a4 || !a5)
        {
          return a7;
        }

        if ((a5[8] & 1) == 0)
        {
          v42 = *(a4 + 1);
          if (v42 == *(a5 + 1))
          {
            v43 = *a4;
            v44 = *a5;
            switch(a2)
            {
              case 2:
                switch(v43)
                {
                  case 2:
                    switch(v44)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v1002 = *(a4 + 2);
                            v1003 = *(a5 + 2);
                            do
                            {
                              v1004 = *v1002++;
                              *v1003++ = v1004 >= a3;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v526 = *(a4 + 2);
                          v527 = *(a5 + 2);
                          do
                          {
                            v528 = *v526++;
                            *v527++ = v528 >= a3;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v866 = *(a4 + 2);
                            v867 = *(a5 + 2);
                            do
                            {
                              v868 = *v866++;
                              *v867++ = a3 <= v868;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v454 = *(a4 + 2);
                          v455 = *(a5 + 2);
                          do
                          {
                            v456 = *v454++;
                            *v455++ = a3 <= v456;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v1029 = *(a4 + 2);
                            v1030 = *(a5 + 2);
                            do
                            {
                              v1031 = *v1029++;
                              if (a3 > v1031)
                              {
                                v1032 = 0.0;
                              }

                              else
                              {
                                v1032 = 1.0;
                              }

                              *v1030++ = v1032;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v221 = *(a4 + 2);
                          v222 = *(a5 + 2);
                          do
                          {
                            v223 = *v221++;
                            if (a3 > v223)
                            {
                              v224 = 0.0;
                            }

                            else
                            {
                              v224 = 1.0;
                            }

                            *v222++ = v224;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v44)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v860 = *(a4 + 2);
                            v861 = *(a5 + 2);
                            do
                            {
                              v862 = *v860;
                              v860 += 8;
                              *v861++ = a3 <= v862;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v448 = *(a4 + 2);
                          v449 = *(a5 + 2);
                          do
                          {
                            v450 = *v448;
                            v448 += 8;
                            *v449++ = a3 <= v450;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v760 = *(a4 + 2);
                            v761 = *(a5 + 2);
                            do
                            {
                              v762 = *v760++;
                              *v761++ = a3 <= v762;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v388 = *(a4 + 2);
                          v389 = *(a5 + 2);
                          do
                          {
                            v390 = *v388++;
                            *v389++ = a3 <= v390;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v921 = *(a4 + 2);
                            v922 = *(a5 + 2);
                            do
                            {
                              v923 = *v921++;
                              if (a3 > v923)
                              {
                                v924 = 0.0;
                              }

                              else
                              {
                                v924 = 1.0;
                              }

                              *v922++ = v924;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v189 = *(a4 + 2);
                          v190 = *(a5 + 2);
                          do
                          {
                            v191 = *v189++;
                            if (a3 > v191)
                            {
                              v192 = 0.0;
                            }

                            else
                            {
                              v192 = 1.0;
                            }

                            *v190++ = v192;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v44)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v1036 = *(a4 + 2);
                            v1037 = *(a5 + 2);
                            do
                            {
                              v1038 = *v1036++;
                              *v1037++ = v1038 >= a3;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v544 = *(a4 + 2);
                          v545 = *(a5 + 2);
                          do
                          {
                            v546 = *v544++;
                            *v545++ = v546 >= a3;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v934 = *(a4 + 2);
                            v935 = *(a5 + 2);
                            do
                            {
                              v936 = *v934++;
                              *v935++ = a3 <= v936;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v490 = *(a4 + 2);
                          v491 = *(a5 + 2);
                          do
                          {
                            v492 = *v490++;
                            *v491++ = a3 <= v492;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v1071 = *(a4 + 2);
                            v1072 = *(a5 + 2);
                            do
                            {
                              v1073 = *v1071++;
                              if (v1073 < a3)
                              {
                                v1074 = 0.0;
                              }

                              else
                              {
                                v1074 = 1.0;
                              }

                              *v1072++ = v1074;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v93 = *(a4 + 2);
                          v94 = *(a5 + 2);
                          do
                          {
                            v95 = *v93++;
                            if (v95 < a3)
                            {
                              v96 = 0.0;
                            }

                            else
                            {
                              v96 = 1.0;
                            }

                            *v94++ = v96;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                    }

                    break;
                }

                break;
              case 1:
                switch(v43)
                {
                  case 2:
                    switch(v44)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v854 = *(a4 + 2);
                            v855 = *(a5 + 2);
                            do
                            {
                              v856 = *v854++;
                              *v855++ = v856 >= a3;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v442 = *(a4 + 2);
                          v443 = *(a5 + 2);
                          do
                          {
                            v444 = *v442++;
                            *v443++ = v444 >= a3;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v754 = *(a4 + 2);
                            v755 = *(a5 + 2);
                            do
                            {
                              v756 = *v754++;
                              *v755++ = a3 <= v756;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v382 = *(a4 + 2);
                          v383 = *(a5 + 2);
                          do
                          {
                            v384 = *v382++;
                            *v383++ = a3 <= v384;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v913 = *(a4 + 2);
                            v914 = *(a5 + 2);
                            do
                            {
                              v915 = *v913++;
                              if (a3 > v915)
                              {
                                v916 = 0.0;
                              }

                              else
                              {
                                v916 = 1.0;
                              }

                              *v914++ = v916;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v181 = *(a4 + 2);
                          v182 = *(a5 + 2);
                          do
                          {
                            v183 = *v181++;
                            if (a3 > v183)
                            {
                              v184 = 0.0;
                            }

                            else
                            {
                              v184 = 1.0;
                            }

                            *v182++ = v184;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v44)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v748 = *(a4 + 2);
                            v749 = *(a5 + 2);
                            do
                            {
                              v750 = *v748;
                              v748 += 8;
                              *v749++ = a3 <= v750;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v376 = *(a4 + 2);
                          v377 = *(a5 + 2);
                          do
                          {
                            v378 = *v376;
                            v376 += 8;
                            *v377++ = a3 <= v378;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v676 = *(a4 + 2);
                            v677 = *(a5 + 2);
                            do
                            {
                              v678 = *v676++;
                              *v677++ = v678 >= a3;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v328 = *(a4 + 2);
                          v329 = *(a5 + 2);
                          do
                          {
                            v330 = *v328++;
                            *v329++ = v330 >= a3;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v809 = *(a4 + 2);
                            v810 = *(a5 + 2);
                            do
                            {
                              v811 = *v809++;
                              if (a3 > v811)
                              {
                                v812 = 0.0;
                              }

                              else
                              {
                                v812 = 1.0;
                              }

                              *v810++ = v812;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v157 = *(a4 + 2);
                          v158 = *(a5 + 2);
                          do
                          {
                            v159 = *v157++;
                            if (a3 > v159)
                            {
                              v160 = 0.0;
                            }

                            else
                            {
                              v160 = 1.0;
                            }

                            *v158++ = v160;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v44)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v928 = *(a4 + 2);
                            v929 = *(a5 + 2);
                            do
                            {
                              v930 = *v928++;
                              *v929++ = v930 >= a3;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v484 = *(a4 + 2);
                          v485 = *(a5 + 2);
                          do
                          {
                            v486 = *v484++;
                            *v485++ = v486 >= a3;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v816 = *(a4 + 2);
                            v817 = *(a5 + 2);
                            do
                            {
                              v818 = *v816++;
                              *v817++ = a3 <= v818;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v412 = *(a4 + 2);
                          v413 = *(a5 + 2);
                          do
                          {
                            v414 = *v412++;
                            *v413++ = a3 <= v414;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v981 = *(a4 + 2);
                            v982 = *(a5 + 2);
                            do
                            {
                              v983 = *v981++;
                              if (v983 < a3)
                              {
                                v984 = 0.0;
                              }

                              else
                              {
                                v984 = 1.0;
                              }

                              *v982++ = v984;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v77 = *(a4 + 2);
                          v78 = *(a5 + 2);
                          do
                          {
                            v79 = *v77++;
                            if (v79 < a3)
                            {
                              v80 = 0.0;
                            }

                            else
                            {
                              v80 = 1.0;
                            }

                            *v78++ = v80;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                    }

                    break;
                }

                break;
              case 0:
                switch(v43)
                {
                  case 2:
                    switch(v44)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v1042 = *(a4 + 2);
                            v1043 = *(a5 + 2);
                            do
                            {
                              v1044 = *v1042++;
                              *v1043++ = v1044 >= *&a3;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v550 = *(a4 + 2);
                          v551 = *(a5 + 2);
                          do
                          {
                            v552 = *v550++;
                            *v551++ = v552 >= *&a3;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v946 = *(a4 + 2);
                            v947 = *(a5 + 2);
                            do
                            {
                              v948 = *v946++;
                              *v947++ = *&a3 <= v948;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v502 = *(a4 + 2);
                          v503 = *(a5 + 2);
                          do
                          {
                            v504 = *v502++;
                            *v503++ = *&a3 <= v504;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v1079 = *(a4 + 2);
                            v1080 = *(a5 + 2);
                            do
                            {
                              v1081 = *v1079++;
                              if (*&a3 > v1081)
                              {
                                v1082 = 0.0;
                              }

                              else
                              {
                                v1082 = 1.0;
                              }

                              *v1080++ = v1082;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v237 = *(a4 + 2);
                          v238 = *(a5 + 2);
                          do
                          {
                            v239 = *v237++;
                            if (*&a3 > v239)
                            {
                              v240 = 0.0;
                            }

                            else
                            {
                              v240 = 1.0;
                            }

                            *v238++ = v240;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v44)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v940 = *(a4 + 2);
                            v941 = *(a5 + 2);
                            do
                            {
                              v942 = *v940;
                              v940 += 8;
                              *v941++ = *&a3 <= v942;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v496 = *(a4 + 2);
                          v497 = *(a5 + 2);
                          do
                          {
                            v498 = *v496;
                            v496 += 8;
                            *v497++ = *&a3 <= v498;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v822 = *(a4 + 2);
                            v823 = *(a5 + 2);
                            do
                            {
                              v824 = *v822++;
                              *v823++ = v824 >= *&a3;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v418 = *(a4 + 2);
                          v419 = *(a5 + 2);
                          do
                          {
                            v420 = *v418++;
                            *v419++ = v420 >= *&a3;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v989 = *(a4 + 2);
                            v990 = *(a5 + 2);
                            do
                            {
                              v991 = *v989++;
                              if (*&a3 > v991)
                              {
                                v992 = 0.0;
                              }

                              else
                              {
                                v992 = 1.0;
                              }

                              *v990++ = v992;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v205 = *(a4 + 2);
                          v206 = *(a5 + 2);
                          do
                          {
                            v207 = *v205++;
                            if (*&a3 > v207)
                            {
                              v208 = 0.0;
                            }

                            else
                            {
                              v208 = 1.0;
                            }

                            *v206++ = v208;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v44)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v1086 = *(a4 + 2);
                            v1087 = *(a5 + 2);
                            do
                            {
                              v1088 = *v1086++;
                              *v1087++ = *&a3 <= v1088;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v562 = *(a4 + 2);
                          v563 = *(a5 + 2);
                          do
                          {
                            v564 = *v562++;
                            *v563++ = *&a3 <= v564;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v996 = *(a4 + 2);
                            v997 = *(a5 + 2);
                            do
                            {
                              v998 = *v996++;
                              *v997++ = *&a3 <= v998;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v520 = *(a4 + 2);
                          v521 = *(a5 + 2);
                          do
                          {
                            v522 = *v520++;
                            *v521++ = *&a3 <= v522;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v42)
                          {
                            v1101 = *(a4 + 2);
                            v1102 = *(a5 + 2);
                            do
                            {
                              v1103 = *v1101++;
                              if (v1103 < *&a3)
                              {
                                v1104 = 0.0;
                              }

                              else
                              {
                                v1104 = 1.0;
                              }

                              *v1102++ = v1104;
                              --v42;
                            }

                            while (v42);
                          }
                        }

                        else if (!a6 && v42)
                        {
                          v45 = *(a4 + 2);
                          v46 = *(a5 + 2);
                          do
                          {
                            v47 = *v45++;
                            if (v47 < *&a3)
                            {
                              v48 = 0.0;
                            }

                            else
                            {
                              v48 = 1.0;
                            }

                            *v46++ = v48;
                            --v42;
                          }

                          while (v42);
                        }

                        break;
                    }

                    break;
                }

                break;
            }

            return a5;
          }
        }

        break;
      case 5:
        a7 = 0;
        if (!a4 || !a5)
        {
          return a7;
        }

        if ((a5[8] & 1) == 0)
        {
          v14 = *(a4 + 1);
          if (v14 == *(a5 + 1))
          {
            v15 = *a4;
            v16 = *a5;
            switch(a2)
            {
              case 2:
                switch(v15)
                {
                  case 2:
                    switch(v16)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v974 = *(a4 + 2);
                            v975 = *(a5 + 2);
                            do
                            {
                              v976 = *v974++;
                              *v975++ = v976 <= a3;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v514 = *(a4 + 2);
                          v515 = *(a5 + 2);
                          do
                          {
                            v516 = *v514++;
                            *v515++ = v516 <= a3;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v840 = *(a4 + 2);
                            v841 = *(a5 + 2);
                            do
                            {
                              v842 = *v840++;
                              *v841++ = a3 >= v842;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v436 = *(a4 + 2);
                          v437 = *(a5 + 2);
                          do
                          {
                            v438 = *v436++;
                            *v437++ = a3 >= v438;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v1009 = *(a4 + 2);
                            v1010 = *(a5 + 2);
                            do
                            {
                              v1011 = *v1009++;
                              if (a3 < v1011)
                              {
                                v1012 = 0.0;
                              }

                              else
                              {
                                v1012 = 1.0;
                              }

                              *v1010++ = v1012;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v213 = *(a4 + 2);
                          v214 = *(a5 + 2);
                          do
                          {
                            v215 = *v213++;
                            if (a3 < v215)
                            {
                              v216 = 0.0;
                            }

                            else
                            {
                              v216 = 1.0;
                            }

                            *v214++ = v216;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v16)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v834 = *(a4 + 2);
                            v835 = *(a5 + 2);
                            do
                            {
                              v836 = *v834;
                              v834 += 8;
                              *v835++ = a3 >= v836;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v430 = *(a4 + 2);
                          v431 = *(a5 + 2);
                          do
                          {
                            v432 = *v430;
                            v430 += 8;
                            *v431++ = a3 >= v432;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v722 = *(a4 + 2);
                            v723 = *(a5 + 2);
                            do
                            {
                              v724 = *v722++;
                              *v723++ = a3 >= v724;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v358 = *(a4 + 2);
                          v359 = *(a5 + 2);
                          do
                          {
                            v360 = *v358++;
                            *v359++ = a3 >= v360;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v881 = *(a4 + 2);
                            v882 = *(a5 + 2);
                            do
                            {
                              v883 = *v881++;
                              if (a3 < v883)
                              {
                                v884 = 0.0;
                              }

                              else
                              {
                                v884 = 1.0;
                              }

                              *v882++ = v884;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v173 = *(a4 + 2);
                          v174 = *(a5 + 2);
                          do
                          {
                            v175 = *v173++;
                            if (a3 < v175)
                            {
                              v176 = 0.0;
                            }

                            else
                            {
                              v176 = 1.0;
                            }

                            *v174++ = v176;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v16)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v1016 = *(a4 + 2);
                            v1017 = *(a5 + 2);
                            do
                            {
                              v1018 = *v1016++;
                              *v1017++ = v1018 <= a3;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v532 = *(a4 + 2);
                          v533 = *(a5 + 2);
                          do
                          {
                            v534 = *v532++;
                            *v533++ = v534 <= a3;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v894 = *(a4 + 2);
                            v895 = *(a5 + 2);
                            do
                            {
                              v896 = *v894++;
                              *v895++ = a3 >= v896;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v466 = *(a4 + 2);
                          v467 = *(a5 + 2);
                          do
                          {
                            v468 = *v466++;
                            *v467++ = a3 >= v468;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v1049 = *(a4 + 2);
                            v1050 = *(a5 + 2);
                            do
                            {
                              v1051 = *v1049++;
                              if (v1051 > a3)
                              {
                                v1052 = 0.0;
                              }

                              else
                              {
                                v1052 = 1.0;
                              }

                              *v1050++ = v1052;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v85 = *(a4 + 2);
                          v86 = *(a5 + 2);
                          do
                          {
                            v87 = *v85++;
                            if (v87 > a3)
                            {
                              v88 = 0.0;
                            }

                            else
                            {
                              v88 = 1.0;
                            }

                            *v86++ = v88;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                    }

                    break;
                }

                break;
              case 1:
                switch(v15)
                {
                  case 2:
                    switch(v16)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v828 = *(a4 + 2);
                            v829 = *(a5 + 2);
                            do
                            {
                              v830 = *v828++;
                              *v829++ = v830 <= a3;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v424 = *(a4 + 2);
                          v425 = *(a5 + 2);
                          do
                          {
                            v426 = *v424++;
                            *v425++ = v426 <= a3;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v716 = *(a4 + 2);
                            v717 = *(a5 + 2);
                            do
                            {
                              v718 = *v716++;
                              *v717++ = a3 >= v718;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v352 = *(a4 + 2);
                          v353 = *(a5 + 2);
                          do
                          {
                            v354 = *v352++;
                            *v353++ = a3 >= v354;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v873 = *(a4 + 2);
                            v874 = *(a5 + 2);
                            do
                            {
                              v875 = *v873++;
                              if (a3 < v875)
                              {
                                v876 = 0.0;
                              }

                              else
                              {
                                v876 = 1.0;
                              }

                              *v874++ = v876;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v165 = *(a4 + 2);
                          v166 = *(a5 + 2);
                          do
                          {
                            v167 = *v165++;
                            if (a3 < v167)
                            {
                              v168 = 0.0;
                            }

                            else
                            {
                              v168 = 1.0;
                            }

                            *v166++ = v168;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v16)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v710 = *(a4 + 2);
                            v711 = *(a5 + 2);
                            do
                            {
                              v712 = *v710;
                              v710 += 8;
                              *v711++ = a3 >= v712;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v346 = *(a4 + 2);
                          v347 = *(a5 + 2);
                          do
                          {
                            v348 = *v346;
                            v346 += 8;
                            *v347++ = a3 >= v348;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v630 = *(a4 + 2);
                            v631 = *(a5 + 2);
                            do
                            {
                              v632 = *v630++;
                              *v631++ = v632 <= a3;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v298 = *(a4 + 2);
                          v299 = *(a5 + 2);
                          do
                          {
                            v300 = *v298++;
                            *v299++ = v300 <= a3;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v767 = *(a4 + 2);
                            v768 = *(a5 + 2);
                            do
                            {
                              v769 = *v767++;
                              if (a3 < v769)
                              {
                                v770 = 0.0;
                              }

                              else
                              {
                                v770 = 1.0;
                              }

                              *v768++ = v770;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v141 = *(a4 + 2);
                          v142 = *(a5 + 2);
                          do
                          {
                            v143 = *v141++;
                            if (a3 < v143)
                            {
                              v144 = 0.0;
                            }

                            else
                            {
                              v144 = 1.0;
                            }

                            *v142++ = v144;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v16)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v888 = *(a4 + 2);
                            v889 = *(a5 + 2);
                            do
                            {
                              v890 = *v888++;
                              *v889++ = v890 <= a3;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v460 = *(a4 + 2);
                          v461 = *(a5 + 2);
                          do
                          {
                            v462 = *v460++;
                            *v461++ = v462 <= a3;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v774 = *(a4 + 2);
                            v775 = *(a5 + 2);
                            do
                            {
                              v776 = *v774++;
                              *v775++ = a3 >= v776;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v394 = *(a4 + 2);
                          v395 = *(a5 + 2);
                          do
                          {
                            v396 = *v394++;
                            *v395++ = a3 >= v396;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v953 = *(a4 + 2);
                            v954 = *(a5 + 2);
                            do
                            {
                              v955 = *v953++;
                              if (v955 > a3)
                              {
                                v956 = 0.0;
                              }

                              else
                              {
                                v956 = 1.0;
                              }

                              *v954++ = v956;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v69 = *(a4 + 2);
                          v70 = *(a5 + 2);
                          do
                          {
                            v71 = *v69++;
                            if (v71 > a3)
                            {
                              v72 = 0.0;
                            }

                            else
                            {
                              v72 = 1.0;
                            }

                            *v70++ = v72;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                    }

                    break;
                }

                break;
              case 0:
                switch(v15)
                {
                  case 2:
                    switch(v16)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v1022 = *(a4 + 2);
                            v1023 = *(a5 + 2);
                            do
                            {
                              v1024 = *v1022++;
                              *v1023++ = v1024 <= *&a3;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v538 = *(a4 + 2);
                          v539 = *(a5 + 2);
                          do
                          {
                            v540 = *v538++;
                            *v539++ = v540 <= *&a3;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v906 = *(a4 + 2);
                            v907 = *(a5 + 2);
                            do
                            {
                              v908 = *v906++;
                              *v907++ = *&a3 >= v908;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v478 = *(a4 + 2);
                          v479 = *(a5 + 2);
                          do
                          {
                            v480 = *v478++;
                            *v479++ = *&a3 >= v480;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v1057 = *(a4 + 2);
                            v1058 = *(a5 + 2);
                            do
                            {
                              v1059 = *v1057++;
                              if (*&a3 < v1059)
                              {
                                v1060 = 0.0;
                              }

                              else
                              {
                                v1060 = 1.0;
                              }

                              *v1058++ = v1060;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v229 = *(a4 + 2);
                          v230 = *(a5 + 2);
                          do
                          {
                            v231 = *v229++;
                            if (*&a3 < v231)
                            {
                              v232 = 0.0;
                            }

                            else
                            {
                              v232 = 1.0;
                            }

                            *v230++ = v232;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v16)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v900 = *(a4 + 2);
                            v901 = *(a5 + 2);
                            do
                            {
                              v902 = *v900;
                              v900 += 8;
                              *v901++ = *&a3 >= v902;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v472 = *(a4 + 2);
                          v473 = *(a5 + 2);
                          do
                          {
                            v474 = *v472;
                            v472 += 8;
                            *v473++ = *&a3 >= v474;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v780 = *(a4 + 2);
                            v781 = *(a5 + 2);
                            do
                            {
                              v782 = *v780++;
                              *v781++ = v782 <= *&a3;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v400 = *(a4 + 2);
                          v401 = *(a5 + 2);
                          do
                          {
                            v402 = *v400++;
                            *v401++ = v402 <= *&a3;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v961 = *(a4 + 2);
                            v962 = *(a5 + 2);
                            do
                            {
                              v963 = *v961++;
                              if (*&a3 < v963)
                              {
                                v964 = 0.0;
                              }

                              else
                              {
                                v964 = 1.0;
                              }

                              *v962++ = v964;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v197 = *(a4 + 2);
                          v198 = *(a5 + 2);
                          do
                          {
                            v199 = *v197++;
                            if (*&a3 < v199)
                            {
                              v200 = 0.0;
                            }

                            else
                            {
                              v200 = 1.0;
                            }

                            *v198++ = v200;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v16)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v1064 = *(a4 + 2);
                            v1065 = *(a5 + 2);
                            do
                            {
                              v1066 = *v1064++;
                              *v1065++ = *&a3 >= v1066;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v556 = *(a4 + 2);
                          v557 = *(a5 + 2);
                          do
                          {
                            v558 = *v556++;
                            *v557++ = *&a3 >= v558;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v968 = *(a4 + 2);
                            v969 = *(a5 + 2);
                            do
                            {
                              v970 = *v968++;
                              *v969++ = *&a3 >= v970;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v508 = *(a4 + 2);
                          v509 = *(a5 + 2);
                          do
                          {
                            v510 = *v508++;
                            *v509++ = *&a3 >= v510;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v14)
                          {
                            v1093 = *(a4 + 2);
                            v1094 = *(a5 + 2);
                            do
                            {
                              v1095 = *v1093++;
                              if (v1095 > *&a3)
                              {
                                v1096 = 0.0;
                              }

                              else
                              {
                                v1096 = 1.0;
                              }

                              *v1094++ = v1096;
                              --v14;
                            }

                            while (v14);
                          }
                        }

                        else if (!a6 && v14)
                        {
                          v17 = *(a4 + 2);
                          v18 = *(a5 + 2);
                          do
                          {
                            v19 = *v17++;
                            if (v19 > *&a3)
                            {
                              v20 = 0.0;
                            }

                            else
                            {
                              v20 = 1.0;
                            }

                            *v18++ = v20;
                            --v14;
                          }

                          while (v14);
                        }

                        break;
                    }

                    break;
                }

                break;
            }

            return a5;
          }
        }

        break;
      default:
        return a7;
    }

    return 0;
  }

  switch(a1)
  {
    case 0:
      a7 = 0;
      if (!a4 || !a5)
      {
        return a7;
      }

      if ((a5[8] & 1) == 0)
      {
        v21 = *(a4 + 1);
        if (v21 == *(a5 + 1))
        {
          v22 = *a4;
          v23 = *a5;
          switch(a2)
          {
            case 2:
              switch(v22)
              {
                case 2:
                  switch(v23)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v701 = *(a4 + 2);
                          v702 = *(a5 + 2);
                          do
                          {
                            v703 = *v701++;
                            *v702++ = v703 == a3;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v337 = *(a4 + 2);
                        v338 = *(a5 + 2);
                        do
                        {
                          v339 = *v337++;
                          *v338++ = v339 == a3;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v621 = *(a4 + 2);
                          v622 = *(a5 + 2);
                          do
                          {
                            v623 = *v621++;
                            *v622++ = v623 == a3;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v289 = *(a4 + 2);
                        v290 = *(a5 + 2);
                        do
                        {
                          v291 = *v289++;
                          *v290++ = v291 == a3;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v725 = *(a4 + 2);
                          v726 = *(a5 + 2);
                          do
                          {
                            v727 = *v725++;
                            if (v727 == a3)
                            {
                              v728 = 1.0;
                            }

                            else
                            {
                              v728 = 0.0;
                            }

                            *v726++ = v728;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v129 = *(a4 + 2);
                        v130 = *(a5 + 2);
                        do
                        {
                          v131 = *v129++;
                          if (v131 == a3)
                          {
                            v132 = 1.0;
                          }

                          else
                          {
                            v132 = 0.0;
                          }

                          *v130++ = v132;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v23)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v615 = *(a4 + 2);
                          v616 = *(a5 + 2);
                          do
                          {
                            v617 = *v615;
                            v615 += 8;
                            *v616++ = a3 == v617;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v283 = *(a4 + 2);
                        v284 = *(a5 + 2);
                        do
                        {
                          v285 = *v283;
                          v283 += 8;
                          *v284++ = a3 == v285;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v583 = *(a4 + 2);
                          v584 = *(a5 + 2);
                          do
                          {
                            v585 = *v583++;
                            *v584++ = a3 == v585;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v259 = *(a4 + 2);
                        v260 = *(a5 + 2);
                        do
                        {
                          v261 = *v259++;
                          *v260++ = a3 == v261;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v641 = *(a4 + 2);
                          v642 = *(a5 + 2);
                          do
                          {
                            v643 = *v641++;
                            if (a3 == v643)
                            {
                              v644 = 1.0;
                            }

                            else
                            {
                              v644 = 0.0;
                            }

                            *v642++ = v644;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v113 = *(a4 + 2);
                        v114 = *(a5 + 2);
                        do
                        {
                          v115 = *v113++;
                          if (a3 == v115)
                          {
                            v116 = 1.0;
                          }

                          else
                          {
                            v116 = 0.0;
                          }

                          *v114++ = v116;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v23)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v733 = *(a4 + 2);
                          v734 = *(a5 + 2);
                          do
                          {
                            v735 = *v733++;
                            *v734++ = v735 == a3;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v361 = *(a4 + 2);
                        v362 = *(a5 + 2);
                        do
                        {
                          v363 = *v361++;
                          *v362++ = v363 == a3;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v655 = *(a4 + 2);
                          v656 = *(a5 + 2);
                          do
                          {
                            v657 = *v655++;
                            *v656++ = a3 == v657;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v307 = *(a4 + 2);
                        v308 = *(a5 + 2);
                        do
                        {
                          v309 = *v307++;
                          *v308++ = a3 == v309;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v783 = *(a4 + 2);
                          v784 = *(a5 + 2);
                          do
                          {
                            v785 = *v783++;
                            if (v785 == a3)
                            {
                              v786 = 1.0;
                            }

                            else
                            {
                              v786 = 0.0;
                            }

                            *v784++ = v786;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v57 = *(a4 + 2);
                        v58 = *(a5 + 2);
                        do
                        {
                          v59 = *v57++;
                          if (v59 == a3)
                          {
                            v60 = 1.0;
                          }

                          else
                          {
                            v60 = 0.0;
                          }

                          *v58++ = v60;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                  }

                  break;
              }

              break;
            case 1:
              switch(v22)
              {
                case 2:
                  switch(v23)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v609 = *(a4 + 2);
                          v610 = *(a5 + 2);
                          do
                          {
                            v611 = *v609++;
                            *v610++ = v611 == a3;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v277 = *(a4 + 2);
                        v278 = *(a5 + 2);
                        do
                        {
                          v279 = *v277++;
                          *v278++ = v279 == a3;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v577 = *(a4 + 2);
                          v578 = *(a5 + 2);
                          do
                          {
                            v579 = *v577++;
                            *v578++ = a3 == v579;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v253 = *(a4 + 2);
                        v254 = *(a5 + 2);
                        do
                        {
                          v255 = *v253++;
                          *v254++ = a3 == v255;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v633 = *(a4 + 2);
                          v634 = *(a5 + 2);
                          do
                          {
                            v635 = *v633++;
                            if (a3 == v635)
                            {
                              v636 = 1.0;
                            }

                            else
                            {
                              v636 = 0.0;
                            }

                            *v634++ = v636;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v105 = *(a4 + 2);
                        v106 = *(a5 + 2);
                        do
                        {
                          v107 = *v105++;
                          if (a3 == v107)
                          {
                            v108 = 1.0;
                          }

                          else
                          {
                            v108 = 0.0;
                          }

                          *v106++ = v108;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v23)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v571 = *(a4 + 2);
                          v572 = *(a5 + 2);
                          do
                          {
                            v573 = *v571;
                            v571 += 8;
                            *v572++ = a3 == v573;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v247 = *(a4 + 2);
                        v248 = *(a5 + 2);
                        do
                        {
                          v249 = *v247;
                          v247 += 8;
                          *v248++ = a3 == v249;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v565 = *(a4 + 2);
                          v566 = *(a5 + 2);
                          do
                          {
                            v567 = *v565++;
                            *v566++ = v567 == a3;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v241 = *(a4 + 2);
                        v242 = *(a5 + 2);
                        do
                        {
                          v243 = *v241++;
                          *v242++ = v243 == a3;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v589 = *(a4 + 2);
                          v590 = *(a5 + 2);
                          do
                          {
                            v591 = *v589++;
                            if (a3 == v591)
                            {
                              v592 = 1.0;
                            }

                            else
                            {
                              v592 = 0.0;
                            }

                            *v590++ = v592;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v97 = *(a4 + 2);
                        v98 = *(a5 + 2);
                        do
                        {
                          v99 = *v97++;
                          if (a3 == v99)
                          {
                            v100 = 1.0;
                          }

                          else
                          {
                            v100 = 0.0;
                          }

                          *v98++ = v100;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v23)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v649 = *(a4 + 2);
                          v650 = *(a5 + 2);
                          do
                          {
                            v651 = *v649++;
                            *v650++ = v651 == a3;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v301 = *(a4 + 2);
                        v302 = *(a5 + 2);
                        do
                        {
                          v303 = *v301++;
                          *v302++ = v303 == a3;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v597 = *(a4 + 2);
                          v598 = *(a5 + 2);
                          do
                          {
                            v599 = *v597++;
                            *v598++ = a3 == v599;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v265 = *(a4 + 2);
                        v266 = *(a5 + 2);
                        do
                        {
                          v267 = *v265++;
                          *v266++ = a3 == v267;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v679 = *(a4 + 2);
                          v680 = *(a5 + 2);
                          do
                          {
                            v681 = *v679++;
                            if (v681 == a3)
                            {
                              v682 = 1.0;
                            }

                            else
                            {
                              v682 = 0.0;
                            }

                            *v680++ = v682;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v49 = *(a4 + 2);
                        v50 = *(a5 + 2);
                        do
                        {
                          v51 = *v49++;
                          if (v51 == a3)
                          {
                            v52 = 1.0;
                          }

                          else
                          {
                            v52 = 0.0;
                          }

                          *v50++ = v52;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                  }

                  break;
              }

              break;
            case 0:
              switch(v22)
              {
                case 2:
                  switch(v23)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v739 = *(a4 + 2);
                          v740 = *(a5 + 2);
                          do
                          {
                            v741 = *v739++;
                            *v740++ = v741 == *&a3;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v367 = *(a4 + 2);
                        v368 = *(a5 + 2);
                        do
                        {
                          v369 = *v367++;
                          *v368++ = v369 == *&a3;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v667 = *(a4 + 2);
                          v668 = *(a5 + 2);
                          do
                          {
                            v669 = *v667++;
                            *v668++ = *&a3 == v669;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v319 = *(a4 + 2);
                        v320 = *(a5 + 2);
                        do
                        {
                          v321 = *v319++;
                          *v320++ = *&a3 == v321;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v791 = *(a4 + 2);
                          v792 = *(a5 + 2);
                          do
                          {
                            v793 = *v791++;
                            if (*&a3 == v793)
                            {
                              v794 = 1.0;
                            }

                            else
                            {
                              v794 = 0.0;
                            }

                            *v792++ = v794;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v145 = *(a4 + 2);
                        v146 = *(a5 + 2);
                        do
                        {
                          v147 = *v145++;
                          if (*&a3 == v147)
                          {
                            v148 = 1.0;
                          }

                          else
                          {
                            v148 = 0.0;
                          }

                          *v146++ = v148;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v23)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v661 = *(a4 + 2);
                          v662 = *(a5 + 2);
                          do
                          {
                            v663 = *v661;
                            v661 += 8;
                            *v662++ = *&a3 == v663;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v313 = *(a4 + 2);
                        v314 = *(a5 + 2);
                        do
                        {
                          v315 = *v313;
                          v313 += 8;
                          *v314++ = *&a3 == v315;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v603 = *(a4 + 2);
                          v604 = *(a5 + 2);
                          do
                          {
                            v605 = *v603++;
                            *v604++ = v605 == *&a3;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v271 = *(a4 + 2);
                        v272 = *(a5 + 2);
                        do
                        {
                          v273 = *v271++;
                          *v272++ = v273 == *&a3;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v687 = *(a4 + 2);
                          v688 = *(a5 + 2);
                          do
                          {
                            v689 = *v687++;
                            if (*&a3 == v689)
                            {
                              v690 = 1.0;
                            }

                            else
                            {
                              v690 = 0.0;
                            }

                            *v688++ = v690;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v121 = *(a4 + 2);
                        v122 = *(a5 + 2);
                        do
                        {
                          v123 = *v121++;
                          if (*&a3 == v123)
                          {
                            v124 = 1.0;
                          }

                          else
                          {
                            v124 = 0.0;
                          }

                          *v122++ = v124;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v23)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v799 = *(a4 + 2);
                          v800 = *(a5 + 2);
                          do
                          {
                            v801 = *v799++;
                            *v800++ = *&a3 == v801;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v403 = *(a4 + 2);
                        v404 = *(a5 + 2);
                        do
                        {
                          v405 = *v403++;
                          *v404++ = *&a3 == v405;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v695 = *(a4 + 2);
                          v696 = *(a5 + 2);
                          do
                          {
                            v697 = *v695++;
                            *v696++ = a3 == *&v697;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v331 = *(a4 + 2);
                        v332 = *(a5 + 2);
                        do
                        {
                          v333 = *v331++;
                          *v332++ = a3 == *&v333;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v21)
                        {
                          v843 = *(a4 + 2);
                          v844 = *(a5 + 2);
                          do
                          {
                            v845 = *v843++;
                            if (v845 == *&a3)
                            {
                              v846 = 1.0;
                            }

                            else
                            {
                              v846 = 0.0;
                            }

                            *v844++ = v846;
                            --v21;
                          }

                          while (v21);
                        }
                      }

                      else if (!a6 && v21)
                      {
                        v24 = *(a4 + 2);
                        v25 = *(a5 + 2);
                        do
                        {
                          v26 = *v24++;
                          if (v26 == *&a3)
                          {
                            v27 = 1.0;
                          }

                          else
                          {
                            v27 = 0.0;
                          }

                          *v25++ = v27;
                          --v21;
                        }

                        while (v21);
                      }

                      break;
                  }

                  break;
              }

              break;
          }

          return a5;
        }
      }

      return 0;
    case 1:
      a7 = 0;
      if (a4 && a5)
      {
        if ((a5[8] & 1) == 0)
        {
          v35 = *(a4 + 1);
          if (v35 == *(a5 + 1))
          {
            v36 = *a4;
            v37 = *a5;
            switch(a2)
            {
              case 2:
                switch(v36)
                {
                  case 2:
                    switch(v37)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v999 = *(a4 + 2);
                            v1000 = *(a5 + 2);
                            do
                            {
                              v1001 = *v999++;
                              *v1000++ = v1001 != a3;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v523 = *(a4 + 2);
                          v524 = *(a5 + 2);
                          do
                          {
                            v525 = *v523++;
                            *v524++ = v525 != a3;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v863 = *(a4 + 2);
                            v864 = *(a5 + 2);
                            do
                            {
                              v865 = *v863++;
                              *v864++ = v865 != a3;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v451 = *(a4 + 2);
                          v452 = *(a5 + 2);
                          do
                          {
                            v453 = *v451++;
                            *v452++ = v453 != a3;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v1025 = *(a4 + 2);
                            v1026 = *(a5 + 2);
                            do
                            {
                              v1027 = *v1025++;
                              if (v1027 == a3)
                              {
                                v1028 = 0.0;
                              }

                              else
                              {
                                v1028 = 1.0;
                              }

                              *v1026++ = v1028;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v217 = *(a4 + 2);
                          v218 = *(a5 + 2);
                          do
                          {
                            v219 = *v217++;
                            if (v219 == a3)
                            {
                              v220 = 0.0;
                            }

                            else
                            {
                              v220 = 1.0;
                            }

                            *v218++ = v220;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v37)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v857 = *(a4 + 2);
                            v858 = *(a5 + 2);
                            do
                            {
                              v859 = *v857;
                              v857 += 8;
                              *v858++ = a3 != v859;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v445 = *(a4 + 2);
                          v446 = *(a5 + 2);
                          do
                          {
                            v447 = *v445;
                            v445 += 8;
                            *v446++ = a3 != v447;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v757 = *(a4 + 2);
                            v758 = *(a5 + 2);
                            do
                            {
                              v759 = *v757++;
                              *v758++ = a3 != v759;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v385 = *(a4 + 2);
                          v386 = *(a5 + 2);
                          do
                          {
                            v387 = *v385++;
                            *v386++ = a3 != v387;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v917 = *(a4 + 2);
                            v918 = *(a5 + 2);
                            do
                            {
                              v919 = *v917++;
                              if (a3 == v919)
                              {
                                v920 = 0.0;
                              }

                              else
                              {
                                v920 = 1.0;
                              }

                              *v918++ = v920;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v185 = *(a4 + 2);
                          v186 = *(a5 + 2);
                          do
                          {
                            v187 = *v185++;
                            if (a3 == v187)
                            {
                              v188 = 0.0;
                            }

                            else
                            {
                              v188 = 1.0;
                            }

                            *v186++ = v188;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v37)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v1033 = *(a4 + 2);
                            v1034 = *(a5 + 2);
                            do
                            {
                              v1035 = *v1033++;
                              *v1034++ = v1035 != a3;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v541 = *(a4 + 2);
                          v542 = *(a5 + 2);
                          do
                          {
                            v543 = *v541++;
                            *v542++ = v543 != a3;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v931 = *(a4 + 2);
                            v932 = *(a5 + 2);
                            do
                            {
                              v933 = *v931++;
                              *v932++ = a3 != v933;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v487 = *(a4 + 2);
                          v488 = *(a5 + 2);
                          do
                          {
                            v489 = *v487++;
                            *v488++ = a3 != v489;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v1067 = *(a4 + 2);
                            v1068 = *(a5 + 2);
                            do
                            {
                              v1069 = *v1067++;
                              if (v1069 == a3)
                              {
                                v1070 = 0.0;
                              }

                              else
                              {
                                v1070 = 1.0;
                              }

                              *v1068++ = v1070;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v89 = *(a4 + 2);
                          v90 = *(a5 + 2);
                          do
                          {
                            v91 = *v89++;
                            if (v91 == a3)
                            {
                              v92 = 0.0;
                            }

                            else
                            {
                              v92 = 1.0;
                            }

                            *v90++ = v92;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                    }

                    break;
                }

                break;
              case 1:
                switch(v36)
                {
                  case 2:
                    switch(v37)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v851 = *(a4 + 2);
                            v852 = *(a5 + 2);
                            do
                            {
                              v853 = *v851++;
                              *v852++ = v853 != a3;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v439 = *(a4 + 2);
                          v440 = *(a5 + 2);
                          do
                          {
                            v441 = *v439++;
                            *v440++ = v441 != a3;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v751 = *(a4 + 2);
                            v752 = *(a5 + 2);
                            do
                            {
                              v753 = *v751++;
                              *v752++ = a3 != v753;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v379 = *(a4 + 2);
                          v380 = *(a5 + 2);
                          do
                          {
                            v381 = *v379++;
                            *v380++ = a3 != v381;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v909 = *(a4 + 2);
                            v910 = *(a5 + 2);
                            do
                            {
                              v911 = *v909++;
                              if (a3 == v911)
                              {
                                v912 = 0.0;
                              }

                              else
                              {
                                v912 = 1.0;
                              }

                              *v910++ = v912;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v177 = *(a4 + 2);
                          v178 = *(a5 + 2);
                          do
                          {
                            v179 = *v177++;
                            if (a3 == v179)
                            {
                              v180 = 0.0;
                            }

                            else
                            {
                              v180 = 1.0;
                            }

                            *v178++ = v180;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v37)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v745 = *(a4 + 2);
                            v746 = *(a5 + 2);
                            do
                            {
                              v747 = *v745;
                              v745 += 8;
                              *v746++ = a3 != v747;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v373 = *(a4 + 2);
                          v374 = *(a5 + 2);
                          do
                          {
                            v375 = *v373;
                            v373 += 8;
                            *v374++ = a3 != v375;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v673 = *(a4 + 2);
                            v674 = *(a5 + 2);
                            do
                            {
                              v675 = *v673++;
                              *v674++ = v675 != a3;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v325 = *(a4 + 2);
                          v326 = *(a5 + 2);
                          do
                          {
                            v327 = *v325++;
                            *v326++ = v327 != a3;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v805 = *(a4 + 2);
                            v806 = *(a5 + 2);
                            do
                            {
                              v807 = *v805++;
                              if (a3 == v807)
                              {
                                v808 = 0.0;
                              }

                              else
                              {
                                v808 = 1.0;
                              }

                              *v806++ = v808;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v153 = *(a4 + 2);
                          v154 = *(a5 + 2);
                          do
                          {
                            v155 = *v153++;
                            if (a3 == v155)
                            {
                              v156 = 0.0;
                            }

                            else
                            {
                              v156 = 1.0;
                            }

                            *v154++ = v156;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v37)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v925 = *(a4 + 2);
                            v926 = *(a5 + 2);
                            do
                            {
                              v927 = *v925++;
                              *v926++ = v927 != a3;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v481 = *(a4 + 2);
                          v482 = *(a5 + 2);
                          do
                          {
                            v483 = *v481++;
                            *v482++ = v483 != a3;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v813 = *(a4 + 2);
                            v814 = *(a5 + 2);
                            do
                            {
                              v815 = *v813++;
                              *v814++ = a3 != v815;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v409 = *(a4 + 2);
                          v410 = *(a5 + 2);
                          do
                          {
                            v411 = *v409++;
                            *v410++ = a3 != v411;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v977 = *(a4 + 2);
                            v978 = *(a5 + 2);
                            do
                            {
                              v979 = *v977++;
                              if (v979 == a3)
                              {
                                v980 = 0.0;
                              }

                              else
                              {
                                v980 = 1.0;
                              }

                              *v978++ = v980;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v73 = *(a4 + 2);
                          v74 = *(a5 + 2);
                          do
                          {
                            v75 = *v73++;
                            if (v75 == a3)
                            {
                              v76 = 0.0;
                            }

                            else
                            {
                              v76 = 1.0;
                            }

                            *v74++ = v76;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                    }

                    break;
                }

                break;
              case 0:
                switch(v36)
                {
                  case 2:
                    switch(v37)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v1039 = *(a4 + 2);
                            v1040 = *(a5 + 2);
                            do
                            {
                              v1041 = *v1039++;
                              *v1040++ = v1041 != *&a3;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v547 = *(a4 + 2);
                          v548 = *(a5 + 2);
                          do
                          {
                            v549 = *v547++;
                            *v548++ = v549 != *&a3;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v943 = *(a4 + 2);
                            v944 = *(a5 + 2);
                            do
                            {
                              v945 = *v943++;
                              *v944++ = *&a3 != v945;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v499 = *(a4 + 2);
                          v500 = *(a5 + 2);
                          do
                          {
                            v501 = *v499++;
                            *v500++ = *&a3 != v501;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v1075 = *(a4 + 2);
                            v1076 = *(a5 + 2);
                            do
                            {
                              v1077 = *v1075++;
                              if (*&a3 == v1077)
                              {
                                v1078 = 0.0;
                              }

                              else
                              {
                                v1078 = 1.0;
                              }

                              *v1076++ = v1078;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v233 = *(a4 + 2);
                          v234 = *(a5 + 2);
                          do
                          {
                            v235 = *v233++;
                            if (*&a3 == v235)
                            {
                              v236 = 0.0;
                            }

                            else
                            {
                              v236 = 1.0;
                            }

                            *v234++ = v236;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v37)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v937 = *(a4 + 2);
                            v938 = *(a5 + 2);
                            do
                            {
                              v939 = *v937;
                              v937 += 8;
                              *v938++ = *&a3 != v939;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v493 = *(a4 + 2);
                          v494 = *(a5 + 2);
                          do
                          {
                            v495 = *v493;
                            v493 += 8;
                            *v494++ = *&a3 != v495;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v819 = *(a4 + 2);
                            v820 = *(a5 + 2);
                            do
                            {
                              v821 = *v819++;
                              *v820++ = v821 != *&a3;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v415 = *(a4 + 2);
                          v416 = *(a5 + 2);
                          do
                          {
                            v417 = *v415++;
                            *v416++ = v417 != *&a3;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v985 = *(a4 + 2);
                            v986 = *(a5 + 2);
                            do
                            {
                              v987 = *v985++;
                              if (*&a3 == v987)
                              {
                                v988 = 0.0;
                              }

                              else
                              {
                                v988 = 1.0;
                              }

                              *v986++ = v988;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v201 = *(a4 + 2);
                          v202 = *(a5 + 2);
                          do
                          {
                            v203 = *v201++;
                            if (*&a3 == v203)
                            {
                              v204 = 0.0;
                            }

                            else
                            {
                              v204 = 1.0;
                            }

                            *v202++ = v204;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v37)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v1083 = *(a4 + 2);
                            v1084 = *(a5 + 2);
                            do
                            {
                              v1085 = *v1083++;
                              *v1084++ = *&a3 != v1085;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v559 = *(a4 + 2);
                          v560 = *(a5 + 2);
                          do
                          {
                            v561 = *v559++;
                            *v560++ = *&a3 != v561;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v993 = *(a4 + 2);
                            v994 = *(a5 + 2);
                            do
                            {
                              v995 = *v993++;
                              *v994++ = a3 != *&v995;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v517 = *(a4 + 2);
                          v518 = *(a5 + 2);
                          do
                          {
                            v519 = *v517++;
                            *v518++ = a3 != *&v519;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v35)
                          {
                            v1097 = *(a4 + 2);
                            v1098 = *(a5 + 2);
                            do
                            {
                              v1099 = *v1097++;
                              if (v1099 == *&a3)
                              {
                                v1100 = 0.0;
                              }

                              else
                              {
                                v1100 = 1.0;
                              }

                              *v1098++ = v1100;
                              --v35;
                            }

                            while (v35);
                          }
                        }

                        else if (!a6 && v35)
                        {
                          v38 = *(a4 + 2);
                          v39 = *(a5 + 2);
                          do
                          {
                            v40 = *v38++;
                            if (v40 == *&a3)
                            {
                              v41 = 0.0;
                            }

                            else
                            {
                              v41 = 1.0;
                            }

                            *v39++ = v41;
                            --v35;
                          }

                          while (v35);
                        }

                        break;
                    }

                    break;
                }

                break;
            }

            return a5;
          }
        }

        return 0;
      }

      break;
    case 2:
      a7 = 0;
      if (a4)
      {
        if (a5)
        {
          if ((a5[8] & 1) == 0)
          {
            v7 = *(a4 + 1);
            if (v7 == *(a5 + 1))
            {
              v8 = *a4;
              v9 = *a5;
              switch(a2)
              {
                case 2:
                  switch(v8)
                  {
                    case 2:
                      switch(v9)
                      {
                        case 2:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v971 = *(a4 + 2);
                              v972 = *(a5 + 2);
                              do
                              {
                                v973 = *v971++;
                                *v972++ = v973 > a3;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v511 = *(a4 + 2);
                            v512 = *(a5 + 2);
                            do
                            {
                              v513 = *v511++;
                              *v512++ = v513 > a3;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 1:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v837 = *(a4 + 2);
                              v838 = *(a5 + 2);
                              do
                              {
                                v839 = *v837++;
                                *v838++ = a3 < v839;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v433 = *(a4 + 2);
                            v434 = *(a5 + 2);
                            do
                            {
                              v435 = *v433++;
                              *v434++ = a3 < v435;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 0:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v1005 = *(a4 + 2);
                              v1006 = *(a5 + 2);
                              do
                              {
                                v1007 = *v1005++;
                                if (a3 >= v1007)
                                {
                                  v1008 = 0.0;
                                }

                                else
                                {
                                  v1008 = 1.0;
                                }

                                *v1006++ = v1008;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v209 = *(a4 + 2);
                            v210 = *(a5 + 2);
                            do
                            {
                              v211 = *v209++;
                              if (a3 >= v211)
                              {
                                v212 = 0.0;
                              }

                              else
                              {
                                v212 = 1.0;
                              }

                              *v210++ = v212;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                      }

                      break;
                    case 1:
                      switch(v9)
                      {
                        case 2:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v831 = *(a4 + 2);
                              v832 = *(a5 + 2);
                              do
                              {
                                v833 = *v831;
                                v831 += 8;
                                *v832++ = a3 < v833;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v427 = *(a4 + 2);
                            v428 = *(a5 + 2);
                            do
                            {
                              v429 = *v427;
                              v427 += 8;
                              *v428++ = a3 < v429;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 1:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v719 = *(a4 + 2);
                              v720 = *(a5 + 2);
                              do
                              {
                                v721 = *v719++;
                                *v720++ = a3 < v721;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v355 = *(a4 + 2);
                            v356 = *(a5 + 2);
                            do
                            {
                              v357 = *v355++;
                              *v356++ = a3 < v357;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 0:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v877 = *(a4 + 2);
                              v878 = *(a5 + 2);
                              do
                              {
                                v879 = *v877++;
                                if (a3 >= v879)
                                {
                                  v880 = 0.0;
                                }

                                else
                                {
                                  v880 = 1.0;
                                }

                                *v878++ = v880;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v169 = *(a4 + 2);
                            v170 = *(a5 + 2);
                            do
                            {
                              v171 = *v169++;
                              if (a3 >= v171)
                              {
                                v172 = 0.0;
                              }

                              else
                              {
                                v172 = 1.0;
                              }

                              *v170++ = v172;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                      }

                      break;
                    case 0:
                      switch(v9)
                      {
                        case 2:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v1013 = *(a4 + 2);
                              v1014 = *(a5 + 2);
                              do
                              {
                                v1015 = *v1013++;
                                *v1014++ = v1015 > a3;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v529 = *(a4 + 2);
                            v530 = *(a5 + 2);
                            do
                            {
                              v531 = *v529++;
                              *v530++ = v531 > a3;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 1:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v891 = *(a4 + 2);
                              v892 = *(a5 + 2);
                              do
                              {
                                v893 = *v891++;
                                *v892++ = a3 < v893;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v463 = *(a4 + 2);
                            v464 = *(a5 + 2);
                            do
                            {
                              v465 = *v463++;
                              *v464++ = a3 < v465;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 0:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v1045 = *(a4 + 2);
                              v1046 = *(a5 + 2);
                              do
                              {
                                v1047 = *v1045++;
                                if (v1047 <= a3)
                                {
                                  v1048 = 0.0;
                                }

                                else
                                {
                                  v1048 = 1.0;
                                }

                                *v1046++ = v1048;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v81 = *(a4 + 2);
                            v82 = *(a5 + 2);
                            do
                            {
                              v83 = *v81++;
                              if (v83 <= a3)
                              {
                                v84 = 0.0;
                              }

                              else
                              {
                                v84 = 1.0;
                              }

                              *v82++ = v84;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v8)
                  {
                    case 2:
                      switch(v9)
                      {
                        case 2:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v825 = *(a4 + 2);
                              v826 = *(a5 + 2);
                              do
                              {
                                v827 = *v825++;
                                *v826++ = v827 > a3;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v421 = *(a4 + 2);
                            v422 = *(a5 + 2);
                            do
                            {
                              v423 = *v421++;
                              *v422++ = v423 > a3;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 1:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v713 = *(a4 + 2);
                              v714 = *(a5 + 2);
                              do
                              {
                                v715 = *v713++;
                                *v714++ = a3 < v715;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v349 = *(a4 + 2);
                            v350 = *(a5 + 2);
                            do
                            {
                              v351 = *v349++;
                              *v350++ = a3 < v351;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 0:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v869 = *(a4 + 2);
                              v870 = *(a5 + 2);
                              do
                              {
                                v871 = *v869++;
                                if (a3 >= v871)
                                {
                                  v872 = 0.0;
                                }

                                else
                                {
                                  v872 = 1.0;
                                }

                                *v870++ = v872;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v161 = *(a4 + 2);
                            v162 = *(a5 + 2);
                            do
                            {
                              v163 = *v161++;
                              if (a3 >= v163)
                              {
                                v164 = 0.0;
                              }

                              else
                              {
                                v164 = 1.0;
                              }

                              *v162++ = v164;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                      }

                      break;
                    case 1:
                      switch(v9)
                      {
                        case 2:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v707 = *(a4 + 2);
                              v708 = *(a5 + 2);
                              do
                              {
                                v709 = *v707;
                                v707 += 8;
                                *v708++ = a3 < v709;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v343 = *(a4 + 2);
                            v344 = *(a5 + 2);
                            do
                            {
                              v345 = *v343;
                              v343 += 8;
                              *v344++ = a3 < v345;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 1:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v627 = *(a4 + 2);
                              v628 = *(a5 + 2);
                              do
                              {
                                v629 = *v627++;
                                *v628++ = v629 > a3;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v295 = *(a4 + 2);
                            v296 = *(a5 + 2);
                            do
                            {
                              v297 = *v295++;
                              *v296++ = v297 > a3;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 0:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v763 = *(a4 + 2);
                              v764 = *(a5 + 2);
                              do
                              {
                                v765 = *v763++;
                                if (a3 >= v765)
                                {
                                  v766 = 0.0;
                                }

                                else
                                {
                                  v766 = 1.0;
                                }

                                *v764++ = v766;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v137 = *(a4 + 2);
                            v138 = *(a5 + 2);
                            do
                            {
                              v139 = *v137++;
                              if (a3 >= v139)
                              {
                                v140 = 0.0;
                              }

                              else
                              {
                                v140 = 1.0;
                              }

                              *v138++ = v140;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                      }

                      break;
                    case 0:
                      switch(v9)
                      {
                        case 2:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v885 = *(a4 + 2);
                              v886 = *(a5 + 2);
                              do
                              {
                                v887 = *v885++;
                                *v886++ = v887 > a3;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v457 = *(a4 + 2);
                            v458 = *(a5 + 2);
                            do
                            {
                              v459 = *v457++;
                              *v458++ = v459 > a3;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 1:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v771 = *(a4 + 2);
                              v772 = *(a5 + 2);
                              do
                              {
                                v773 = *v771++;
                                *v772++ = a3 < v773;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v391 = *(a4 + 2);
                            v392 = *(a5 + 2);
                            do
                            {
                              v393 = *v391++;
                              *v392++ = a3 < v393;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 0:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v949 = *(a4 + 2);
                              v950 = *(a5 + 2);
                              do
                              {
                                v951 = *v949++;
                                if (v951 <= a3)
                                {
                                  v952 = 0.0;
                                }

                                else
                                {
                                  v952 = 1.0;
                                }

                                *v950++ = v952;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v65 = *(a4 + 2);
                            v66 = *(a5 + 2);
                            do
                            {
                              v67 = *v65++;
                              if (v67 <= a3)
                              {
                                v68 = 0.0;
                              }

                              else
                              {
                                v68 = 1.0;
                              }

                              *v66++ = v68;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v8)
                  {
                    case 2:
                      switch(v9)
                      {
                        case 2:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v1019 = *(a4 + 2);
                              v1020 = *(a5 + 2);
                              do
                              {
                                v1021 = *v1019++;
                                *v1020++ = v1021 > *&a3;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v535 = *(a4 + 2);
                            v536 = *(a5 + 2);
                            do
                            {
                              v537 = *v535++;
                              *v536++ = v537 > *&a3;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 1:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v903 = *(a4 + 2);
                              v904 = *(a5 + 2);
                              do
                              {
                                v905 = *v903++;
                                *v904++ = *&a3 < v905;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v475 = *(a4 + 2);
                            v476 = *(a5 + 2);
                            do
                            {
                              v477 = *v475++;
                              *v476++ = *&a3 < v477;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 0:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v1053 = *(a4 + 2);
                              v1054 = *(a5 + 2);
                              do
                              {
                                v1055 = *v1053++;
                                if (*&a3 >= v1055)
                                {
                                  v1056 = 0.0;
                                }

                                else
                                {
                                  v1056 = 1.0;
                                }

                                *v1054++ = v1056;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v225 = *(a4 + 2);
                            v226 = *(a5 + 2);
                            do
                            {
                              v227 = *v225++;
                              if (*&a3 >= v227)
                              {
                                v228 = 0.0;
                              }

                              else
                              {
                                v228 = 1.0;
                              }

                              *v226++ = v228;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                      }

                      break;
                    case 1:
                      switch(v9)
                      {
                        case 2:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v897 = *(a4 + 2);
                              v898 = *(a5 + 2);
                              do
                              {
                                v899 = *v897;
                                v897 += 8;
                                *v898++ = *&a3 < v899;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v469 = *(a4 + 2);
                            v470 = *(a5 + 2);
                            do
                            {
                              v471 = *v469;
                              v469 += 8;
                              *v470++ = *&a3 < v471;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 1:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v777 = *(a4 + 2);
                              v778 = *(a5 + 2);
                              do
                              {
                                v779 = *v777++;
                                *v778++ = v779 > *&a3;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v397 = *(a4 + 2);
                            v398 = *(a5 + 2);
                            do
                            {
                              v399 = *v397++;
                              *v398++ = v399 > *&a3;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 0:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v957 = *(a4 + 2);
                              v958 = *(a5 + 2);
                              do
                              {
                                v959 = *v957++;
                                if (*&a3 >= v959)
                                {
                                  v960 = 0.0;
                                }

                                else
                                {
                                  v960 = 1.0;
                                }

                                *v958++ = v960;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v193 = *(a4 + 2);
                            v194 = *(a5 + 2);
                            do
                            {
                              v195 = *v193++;
                              if (*&a3 >= v195)
                              {
                                v196 = 0.0;
                              }

                              else
                              {
                                v196 = 1.0;
                              }

                              *v194++ = v196;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                      }

                      break;
                    case 0:
                      switch(v9)
                      {
                        case 2:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v1061 = *(a4 + 2);
                              v1062 = *(a5 + 2);
                              do
                              {
                                v1063 = *v1061++;
                                *v1062++ = *&a3 < v1063;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v553 = *(a4 + 2);
                            v554 = *(a5 + 2);
                            do
                            {
                              v555 = *v553++;
                              *v554++ = *&a3 < v555;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 1:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v965 = *(a4 + 2);
                              v966 = *(a5 + 2);
                              do
                              {
                                v967 = *v965++;
                                *v966++ = *&a3 < v967;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v505 = *(a4 + 2);
                            v506 = *(a5 + 2);
                            do
                            {
                              v507 = *v505++;
                              *v506++ = *&a3 < v507;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                        case 0:
                          if (a6 == 1)
                          {
                            if (v7)
                            {
                              v1089 = *(a4 + 2);
                              v1090 = *(a5 + 2);
                              do
                              {
                                v1091 = *v1089++;
                                if (v1091 <= *&a3)
                                {
                                  v1092 = 0.0;
                                }

                                else
                                {
                                  v1092 = 1.0;
                                }

                                *v1090++ = v1092;
                                --v7;
                              }

                              while (v7);
                            }
                          }

                          else if (!a6 && v7)
                          {
                            v10 = *(a4 + 2);
                            v11 = *(a5 + 2);
                            do
                            {
                              v12 = *v10++;
                              if (v12 <= *&a3)
                              {
                                v13 = 0.0;
                              }

                              else
                              {
                                v13 = 1.0;
                              }

                              *v11++ = v13;
                              --v7;
                            }

                            while (v7);
                          }

                          break;
                      }

                      break;
                  }

                  break;
              }

              return a5;
            }
          }

          return 0;
        }
      }

      break;
  }

  return a7;
}

int *agxps_timeseries_compare_ts_0(int a1, int *a2, int a3, unint64_t a4, int *a5, int a6, uint64_t a7)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        a7 = 0;
        if (!a2 || !a5)
        {
          return a7;
        }

        if ((a5[8] & 1) == 0)
        {
          v28 = *(a2 + 1);
          if (v28 == *(a5 + 1))
          {
            v29 = *a2;
            v30 = *a5;
            if (*a2 == 2)
            {
              switch(a3)
              {
                case 2:
                  switch(v30)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v704 = *(a2 + 2);
                          v705 = *(a5 + 2);
                          do
                          {
                            v706 = *v704++;
                            *v705++ = v706 > a4;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v340 = *(a2 + 2);
                        v341 = *(a5 + 2);
                        do
                        {
                          v342 = *v340++;
                          *v341++ = v342 > a4;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v624 = *(a2 + 2);
                          v625 = *(a5 + 2);
                          do
                          {
                            v626 = *v624++;
                            *v625++ = a4 < v626;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v292 = *(a2 + 2);
                        v293 = *(a5 + 2);
                        do
                        {
                          v294 = *v292++;
                          *v293++ = a4 < v294;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v729 = *(a2 + 2);
                          v730 = *(a5 + 2);
                          do
                          {
                            v731 = *v729++;
                            if (a4 >= v731)
                            {
                              v732 = 0.0;
                            }

                            else
                            {
                              v732 = 1.0;
                            }

                            *v730++ = v732;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v133 = *(a2 + 2);
                        v134 = *(a5 + 2);
                        do
                        {
                          v135 = *v133++;
                          if (a4 >= v135)
                          {
                            v136 = 0.0;
                          }

                          else
                          {
                            v136 = 1.0;
                          }

                          *v134++ = v136;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v30)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v618 = *(a2 + 2);
                          v619 = *(a5 + 2);
                          do
                          {
                            v620 = *v618++;
                            *v619++ = v620 > a4;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v286 = *(a2 + 2);
                        v287 = *(a5 + 2);
                        do
                        {
                          v288 = *v286++;
                          *v287++ = v288 > a4;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v586 = *(a2 + 2);
                          v587 = *(a5 + 2);
                          do
                          {
                            v588 = *v586++;
                            *v587++ = a4 < v588;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v262 = *(a2 + 2);
                        v263 = *(a5 + 2);
                        do
                        {
                          v264 = *v262++;
                          *v263++ = a4 < v264;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v645 = *(a2 + 2);
                          v646 = *(a5 + 2);
                          do
                          {
                            v647 = *v645++;
                            if (v647 <= a4)
                            {
                              v648 = 0.0;
                            }

                            else
                            {
                              v648 = 1.0;
                            }

                            *v646++ = v648;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v117 = *(a2 + 2);
                        v118 = *(a5 + 2);
                        do
                        {
                          v119 = *v117++;
                          if (v119 <= a4)
                          {
                            v120 = 0.0;
                          }

                          else
                          {
                            v120 = 1.0;
                          }

                          *v118++ = v120;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v30)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v736 = *(a2 + 2);
                          v737 = *(a5 + 2);
                          do
                          {
                            v738 = *v736++;
                            *v737++ = v738 > *&a4;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v364 = *(a2 + 2);
                        v365 = *(a5 + 2);
                        do
                        {
                          v366 = *v364++;
                          *v365++ = v366 > *&a4;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v658 = *(a2 + 2);
                          v659 = *(a5 + 2);
                          do
                          {
                            v660 = *v658++;
                            *v659++ = v660 > *&a4;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v310 = *(a2 + 2);
                        v311 = *(a5 + 2);
                        do
                        {
                          v312 = *v310++;
                          *v311++ = v312 > *&a4;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v787 = *(a2 + 2);
                          v788 = *(a5 + 2);
                          do
                          {
                            v789 = *v787++;
                            if (*&a4 >= v789)
                            {
                              v790 = 0.0;
                            }

                            else
                            {
                              v790 = 1.0;
                            }

                            *v788++ = v790;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v61 = *(a2 + 2);
                        v62 = *(a5 + 2);
                        do
                        {
                          v63 = *v61++;
                          if (*&a4 >= v63)
                          {
                            v64 = 0.0;
                          }

                          else
                          {
                            v64 = 1.0;
                          }

                          *v62++ = v64;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (v29 == 1)
            {
              switch(a3)
              {
                case 2:
                  switch(v30)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v612 = *(a2 + 2);
                          v613 = *(a5 + 2);
                          do
                          {
                            v614 = *v612;
                            v612 += 8;
                            *v613++ = v614 > a4;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v280 = *(a2 + 2);
                        v281 = *(a5 + 2);
                        do
                        {
                          v282 = *v280;
                          v280 += 8;
                          *v281++ = v282 > a4;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v580 = *(a2 + 2);
                          v581 = *(a5 + 2);
                          do
                          {
                            v582 = *v580++;
                            *v581++ = v582 > a4;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v256 = *(a2 + 2);
                        v257 = *(a5 + 2);
                        do
                        {
                          v258 = *v256++;
                          *v257++ = v258 > a4;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v637 = *(a2 + 2);
                          v638 = *(a5 + 2);
                          do
                          {
                            v639 = *v637++;
                            if (v639 <= a4)
                            {
                              v640 = 0.0;
                            }

                            else
                            {
                              v640 = 1.0;
                            }

                            *v638++ = v640;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v109 = *(a2 + 2);
                        v110 = *(a5 + 2);
                        do
                        {
                          v111 = *v109++;
                          if (v111 <= a4)
                          {
                            v112 = 0.0;
                          }

                          else
                          {
                            v112 = 1.0;
                          }

                          *v110++ = v112;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v30)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v574 = *(a2 + 2);
                          v575 = *(a5 + 2);
                          do
                          {
                            v576 = *v574;
                            v574 += 8;
                            *v575++ = v576 > a4;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v250 = *(a2 + 2);
                        v251 = *(a5 + 2);
                        do
                        {
                          v252 = *v250;
                          v250 += 8;
                          *v251++ = v252 > a4;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v568 = *(a2 + 2);
                          v569 = *(a5 + 2);
                          do
                          {
                            v570 = *v568++;
                            *v569++ = v570 > a4;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v244 = *(a2 + 2);
                        v245 = *(a5 + 2);
                        do
                        {
                          v246 = *v244++;
                          *v245++ = v246 > a4;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v593 = *(a2 + 2);
                          v594 = *(a5 + 2);
                          do
                          {
                            v595 = *v593++;
                            if (v595 <= a4)
                            {
                              v596 = 0.0;
                            }

                            else
                            {
                              v596 = 1.0;
                            }

                            *v594++ = v596;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v101 = *(a2 + 2);
                        v102 = *(a5 + 2);
                        do
                        {
                          v103 = *v101++;
                          if (v103 <= a4)
                          {
                            v104 = 0.0;
                          }

                          else
                          {
                            v104 = 1.0;
                          }

                          *v102++ = v104;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v30)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v652 = *(a2 + 2);
                          v653 = *(a5 + 2);
                          do
                          {
                            v654 = *v652;
                            v652 += 8;
                            *v653++ = v654 > *&a4;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v304 = *(a2 + 2);
                        v305 = *(a5 + 2);
                        do
                        {
                          v306 = *v304;
                          v304 += 8;
                          *v305++ = v306 > *&a4;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v600 = *(a2 + 2);
                          v601 = *(a5 + 2);
                          do
                          {
                            v602 = *v600++;
                            *v601++ = v602 > *&a4;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v268 = *(a2 + 2);
                        v269 = *(a5 + 2);
                        do
                        {
                          v270 = *v268++;
                          *v269++ = v270 > *&a4;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v683 = *(a2 + 2);
                          v684 = *(a5 + 2);
                          do
                          {
                            v685 = *v683++;
                            if (*&a4 >= v685)
                            {
                              v686 = 0.0;
                            }

                            else
                            {
                              v686 = 1.0;
                            }

                            *v684++ = v686;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v53 = *(a2 + 2);
                        v54 = *(a5 + 2);
                        do
                        {
                          v55 = *v53++;
                          if (*&a4 >= v55)
                          {
                            v56 = 0.0;
                          }

                          else
                          {
                            v56 = 1.0;
                          }

                          *v54++ = v56;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (!v29)
            {
              switch(a3)
              {
                case 2:
                  switch(v30)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v742 = *(a2 + 2);
                          v743 = *(a5 + 2);
                          do
                          {
                            v744 = *v742++;
                            *v743++ = v744 > a4;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v370 = *(a2 + 2);
                        v371 = *(a5 + 2);
                        do
                        {
                          v372 = *v370++;
                          *v371++ = v372 > a4;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v670 = *(a2 + 2);
                          v671 = *(a5 + 2);
                          do
                          {
                            v672 = *v670++;
                            *v671++ = a4 < v672;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v322 = *(a2 + 2);
                        v323 = *(a5 + 2);
                        do
                        {
                          v324 = *v322++;
                          *v323++ = a4 < v324;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v795 = *(a2 + 2);
                          v796 = *(a5 + 2);
                          do
                          {
                            v797 = *v795++;
                            if (v797 <= a4)
                            {
                              v798 = 0.0;
                            }

                            else
                            {
                              v798 = 1.0;
                            }

                            *v796++ = v798;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v149 = *(a2 + 2);
                        v150 = *(a5 + 2);
                        do
                        {
                          v151 = *v149++;
                          if (v151 <= a4)
                          {
                            v152 = 0.0;
                          }

                          else
                          {
                            v152 = 1.0;
                          }

                          *v150++ = v152;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v30)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v664 = *(a2 + 2);
                          v665 = *(a5 + 2);
                          do
                          {
                            v666 = *v664++;
                            *v665++ = v666 > a4;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v316 = *(a2 + 2);
                        v317 = *(a5 + 2);
                        do
                        {
                          v318 = *v316++;
                          *v317++ = v318 > a4;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v606 = *(a2 + 2);
                          v607 = *(a5 + 2);
                          do
                          {
                            v608 = *v606++;
                            *v607++ = a4 < v608;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v274 = *(a2 + 2);
                        v275 = *(a5 + 2);
                        do
                        {
                          v276 = *v274++;
                          *v275++ = a4 < v276;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v691 = *(a2 + 2);
                          v692 = *(a5 + 2);
                          do
                          {
                            v693 = *v691++;
                            if (v693 <= a4)
                            {
                              v694 = 0.0;
                            }

                            else
                            {
                              v694 = 1.0;
                            }

                            *v692++ = v694;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v125 = *(a2 + 2);
                        v126 = *(a5 + 2);
                        do
                        {
                          v127 = *v125++;
                          if (v127 <= a4)
                          {
                            v128 = 0.0;
                          }

                          else
                          {
                            v128 = 1.0;
                          }

                          *v126++ = v128;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v30)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v802 = *(a2 + 2);
                          v803 = *(a5 + 2);
                          do
                          {
                            v804 = *v802++;
                            *v803++ = v804 > *&a4;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v406 = *(a2 + 2);
                        v407 = *(a5 + 2);
                        do
                        {
                          v408 = *v406++;
                          *v407++ = v408 > *&a4;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v698 = *(a2 + 2);
                          v699 = *(a5 + 2);
                          do
                          {
                            v700 = *v698++;
                            *v699++ = v700 > *&a4;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v334 = *(a2 + 2);
                        v335 = *(a5 + 2);
                        do
                        {
                          v336 = *v334++;
                          *v335++ = v336 > *&a4;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v28)
                        {
                          v847 = *(a2 + 2);
                          v848 = *(a5 + 2);
                          do
                          {
                            v849 = *v847++;
                            if (v849 <= *&a4)
                            {
                              v850 = 0.0;
                            }

                            else
                            {
                              v850 = 1.0;
                            }

                            *v848++ = v850;
                            --v28;
                          }

                          while (v28);
                        }
                      }

                      else if (!a6 && v28)
                      {
                        v31 = *(a2 + 2);
                        v32 = *(a5 + 2);
                        do
                        {
                          v33 = *v31++;
                          if (v33 <= *&a4)
                          {
                            v34 = 0.0;
                          }

                          else
                          {
                            v34 = 1.0;
                          }

                          *v32++ = v34;
                          --v28;
                        }

                        while (v28);
                      }

                      break;
                  }

                  break;
              }
            }

            return a5;
          }
        }

        break;
      case 4:
        a7 = 0;
        if (!a2 || !a5)
        {
          return a7;
        }

        if ((a5[8] & 1) == 0)
        {
          v42 = *(a2 + 1);
          if (v42 == *(a5 + 1))
          {
            v43 = *a2;
            v44 = *a5;
            if (*a2 == 2)
            {
              switch(a3)
              {
                case 2:
                  switch(v44)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v1002 = *(a2 + 2);
                          v1003 = *(a5 + 2);
                          do
                          {
                            v1004 = *v1002++;
                            *v1003++ = v1004 <= a4;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v526 = *(a2 + 2);
                        v527 = *(a5 + 2);
                        do
                        {
                          v528 = *v526++;
                          *v527++ = v528 <= a4;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v866 = *(a2 + 2);
                          v867 = *(a5 + 2);
                          do
                          {
                            v868 = *v866++;
                            *v867++ = a4 >= v868;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v454 = *(a2 + 2);
                        v455 = *(a5 + 2);
                        do
                        {
                          v456 = *v454++;
                          *v455++ = a4 >= v456;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v1029 = *(a2 + 2);
                          v1030 = *(a5 + 2);
                          do
                          {
                            v1031 = *v1029++;
                            if (a4 < v1031)
                            {
                              v1032 = 0.0;
                            }

                            else
                            {
                              v1032 = 1.0;
                            }

                            *v1030++ = v1032;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v221 = *(a2 + 2);
                        v222 = *(a5 + 2);
                        do
                        {
                          v223 = *v221++;
                          if (a4 < v223)
                          {
                            v224 = 0.0;
                          }

                          else
                          {
                            v224 = 1.0;
                          }

                          *v222++ = v224;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v44)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v860 = *(a2 + 2);
                          v861 = *(a5 + 2);
                          do
                          {
                            v862 = *v860++;
                            *v861++ = v862 <= a4;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v448 = *(a2 + 2);
                        v449 = *(a5 + 2);
                        do
                        {
                          v450 = *v448++;
                          *v449++ = v450 <= a4;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v760 = *(a2 + 2);
                          v761 = *(a5 + 2);
                          do
                          {
                            v762 = *v760++;
                            *v761++ = a4 >= v762;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v388 = *(a2 + 2);
                        v389 = *(a5 + 2);
                        do
                        {
                          v390 = *v388++;
                          *v389++ = a4 >= v390;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v921 = *(a2 + 2);
                          v922 = *(a5 + 2);
                          do
                          {
                            v923 = *v921++;
                            if (v923 > a4)
                            {
                              v924 = 0.0;
                            }

                            else
                            {
                              v924 = 1.0;
                            }

                            *v922++ = v924;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v189 = *(a2 + 2);
                        v190 = *(a5 + 2);
                        do
                        {
                          v191 = *v189++;
                          if (v191 > a4)
                          {
                            v192 = 0.0;
                          }

                          else
                          {
                            v192 = 1.0;
                          }

                          *v190++ = v192;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v44)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v1036 = *(a2 + 2);
                          v1037 = *(a5 + 2);
                          do
                          {
                            v1038 = *v1036++;
                            *v1037++ = v1038 <= *&a4;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v544 = *(a2 + 2);
                        v545 = *(a5 + 2);
                        do
                        {
                          v546 = *v544++;
                          *v545++ = v546 <= *&a4;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v934 = *(a2 + 2);
                          v935 = *(a5 + 2);
                          do
                          {
                            v936 = *v934++;
                            *v935++ = v936 <= *&a4;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v490 = *(a2 + 2);
                        v491 = *(a5 + 2);
                        do
                        {
                          v492 = *v490++;
                          *v491++ = v492 <= *&a4;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v1071 = *(a2 + 2);
                          v1072 = *(a5 + 2);
                          do
                          {
                            v1073 = *v1071++;
                            if (*&a4 < v1073)
                            {
                              v1074 = 0.0;
                            }

                            else
                            {
                              v1074 = 1.0;
                            }

                            *v1072++ = v1074;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v93 = *(a2 + 2);
                        v94 = *(a5 + 2);
                        do
                        {
                          v95 = *v93++;
                          if (*&a4 < v95)
                          {
                            v96 = 0.0;
                          }

                          else
                          {
                            v96 = 1.0;
                          }

                          *v94++ = v96;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (v43 == 1)
            {
              switch(a3)
              {
                case 2:
                  switch(v44)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v854 = *(a2 + 2);
                          v855 = *(a5 + 2);
                          do
                          {
                            v856 = *v854;
                            v854 += 8;
                            *v855++ = v856 <= a4;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v442 = *(a2 + 2);
                        v443 = *(a5 + 2);
                        do
                        {
                          v444 = *v442;
                          v442 += 8;
                          *v443++ = v444 <= a4;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v754 = *(a2 + 2);
                          v755 = *(a5 + 2);
                          do
                          {
                            v756 = *v754++;
                            *v755++ = v756 <= a4;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v382 = *(a2 + 2);
                        v383 = *(a5 + 2);
                        do
                        {
                          v384 = *v382++;
                          *v383++ = v384 <= a4;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v913 = *(a2 + 2);
                          v914 = *(a5 + 2);
                          do
                          {
                            v915 = *v913++;
                            if (v915 > a4)
                            {
                              v916 = 0.0;
                            }

                            else
                            {
                              v916 = 1.0;
                            }

                            *v914++ = v916;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v181 = *(a2 + 2);
                        v182 = *(a5 + 2);
                        do
                        {
                          v183 = *v181++;
                          if (v183 > a4)
                          {
                            v184 = 0.0;
                          }

                          else
                          {
                            v184 = 1.0;
                          }

                          *v182++ = v184;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v44)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v748 = *(a2 + 2);
                          v749 = *(a5 + 2);
                          do
                          {
                            v750 = *v748;
                            v748 += 8;
                            *v749++ = v750 <= a4;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v376 = *(a2 + 2);
                        v377 = *(a5 + 2);
                        do
                        {
                          v378 = *v376;
                          v376 += 8;
                          *v377++ = v378 <= a4;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v676 = *(a2 + 2);
                          v677 = *(a5 + 2);
                          do
                          {
                            v678 = *v676++;
                            *v677++ = v678 <= a4;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v328 = *(a2 + 2);
                        v329 = *(a5 + 2);
                        do
                        {
                          v330 = *v328++;
                          *v329++ = v330 <= a4;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v809 = *(a2 + 2);
                          v810 = *(a5 + 2);
                          do
                          {
                            v811 = *v809++;
                            if (v811 > a4)
                            {
                              v812 = 0.0;
                            }

                            else
                            {
                              v812 = 1.0;
                            }

                            *v810++ = v812;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v157 = *(a2 + 2);
                        v158 = *(a5 + 2);
                        do
                        {
                          v159 = *v157++;
                          if (v159 > a4)
                          {
                            v160 = 0.0;
                          }

                          else
                          {
                            v160 = 1.0;
                          }

                          *v158++ = v160;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v44)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v928 = *(a2 + 2);
                          v929 = *(a5 + 2);
                          do
                          {
                            v930 = *v928;
                            v928 += 8;
                            *v929++ = v930 <= *&a4;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v484 = *(a2 + 2);
                        v485 = *(a5 + 2);
                        do
                        {
                          v486 = *v484;
                          v484 += 8;
                          *v485++ = v486 <= *&a4;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v816 = *(a2 + 2);
                          v817 = *(a5 + 2);
                          do
                          {
                            v818 = *v816++;
                            *v817++ = v818 <= *&a4;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v412 = *(a2 + 2);
                        v413 = *(a5 + 2);
                        do
                        {
                          v414 = *v412++;
                          *v413++ = v414 <= *&a4;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v981 = *(a2 + 2);
                          v982 = *(a5 + 2);
                          do
                          {
                            v983 = *v981++;
                            if (*&a4 < v983)
                            {
                              v984 = 0.0;
                            }

                            else
                            {
                              v984 = 1.0;
                            }

                            *v982++ = v984;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v77 = *(a2 + 2);
                        v78 = *(a5 + 2);
                        do
                        {
                          v79 = *v77++;
                          if (*&a4 < v79)
                          {
                            v80 = 0.0;
                          }

                          else
                          {
                            v80 = 1.0;
                          }

                          *v78++ = v80;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (!v43)
            {
              switch(a3)
              {
                case 2:
                  switch(v44)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v1042 = *(a2 + 2);
                          v1043 = *(a5 + 2);
                          do
                          {
                            v1044 = *v1042++;
                            *v1043++ = v1044 <= a4;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v550 = *(a2 + 2);
                        v551 = *(a5 + 2);
                        do
                        {
                          v552 = *v550++;
                          *v551++ = v552 <= a4;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v946 = *(a2 + 2);
                          v947 = *(a5 + 2);
                          do
                          {
                            v948 = *v946++;
                            *v947++ = a4 >= v948;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v502 = *(a2 + 2);
                        v503 = *(a5 + 2);
                        do
                        {
                          v504 = *v502++;
                          *v503++ = a4 >= v504;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v1079 = *(a2 + 2);
                          v1080 = *(a5 + 2);
                          do
                          {
                            v1081 = *v1079++;
                            if (v1081 > a4)
                            {
                              v1082 = 0.0;
                            }

                            else
                            {
                              v1082 = 1.0;
                            }

                            *v1080++ = v1082;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v237 = *(a2 + 2);
                        v238 = *(a5 + 2);
                        do
                        {
                          v239 = *v237++;
                          if (v239 > a4)
                          {
                            v240 = 0.0;
                          }

                          else
                          {
                            v240 = 1.0;
                          }

                          *v238++ = v240;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v44)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v940 = *(a2 + 2);
                          v941 = *(a5 + 2);
                          do
                          {
                            v942 = *v940++;
                            *v941++ = v942 <= a4;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v496 = *(a2 + 2);
                        v497 = *(a5 + 2);
                        do
                        {
                          v498 = *v496++;
                          *v497++ = v498 <= a4;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v822 = *(a2 + 2);
                          v823 = *(a5 + 2);
                          do
                          {
                            v824 = *v822++;
                            *v823++ = a4 >= v824;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v418 = *(a2 + 2);
                        v419 = *(a5 + 2);
                        do
                        {
                          v420 = *v418++;
                          *v419++ = a4 >= v420;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v989 = *(a2 + 2);
                          v990 = *(a5 + 2);
                          do
                          {
                            v991 = *v989++;
                            if (v991 > a4)
                            {
                              v992 = 0.0;
                            }

                            else
                            {
                              v992 = 1.0;
                            }

                            *v990++ = v992;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v205 = *(a2 + 2);
                        v206 = *(a5 + 2);
                        do
                        {
                          v207 = *v205++;
                          if (v207 > a4)
                          {
                            v208 = 0.0;
                          }

                          else
                          {
                            v208 = 1.0;
                          }

                          *v206++ = v208;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v44)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v1086 = *(a2 + 2);
                          v1087 = *(a5 + 2);
                          do
                          {
                            v1088 = *v1086++;
                            *v1087++ = v1088 <= *&a4;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v562 = *(a2 + 2);
                        v563 = *(a5 + 2);
                        do
                        {
                          v564 = *v562++;
                          *v563++ = v564 <= *&a4;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v996 = *(a2 + 2);
                          v997 = *(a5 + 2);
                          do
                          {
                            v998 = *v996++;
                            *v997++ = v998 <= *&a4;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v520 = *(a2 + 2);
                        v521 = *(a5 + 2);
                        do
                        {
                          v522 = *v520++;
                          *v521++ = v522 <= *&a4;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v42)
                        {
                          v1101 = *(a2 + 2);
                          v1102 = *(a5 + 2);
                          do
                          {
                            v1103 = *v1101++;
                            if (v1103 > *&a4)
                            {
                              v1104 = 0.0;
                            }

                            else
                            {
                              v1104 = 1.0;
                            }

                            *v1102++ = v1104;
                            --v42;
                          }

                          while (v42);
                        }
                      }

                      else if (!a6 && v42)
                      {
                        v45 = *(a2 + 2);
                        v46 = *(a5 + 2);
                        do
                        {
                          v47 = *v45++;
                          if (v47 > *&a4)
                          {
                            v48 = 0.0;
                          }

                          else
                          {
                            v48 = 1.0;
                          }

                          *v46++ = v48;
                          --v42;
                        }

                        while (v42);
                      }

                      break;
                  }

                  break;
              }
            }

            return a5;
          }
        }

        break;
      case 5:
        a7 = 0;
        if (!a2 || !a5)
        {
          return a7;
        }

        if ((a5[8] & 1) == 0)
        {
          v14 = *(a2 + 1);
          if (v14 == *(a5 + 1))
          {
            v15 = *a2;
            v16 = *a5;
            if (*a2 == 2)
            {
              switch(a3)
              {
                case 2:
                  switch(v16)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v974 = *(a2 + 2);
                          v975 = *(a5 + 2);
                          do
                          {
                            v976 = *v974++;
                            *v975++ = v976 >= a4;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v514 = *(a2 + 2);
                        v515 = *(a5 + 2);
                        do
                        {
                          v516 = *v514++;
                          *v515++ = v516 >= a4;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v840 = *(a2 + 2);
                          v841 = *(a5 + 2);
                          do
                          {
                            v842 = *v840++;
                            *v841++ = a4 <= v842;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v436 = *(a2 + 2);
                        v437 = *(a5 + 2);
                        do
                        {
                          v438 = *v436++;
                          *v437++ = a4 <= v438;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v1009 = *(a2 + 2);
                          v1010 = *(a5 + 2);
                          do
                          {
                            v1011 = *v1009++;
                            if (a4 > v1011)
                            {
                              v1012 = 0.0;
                            }

                            else
                            {
                              v1012 = 1.0;
                            }

                            *v1010++ = v1012;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v213 = *(a2 + 2);
                        v214 = *(a5 + 2);
                        do
                        {
                          v215 = *v213++;
                          if (a4 > v215)
                          {
                            v216 = 0.0;
                          }

                          else
                          {
                            v216 = 1.0;
                          }

                          *v214++ = v216;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v16)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v834 = *(a2 + 2);
                          v835 = *(a5 + 2);
                          do
                          {
                            v836 = *v834++;
                            *v835++ = v836 >= a4;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v430 = *(a2 + 2);
                        v431 = *(a5 + 2);
                        do
                        {
                          v432 = *v430++;
                          *v431++ = v432 >= a4;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v722 = *(a2 + 2);
                          v723 = *(a5 + 2);
                          do
                          {
                            v724 = *v722++;
                            *v723++ = a4 <= v724;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v358 = *(a2 + 2);
                        v359 = *(a5 + 2);
                        do
                        {
                          v360 = *v358++;
                          *v359++ = a4 <= v360;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v881 = *(a2 + 2);
                          v882 = *(a5 + 2);
                          do
                          {
                            v883 = *v881++;
                            if (v883 < a4)
                            {
                              v884 = 0.0;
                            }

                            else
                            {
                              v884 = 1.0;
                            }

                            *v882++ = v884;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v173 = *(a2 + 2);
                        v174 = *(a5 + 2);
                        do
                        {
                          v175 = *v173++;
                          if (v175 < a4)
                          {
                            v176 = 0.0;
                          }

                          else
                          {
                            v176 = 1.0;
                          }

                          *v174++ = v176;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v16)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v1016 = *(a2 + 2);
                          v1017 = *(a5 + 2);
                          do
                          {
                            v1018 = *v1016++;
                            *v1017++ = v1018 >= *&a4;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v532 = *(a2 + 2);
                        v533 = *(a5 + 2);
                        do
                        {
                          v534 = *v532++;
                          *v533++ = v534 >= *&a4;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v894 = *(a2 + 2);
                          v895 = *(a5 + 2);
                          do
                          {
                            v896 = *v894++;
                            *v895++ = v896 >= *&a4;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v466 = *(a2 + 2);
                        v467 = *(a5 + 2);
                        do
                        {
                          v468 = *v466++;
                          *v467++ = v468 >= *&a4;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v1049 = *(a2 + 2);
                          v1050 = *(a5 + 2);
                          do
                          {
                            v1051 = *v1049++;
                            if (*&a4 > v1051)
                            {
                              v1052 = 0.0;
                            }

                            else
                            {
                              v1052 = 1.0;
                            }

                            *v1050++ = v1052;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v85 = *(a2 + 2);
                        v86 = *(a5 + 2);
                        do
                        {
                          v87 = *v85++;
                          if (*&a4 > v87)
                          {
                            v88 = 0.0;
                          }

                          else
                          {
                            v88 = 1.0;
                          }

                          *v86++ = v88;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (v15 == 1)
            {
              switch(a3)
              {
                case 2:
                  switch(v16)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v828 = *(a2 + 2);
                          v829 = *(a5 + 2);
                          do
                          {
                            v830 = *v828;
                            v828 += 8;
                            *v829++ = v830 >= a4;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v424 = *(a2 + 2);
                        v425 = *(a5 + 2);
                        do
                        {
                          v426 = *v424;
                          v424 += 8;
                          *v425++ = v426 >= a4;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v716 = *(a2 + 2);
                          v717 = *(a5 + 2);
                          do
                          {
                            v718 = *v716++;
                            *v717++ = v718 >= a4;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v352 = *(a2 + 2);
                        v353 = *(a5 + 2);
                        do
                        {
                          v354 = *v352++;
                          *v353++ = v354 >= a4;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v873 = *(a2 + 2);
                          v874 = *(a5 + 2);
                          do
                          {
                            v875 = *v873++;
                            if (v875 < a4)
                            {
                              v876 = 0.0;
                            }

                            else
                            {
                              v876 = 1.0;
                            }

                            *v874++ = v876;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v165 = *(a2 + 2);
                        v166 = *(a5 + 2);
                        do
                        {
                          v167 = *v165++;
                          if (v167 < a4)
                          {
                            v168 = 0.0;
                          }

                          else
                          {
                            v168 = 1.0;
                          }

                          *v166++ = v168;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v16)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v710 = *(a2 + 2);
                          v711 = *(a5 + 2);
                          do
                          {
                            v712 = *v710;
                            v710 += 8;
                            *v711++ = v712 >= a4;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v346 = *(a2 + 2);
                        v347 = *(a5 + 2);
                        do
                        {
                          v348 = *v346;
                          v346 += 8;
                          *v347++ = v348 >= a4;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v630 = *(a2 + 2);
                          v631 = *(a5 + 2);
                          do
                          {
                            v632 = *v630++;
                            *v631++ = v632 >= a4;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v298 = *(a2 + 2);
                        v299 = *(a5 + 2);
                        do
                        {
                          v300 = *v298++;
                          *v299++ = v300 >= a4;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v767 = *(a2 + 2);
                          v768 = *(a5 + 2);
                          do
                          {
                            v769 = *v767++;
                            if (v769 < a4)
                            {
                              v770 = 0.0;
                            }

                            else
                            {
                              v770 = 1.0;
                            }

                            *v768++ = v770;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v141 = *(a2 + 2);
                        v142 = *(a5 + 2);
                        do
                        {
                          v143 = *v141++;
                          if (v143 < a4)
                          {
                            v144 = 0.0;
                          }

                          else
                          {
                            v144 = 1.0;
                          }

                          *v142++ = v144;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v16)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v888 = *(a2 + 2);
                          v889 = *(a5 + 2);
                          do
                          {
                            v890 = *v888;
                            v888 += 8;
                            *v889++ = v890 >= *&a4;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v460 = *(a2 + 2);
                        v461 = *(a5 + 2);
                        do
                        {
                          v462 = *v460;
                          v460 += 8;
                          *v461++ = v462 >= *&a4;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v774 = *(a2 + 2);
                          v775 = *(a5 + 2);
                          do
                          {
                            v776 = *v774++;
                            *v775++ = v776 >= *&a4;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v394 = *(a2 + 2);
                        v395 = *(a5 + 2);
                        do
                        {
                          v396 = *v394++;
                          *v395++ = v396 >= *&a4;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v953 = *(a2 + 2);
                          v954 = *(a5 + 2);
                          do
                          {
                            v955 = *v953++;
                            if (*&a4 > v955)
                            {
                              v956 = 0.0;
                            }

                            else
                            {
                              v956 = 1.0;
                            }

                            *v954++ = v956;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v69 = *(a2 + 2);
                        v70 = *(a5 + 2);
                        do
                        {
                          v71 = *v69++;
                          if (*&a4 > v71)
                          {
                            v72 = 0.0;
                          }

                          else
                          {
                            v72 = 1.0;
                          }

                          *v70++ = v72;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (!v15)
            {
              switch(a3)
              {
                case 2:
                  switch(v16)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v1022 = *(a2 + 2);
                          v1023 = *(a5 + 2);
                          do
                          {
                            v1024 = *v1022++;
                            *v1023++ = v1024 >= a4;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v538 = *(a2 + 2);
                        v539 = *(a5 + 2);
                        do
                        {
                          v540 = *v538++;
                          *v539++ = v540 >= a4;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v906 = *(a2 + 2);
                          v907 = *(a5 + 2);
                          do
                          {
                            v908 = *v906++;
                            *v907++ = a4 <= v908;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v478 = *(a2 + 2);
                        v479 = *(a5 + 2);
                        do
                        {
                          v480 = *v478++;
                          *v479++ = a4 <= v480;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v1057 = *(a2 + 2);
                          v1058 = *(a5 + 2);
                          do
                          {
                            v1059 = *v1057++;
                            if (v1059 < a4)
                            {
                              v1060 = 0.0;
                            }

                            else
                            {
                              v1060 = 1.0;
                            }

                            *v1058++ = v1060;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v229 = *(a2 + 2);
                        v230 = *(a5 + 2);
                        do
                        {
                          v231 = *v229++;
                          if (v231 < a4)
                          {
                            v232 = 0.0;
                          }

                          else
                          {
                            v232 = 1.0;
                          }

                          *v230++ = v232;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v16)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v900 = *(a2 + 2);
                          v901 = *(a5 + 2);
                          do
                          {
                            v902 = *v900++;
                            *v901++ = v902 >= a4;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v472 = *(a2 + 2);
                        v473 = *(a5 + 2);
                        do
                        {
                          v474 = *v472++;
                          *v473++ = v474 >= a4;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v780 = *(a2 + 2);
                          v781 = *(a5 + 2);
                          do
                          {
                            v782 = *v780++;
                            *v781++ = a4 <= v782;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v400 = *(a2 + 2);
                        v401 = *(a5 + 2);
                        do
                        {
                          v402 = *v400++;
                          *v401++ = a4 <= v402;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v961 = *(a2 + 2);
                          v962 = *(a5 + 2);
                          do
                          {
                            v963 = *v961++;
                            if (v963 < a4)
                            {
                              v964 = 0.0;
                            }

                            else
                            {
                              v964 = 1.0;
                            }

                            *v962++ = v964;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v197 = *(a2 + 2);
                        v198 = *(a5 + 2);
                        do
                        {
                          v199 = *v197++;
                          if (v199 < a4)
                          {
                            v200 = 0.0;
                          }

                          else
                          {
                            v200 = 1.0;
                          }

                          *v198++ = v200;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v16)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v1064 = *(a2 + 2);
                          v1065 = *(a5 + 2);
                          do
                          {
                            v1066 = *v1064++;
                            *v1065++ = v1066 >= *&a4;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v556 = *(a2 + 2);
                        v557 = *(a5 + 2);
                        do
                        {
                          v558 = *v556++;
                          *v557++ = v558 >= *&a4;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v968 = *(a2 + 2);
                          v969 = *(a5 + 2);
                          do
                          {
                            v970 = *v968++;
                            *v969++ = v970 >= *&a4;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v508 = *(a2 + 2);
                        v509 = *(a5 + 2);
                        do
                        {
                          v510 = *v508++;
                          *v509++ = v510 >= *&a4;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v14)
                        {
                          v1093 = *(a2 + 2);
                          v1094 = *(a5 + 2);
                          do
                          {
                            v1095 = *v1093++;
                            if (v1095 < *&a4)
                            {
                              v1096 = 0.0;
                            }

                            else
                            {
                              v1096 = 1.0;
                            }

                            *v1094++ = v1096;
                            --v14;
                          }

                          while (v14);
                        }
                      }

                      else if (!a6 && v14)
                      {
                        v17 = *(a2 + 2);
                        v18 = *(a5 + 2);
                        do
                        {
                          v19 = *v17++;
                          if (v19 < *&a4)
                          {
                            v20 = 0.0;
                          }

                          else
                          {
                            v20 = 1.0;
                          }

                          *v18++ = v20;
                          --v14;
                        }

                        while (v14);
                      }

                      break;
                  }

                  break;
              }
            }

            return a5;
          }
        }

        break;
      default:
        return a7;
    }

    return 0;
  }

  switch(a1)
  {
    case 0:
      a7 = 0;
      if (!a2 || !a5)
      {
        return a7;
      }

      if ((a5[8] & 1) == 0)
      {
        v21 = *(a2 + 1);
        if (v21 == *(a5 + 1))
        {
          v22 = *a2;
          v23 = *a5;
          if (*a2 == 2)
          {
            switch(a3)
            {
              case 2:
                switch(v23)
                {
                  case 2:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v701 = *(a2 + 2);
                        v702 = *(a5 + 2);
                        do
                        {
                          v703 = *v701++;
                          *v702++ = v703 == a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v337 = *(a2 + 2);
                      v338 = *(a5 + 2);
                      do
                      {
                        v339 = *v337++;
                        *v338++ = v339 == a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 1:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v621 = *(a2 + 2);
                        v622 = *(a5 + 2);
                        do
                        {
                          v623 = *v621++;
                          *v622++ = v623 == a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v289 = *(a2 + 2);
                      v290 = *(a5 + 2);
                      do
                      {
                        v291 = *v289++;
                        *v290++ = v291 == a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 0:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v725 = *(a2 + 2);
                        v726 = *(a5 + 2);
                        do
                        {
                          v727 = *v725++;
                          if (v727 == a4)
                          {
                            v728 = 1.0;
                          }

                          else
                          {
                            v728 = 0.0;
                          }

                          *v726++ = v728;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v129 = *(a2 + 2);
                      v130 = *(a5 + 2);
                      do
                      {
                        v131 = *v129++;
                        if (v131 == a4)
                        {
                          v132 = 1.0;
                        }

                        else
                        {
                          v132 = 0.0;
                        }

                        *v130++ = v132;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                }

                break;
              case 1:
                switch(v23)
                {
                  case 2:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v615 = *(a2 + 2);
                        v616 = *(a5 + 2);
                        do
                        {
                          v617 = *v615++;
                          *v616++ = v617 == a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v283 = *(a2 + 2);
                      v284 = *(a5 + 2);
                      do
                      {
                        v285 = *v283++;
                        *v284++ = v285 == a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 1:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v583 = *(a2 + 2);
                        v584 = *(a5 + 2);
                        do
                        {
                          v585 = *v583++;
                          *v584++ = a4 == v585;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v259 = *(a2 + 2);
                      v260 = *(a5 + 2);
                      do
                      {
                        v261 = *v259++;
                        *v260++ = a4 == v261;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 0:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v641 = *(a2 + 2);
                        v642 = *(a5 + 2);
                        do
                        {
                          v643 = *v641++;
                          if (v643 == a4)
                          {
                            v644 = 1.0;
                          }

                          else
                          {
                            v644 = 0.0;
                          }

                          *v642++ = v644;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v113 = *(a2 + 2);
                      v114 = *(a5 + 2);
                      do
                      {
                        v115 = *v113++;
                        if (v115 == a4)
                        {
                          v116 = 1.0;
                        }

                        else
                        {
                          v116 = 0.0;
                        }

                        *v114++ = v116;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                }

                break;
              case 0:
                switch(v23)
                {
                  case 2:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v733 = *(a2 + 2);
                        v734 = *(a5 + 2);
                        do
                        {
                          v735 = *v733++;
                          *v734++ = v735 == *&a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v361 = *(a2 + 2);
                      v362 = *(a5 + 2);
                      do
                      {
                        v363 = *v361++;
                        *v362++ = v363 == *&a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 1:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v655 = *(a2 + 2);
                        v656 = *(a5 + 2);
                        do
                        {
                          v657 = *v655++;
                          *v656++ = v657 == *&a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v307 = *(a2 + 2);
                      v308 = *(a5 + 2);
                      do
                      {
                        v309 = *v307++;
                        *v308++ = v309 == *&a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 0:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v783 = *(a2 + 2);
                        v784 = *(a5 + 2);
                        do
                        {
                          v785 = *v783++;
                          if (*&a4 == v785)
                          {
                            v786 = 1.0;
                          }

                          else
                          {
                            v786 = 0.0;
                          }

                          *v784++ = v786;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v57 = *(a2 + 2);
                      v58 = *(a5 + 2);
                      do
                      {
                        v59 = *v57++;
                        if (*&a4 == v59)
                        {
                          v60 = 1.0;
                        }

                        else
                        {
                          v60 = 0.0;
                        }

                        *v58++ = v60;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                }

                break;
            }
          }

          else if (v22 == 1)
          {
            switch(a3)
            {
              case 2:
                switch(v23)
                {
                  case 2:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v609 = *(a2 + 2);
                        v610 = *(a5 + 2);
                        do
                        {
                          v611 = *v609;
                          v609 += 8;
                          *v610++ = v611 == a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v277 = *(a2 + 2);
                      v278 = *(a5 + 2);
                      do
                      {
                        v279 = *v277;
                        v277 += 8;
                        *v278++ = v279 == a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 1:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v577 = *(a2 + 2);
                        v578 = *(a5 + 2);
                        do
                        {
                          v579 = *v577++;
                          *v578++ = v579 == a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v253 = *(a2 + 2);
                      v254 = *(a5 + 2);
                      do
                      {
                        v255 = *v253++;
                        *v254++ = v255 == a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 0:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v633 = *(a2 + 2);
                        v634 = *(a5 + 2);
                        do
                        {
                          v635 = *v633++;
                          if (v635 == a4)
                          {
                            v636 = 1.0;
                          }

                          else
                          {
                            v636 = 0.0;
                          }

                          *v634++ = v636;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v105 = *(a2 + 2);
                      v106 = *(a5 + 2);
                      do
                      {
                        v107 = *v105++;
                        if (v107 == a4)
                        {
                          v108 = 1.0;
                        }

                        else
                        {
                          v108 = 0.0;
                        }

                        *v106++ = v108;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                }

                break;
              case 1:
                switch(v23)
                {
                  case 2:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v571 = *(a2 + 2);
                        v572 = *(a5 + 2);
                        do
                        {
                          v573 = *v571;
                          v571 += 8;
                          *v572++ = v573 == a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v247 = *(a2 + 2);
                      v248 = *(a5 + 2);
                      do
                      {
                        v249 = *v247;
                        v247 += 8;
                        *v248++ = v249 == a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 1:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v565 = *(a2 + 2);
                        v566 = *(a5 + 2);
                        do
                        {
                          v567 = *v565++;
                          *v566++ = v567 == a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v241 = *(a2 + 2);
                      v242 = *(a5 + 2);
                      do
                      {
                        v243 = *v241++;
                        *v242++ = v243 == a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 0:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v589 = *(a2 + 2);
                        v590 = *(a5 + 2);
                        do
                        {
                          v591 = *v589++;
                          if (v591 == a4)
                          {
                            v592 = 1.0;
                          }

                          else
                          {
                            v592 = 0.0;
                          }

                          *v590++ = v592;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v97 = *(a2 + 2);
                      v98 = *(a5 + 2);
                      do
                      {
                        v99 = *v97++;
                        if (v99 == a4)
                        {
                          v100 = 1.0;
                        }

                        else
                        {
                          v100 = 0.0;
                        }

                        *v98++ = v100;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                }

                break;
              case 0:
                switch(v23)
                {
                  case 2:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v649 = *(a2 + 2);
                        v650 = *(a5 + 2);
                        do
                        {
                          v651 = *v649;
                          v649 += 8;
                          *v650++ = v651 == *&a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v301 = *(a2 + 2);
                      v302 = *(a5 + 2);
                      do
                      {
                        v303 = *v301;
                        v301 += 8;
                        *v302++ = v303 == *&a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 1:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v597 = *(a2 + 2);
                        v598 = *(a5 + 2);
                        do
                        {
                          v599 = *v597++;
                          *v598++ = v599 == *&a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v265 = *(a2 + 2);
                      v266 = *(a5 + 2);
                      do
                      {
                        v267 = *v265++;
                        *v266++ = v267 == *&a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 0:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v679 = *(a2 + 2);
                        v680 = *(a5 + 2);
                        do
                        {
                          v681 = *v679++;
                          if (*&a4 == v681)
                          {
                            v682 = 1.0;
                          }

                          else
                          {
                            v682 = 0.0;
                          }

                          *v680++ = v682;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v49 = *(a2 + 2);
                      v50 = *(a5 + 2);
                      do
                      {
                        v51 = *v49++;
                        if (*&a4 == v51)
                        {
                          v52 = 1.0;
                        }

                        else
                        {
                          v52 = 0.0;
                        }

                        *v50++ = v52;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                }

                break;
            }
          }

          else if (!v22)
          {
            switch(a3)
            {
              case 2:
                switch(v23)
                {
                  case 2:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v739 = *(a2 + 2);
                        v740 = *(a5 + 2);
                        do
                        {
                          v741 = *v739++;
                          *v740++ = v741 == a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v367 = *(a2 + 2);
                      v368 = *(a5 + 2);
                      do
                      {
                        v369 = *v367++;
                        *v368++ = v369 == a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 1:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v667 = *(a2 + 2);
                        v668 = *(a5 + 2);
                        do
                        {
                          v669 = *v667++;
                          *v668++ = a4 == v669;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v319 = *(a2 + 2);
                      v320 = *(a5 + 2);
                      do
                      {
                        v321 = *v319++;
                        *v320++ = a4 == v321;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 0:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v791 = *(a2 + 2);
                        v792 = *(a5 + 2);
                        do
                        {
                          v793 = *v791++;
                          if (v793 == a4)
                          {
                            v794 = 1.0;
                          }

                          else
                          {
                            v794 = 0.0;
                          }

                          *v792++ = v794;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v145 = *(a2 + 2);
                      v146 = *(a5 + 2);
                      do
                      {
                        v147 = *v145++;
                        if (v147 == a4)
                        {
                          v148 = 1.0;
                        }

                        else
                        {
                          v148 = 0.0;
                        }

                        *v146++ = v148;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                }

                break;
              case 1:
                switch(v23)
                {
                  case 2:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v661 = *(a2 + 2);
                        v662 = *(a5 + 2);
                        do
                        {
                          v663 = *v661++;
                          *v662++ = v663 == a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v313 = *(a2 + 2);
                      v314 = *(a5 + 2);
                      do
                      {
                        v315 = *v313++;
                        *v314++ = v315 == a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 1:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v603 = *(a2 + 2);
                        v604 = *(a5 + 2);
                        do
                        {
                          v605 = *v603++;
                          *v604++ = a4 == v605;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v271 = *(a2 + 2);
                      v272 = *(a5 + 2);
                      do
                      {
                        v273 = *v271++;
                        *v272++ = a4 == v273;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 0:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v687 = *(a2 + 2);
                        v688 = *(a5 + 2);
                        do
                        {
                          v689 = *v687++;
                          if (v689 == a4)
                          {
                            v690 = 1.0;
                          }

                          else
                          {
                            v690 = 0.0;
                          }

                          *v688++ = v690;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v121 = *(a2 + 2);
                      v122 = *(a5 + 2);
                      do
                      {
                        v123 = *v121++;
                        if (v123 == a4)
                        {
                          v124 = 1.0;
                        }

                        else
                        {
                          v124 = 0.0;
                        }

                        *v122++ = v124;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                }

                break;
              case 0:
                switch(v23)
                {
                  case 2:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v799 = *(a2 + 2);
                        v800 = *(a5 + 2);
                        do
                        {
                          v801 = *v799++;
                          *v800++ = v801 == *&a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v403 = *(a2 + 2);
                      v404 = *(a5 + 2);
                      do
                      {
                        v405 = *v403++;
                        *v404++ = v405 == *&a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 1:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v695 = *(a2 + 2);
                        v696 = *(a5 + 2);
                        do
                        {
                          v697 = *v695++;
                          *v696++ = *&v697 == a4;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v331 = *(a2 + 2);
                      v332 = *(a5 + 2);
                      do
                      {
                        v333 = *v331++;
                        *v332++ = *&v333 == a4;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                  case 0:
                    if (a6 == 1)
                    {
                      if (v21)
                      {
                        v843 = *(a2 + 2);
                        v844 = *(a5 + 2);
                        do
                        {
                          v845 = *v843++;
                          if (v845 == *&a4)
                          {
                            v846 = 1.0;
                          }

                          else
                          {
                            v846 = 0.0;
                          }

                          *v844++ = v846;
                          --v21;
                        }

                        while (v21);
                      }
                    }

                    else if (!a6 && v21)
                    {
                      v24 = *(a2 + 2);
                      v25 = *(a5 + 2);
                      do
                      {
                        v26 = *v24++;
                        if (v26 == *&a4)
                        {
                          v27 = 1.0;
                        }

                        else
                        {
                          v27 = 0.0;
                        }

                        *v25++ = v27;
                        --v21;
                      }

                      while (v21);
                    }

                    break;
                }

                break;
            }
          }

          return a5;
        }
      }

      return 0;
    case 1:
      a7 = 0;
      if (a2 && a5)
      {
        if ((a5[8] & 1) == 0)
        {
          v35 = *(a2 + 1);
          if (v35 == *(a5 + 1))
          {
            v36 = *a2;
            v37 = *a5;
            if (*a2 == 2)
            {
              switch(a3)
              {
                case 2:
                  switch(v37)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v999 = *(a2 + 2);
                          v1000 = *(a5 + 2);
                          do
                          {
                            v1001 = *v999++;
                            *v1000++ = v1001 != a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v523 = *(a2 + 2);
                        v524 = *(a5 + 2);
                        do
                        {
                          v525 = *v523++;
                          *v524++ = v525 != a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v863 = *(a2 + 2);
                          v864 = *(a5 + 2);
                          do
                          {
                            v865 = *v863++;
                            *v864++ = v865 != a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v451 = *(a2 + 2);
                        v452 = *(a5 + 2);
                        do
                        {
                          v453 = *v451++;
                          *v452++ = v453 != a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v1025 = *(a2 + 2);
                          v1026 = *(a5 + 2);
                          do
                          {
                            v1027 = *v1025++;
                            if (v1027 == a4)
                            {
                              v1028 = 0.0;
                            }

                            else
                            {
                              v1028 = 1.0;
                            }

                            *v1026++ = v1028;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v217 = *(a2 + 2);
                        v218 = *(a5 + 2);
                        do
                        {
                          v219 = *v217++;
                          if (v219 == a4)
                          {
                            v220 = 0.0;
                          }

                          else
                          {
                            v220 = 1.0;
                          }

                          *v218++ = v220;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v37)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v857 = *(a2 + 2);
                          v858 = *(a5 + 2);
                          do
                          {
                            v859 = *v857++;
                            *v858++ = v859 != a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v445 = *(a2 + 2);
                        v446 = *(a5 + 2);
                        do
                        {
                          v447 = *v445++;
                          *v446++ = v447 != a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v757 = *(a2 + 2);
                          v758 = *(a5 + 2);
                          do
                          {
                            v759 = *v757++;
                            *v758++ = a4 != v759;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v385 = *(a2 + 2);
                        v386 = *(a5 + 2);
                        do
                        {
                          v387 = *v385++;
                          *v386++ = a4 != v387;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v917 = *(a2 + 2);
                          v918 = *(a5 + 2);
                          do
                          {
                            v919 = *v917++;
                            if (v919 == a4)
                            {
                              v920 = 0.0;
                            }

                            else
                            {
                              v920 = 1.0;
                            }

                            *v918++ = v920;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v185 = *(a2 + 2);
                        v186 = *(a5 + 2);
                        do
                        {
                          v187 = *v185++;
                          if (v187 == a4)
                          {
                            v188 = 0.0;
                          }

                          else
                          {
                            v188 = 1.0;
                          }

                          *v186++ = v188;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v37)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v1033 = *(a2 + 2);
                          v1034 = *(a5 + 2);
                          do
                          {
                            v1035 = *v1033++;
                            *v1034++ = v1035 != *&a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v541 = *(a2 + 2);
                        v542 = *(a5 + 2);
                        do
                        {
                          v543 = *v541++;
                          *v542++ = v543 != *&a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v931 = *(a2 + 2);
                          v932 = *(a5 + 2);
                          do
                          {
                            v933 = *v931++;
                            *v932++ = v933 != *&a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v487 = *(a2 + 2);
                        v488 = *(a5 + 2);
                        do
                        {
                          v489 = *v487++;
                          *v488++ = v489 != *&a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v1067 = *(a2 + 2);
                          v1068 = *(a5 + 2);
                          do
                          {
                            v1069 = *v1067++;
                            if (*&a4 == v1069)
                            {
                              v1070 = 0.0;
                            }

                            else
                            {
                              v1070 = 1.0;
                            }

                            *v1068++ = v1070;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v89 = *(a2 + 2);
                        v90 = *(a5 + 2);
                        do
                        {
                          v91 = *v89++;
                          if (*&a4 == v91)
                          {
                            v92 = 0.0;
                          }

                          else
                          {
                            v92 = 1.0;
                          }

                          *v90++ = v92;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (v36 == 1)
            {
              switch(a3)
              {
                case 2:
                  switch(v37)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v851 = *(a2 + 2);
                          v852 = *(a5 + 2);
                          do
                          {
                            v853 = *v851;
                            v851 += 8;
                            *v852++ = v853 != a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v439 = *(a2 + 2);
                        v440 = *(a5 + 2);
                        do
                        {
                          v441 = *v439;
                          v439 += 8;
                          *v440++ = v441 != a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v751 = *(a2 + 2);
                          v752 = *(a5 + 2);
                          do
                          {
                            v753 = *v751++;
                            *v752++ = v753 != a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v379 = *(a2 + 2);
                        v380 = *(a5 + 2);
                        do
                        {
                          v381 = *v379++;
                          *v380++ = v381 != a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v909 = *(a2 + 2);
                          v910 = *(a5 + 2);
                          do
                          {
                            v911 = *v909++;
                            if (v911 == a4)
                            {
                              v912 = 0.0;
                            }

                            else
                            {
                              v912 = 1.0;
                            }

                            *v910++ = v912;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v177 = *(a2 + 2);
                        v178 = *(a5 + 2);
                        do
                        {
                          v179 = *v177++;
                          if (v179 == a4)
                          {
                            v180 = 0.0;
                          }

                          else
                          {
                            v180 = 1.0;
                          }

                          *v178++ = v180;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v37)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v745 = *(a2 + 2);
                          v746 = *(a5 + 2);
                          do
                          {
                            v747 = *v745;
                            v745 += 8;
                            *v746++ = v747 != a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v373 = *(a2 + 2);
                        v374 = *(a5 + 2);
                        do
                        {
                          v375 = *v373;
                          v373 += 8;
                          *v374++ = v375 != a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v673 = *(a2 + 2);
                          v674 = *(a5 + 2);
                          do
                          {
                            v675 = *v673++;
                            *v674++ = v675 != a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v325 = *(a2 + 2);
                        v326 = *(a5 + 2);
                        do
                        {
                          v327 = *v325++;
                          *v326++ = v327 != a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v805 = *(a2 + 2);
                          v806 = *(a5 + 2);
                          do
                          {
                            v807 = *v805++;
                            if (v807 == a4)
                            {
                              v808 = 0.0;
                            }

                            else
                            {
                              v808 = 1.0;
                            }

                            *v806++ = v808;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v153 = *(a2 + 2);
                        v154 = *(a5 + 2);
                        do
                        {
                          v155 = *v153++;
                          if (v155 == a4)
                          {
                            v156 = 0.0;
                          }

                          else
                          {
                            v156 = 1.0;
                          }

                          *v154++ = v156;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v37)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v925 = *(a2 + 2);
                          v926 = *(a5 + 2);
                          do
                          {
                            v927 = *v925;
                            v925 += 8;
                            *v926++ = v927 != *&a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v481 = *(a2 + 2);
                        v482 = *(a5 + 2);
                        do
                        {
                          v483 = *v481;
                          v481 += 8;
                          *v482++ = v483 != *&a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v813 = *(a2 + 2);
                          v814 = *(a5 + 2);
                          do
                          {
                            v815 = *v813++;
                            *v814++ = v815 != *&a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v409 = *(a2 + 2);
                        v410 = *(a5 + 2);
                        do
                        {
                          v411 = *v409++;
                          *v410++ = v411 != *&a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v977 = *(a2 + 2);
                          v978 = *(a5 + 2);
                          do
                          {
                            v979 = *v977++;
                            if (*&a4 == v979)
                            {
                              v980 = 0.0;
                            }

                            else
                            {
                              v980 = 1.0;
                            }

                            *v978++ = v980;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v73 = *(a2 + 2);
                        v74 = *(a5 + 2);
                        do
                        {
                          v75 = *v73++;
                          if (*&a4 == v75)
                          {
                            v76 = 0.0;
                          }

                          else
                          {
                            v76 = 1.0;
                          }

                          *v74++ = v76;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                  }

                  break;
              }
            }

            else if (!v36)
            {
              switch(a3)
              {
                case 2:
                  switch(v37)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v1039 = *(a2 + 2);
                          v1040 = *(a5 + 2);
                          do
                          {
                            v1041 = *v1039++;
                            *v1040++ = v1041 != a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v547 = *(a2 + 2);
                        v548 = *(a5 + 2);
                        do
                        {
                          v549 = *v547++;
                          *v548++ = v549 != a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v943 = *(a2 + 2);
                          v944 = *(a5 + 2);
                          do
                          {
                            v945 = *v943++;
                            *v944++ = a4 != v945;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v499 = *(a2 + 2);
                        v500 = *(a5 + 2);
                        do
                        {
                          v501 = *v499++;
                          *v500++ = a4 != v501;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v1075 = *(a2 + 2);
                          v1076 = *(a5 + 2);
                          do
                          {
                            v1077 = *v1075++;
                            if (v1077 == a4)
                            {
                              v1078 = 0.0;
                            }

                            else
                            {
                              v1078 = 1.0;
                            }

                            *v1076++ = v1078;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v233 = *(a2 + 2);
                        v234 = *(a5 + 2);
                        do
                        {
                          v235 = *v233++;
                          if (v235 == a4)
                          {
                            v236 = 0.0;
                          }

                          else
                          {
                            v236 = 1.0;
                          }

                          *v234++ = v236;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                  }

                  break;
                case 1:
                  switch(v37)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v937 = *(a2 + 2);
                          v938 = *(a5 + 2);
                          do
                          {
                            v939 = *v937++;
                            *v938++ = v939 != a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v493 = *(a2 + 2);
                        v494 = *(a5 + 2);
                        do
                        {
                          v495 = *v493++;
                          *v494++ = v495 != a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v819 = *(a2 + 2);
                          v820 = *(a5 + 2);
                          do
                          {
                            v821 = *v819++;
                            *v820++ = a4 != v821;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v415 = *(a2 + 2);
                        v416 = *(a5 + 2);
                        do
                        {
                          v417 = *v415++;
                          *v416++ = a4 != v417;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v985 = *(a2 + 2);
                          v986 = *(a5 + 2);
                          do
                          {
                            v987 = *v985++;
                            if (v987 == a4)
                            {
                              v988 = 0.0;
                            }

                            else
                            {
                              v988 = 1.0;
                            }

                            *v986++ = v988;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v201 = *(a2 + 2);
                        v202 = *(a5 + 2);
                        do
                        {
                          v203 = *v201++;
                          if (v203 == a4)
                          {
                            v204 = 0.0;
                          }

                          else
                          {
                            v204 = 1.0;
                          }

                          *v202++ = v204;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                  }

                  break;
                case 0:
                  switch(v37)
                  {
                    case 2:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v1083 = *(a2 + 2);
                          v1084 = *(a5 + 2);
                          do
                          {
                            v1085 = *v1083++;
                            *v1084++ = v1085 != *&a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v559 = *(a2 + 2);
                        v560 = *(a5 + 2);
                        do
                        {
                          v561 = *v559++;
                          *v560++ = v561 != *&a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 1:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v993 = *(a2 + 2);
                          v994 = *(a5 + 2);
                          do
                          {
                            v995 = *v993++;
                            *v994++ = *&v995 != a4;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v517 = *(a2 + 2);
                        v518 = *(a5 + 2);
                        do
                        {
                          v519 = *v517++;
                          *v518++ = *&v519 != a4;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                    case 0:
                      if (a6 == 1)
                      {
                        if (v35)
                        {
                          v1097 = *(a2 + 2);
                          v1098 = *(a5 + 2);
                          do
                          {
                            v1099 = *v1097++;
                            if (v1099 == *&a4)
                            {
                              v1100 = 0.0;
                            }

                            else
                            {
                              v1100 = 1.0;
                            }

                            *v1098++ = v1100;
                            --v35;
                          }

                          while (v35);
                        }
                      }

                      else if (!a6 && v35)
                      {
                        v38 = *(a2 + 2);
                        v39 = *(a5 + 2);
                        do
                        {
                          v40 = *v38++;
                          if (v40 == *&a4)
                          {
                            v41 = 0.0;
                          }

                          else
                          {
                            v41 = 1.0;
                          }

                          *v39++ = v41;
                          --v35;
                        }

                        while (v35);
                      }

                      break;
                  }

                  break;
              }
            }

            return a5;
          }
        }

        return 0;
      }

      break;
    case 2:
      a7 = 0;
      if (a2)
      {
        if (a5)
        {
          if ((a5[8] & 1) == 0)
          {
            v7 = *(a2 + 1);
            if (v7 == *(a5 + 1))
            {
              v8 = *a2;
              v9 = *a5;
              if (*a2 == 2)
              {
                switch(a3)
                {
                  case 2:
                    switch(v9)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v971 = *(a2 + 2);
                            v972 = *(a5 + 2);
                            do
                            {
                              v973 = *v971++;
                              *v972++ = v973 < a4;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v511 = *(a2 + 2);
                          v512 = *(a5 + 2);
                          do
                          {
                            v513 = *v511++;
                            *v512++ = v513 < a4;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v837 = *(a2 + 2);
                            v838 = *(a5 + 2);
                            do
                            {
                              v839 = *v837++;
                              *v838++ = a4 > v839;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v433 = *(a2 + 2);
                          v434 = *(a5 + 2);
                          do
                          {
                            v435 = *v433++;
                            *v434++ = a4 > v435;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v1005 = *(a2 + 2);
                            v1006 = *(a5 + 2);
                            do
                            {
                              v1007 = *v1005++;
                              if (a4 <= v1007)
                              {
                                v1008 = 0.0;
                              }

                              else
                              {
                                v1008 = 1.0;
                              }

                              *v1006++ = v1008;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v209 = *(a2 + 2);
                          v210 = *(a5 + 2);
                          do
                          {
                            v211 = *v209++;
                            if (a4 <= v211)
                            {
                              v212 = 0.0;
                            }

                            else
                            {
                              v212 = 1.0;
                            }

                            *v210++ = v212;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v9)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v831 = *(a2 + 2);
                            v832 = *(a5 + 2);
                            do
                            {
                              v833 = *v831++;
                              *v832++ = v833 < a4;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v427 = *(a2 + 2);
                          v428 = *(a5 + 2);
                          do
                          {
                            v429 = *v427++;
                            *v428++ = v429 < a4;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v719 = *(a2 + 2);
                            v720 = *(a5 + 2);
                            do
                            {
                              v721 = *v719++;
                              *v720++ = a4 > v721;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v355 = *(a2 + 2);
                          v356 = *(a5 + 2);
                          do
                          {
                            v357 = *v355++;
                            *v356++ = a4 > v357;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v877 = *(a2 + 2);
                            v878 = *(a5 + 2);
                            do
                            {
                              v879 = *v877++;
                              if (v879 >= a4)
                              {
                                v880 = 0.0;
                              }

                              else
                              {
                                v880 = 1.0;
                              }

                              *v878++ = v880;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v169 = *(a2 + 2);
                          v170 = *(a5 + 2);
                          do
                          {
                            v171 = *v169++;
                            if (v171 >= a4)
                            {
                              v172 = 0.0;
                            }

                            else
                            {
                              v172 = 1.0;
                            }

                            *v170++ = v172;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v9)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v1013 = *(a2 + 2);
                            v1014 = *(a5 + 2);
                            do
                            {
                              v1015 = *v1013++;
                              *v1014++ = v1015 < *&a4;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v529 = *(a2 + 2);
                          v530 = *(a5 + 2);
                          do
                          {
                            v531 = *v529++;
                            *v530++ = v531 < *&a4;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v891 = *(a2 + 2);
                            v892 = *(a5 + 2);
                            do
                            {
                              v893 = *v891++;
                              *v892++ = v893 < *&a4;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v463 = *(a2 + 2);
                          v464 = *(a5 + 2);
                          do
                          {
                            v465 = *v463++;
                            *v464++ = v465 < *&a4;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v1045 = *(a2 + 2);
                            v1046 = *(a5 + 2);
                            do
                            {
                              v1047 = *v1045++;
                              if (*&a4 <= v1047)
                              {
                                v1048 = 0.0;
                              }

                              else
                              {
                                v1048 = 1.0;
                              }

                              *v1046++ = v1048;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v81 = *(a2 + 2);
                          v82 = *(a5 + 2);
                          do
                          {
                            v83 = *v81++;
                            if (*&a4 <= v83)
                            {
                              v84 = 0.0;
                            }

                            else
                            {
                              v84 = 1.0;
                            }

                            *v82++ = v84;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                    }

                    break;
                }
              }

              else if (v8 == 1)
              {
                switch(a3)
                {
                  case 2:
                    switch(v9)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v825 = *(a2 + 2);
                            v826 = *(a5 + 2);
                            do
                            {
                              v827 = *v825;
                              v825 += 8;
                              *v826++ = v827 < a4;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v421 = *(a2 + 2);
                          v422 = *(a5 + 2);
                          do
                          {
                            v423 = *v421;
                            v421 += 8;
                            *v422++ = v423 < a4;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v713 = *(a2 + 2);
                            v714 = *(a5 + 2);
                            do
                            {
                              v715 = *v713++;
                              *v714++ = v715 < a4;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v349 = *(a2 + 2);
                          v350 = *(a5 + 2);
                          do
                          {
                            v351 = *v349++;
                            *v350++ = v351 < a4;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v869 = *(a2 + 2);
                            v870 = *(a5 + 2);
                            do
                            {
                              v871 = *v869++;
                              if (v871 >= a4)
                              {
                                v872 = 0.0;
                              }

                              else
                              {
                                v872 = 1.0;
                              }

                              *v870++ = v872;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v161 = *(a2 + 2);
                          v162 = *(a5 + 2);
                          do
                          {
                            v163 = *v161++;
                            if (v163 >= a4)
                            {
                              v164 = 0.0;
                            }

                            else
                            {
                              v164 = 1.0;
                            }

                            *v162++ = v164;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v9)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v707 = *(a2 + 2);
                            v708 = *(a5 + 2);
                            do
                            {
                              v709 = *v707;
                              v707 += 8;
                              *v708++ = v709 < a4;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v343 = *(a2 + 2);
                          v344 = *(a5 + 2);
                          do
                          {
                            v345 = *v343;
                            v343 += 8;
                            *v344++ = v345 < a4;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v627 = *(a2 + 2);
                            v628 = *(a5 + 2);
                            do
                            {
                              v629 = *v627++;
                              *v628++ = v629 < a4;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v295 = *(a2 + 2);
                          v296 = *(a5 + 2);
                          do
                          {
                            v297 = *v295++;
                            *v296++ = v297 < a4;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v763 = *(a2 + 2);
                            v764 = *(a5 + 2);
                            do
                            {
                              v765 = *v763++;
                              if (v765 >= a4)
                              {
                                v766 = 0.0;
                              }

                              else
                              {
                                v766 = 1.0;
                              }

                              *v764++ = v766;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v137 = *(a2 + 2);
                          v138 = *(a5 + 2);
                          do
                          {
                            v139 = *v137++;
                            if (v139 >= a4)
                            {
                              v140 = 0.0;
                            }

                            else
                            {
                              v140 = 1.0;
                            }

                            *v138++ = v140;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v9)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v885 = *(a2 + 2);
                            v886 = *(a5 + 2);
                            do
                            {
                              v887 = *v885;
                              v885 += 8;
                              *v886++ = v887 < *&a4;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v457 = *(a2 + 2);
                          v458 = *(a5 + 2);
                          do
                          {
                            v459 = *v457;
                            v457 += 8;
                            *v458++ = v459 < *&a4;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v771 = *(a2 + 2);
                            v772 = *(a5 + 2);
                            do
                            {
                              v773 = *v771++;
                              *v772++ = v773 < *&a4;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v391 = *(a2 + 2);
                          v392 = *(a5 + 2);
                          do
                          {
                            v393 = *v391++;
                            *v392++ = v393 < *&a4;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v949 = *(a2 + 2);
                            v950 = *(a5 + 2);
                            do
                            {
                              v951 = *v949++;
                              if (*&a4 <= v951)
                              {
                                v952 = 0.0;
                              }

                              else
                              {
                                v952 = 1.0;
                              }

                              *v950++ = v952;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v65 = *(a2 + 2);
                          v66 = *(a5 + 2);
                          do
                          {
                            v67 = *v65++;
                            if (*&a4 <= v67)
                            {
                              v68 = 0.0;
                            }

                            else
                            {
                              v68 = 1.0;
                            }

                            *v66++ = v68;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                    }

                    break;
                }
              }

              else if (!v8)
              {
                switch(a3)
                {
                  case 2:
                    switch(v9)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v1019 = *(a2 + 2);
                            v1020 = *(a5 + 2);
                            do
                            {
                              v1021 = *v1019++;
                              *v1020++ = v1021 < a4;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v535 = *(a2 + 2);
                          v536 = *(a5 + 2);
                          do
                          {
                            v537 = *v535++;
                            *v536++ = v537 < a4;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v903 = *(a2 + 2);
                            v904 = *(a5 + 2);
                            do
                            {
                              v905 = *v903++;
                              *v904++ = a4 > v905;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v475 = *(a2 + 2);
                          v476 = *(a5 + 2);
                          do
                          {
                            v477 = *v475++;
                            *v476++ = a4 > v477;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v1053 = *(a2 + 2);
                            v1054 = *(a5 + 2);
                            do
                            {
                              v1055 = *v1053++;
                              if (v1055 >= a4)
                              {
                                v1056 = 0.0;
                              }

                              else
                              {
                                v1056 = 1.0;
                              }

                              *v1054++ = v1056;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v225 = *(a2 + 2);
                          v226 = *(a5 + 2);
                          do
                          {
                            v227 = *v225++;
                            if (v227 >= a4)
                            {
                              v228 = 0.0;
                            }

                            else
                            {
                              v228 = 1.0;
                            }

                            *v226++ = v228;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                    }

                    break;
                  case 1:
                    switch(v9)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v897 = *(a2 + 2);
                            v898 = *(a5 + 2);
                            do
                            {
                              v899 = *v897++;
                              *v898++ = v899 < a4;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v469 = *(a2 + 2);
                          v470 = *(a5 + 2);
                          do
                          {
                            v471 = *v469++;
                            *v470++ = v471 < a4;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v777 = *(a2 + 2);
                            v778 = *(a5 + 2);
                            do
                            {
                              v779 = *v777++;
                              *v778++ = a4 > v779;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v397 = *(a2 + 2);
                          v398 = *(a5 + 2);
                          do
                          {
                            v399 = *v397++;
                            *v398++ = a4 > v399;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v957 = *(a2 + 2);
                            v958 = *(a5 + 2);
                            do
                            {
                              v959 = *v957++;
                              if (v959 >= a4)
                              {
                                v960 = 0.0;
                              }

                              else
                              {
                                v960 = 1.0;
                              }

                              *v958++ = v960;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v193 = *(a2 + 2);
                          v194 = *(a5 + 2);
                          do
                          {
                            v195 = *v193++;
                            if (v195 >= a4)
                            {
                              v196 = 0.0;
                            }

                            else
                            {
                              v196 = 1.0;
                            }

                            *v194++ = v196;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                    }

                    break;
                  case 0:
                    switch(v9)
                    {
                      case 2:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v1061 = *(a2 + 2);
                            v1062 = *(a5 + 2);
                            do
                            {
                              v1063 = *v1061++;
                              *v1062++ = v1063 < *&a4;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v553 = *(a2 + 2);
                          v554 = *(a5 + 2);
                          do
                          {
                            v555 = *v553++;
                            *v554++ = v555 < *&a4;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 1:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v965 = *(a2 + 2);
                            v966 = *(a5 + 2);
                            do
                            {
                              v967 = *v965++;
                              *v966++ = v967 < *&a4;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v505 = *(a2 + 2);
                          v506 = *(a5 + 2);
                          do
                          {
                            v507 = *v505++;
                            *v506++ = v507 < *&a4;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                      case 0:
                        if (a6 == 1)
                        {
                          if (v7)
                          {
                            v1089 = *(a2 + 2);
                            v1090 = *(a5 + 2);
                            do
                            {
                              v1091 = *v1089++;
                              if (v1091 >= *&a4)
                              {
                                v1092 = 0.0;
                              }

                              else
                              {
                                v1092 = 1.0;
                              }

                              *v1090++ = v1092;
                              --v7;
                            }

                            while (v7);
                          }
                        }

                        else if (!a6 && v7)
                        {
                          v10 = *(a2 + 2);
                          v11 = *(a5 + 2);
                          do
                          {
                            v12 = *v10++;
                            if (v12 >= *&a4)
                            {
                              v13 = 0.0;
                            }

                            else
                            {
                              v13 = 1.0;
                            }

                            *v11++ = v13;
                            --v7;
                          }

                          while (v7);
                        }

                        break;
                    }

                    break;
                }
              }

              return a5;
            }
          }

          return 0;
        }
      }

      break;
  }

  return a7;
}