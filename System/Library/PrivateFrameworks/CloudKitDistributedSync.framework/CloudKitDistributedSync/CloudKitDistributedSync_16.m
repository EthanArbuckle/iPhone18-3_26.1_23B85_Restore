_BYTE *sub_2439622F0(uint64_t a1, uint64_t a2, int a3, unsigned __int8 a4, _BYTE *a5)
{
  v147[0] = a5;
  v147[1] = a4;
  if (a3 >= 1)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      v10 = (a2 + 24 * v8);
      v11 = (a1 + *v10);
      switch(v10[3])
      {
        case 0u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v41 = v10[1];
            v42 = v147[0];
            if (v41 < 0x80)
            {
              goto LABEL_239;
            }

            do
            {
              *v42++ = v41 | 0x80;
              v43 = v41 >> 7;
              v100 = v41 >> 14;
              v41 >>= 7;
            }

            while (v100);
            goto LABEL_240;
          }

          break;
        case 1u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v16 = v10[1];
            v17 = v147[0];
            if (v16 < 0x80)
            {
              goto LABEL_214;
            }

            do
            {
              *v17++ = v16 | 0x80;
              v18 = v16 >> 7;
              v101 = v16 >> 14;
              v16 >>= 7;
            }

            while (v101);
            goto LABEL_215;
          }

          break;
        case 2u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v72 = v10[1];
            v73 = v147[0];
            if (v72 < 0x80)
            {
              v74 = v10[1];
            }

            else
            {
              do
              {
                *v73++ = v72 | 0x80;
                v74 = v72 >> 7;
                v75 = v72 >> 14;
                v72 >>= 7;
              }

              while (v75);
            }

            *v73 = v74;
            v122 = v73 + 1;
            v123 = *v11;
            if (*v11 >= 0x80uLL)
            {
              do
              {
                *v122++ = LOBYTE(v123) | 0x80;
                v124 = *&v123 >> 7;
                v129 = *&v123 >> 14;
                *&v123 >>= 7;
              }

              while (v129);
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          break;
        case 3u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v78 = v10[1];
            v79 = v147[0];
            if (v78 < 0x80)
            {
              v80 = v10[1];
            }

            else
            {
              do
              {
                *v79++ = v78 | 0x80;
                v80 = v78 >> 7;
                v81 = v78 >> 14;
                v78 >>= 7;
              }

              while (v81);
            }

            *v79 = v80;
            v122 = v79 + 1;
            v123 = *v11;
            if (*v11 >= 0x80uLL)
            {
              do
              {
                *v122++ = LOBYTE(v123) | 0x80;
                v124 = *&v123 >> 7;
                v130 = *&v123 >> 14;
                *&v123 >>= 7;
              }

              while (v130);
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          break;
        case 4u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v90 = v10[1];
            v91 = v147[0];
            if (v90 < 0x80)
            {
              v92 = v10[1];
            }

            else
            {
              do
              {
                *v91++ = v90 | 0x80;
                v92 = v90 >> 7;
                v93 = v90 >> 14;
                v90 >>= 7;
              }

              while (v93);
            }

            *v91 = v92;
            v122 = v91 + 1;
            *&v123 = *v11;
            if (LODWORD(v123) >= 0x80)
            {
              do
              {
                *v122++ = LOBYTE(v123) | 0x80;
                v124 = *&v123 >> 7;
                v136 = *&v123 >> 14;
                *&v123 >>= 7;
              }

              while (v136);
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          break;
        case 5u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v41 = v10[1];
            v42 = v147[0];
            if (v41 < 0x80)
            {
              goto LABEL_239;
            }

            do
            {
              *v42++ = v41 | 0x80;
              v43 = v41 >> 7;
              v76 = v41 >> 14;
              v41 >>= 7;
            }

            while (v76);
            goto LABEL_240;
          }

          break;
        case 6u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v16 = v10[1];
            v17 = v147[0];
            if (v16 < 0x80)
            {
              goto LABEL_214;
            }

            do
            {
              *v17++ = v16 | 0x80;
              v18 = v16 >> 7;
              v77 = v16 >> 14;
              v16 >>= 7;
            }

            while (v77);
            goto LABEL_215;
          }

          break;
        case 7u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v25 = v10[1];
            v26 = v147[0];
            if (v25 < 0x80)
            {
              goto LABEL_242;
            }

            do
            {
              *v26++ = v25 | 0x80;
              v27 = v25 >> 7;
              v70 = v25 >> 14;
              v25 >>= 7;
            }

            while (v70);
            goto LABEL_243;
          }

          break;
        case 8u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v37 = v10[1];
            v38 = v147[0];
            if (v37 < 0x80)
            {
              goto LABEL_223;
            }

            do
            {
              *v38++ = v37 | 0x80;
              v39 = v37 >> 7;
              v71 = v37 >> 14;
              v37 >>= 7;
            }

            while (v71);
            goto LABEL_224;
          }

          break;
        case 9u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_108;
          }

          break;
        case 0xAu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_228;
          }

          break;
        case 0xBu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v37 = v10[1];
            v38 = v147[0];
            if (v37 < 0x80)
            {
              goto LABEL_223;
            }

            do
            {
              *v38++ = v37 | 0x80;
              v39 = v37 >> 7;
              v99 = v37 >> 14;
              v37 >>= 7;
            }

            while (v99);
            goto LABEL_224;
          }

          break;
        case 0xCu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v94 = v10[1];
            v95 = v147[0];
            if (v94 < 0x80)
            {
              v96 = v10[1];
            }

            else
            {
              do
              {
                *v95++ = v94 | 0x80;
                v96 = v94 >> 7;
                v97 = v94 >> 14;
                v94 >>= 7;
              }

              while (v97);
            }

            *v95 = v96;
            v131 = v95 + 1;
            v132 = *v11;
            if (*v11 >= 0x80)
            {
              do
              {
                *v131++ = v132 | 0x80;
                v133 = v132 >> 7;
                v137 = v132 >> 14;
                v132 >>= 7;
              }

              while (v137);
              goto LABEL_300;
            }

            goto LABEL_299;
          }

          break;
        case 0xDu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v61 = v10[1];
            v62 = v147[0];
            if (v61 < 0x80)
            {
              v63 = v10[1];
            }

            else
            {
              do
              {
                *v62++ = v61 | 0x80;
                v63 = v61 >> 7;
                v64 = v61 >> 14;
                v61 >>= 7;
              }

              while (v64);
            }

            *v62 = v63;
            v122 = v62 + 1;
            *&v123 = *v11;
            if (LODWORD(v123) >= 0x80)
            {
              do
              {
                *v122++ = LOBYTE(v123) | 0x80;
                v124 = *&v123 >> 7;
                v127 = *&v123 >> 14;
                *&v123 >>= 7;
              }

              while (v127);
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          break;
        case 0xEu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v16 = v10[1];
            v17 = v147[0];
            if (v16 < 0x80)
            {
              goto LABEL_214;
            }

            do
            {
              *v17++ = v16 | 0x80;
              v18 = v16 >> 7;
              v108 = v16 >> 14;
              v16 >>= 7;
            }

            while (v108);
            goto LABEL_215;
          }

          break;
        case 0xFu:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v41 = v10[1];
            v42 = v147[0];
            if (v41 < 0x80)
            {
              goto LABEL_239;
            }

            do
            {
              *v42++ = v41 | 0x80;
              v43 = v41 >> 7;
              v109 = v41 >> 14;
              v41 >>= 7;
            }

            while (v109);
            goto LABEL_240;
          }

          break;
        case 0x10u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_226;
          }

          break;
        case 0x11u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            goto LABEL_203;
          }

          break;
        case 0x14u:
          if ((*(a1 + ((v10[2] >> 3) & 0x1FFFFFFC)) >> v10[2]))
          {
            v33 = v10[1];
            v34 = v147[0];
            if (v33 < 0x80)
            {
              goto LABEL_244;
            }

            do
            {
              *v34++ = v33 | 0x80;
              v35 = v33 >> 7;
              v51 = v33 >> 14;
              v33 >>= 7;
            }

            while (v51);
            goto LABEL_245;
          }

          break;
        case 0x15u:
          if (*v11 != 0.0)
          {
            v41 = v10[1];
            v42 = v147[0];
            if (v41 < 0x80)
            {
              goto LABEL_239;
            }

            do
            {
              *v42++ = v41 | 0x80;
              v43 = v41 >> 7;
              v98 = v41 >> 14;
              v41 >>= 7;
            }

            while (v98);
            goto LABEL_240;
          }

          break;
        case 0x16u:
          if (*v11 != 0.0)
          {
            v16 = v10[1];
            v17 = v147[0];
            if (v16 < 0x80)
            {
              goto LABEL_214;
            }

            do
            {
              *v17++ = v16 | 0x80;
              v18 = v16 >> 7;
              v115 = v16 >> 14;
              v16 >>= 7;
            }

            while (v115);
            goto LABEL_215;
          }

          break;
        case 0x17u:
          if (*v11)
          {
            v57 = v10[1];
            v58 = v147[0];
            if (v57 < 0x80)
            {
              v59 = v10[1];
            }

            else
            {
              do
              {
                *v58++ = v57 | 0x80;
                v59 = v57 >> 7;
                v60 = v57 >> 14;
                v57 >>= 7;
              }

              while (v60);
            }

            *v58 = v59;
            v122 = v58 + 1;
            v123 = *v11;
            if (*v11 >= 0x80uLL)
            {
              do
              {
                *v122++ = LOBYTE(v123) | 0x80;
                v124 = *&v123 >> 7;
                v126 = *&v123 >> 14;
                *&v123 >>= 7;
              }

              while (v126);
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          break;
        case 0x18u:
          if (*v11)
          {
            v86 = v10[1];
            v87 = v147[0];
            if (v86 < 0x80)
            {
              v88 = v10[1];
            }

            else
            {
              do
              {
                *v87++ = v86 | 0x80;
                v88 = v86 >> 7;
                v89 = v86 >> 14;
                v86 >>= 7;
              }

              while (v89);
            }

            *v87 = v88;
            v122 = v87 + 1;
            v123 = *v11;
            if (*v11 >= 0x80uLL)
            {
              do
              {
                *v122++ = LOBYTE(v123) | 0x80;
                v124 = *&v123 >> 7;
                v135 = *&v123 >> 14;
                *&v123 >>= 7;
              }

              while (v135);
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          break;
        case 0x19u:
          if (*v11)
          {
            v66 = v10[1];
            v67 = v147[0];
            if (v66 < 0x80)
            {
              v68 = v10[1];
            }

            else
            {
              do
              {
                *v67++ = v66 | 0x80;
                v68 = v66 >> 7;
                v69 = v66 >> 14;
                v66 >>= 7;
              }

              while (v69);
            }

            *v67 = v68;
            v122 = v67 + 1;
            *&v123 = *v11;
            if (LODWORD(v123) >= 0x80)
            {
              do
              {
                *v122++ = LOBYTE(v123) | 0x80;
                v124 = *&v123 >> 7;
                v128 = *&v123 >> 14;
                *&v123 >>= 7;
              }

              while (v128);
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          break;
        case 0x1Au:
          if (*v11)
          {
            v41 = v10[1];
            v42 = v147[0];
            if (v41 < 0x80)
            {
              goto LABEL_239;
            }

            do
            {
              *v42++ = v41 | 0x80;
              v43 = v41 >> 7;
              v103 = v41 >> 14;
              v41 >>= 7;
            }

            while (v103);
            goto LABEL_240;
          }

          break;
        case 0x1Bu:
          if (*v11)
          {
            v16 = v10[1];
            v17 = v147[0];
            if (v16 < 0x80)
            {
              goto LABEL_214;
            }

            do
            {
              *v17++ = v16 | 0x80;
              v18 = v16 >> 7;
              v65 = v16 >> 14;
              v16 >>= 7;
            }

            while (v65);
            goto LABEL_215;
          }

          break;
        case 0x1Cu:
          if (*v11)
          {
            v25 = v10[1];
            v26 = v147[0];
            if (v25 < 0x80)
            {
              goto LABEL_242;
            }

            do
            {
              *v26++ = v25 | 0x80;
              v27 = v25 >> 7;
              v49 = v25 >> 14;
              v25 >>= 7;
            }

            while (v49);
            goto LABEL_243;
          }

          break;
        case 0x1Du:
          v117 = *(*v11 + 23);
          if (v117 < 0)
          {
            v117 = *(*v11 + 8);
          }

          if (v117)
          {
            v37 = v10[1];
            v38 = v147[0];
            if (v37 < 0x80)
            {
              goto LABEL_223;
            }

            do
            {
              *v38++ = v37 | 0x80;
              v39 = v37 >> 7;
              v118 = v37 >> 14;
              v37 >>= 7;
            }

            while (v118);
            goto LABEL_224;
          }

          break;
        case 0x1Eu:
          if (*v11)
          {
            goto LABEL_108;
          }

          break;
        case 0x1Fu:
          if (*v11)
          {
            goto LABEL_228;
          }

          break;
        case 0x20u:
          v106 = *(*v11 + 23);
          if (v106 < 0)
          {
            v106 = *(*v11 + 8);
          }

          if (v106)
          {
            v37 = v10[1];
            v38 = v147[0];
            if (v37 < 0x80)
            {
              goto LABEL_223;
            }

            do
            {
              *v38++ = v37 | 0x80;
              v39 = v37 >> 7;
              v107 = v37 >> 14;
              v37 >>= 7;
            }

            while (v107);
            goto LABEL_224;
          }

          break;
        case 0x21u:
          if (*v11)
          {
            v82 = v10[1];
            v83 = v147[0];
            if (v82 < 0x80)
            {
              v84 = v10[1];
            }

            else
            {
              do
              {
                *v83++ = v82 | 0x80;
                v84 = v82 >> 7;
                v85 = v82 >> 14;
                v82 >>= 7;
              }

              while (v85);
            }

            *v83 = v84;
            v131 = v83 + 1;
            v132 = *v11;
            if (*v11 >= 0x80)
            {
              do
              {
                *v131++ = v132 | 0x80;
                v133 = v132 >> 7;
                v134 = v132 >> 14;
                v132 >>= 7;
              }

              while (v134);
              goto LABEL_300;
            }

            goto LABEL_299;
          }

          break;
        case 0x22u:
          if (*v11)
          {
            v45 = v10[1];
            v46 = v147[0];
            if (v45 < 0x80)
            {
              v47 = v10[1];
            }

            else
            {
              do
              {
                *v46++ = v45 | 0x80;
                v47 = v45 >> 7;
                v48 = v45 >> 14;
                v45 >>= 7;
              }

              while (v48);
            }

            *v46 = v47;
            v122 = v46 + 1;
            *&v123 = *v11;
            if (LODWORD(v123) >= 0x80)
            {
              do
              {
                *v122++ = LOBYTE(v123) | 0x80;
                v124 = *&v123 >> 7;
                v125 = *&v123 >> 14;
                *&v123 >>= 7;
              }

              while (v125);
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          break;
        case 0x23u:
          if (*v11)
          {
            v16 = v10[1];
            v17 = v147[0];
            if (v16 < 0x80)
            {
              goto LABEL_214;
            }

            do
            {
              *v17++ = v16 | 0x80;
              v18 = v16 >> 7;
              v56 = v16 >> 14;
              v16 >>= 7;
            }

            while (v56);
            goto LABEL_215;
          }

          break;
        case 0x24u:
          if (*v11)
          {
            v41 = v10[1];
            v42 = v147[0];
            if (v41 < 0x80)
            {
              goto LABEL_239;
            }

            do
            {
              *v42++ = v41 | 0x80;
              v43 = v41 >> 7;
              v114 = v41 >> 14;
              v41 >>= 7;
            }

            while (v114);
            goto LABEL_240;
          }

          break;
        case 0x25u:
          if (*v11)
          {
            goto LABEL_226;
          }

          break;
        case 0x26u:
          if (*v11)
          {
            goto LABEL_203;
          }

          break;
        case 0x29u:
          v104 = *(v11 + 23);
          if (v104 < 0)
          {
            v104 = *(v11 + 1);
          }

          if (v104)
          {
            v33 = v10[1];
            v34 = v147[0];
            if (v33 < 0x80)
            {
              goto LABEL_244;
            }

            do
            {
              *v34++ = v33 | 0x80;
              v35 = v33 >> 7;
              v105 = v33 >> 14;
              v33 >>= 7;
            }

            while (v105);
            goto LABEL_245;
          }

          break;
        case 0x2Au:
        case 0x2Fu:
        case 0x39u:
          sub_24396359C(v11, a2 + 24 * v8, v147);
          break;
        case 0x2Bu:
        case 0x30u:
        case 0x38u:
          sub_2439636C8(v11, a2 + 24 * v8, v147);
          break;
        case 0x2Cu:
        case 0x2Du:
          sub_2439637F4(v11, a2 + 24 * v8, v147);
          break;
        case 0x2Eu:
        case 0x37u:
          sub_24396395C(v11, a2 + 24 * v8, v147);
          break;
        case 0x31u:
          sub_243963AC4(v11, a2 + 24 * v8, v147);
          break;
        case 0x32u:
        case 0x35u:
        case 0x3Eu:
          sub_243963BF0(v11, a2 + 24 * v8, v147);
          break;
        case 0x33u:
          sub_243963DDC(v11, a2 + 24 * v8, v147);
          break;
        case 0x34u:
          sub_243963F08(v11, a2 + 24 * v8, v147);
          break;
        case 0x36u:
          sub_243963FB4(v11, a2 + 24 * v8, v147);
          break;
        case 0x3Au:
          sub_243964190(v11, a2 + 24 * v8, v147);
          break;
        case 0x3Bu:
          sub_24396437C(v11, a2 + 24 * v8, v147);
          break;
        case 0x3Fu:
        case 0x44u:
        case 0x4Eu:
          sub_243963614(v11, a2 + 24 * v8, v147);
          break;
        case 0x40u:
        case 0x45u:
        case 0x4Du:
          sub_243963740(v11, a2 + 24 * v8, v147);
          break;
        case 0x41u:
        case 0x42u:
          sub_24396388C(v11, a2 + 24 * v8, v147);
          break;
        case 0x43u:
        case 0x4Cu:
          sub_2439639F4(v11, a2 + 24 * v8, v147);
          break;
        case 0x46u:
          sub_243963B3C(v11, a2 + 24 * v8, v147);
          break;
        case 0x47u:
        case 0x48u:
        case 0x49u:
        case 0x4Au:
        case 0x53u:
          sub_243963C9C(v11, a2 + 24 * v8);
          break;
        case 0x4Bu:
          sub_24396404C(v11, a2 + 24 * v8, v147);
          break;
        case 0x4Fu:
          sub_243964230(v11, a2 + 24 * v8, v147);
          break;
        case 0x50u:
          sub_24396441C(v11, a2 + 24 * v8, v147);
          break;
        case 0x54u:
          v41 = v10[1];
          if (*(a1 + v10[2]) == v41 >> 3)
          {
            v42 = v147[0];
            if (v41 < 0x80)
            {
              goto LABEL_239;
            }

            do
            {
              *v42++ = v41 | 0x80;
              v43 = v41 >> 7;
              v120 = v41 >> 14;
              v41 >>= 7;
            }

            while (v120);
            goto LABEL_240;
          }

          break;
        case 0x55u:
          v16 = v10[1];
          if (*(a1 + v10[2]) == v16 >> 3)
          {
            v17 = v147[0];
            if (v16 < 0x80)
            {
              goto LABEL_214;
            }

            do
            {
              *v17++ = v16 | 0x80;
              v18 = v16 >> 7;
              v24 = v16 >> 14;
              v16 >>= 7;
            }

            while (v24);
            goto LABEL_215;
          }

          break;
        case 0x56u:
          v52 = v10[1];
          if (*(a1 + v10[2]) == v52 >> 3)
          {
            v53 = v147[0];
            if (v52 < 0x80)
            {
              v54 = v10[1];
            }

            else
            {
              do
              {
                *v53++ = v52 | 0x80;
                v54 = v52 >> 7;
                v55 = v52 >> 14;
                v52 >>= 7;
              }

              while (v55);
            }

            *v53 = v54;
            v122 = v53 + 1;
            v123 = *v11;
            if (*v11 >= 0x80uLL)
            {
              do
              {
                *v122++ = LOBYTE(v123) | 0x80;
                v124 = *&v123 >> 7;
                v141 = *&v123 >> 14;
                *&v123 >>= 7;
              }

              while (v141);
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          break;
        case 0x57u:
          v12 = v10[1];
          if (*(a1 + v10[2]) == v12 >> 3)
          {
            v13 = v147[0];
            if (v12 < 0x80)
            {
              v14 = v10[1];
            }

            else
            {
              do
              {
                *v13++ = v12 | 0x80;
                v14 = v12 >> 7;
                v15 = v12 >> 14;
                v12 >>= 7;
              }

              while (v15);
            }

            *v13 = v14;
            v122 = v13 + 1;
            v123 = *v11;
            if (*v11 >= 0x80uLL)
            {
              do
              {
                *v122++ = LOBYTE(v123) | 0x80;
                v124 = *&v123 >> 7;
                v138 = *&v123 >> 14;
                *&v123 >>= 7;
              }

              while (v138);
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          break;
        case 0x58u:
          v20 = v10[1];
          if (*(a1 + v10[2]) == v20 >> 3)
          {
            v21 = v147[0];
            if (v20 < 0x80)
            {
              v22 = v10[1];
            }

            else
            {
              do
              {
                *v21++ = v20 | 0x80;
                v22 = v20 >> 7;
                v23 = v20 >> 14;
                v20 >>= 7;
              }

              while (v23);
            }

            *v21 = v22;
            v122 = v21 + 1;
            *&v123 = *v11;
            if (LODWORD(v123) >= 0x80)
            {
              do
              {
                *v122++ = LOBYTE(v123) | 0x80;
                v124 = *&v123 >> 7;
                v139 = *&v123 >> 14;
                *&v123 >>= 7;
              }

              while (v139);
              goto LABEL_310;
            }

            goto LABEL_309;
          }

          break;
        case 0x59u:
          v41 = v10[1];
          if (*(a1 + v10[2]) == v41 >> 3)
          {
            v42 = v147[0];
            if (v41 < 0x80)
            {
              goto LABEL_239;
            }

            do
            {
              *v42++ = v41 | 0x80;
              v43 = v41 >> 7;
              v44 = v41 >> 14;
              v41 >>= 7;
            }

            while (v44);
            goto LABEL_240;
          }

          break;
        case 0x5Au:
          v16 = v10[1];
          if (*(a1 + v10[2]) == v16 >> 3)
          {
            v17 = v147[0];
            if (v16 < 0x80)
            {
              goto LABEL_214;
            }

            do
            {
              *v17++ = v16 | 0x80;
              v18 = v16 >> 7;
              v102 = v16 >> 14;
              v16 >>= 7;
            }

            while (v102);
            goto LABEL_215;
          }

          break;
        case 0x5Bu:
          v25 = v10[1];
          if (*(a1 + v10[2]) == v25 >> 3)
          {
            v26 = v147[0];
            if (v25 < 0x80)
            {
LABEL_242:
              LOBYTE(v27) = v25;
            }

            else
            {
              do
              {
                *v26++ = v25 | 0x80;
                v27 = v25 >> 7;
                v28 = v25 >> 14;
                v25 >>= 7;
              }

              while (v28);
            }

LABEL_243:
            *v26 = v27;
            v26[1] = *v11;
            v116 = v26 + 2;
            goto LABEL_311;
          }

          break;
        case 0x5Cu:
          v37 = v10[1];
          if (*(a1 + v10[2]) == v37 >> 3)
          {
            v38 = v147[0];
            if (v37 < 0x80)
            {
              goto LABEL_223;
            }

            do
            {
              *v38++ = v37 | 0x80;
              v39 = v37 >> 7;
              v40 = v37 >> 14;
              v37 >>= 7;
            }

            while (v40);
            goto LABEL_224;
          }

          break;
        case 0x5Du:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_108:
            sub_243963D34(v11, a2 + 24 * v8, v147);
          }

          break;
        case 0x5Eu:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_228:
            sub_243963EC4(v11, a2 + 24 * v8, v147);
          }

          break;
        case 0x5Fu:
          v37 = v10[1];
          if (*(a1 + v10[2]) == v37 >> 3)
          {
            v38 = v147[0];
            if (v37 < 0x80)
            {
LABEL_223:
              LOBYTE(v39) = v37;
            }

            else
            {
              do
              {
                *v38++ = v37 | 0x80;
                v39 = v37 >> 7;
                v50 = v37 >> 14;
                v37 >>= 7;
              }

              while (v50);
            }

LABEL_224:
            *v38 = v39;
            v119 = v38 + 1;
            v147[0] = v119;
            v11 = *v11;
            goto LABEL_246;
          }

          break;
        case 0x60u:
          v29 = v10[1];
          if (*(a1 + v10[2]) == v29 >> 3)
          {
            v30 = v147[0];
            if (v29 < 0x80)
            {
              v31 = v10[1];
            }

            else
            {
              do
              {
                *v30++ = v29 | 0x80;
                v31 = v29 >> 7;
                v32 = v29 >> 14;
                v29 >>= 7;
              }

              while (v32);
            }

            *v30 = v31;
            v131 = v30 + 1;
            v132 = *v11;
            if (*v11 < 0x80)
            {
LABEL_299:
              LOBYTE(v133) = v132;
            }

            else
            {
              do
              {
                *v131++ = v132 | 0x80;
                v133 = v132 >> 7;
                v140 = v132 >> 14;
                v132 >>= 7;
              }

              while (v140);
            }

LABEL_300:
            *v131 = v133;
            v116 = v131 + 1;
            goto LABEL_311;
          }

          break;
        case 0x61u:
          v110 = v10[1];
          if (*(a1 + v10[2]) == v110 >> 3)
          {
            v111 = v147[0];
            if (v110 < 0x80)
            {
              v112 = v10[1];
            }

            else
            {
              do
              {
                *v111++ = v110 | 0x80;
                v112 = v110 >> 7;
                v113 = v110 >> 14;
                v110 >>= 7;
              }

              while (v113);
            }

            *v111 = v112;
            v122 = v111 + 1;
            *&v123 = *v11;
            if (LODWORD(v123) < 0x80)
            {
LABEL_309:
              LOBYTE(v124) = LOBYTE(v123);
            }

            else
            {
              do
              {
                *v122++ = LOBYTE(v123) | 0x80;
                v124 = *&v123 >> 7;
                v142 = *&v123 >> 14;
                *&v123 >>= 7;
              }

              while (v142);
            }

LABEL_310:
            *v122 = v124;
            v116 = v122 + 1;
            goto LABEL_311;
          }

          break;
        case 0x62u:
          v16 = v10[1];
          if (*(a1 + v10[2]) == v16 >> 3)
          {
            v17 = v147[0];
            if (v16 < 0x80)
            {
LABEL_214:
              LOBYTE(v18) = v16;
            }

            else
            {
              do
              {
                *v17++ = v16 | 0x80;
                v18 = v16 >> 7;
                v19 = v16 >> 14;
                v16 >>= 7;
              }

              while (v19);
            }

LABEL_215:
            *v17 = v18;
            *(v17 + 1) = *v11;
            v116 = v17 + 5;
            goto LABEL_311;
          }

          break;
        case 0x63u:
          v41 = v10[1];
          if (*(a1 + v10[2]) == v41 >> 3)
          {
            v42 = v147[0];
            if (v41 < 0x80)
            {
LABEL_239:
              LOBYTE(v43) = v41;
            }

            else
            {
              do
              {
                *v42++ = v41 | 0x80;
                v43 = v41 >> 7;
                v121 = v41 >> 14;
                v41 >>= 7;
              }

              while (v121);
            }

LABEL_240:
            *v42 = v43;
            *(v42 + 1) = *v11;
            v116 = v42 + 9;
LABEL_311:
            v147[0] = v116;
          }

          break;
        case 0x64u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_226:
            sub_24396411C(v11, a2 + 24 * v8, v147);
          }

          break;
        case 0x65u:
          if (*(a1 + v10[2]) == v10[1] >> 3)
          {
LABEL_203:
            sub_243964308(v11, a2 + 24 * v8, v147);
          }

          break;
        case 0x68u:
          v33 = v10[1];
          if (*(a1 + v10[2]) == v33 >> 3)
          {
            v11 = *v11;
            v34 = v147[0];
            if (v33 < 0x80)
            {
LABEL_244:
              LOBYTE(v35) = v33;
            }

            else
            {
              do
              {
                *v34++ = v33 | 0x80;
                v35 = v33 >> 7;
                v36 = v33 >> 14;
                v33 >>= 7;
              }

              while (v36);
            }

LABEL_245:
            *v34 = v35;
            v119 = v34 + 1;
            v147[0] = v119;
LABEL_246:
            v147[0] = sub_243965C54(v11, v119);
          }

          break;
        case 0x69u:
          sub_243965D58(v146, v147[0], 0x7FFFFFFF, -1);
          sub_243965790(v144, v146);
          v145 = a4;
          (*(v10 + 2))(a1, *v10, v10[1], v10[2], v144);
          v147[0] = &v147[0][v144[5] - v144[4]];
          sub_243965918(v144);
          break;
        default:
          sub_243963518(v10[3]);
          break;
      }

      ++v8;
    }

    while (v8 != v9);
    return v147[0];
  }

  return a5;
}

uint64_t sub_243963518(int a1)
{
  sub_2439675B4(v6, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/generated_message_util.cc", 571);
  v2 = sub_2439675CC(v6, "Not implemented field number ");
  v3 = sub_2439678DC(v2, a1);
  sub_243967708(&v5, &v3->__r_.__value_.__l.__data_);
  return sub_243967710(v6);
}

void sub_243963584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

int *sub_24396359C(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v3 = 0;
    v4 = *a3;
    do
    {
      v5 = *(a2 + 4);
      if (v5 < 0x80)
      {
        v6 = *(a2 + 4);
      }

      else
      {
        do
        {
          *v4++ = v5 | 0x80;
          v6 = v5 >> 7;
          v7 = v5 >> 14;
          v5 >>= 7;
        }

        while (v7);
      }

      *v4 = v6;
      *a3 = v4 + 1;
      *(v4 + 1) = *(*(result + 1) + 8 * v3 + 8);
      v4 += 9;
      *a3 = v4;
      ++v3;
    }

    while (v3 < *result);
  }

  return result;
}

int *sub_243963614(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v3 = *(a2 + 4);
    v4 = *a3;
    if (v3 < 0x80)
    {
      v5 = *(a2 + 4);
    }

    else
    {
      do
      {
        *v4++ = v3 | 0x80;
        v5 = v3 >> 7;
        v6 = v3 >> 14;
        v3 >>= 7;
      }

      while (v6);
    }

    *v4 = v5;
    v7 = v4 + 1;
    v8 = result[4];
    if (v8 < 0x80)
    {
      v9 = result[4];
    }

    else
    {
      do
      {
        *v7++ = v8 | 0x80;
        v9 = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }

    *v7 = v9;
    *a3 = v7 + 1;
    if (*result >= 1)
    {
      v11 = v7 + 9;
      v12 = 1;
      do
      {
        *(v11 - 1) = *(*(result + 1) + 8 * v12);
        *a3 = v11;
        v11 += 8;
      }

      while (v12++ < *result);
    }
  }

  return result;
}

int *sub_2439636C8(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v3 = 0;
    v4 = *a3;
    do
    {
      v5 = *(a2 + 4);
      if (v5 < 0x80)
      {
        v6 = *(a2 + 4);
      }

      else
      {
        do
        {
          *v4++ = v5 | 0x80;
          v6 = v5 >> 7;
          v7 = v5 >> 14;
          v5 >>= 7;
        }

        while (v7);
      }

      *v4 = v6;
      *a3 = v4 + 1;
      *(v4 + 1) = *(*(result + 1) + 4 * v3 + 8);
      v4 += 5;
      *a3 = v4;
      ++v3;
    }

    while (v3 < *result);
  }

  return result;
}

int *sub_243963740(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v3 = *(a2 + 4);
    v4 = *a3;
    if (v3 < 0x80)
    {
      v5 = *(a2 + 4);
    }

    else
    {
      do
      {
        *v4++ = v3 | 0x80;
        v5 = v3 >> 7;
        v6 = v3 >> 14;
        v3 >>= 7;
      }

      while (v6);
    }

    *v4 = v5;
    v7 = v4 + 1;
    v8 = result[4];
    if (v8 < 0x80)
    {
      v9 = result[4];
    }

    else
    {
      do
      {
        *v7++ = v8 | 0x80;
        v9 = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }

    *v7 = v9;
    *a3 = v7 + 1;
    if (*result >= 1)
    {
      v11 = v7 + 5;
      v12 = 2;
      do
      {
        *(v11 - 1) = *(*(result + 1) + 4 * v12);
        *a3 = v11;
        v11 += 4;
        v13 = v12++ - 1;
      }

      while (v13 < *result);
    }
  }

  return result;
}

int *sub_2439637F4(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v3 = 0;
    v4 = *a3;
    do
    {
      v5 = *(a2 + 4);
      if (v5 < 0x80)
      {
        v6 = *(a2 + 4);
      }

      else
      {
        do
        {
          *v4++ = v5 | 0x80;
          v6 = v5 >> 7;
          v7 = v5 >> 14;
          v5 >>= 7;
        }

        while (v7);
      }

      *v4 = v6;
      v8 = v4 + 1;
      *a3 = v8;
      v9 = *(*(result + 1) + 8 * v3 + 8);
      if (v9 < 0x80)
      {
        v10 = *(*(result + 1) + 8 * v3 + 8);
      }

      else
      {
        do
        {
          *v8++ = v9 | 0x80;
          v10 = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }

      *v8 = v10;
      v4 = v8 + 1;
      *a3 = v4;
      ++v3;
    }

    while (v3 < *result);
  }

  return result;
}

int *sub_24396388C(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v3 = *(a2 + 4);
    v4 = *a3;
    if (v3 < 0x80)
    {
      v5 = *(a2 + 4);
    }

    else
    {
      do
      {
        *v4++ = v3 | 0x80;
        v5 = v3 >> 7;
        v6 = v3 >> 14;
        v3 >>= 7;
      }

      while (v6);
    }

    *v4 = v5;
    v7 = v4 + 1;
    v8 = result[4];
    if (v8 < 0x80)
    {
      v9 = result[4];
    }

    else
    {
      do
      {
        *v7++ = v8 | 0x80;
        v9 = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }

    *v7 = v9;
    v11 = v7 + 1;
    *a3 = v11;
    if (*result >= 1)
    {
      v12 = 0;
      do
      {
        v13 = *(*(result + 1) + 8 * v12 + 8);
        if (v13 < 0x80)
        {
          v14 = *(*(result + 1) + 8 * v12 + 8);
        }

        else
        {
          do
          {
            *v11++ = v13 | 0x80;
            v14 = v13 >> 7;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
        }

        *v11++ = v14;
        *a3 = v11;
        ++v12;
      }

      while (v12 < *result);
    }
  }

  return result;
}

int *sub_24396395C(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v3 = 0;
    v4 = *a3;
    do
    {
      v5 = *(a2 + 4);
      if (v5 < 0x80)
      {
        v6 = *(a2 + 4);
      }

      else
      {
        do
        {
          *v4++ = v5 | 0x80;
          v6 = v5 >> 7;
          v7 = v5 >> 14;
          v5 >>= 7;
        }

        while (v7);
      }

      *v4 = v6;
      v8 = v4 + 1;
      *a3 = v8;
      v9 = *(*(result + 1) + 4 * v3 + 8);
      if (v9 < 0x80)
      {
        LODWORD(v10) = *(*(result + 1) + 4 * v3 + 8);
      }

      else
      {
        do
        {
          *v8++ = v9 | 0x80;
          v10 = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }

      *v8 = v10;
      v4 = v8 + 1;
      *a3 = v4;
      ++v3;
    }

    while (v3 < *result);
  }

  return result;
}

int *sub_2439639F4(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v3 = *(a2 + 4);
    v4 = *a3;
    if (v3 < 0x80)
    {
      v5 = *(a2 + 4);
    }

    else
    {
      do
      {
        *v4++ = v3 | 0x80;
        v5 = v3 >> 7;
        v6 = v3 >> 14;
        v3 >>= 7;
      }

      while (v6);
    }

    *v4 = v5;
    v7 = v4 + 1;
    v8 = result[4];
    if (v8 < 0x80)
    {
      v9 = result[4];
    }

    else
    {
      do
      {
        *v7++ = v8 | 0x80;
        v9 = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }

    *v7 = v9;
    v11 = v7 + 1;
    *a3 = v11;
    if (*result >= 1)
    {
      v12 = 0;
      do
      {
        v13 = *(*(result + 1) + 4 * v12 + 8);
        if (v13 < 0x80)
        {
          LODWORD(v14) = *(*(result + 1) + 4 * v12 + 8);
        }

        else
        {
          do
          {
            *v11++ = v13 | 0x80;
            v14 = v13 >> 7;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
        }

        *v11++ = v14;
        *a3 = v11;
        ++v12;
      }

      while (v12 < *result);
    }
  }

  return result;
}

int *sub_243963AC4(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v3 = 0;
    v4 = *a3;
    do
    {
      v5 = *(a2 + 4);
      if (v5 < 0x80)
      {
        v6 = *(a2 + 4);
      }

      else
      {
        do
        {
          *v4++ = v5 | 0x80;
          v6 = v5 >> 7;
          v7 = v5 >> 14;
          v5 >>= 7;
        }

        while (v7);
      }

      *v4 = v6;
      *a3 = v4 + 1;
      v4[1] = *(*(result + 1) + v3 + 8);
      v4 += 2;
      *a3 = v4;
      ++v3;
    }

    while (v3 < *result);
  }

  return result;
}

int *sub_243963B3C(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v3 = *(a2 + 4);
    v4 = *a3;
    if (v3 < 0x80)
    {
      v5 = *(a2 + 4);
    }

    else
    {
      do
      {
        *v4++ = v3 | 0x80;
        v5 = v3 >> 7;
        v6 = v3 >> 14;
        v3 >>= 7;
      }

      while (v6);
    }

    *v4 = v5;
    v7 = v4 + 1;
    v8 = result[4];
    if (v8 < 0x80)
    {
      v9 = result[4];
    }

    else
    {
      do
      {
        *v7++ = v8 | 0x80;
        v9 = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }

    *v7 = v9;
    *a3 = v7 + 1;
    if (*result >= 1)
    {
      v11 = v7 + 2;
      v12 = 8;
      do
      {
        *(v11 - 1) = *(*(result + 1) + v12);
        *a3 = v11++;
        v13 = v12 - 7;
        ++v12;
      }

      while (v13 < *result);
    }
  }

  return result;
}

char *sub_243963BF0(char *result, uint64_t a2, char **a3)
{
  if (*(result + 2) >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 < 0x80)
      {
        v9 = *(a2 + 4);
      }

      else
      {
        do
        {
          *v7++ = v8 | 0x80;
          v9 = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }

      *v7 = v9;
      v11 = v7 + 1;
      *a3 = v11;
      v12 = *(v5 + 2);
      if (v12)
      {
        v13 = v12 + 8;
      }

      else
      {
        v13 = 0;
      }

      result = sub_243965C54(*(v13 + 8 * v6), v11);
      v7 = result;
      *a3 = result;
      ++v6;
    }

    while (v6 < *(v5 + 2));
  }

  return result;
}

uint64_t sub_243963C9C(uint64_t a1, uint64_t a2)
{
  sub_2439675B4(v9, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/generated_message_util.cc", 534);
  v3 = sub_2439675CC(v9, "Not implemented field number ");
  v4 = sub_24396795C(v3, *(a2 + 4));
  v5 = sub_2439675CC(v4, " with type ");
  v6 = sub_24396795C(v5, *(a2 + 12));
  sub_243967708(&v8, &v6->__r_.__value_.__l.__data_);
  return sub_243967710(v9);
}

void sub_243963D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

uint64_t sub_243963D34(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + 4);
  v6 = *a3;
  if (v5 < 0x80)
  {
    v7 = *(a2 + 4);
  }

  else
  {
    do
    {
      *v6++ = v5 | 0x80;
      v7 = v5 >> 7;
      v8 = v5 >> 14;
      v5 >>= 7;
    }

    while (v8);
  }

  *v6 = v7;
  *a3 = (v6 + 1);
  result = sub_243964688(*a1, *(a2 + 16), a3);
  v10 = *(a2 + 4) + 1;
  v11 = *a3;
  if (v10 < 0x80)
  {
    v12 = *(a2 + 4) + 1;
  }

  else
  {
    do
    {
      *v11++ = v10 | 0x80;
      v12 = v10 >> 7;
      v13 = v10 >> 14;
      v10 >>= 7;
    }

    while (v13);
  }

  *v11 = v12;
  *a3 = (v11 + 1);
  return result;
}

uint64_t sub_243963DDC(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (*(result + 8) >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 < 0x80)
      {
        v9 = *(a2 + 4);
      }

      else
      {
        do
        {
          *v7++ = v8 | 0x80;
          v9 = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }

      *v7 = v9;
      *a3 = (v7 + 1);
      v11 = *(v5 + 16);
      if (v11)
      {
        v12 = v11 + 8;
      }

      else
      {
        v12 = 0;
      }

      result = sub_243964688(*(v12 + 8 * v6), *(a2 + 16), a3);
      v13 = *(a2 + 4) + 1;
      v14 = *a3;
      if (v13 < 0x80)
      {
        v15 = *(a2 + 4) + 1;
      }

      else
      {
        do
        {
          *v14++ = v13 | 0x80;
          v15 = v13 >> 7;
          v16 = v13 >> 14;
          v13 >>= 7;
        }

        while (v16);
      }

      *v14 = v15;
      v7 = v14 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *(v5 + 8));
  }

  return result;
}

uint64_t sub_243963EC4(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 < 0x80)
  {
    v5 = *(a2 + 4);
  }

  else
  {
    do
    {
      *v4++ = v3 | 0x80;
      v5 = v3 >> 7;
      v6 = v3 >> 14;
      v3 >>= 7;
    }

    while (v6);
  }

  *v4 = v5;
  *a3 = v4 + 1;
  return sub_2439646FC(*a1, *(a2 + 16), a3);
}

uint64_t sub_243963F08(uint64_t result, uint64_t a2, void *a3)
{
  if (*(result + 8) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 < 0x80)
      {
        v9 = *(a2 + 4);
      }

      else
      {
        do
        {
          *v8++ = v7 | 0x80;
          v9 = v7 >> 7;
          v10 = v7 >> 14;
          v7 >>= 7;
        }

        while (v10);
      }

      *v8 = v9;
      *a3 = v8 + 1;
      v11 = *(v5 + 16);
      if (v11)
      {
        v12 = v11 + 8;
      }

      else
      {
        v12 = 0;
      }

      result = sub_2439646FC(*(v12 + 8 * v6++), *(a2 + 16), a3);
    }

    while (v6 < *(v5 + 8));
  }

  return result;
}

int *sub_243963FB4(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v3 = 0;
    v4 = *a3;
    do
    {
      v5 = *(a2 + 4);
      if (v5 < 0x80)
      {
        v6 = *(a2 + 4);
      }

      else
      {
        do
        {
          *v4++ = v5 | 0x80;
          v6 = v5 >> 7;
          v7 = v5 >> 14;
          v5 >>= 7;
        }

        while (v7);
      }

      *v4 = v6;
      v8 = v4 + 1;
      *a3 = v8;
      v9 = *(*(result + 1) + 4 * v3 + 8);
      if (v9 < 0x80)
      {
        v10 = *(*(result + 1) + 4 * v3 + 8);
      }

      else
      {
        do
        {
          *v8++ = v9 | 0x80;
          v10 = v9 >> 7;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
      }

      *v8 = v10;
      v4 = v8 + 1;
      *a3 = v4;
      ++v3;
    }

    while (v3 < *result);
  }

  return result;
}

int *sub_24396404C(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v3 = *(a2 + 4);
    v4 = *a3;
    if (v3 < 0x80)
    {
      v5 = *(a2 + 4);
    }

    else
    {
      do
      {
        *v4++ = v3 | 0x80;
        v5 = v3 >> 7;
        v6 = v3 >> 14;
        v3 >>= 7;
      }

      while (v6);
    }

    *v4 = v5;
    v7 = v4 + 1;
    v8 = result[4];
    if (v8 < 0x80)
    {
      v9 = result[4];
    }

    else
    {
      do
      {
        *v7++ = v8 | 0x80;
        v9 = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }

    *v7 = v9;
    v11 = v7 + 1;
    *a3 = v11;
    if (*result >= 1)
    {
      v12 = 0;
      do
      {
        v13 = *(*(result + 1) + 4 * v12 + 8);
        if (v13 < 0x80)
        {
          v14 = *(*(result + 1) + 4 * v12 + 8);
        }

        else
        {
          do
          {
            *v11++ = v13 | 0x80;
            v14 = v13 >> 7;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
        }

        *v11++ = v14;
        *a3 = v11;
        ++v12;
      }

      while (v12 < *result);
    }
  }

  return result;
}

int *sub_24396411C(int *result, uint64_t a2, _BYTE **a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 < 0x80)
  {
    v5 = *(a2 + 4);
  }

  else
  {
    do
    {
      *v4++ = v3 | 0x80;
      v5 = v3 >> 7;
      v6 = v3 >> 14;
      v3 >>= 7;
    }

    while (v6);
  }

  *v4 = v5;
  v7 = v4 + 1;
  v8 = (2 * *result) ^ (*result >> 31);
  if (v8 < 0x80)
  {
    v9 = (2 * *result) ^ (*result >> 31);
  }

  else
  {
    do
    {
      *v7++ = v8 | 0x80;
      v9 = v8 >> 7;
      v10 = v8 >> 14;
      v8 >>= 7;
    }

    while (v10);
  }

  *v7 = v9;
  *a3 = v7 + 1;
  return result;
}

int *sub_243964190(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v3 = 0;
    v4 = *a3;
    do
    {
      v5 = *(a2 + 4);
      if (v5 < 0x80)
      {
        v6 = *(a2 + 4);
      }

      else
      {
        do
        {
          *v4++ = v5 | 0x80;
          v6 = v5 >> 7;
          v7 = v5 >> 14;
          v5 >>= 7;
        }

        while (v7);
      }

      *v4 = v6;
      v8 = v4 + 1;
      *a3 = v8;
      v9 = *(*(result + 1) + 4 * v3 + 8);
      v10 = (2 * v9) ^ (v9 >> 31);
      if (v10 < 0x80)
      {
        LOBYTE(v11) = v10;
      }

      else
      {
        do
        {
          *v8++ = v10 | 0x80;
          v11 = v10 >> 7;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
      }

      *v8 = v11;
      v4 = v8 + 1;
      *a3 = v4;
      ++v3;
    }

    while (v3 < *result);
  }

  return result;
}

int *sub_243964230(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v3 = *(a2 + 4);
    v4 = *a3;
    if (v3 < 0x80)
    {
      v5 = *(a2 + 4);
    }

    else
    {
      do
      {
        *v4++ = v3 | 0x80;
        v5 = v3 >> 7;
        v6 = v3 >> 14;
        v3 >>= 7;
      }

      while (v6);
    }

    *v4 = v5;
    v7 = v4 + 1;
    v8 = result[4];
    if (v8 < 0x80)
    {
      v9 = result[4];
    }

    else
    {
      do
      {
        *v7++ = v8 | 0x80;
        v9 = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }

    *v7 = v9;
    v11 = v7 + 1;
    *a3 = v11;
    if (*result >= 1)
    {
      v12 = 0;
      do
      {
        v13 = *(*(result + 1) + 4 * v12 + 8);
        v14 = (2 * v13) ^ (v13 >> 31);
        if (v14 < 0x80)
        {
          LOBYTE(v15) = v14;
        }

        else
        {
          do
          {
            *v11++ = v14 | 0x80;
            v15 = v14 >> 7;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
        }

        *v11++ = v15;
        *a3 = v11;
        ++v12;
      }

      while (v12 < *result);
    }
  }

  return result;
}

uint64_t *sub_243964308(uint64_t *result, uint64_t a2, _BYTE **a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 < 0x80)
  {
    v5 = *(a2 + 4);
  }

  else
  {
    do
    {
      *v4++ = v3 | 0x80;
      v5 = v3 >> 7;
      v6 = v3 >> 14;
      v3 >>= 7;
    }

    while (v6);
  }

  *v4 = v5;
  v7 = v4 + 1;
  v8 = (2 * *result) ^ (*result >> 63);
  if (v8 < 0x80)
  {
    v9 = (2 * *result) ^ (*result >> 63);
  }

  else
  {
    do
    {
      *v7++ = v8 | 0x80;
      v9 = v8 >> 7;
      v10 = v8 >> 14;
      v8 >>= 7;
    }

    while (v10);
  }

  *v7 = v9;
  *a3 = v7 + 1;
  return result;
}

int *sub_24396437C(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v3 = 0;
    v4 = *a3;
    do
    {
      v5 = *(a2 + 4);
      if (v5 < 0x80)
      {
        v6 = *(a2 + 4);
      }

      else
      {
        do
        {
          *v4++ = v5 | 0x80;
          v6 = v5 >> 7;
          v7 = v5 >> 14;
          v5 >>= 7;
        }

        while (v7);
      }

      *v4 = v6;
      v8 = v4 + 1;
      *a3 = v8;
      v9 = *(*(result + 1) + 8 * v3 + 8);
      v10 = (2 * v9) ^ (v9 >> 63);
      if (v10 < 0x80)
      {
        LOBYTE(v11) = v10;
      }

      else
      {
        do
        {
          *v8++ = v10 | 0x80;
          v11 = v10 >> 7;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
      }

      *v8 = v11;
      v4 = v8 + 1;
      *a3 = v4;
      ++v3;
    }

    while (v3 < *result);
  }

  return result;
}

int *sub_24396441C(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v3 = *(a2 + 4);
    v4 = *a3;
    if (v3 < 0x80)
    {
      v5 = *(a2 + 4);
    }

    else
    {
      do
      {
        *v4++ = v3 | 0x80;
        v5 = v3 >> 7;
        v6 = v3 >> 14;
        v3 >>= 7;
      }

      while (v6);
    }

    *v4 = v5;
    v7 = v4 + 1;
    v8 = result[4];
    if (v8 < 0x80)
    {
      v9 = result[4];
    }

    else
    {
      do
      {
        *v7++ = v8 | 0x80;
        v9 = v8 >> 7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
    }

    *v7 = v9;
    v11 = v7 + 1;
    *a3 = v11;
    if (*result >= 1)
    {
      v12 = 0;
      do
      {
        v13 = *(*(result + 1) + 8 * v12 + 8);
        v14 = (2 * v13) ^ (v13 >> 63);
        if (v14 < 0x80)
        {
          LOBYTE(v15) = v14;
        }

        else
        {
          do
          {
            *v11++ = v14 | 0x80;
            v15 = v14 >> 7;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
        }

        *v11++ = v15;
        *a3 = v11;
        ++v12;
      }

      while (v12 < *result);
    }
  }

  return result;
}

void sub_2439644F4(_DWORD *a1)
{
  if ((atomic_load_explicit(&qword_27ED97050, memory_order_acquire) & 1) == 0)
  {
    sub_243989B3C();
  }

  v2 = pthread_self();
  if (qword_27ED970D0 == v2)
  {
    if (*a1 != 1)
    {
      sub_2439675B4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/generated_message_util.cc", 801);
      v3 = sub_2439675CC(v5, "CHECK failed: (scc->visit_status.load(std::memory_order_relaxed)) == (SCCInfoBase::kRunning): ");
      sub_243967708(&v4, &v3->__r_.__value_.__l.__data_);
      sub_243967710(v5);
    }
  }

  else
  {
    sub_243962254();
    std::mutex::lock(&stru_27ED963B8);
    qword_27ED970D0 = v2;
    sub_243964608(a1);
    qword_27ED970D0 = 0;

    std::mutex::unlock(&stru_27ED963B8);
  }
}

void sub_2439645E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_243964608(_DWORD *result)
{
  if (*result == -1)
  {
    v1 = result;
    *result = 1;
    v2 = result[1];
    if (v2 >= 1)
    {
      for (i = 0; i < v2; ++i)
      {
        if (v1[i + 2])
        {
          sub_243964608();
          v2 = *(v1 + 1);
        }
      }
    }

    result = v1[1]();
    atomic_store(0, v1);
  }

  return result;
}

uint64_t sub_243964688(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    result = sub_2439622F0(a1, *(a2 + 8) + 24, (*a2 - 1), *(a3 + 8), *a3);
  }

  else
  {
    result = (*(*a1 + 128))(a1, *(a3 + 8), *a3);
  }

  *a3 = result;
  return result;
}

uint64_t sub_2439646FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a2 + 8);
    v6 = *(a1 + *v5);
    v7 = *a3;
    if (v6 < 0x80)
    {
      v8 = *(a1 + *v5);
    }

    else
    {
      do
      {
        *v7++ = v6 | 0x80;
        v8 = v6 >> 7;
        v9 = v6 >> 14;
        v6 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v14 = v7 + 1;
    *a3 = v14;
    result = sub_2439622F0(a1, v5 + 6, (*a2 - 1), *(a3 + 8), v14);
  }

  else
  {
    v10 = (*(*a1 + 120))(a1);
    v11 = *a3;
    if (v10 < 0x80)
    {
      LOBYTE(v12) = v10;
    }

    else
    {
      do
      {
        *v11++ = v10 | 0x80;
        v12 = v10 >> 7;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
    }

    *v11 = v12;
    *a3 = v11 + 1;
    result = (*(*a1 + 128))(a1, *(a3 + 8));
  }

  *a3 = result;
  return result;
}

uint64_t sub_24396481C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_243964854(a1);
  }

  return a1;
}

uint64_t sub_243964854(uint64_t result)
{
  if (*(result + 28) + *(result + 44) + *(result + 8) - *result >= 1)
  {
    v1 = result;
    result = (*(**(result + 16) + 24))(*(result + 16));
    v2 = *(v1 + 24) - *(v1 + 44) + *v1 - *(v1 + 8);
    *(v1 + 8) = *v1;
    *(v1 + 44) = 0;
    *(v1 + 24) = v2;
  }

  return result;
}

uint64_t sub_2439648F0(uint64_t result, int a2)
{
  *(result + 40) = a2;
  v2 = *(result + 48);
  v3 = *(result + 8) + *(result + 44);
  *(result + 8) = v3;
  if (v2 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v2;
  }

  v5 = *(result + 24);
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if ((v7 < 0) ^ v6 | (v7 == 0))
  {
    v7 = 0;
  }

  else
  {
    *(result + 8) = v3 - v7;
  }

  *(result + 44) = v7;
  *(result + 36) = 0;
  return result;
}

uint64_t sub_243964938(uint64_t a1, int a2)
{
  result = *(a1 + 36);
  *(a1 + 40) = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 8) + *(a1 + 44);
  *(a1 + 8) = v5;
  if (v4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(a1 + 24);
  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v9 = 0;
  }

  else
  {
    *(a1 + 8) = v5 - v9;
  }

  *(a1 + 44) = v9;
  *(a1 + 36) = 0;
  ++*(a1 + 52);
  return result;
}

uint64_t sub_243964994(_DWORD *a1)
{
  v1 = a1[10];
  if (v1 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v1 - a1[6] + a1[11] + a1[2] - *a1);
  }
}

uint64_t sub_2439649D0(_DWORD *a1)
{
  v1 = a1[12];
  if (v1 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v1 - a1[6] + a1[11] + a1[2] - *a1);
  }
}

uint64_t sub_243964A0C(uint64_t a1)
{
  sub_2439675B4(v7, 2, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/io/coded_stream.cc", 190);
  v2 = sub_2439675CC(v7, "A protocol message was rejected because it was too big (more than ");
  v3 = sub_2439678DC(v2, *(a1 + 48));
  v4 = sub_2439675CC(v3, " bytes).  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in google/protobuf/io/coded_stream.h.");
  sub_243967708(&v6, &v4->__r_.__value_.__l.__data_);
  return sub_243967710(v7);
}

void sub_243964A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

uint64_t sub_243964A9C(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 44) < 1)
  {
    v5 = (a2 - a3);
    *a1 = 0;
    *(a1 + 8) = 0;
    v6 = *(a1 + 48);
    if (v6 >= *(a1 + 40))
    {
      v6 = *(a1 + 40);
    }

    v7 = v6 - *(a1 + 24);
    if (v7 >= v5)
    {
      if ((*(**(a1 + 16) + 32))(*(a1 + 16), v5))
      {
        *(a1 + 24) += v5;
        return 1;
      }

      else
      {
        v8 = (*(**(a1 + 16) + 40))(*(a1 + 16));
        result = 0;
        *(a1 + 24) = v8;
      }
    }

    else
    {
      if (v7 >= 1)
      {
        *(a1 + 24) = v6;
        (*(**(a1 + 16) + 32))(*(a1 + 16));
      }

      return 0;
    }
  }

  else
  {
    result = 0;
    *a1 += a3;
  }

  return result;
}

uint64_t sub_243964BB8(uint64_t a1)
{
  v2 = *(a1 + 44);
  if (v2 > 0 || *(a1 + 28) > 0 || *(a1 + 24) == *(a1 + 40))
  {
    v3 = *(a1 + 24) - v2;
    v4 = *(a1 + 48);
    if (v3 >= v4 && v4 != *(a1 + 40))
    {
      sub_243964A0C(a1);
    }

    return 0;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v7 = *(a1 + 16);
    do
    {
      v5 = (*(*v7 + 16))(v7, &v23, &v22);
      if (!v5)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        return v5;
      }

      v8 = v22;
    }

    while (!v22);
    v9 = v23 + v22;
    *a1 = v23;
    *(a1 + 8) = v9;
    if (v8 < 0)
    {
      sub_2439675B4(v21, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/io/coded_stream.cc", 591);
      v10 = sub_2439675CC(v21, "CHECK failed: (buffer_size) >= (0): ");
      sub_243967708(&v20, &v10->__r_.__value_.__l.__data_);
      sub_243967710(v21);
      v8 = v22;
    }

    v11 = *(a1 + 24);
    v12 = v11 - (v8 ^ 0x7FFFFFFF);
    if (v11 <= (v8 ^ 0x7FFFFFFF))
    {
      v14 = v8 + v11;
      v13 = *(a1 + 8);
    }

    else
    {
      *(a1 + 28) = v12;
      v13 = *(a1 + 8) - v12;
      *(a1 + 8) = v13;
      v14 = 0x7FFFFFFF;
    }

    *(a1 + 24) = v14;
    v15 = *(a1 + 40);
    v16 = v13 + *(a1 + 44);
    *(a1 + 8) = v16;
    v17 = *(a1 + 48);
    if (v17 >= v15)
    {
      v17 = v15;
    }

    v18 = __OFSUB__(v14, v17);
    v19 = v14 - v17;
    if ((v19 < 0) ^ v18 | (v19 == 0))
    {
      v19 = 0;
    }

    else
    {
      *(a1 + 8) = v16 - v19;
    }

    *(a1 + 44) = v19;
  }

  return v5;
}

void sub_243964D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

BOOL sub_243964D70(const void **a1, char *__dst, int a3)
{
  while (1)
  {
    v6 = a3;
    v7 = *a1;
    v8 = a1[1] - *a1;
    v9 = __OFSUB__(a3, v8);
    a3 -= v8;
    if ((a3 < 0) ^ v9 | (a3 == 0))
    {
      break;
    }

    memcpy(__dst, v7, v8);
    __dst += v8;
    *a1 = *a1 + v8;
    if ((sub_243964BB8(a1) & 1) == 0)
    {
      return v6 <= v8;
    }
  }

  memcpy(__dst, v7, v6);
  *a1 = *a1 + v6;
  return v6 <= v8;
}

BOOL sub_243964E08(uint64_t a1, std::string *this, std::string::size_type __n)
{
  if ((__n & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = this;
  if (*(a1 + 8) - *a1 >= __n)
  {
    v6 = __n;
    std::string::resize(this, __n, 0);
    if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
    {
      v3 = v3->__r_.__value_.__r.__words[0];
    }

    memcpy(v3, *a1, v6);
    *a1 += v6;
    return 1;
  }

  else
  {

    return sub_243964EBC(a1, this, __n);
  }
}

BOOL sub_243964EBC(_DWORD *a1, std::string *this, std::string::size_type __requested_capacity)
{
  v3 = __requested_capacity;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v6 = a1[12];
  if (v6 >= a1[10])
  {
    v6 = a1[10];
  }

  if (v6 != 0x7FFFFFFF)
  {
    v7 = v6 - a1[6] + a1[11] + a1[2] - *a1;
    v8 = v7 < __requested_capacity || __requested_capacity < 1;
    if (!v8 && v7 >= 1)
    {
      std::string::reserve(this, __requested_capacity);
    }
  }

  while (1)
  {
    v10 = v3;
    v11 = *a1;
    v12 = *(a1 + 1) - *a1;
    v13 = __OFSUB__(v3, v12);
    v3 -= v12;
    if ((v3 < 0) ^ v13 | (v3 == 0))
    {
      break;
    }

    if (v12)
    {
      v14 = v12;
      std::string::append(this, v11, v12);
      v11 = *a1;
    }

    else
    {
      v14 = 0;
    }

    *a1 = &v11[v14];
    if ((sub_243964BB8(a1) & 1) == 0)
    {
      return v10 <= v12;
    }
  }

  std::string::append(this, v11, v10);
  *a1 += v10;
  return v10 <= v12;
}

BOOL sub_243964FE4(uint64_t a1, _DWORD *a2)
{
  v3 = *a1;
  if (((*(a1 + 8) - *a1) & 0xFFFFFFFC) != 0)
  {
    *a1 = v3 + 4;
  }

  else
  {
    v3 = __dst;
    result = sub_243964D70(a1, __dst, 4);
    if (!result)
    {
      return result;
    }
  }

  *a2 = *v3;
  return 1;
}

BOOL sub_24396504C(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (((*(a1 + 8) - *a1) & 0xFFFFFFF8) != 0)
  {
    *a1 = v3 + 8;
LABEL_4:
    *a2 = *v3;
    result = 1;
    goto LABEL_5;
  }

  v3 = v6;
  result = sub_243964D70(a1, v6, 8);
  if (result)
  {
    goto LABEL_4;
  }

LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2439650E0(uint64_t a1)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if ((v3 - *a1) <= 9 && (v3 <= v4 || *(v3 - 1) < 0))
  {
    v11[1] = v1;
    v11[2] = v2;
    v11[0] = 0;
    sub_2439656EC(a1, v11);
    return v11[0];
  }

  else
  {
    v5 = v4 + 1;
    v6 = *v4;
    if (*v4 < 0)
    {
      v6 = v6 + (v4[1] << 7) - 128;
      if (v4[1] < 0)
      {
        v6 = v6 + (v4[2] << 14) - 0x4000;
        if (v4[2] < 0)
        {
          v6 = v6 + (v4[3] << 21) - 0x200000;
          if (v4[3] < 0)
          {
            v6 -= 0x10000000;
            v7 = v4[4];
            if (v4[4] < 0)
            {
              v7 = v7 + (v4[5] << 7) - 128;
              if (v4[5] < 0)
              {
                v7 = v7 + (v4[6] << 14) - 0x4000;
                if (v4[6] < 0)
                {
                  v7 = v7 + (v4[7] << 21) - 0x200000;
                  if (v4[7] < 0)
                  {
                    v7 -= 0x10000000;
                    v8 = v4[8];
                    if (v4[8] < 0)
                    {
                      if (v4[9] < 0)
                      {
                        return 0;
                      }

                      v5 = v4 + 10;
                      v8 = v8 + (v4[9] << 7) - 128;
                    }

                    else
                    {
                      v5 = v4 + 9;
                    }
                  }

                  else
                  {
                    v8 = 0;
                    v5 = v4 + 8;
                  }
                }

                else
                {
                  v8 = 0;
                  v5 = v4 + 7;
                }
              }

              else
              {
                v8 = 0;
                v5 = v4 + 6;
              }
            }

            else
            {
              v8 = 0;
              v5 = v4 + 5;
            }
          }

          else
          {
            v7 = 0;
            v8 = 0;
            v5 = v4 + 4;
          }
        }

        else
        {
          v7 = 0;
          v8 = 0;
          v5 = v4 + 3;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v5 = v4 + 2;
      }
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v6 | (v7 << 28) | (v8 << 56);
    *a1 = v5;
  }

  return v9;
}

uint64_t sub_24396529C(unint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 - *a1) <= 9 && (v3 <= v2 || *(v3 - 1) < 0))
  {
    v6 = sub_2439650E0(a1);
    if ((v7 & 1) == 0)
    {
      return -1;
    }
  }

  else
  {
    v4 = a2 + (*(v2 + 1) << 7) - 128;
    if (*(v2 + 1) < 0)
    {
      v4 = v4 + (*(v2 + 2) << 14) - 0x4000;
      if (*(v2 + 2) < 0)
      {
        v4 = v4 + (*(v2 + 3) << 21) - 0x200000;
        if (*(v2 + 3) < 0)
        {
          v8 = *(v2 + 4);
          v4 = v4 + (v8 << 28) - 0x10000000;
          if (v8 < 0)
          {
            v5 = v2 + 6;
            v10 = 5;
            while (*(v5 - 1) < 0)
            {
              ++v5;
              v6 = -1;
              if (!--v10)
              {
                return v6;
              }
            }
          }

          else
          {
            v5 = v2 + 5;
          }
        }

        else
        {
          v5 = v2 + 4;
        }
      }

      else
      {
        v5 = v2 + 3;
      }
    }

    else
    {
      v5 = v2 + 2;
    }

    v6 = v4;
    *a1 = v5;
  }

  return v6;
}

uint64_t sub_243965380(unsigned __int8 **a1)
{
  v2 = *a1;
  v1 = a1[1];
  if ((v1 - *a1) > 9 || v1 > v2 && (*(v1 - 1) & 0x80000000) == 0)
  {
    v3 = (v2 + 1);
    v4 = *v2;
    if (*v2 < 0)
    {
      v4 = v4 + (v2[1] << 7) - 128;
      if (v2[1] < 0)
      {
        v4 = v4 + (v2[2] << 14) - 0x4000;
        if (v2[2] < 0)
        {
          v4 = v4 + (v2[3] << 21) - 0x200000;
          if (v2[3] < 0)
          {
            v4 -= 0x10000000;
            v5 = v2[4];
            if (v2[4] < 0)
            {
              v5 = v5 + (v2[5] << 7) - 128;
              if (v2[5] < 0)
              {
                v5 = v5 + (v2[6] << 14) - 0x4000;
                if (v2[6] < 0)
                {
                  v5 = v5 + (v2[7] << 21) - 0x200000;
                  if (v2[7] < 0)
                  {
                    v5 -= 0x10000000;
                    v6 = v2[8];
                    if (v2[8] < 0)
                    {
                      if (v2[9] < 0)
                      {
                        return 0xFFFFFFFFLL;
                      }

                      v3 = (v2 + 10);
                      v6 = v6 + (v2[9] << 7) - 128;
                    }

                    else
                    {
                      v3 = (v2 + 9);
                    }
                  }

                  else
                  {
                    v6 = 0;
                    v3 = (v2 + 8);
                  }
                }

                else
                {
                  v6 = 0;
                  v3 = (v2 + 7);
                }
              }

              else
              {
                v6 = 0;
                v3 = (v2 + 6);
              }
            }

            else
            {
              v6 = 0;
              v3 = (v2 + 5);
            }
          }

          else
          {
            v5 = 0;
            v6 = 0;
            v3 = (v2 + 4);
          }
        }

        else
        {
          v5 = 0;
          v6 = 0;
          v3 = (v2 + 3);
        }
      }

      else
      {
        v5 = 0;
        v6 = 0;
        v3 = (v2 + 2);
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v9 = v4 | (v5 << 28);
    if (!((v9 | (v6 << 56)) >> 31))
    {
      *a1 = v3;
      return v9;
    }

    return 0xFFFFFFFFLL;
  }

  v7 = sub_2439650E0(a1);
  if ((v8 & (v7 >> 31 == 0)) != 0)
  {
    return v7;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t sub_243965538(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
LABEL_4:
    if (v2 >= v3 || (result = *v2, (result & 0x80000000) != 0))
    {
      result = sub_2439650E0(a1);
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      *a1 = v2 + 1;
    }

    return result;
  }

  if (sub_243964BB8(a1))
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    goto LABEL_4;
  }

  v6 = *(a1 + 48);
  result = 0;
  v7 = *(a1 + 24) - *(a1 + 44) < v6 || *(a1 + 40) == v6;
  *(a1 + 36) = v7;
  return result;
}

unint64_t sub_2439655D8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = v2 - *a1;
  if (v4 > 9)
  {
LABEL_4:
    if (a2)
    {
      v5 = a2 + (*(v3 + 1) << 7) - 128;
      if (*(v3 + 1) < 0)
      {
        v5 = v5 + (*(v3 + 2) << 14) - 0x4000;
        if (*(v3 + 2) < 0)
        {
          v5 = v5 + (*(v3 + 3) << 21) - 0x200000;
          if (*(v3 + 3) < 0)
          {
            v10 = *(v3 + 4);
            v5 = (v5 + (v10 << 28) - 0x10000000);
            if (v10 < 0)
            {
              v6 = v3 + 6;
              v11 = 5;
              a2 = 0;
              while (*(v6 - 1) < 0)
              {
                ++v6;
                if (!--v11)
                {
                  return a2;
                }
              }
            }

            else
            {
              v6 = v3 + 5;
            }
          }

          else
          {
            v6 = v3 + 4;
          }
        }

        else
        {
          v6 = v3 + 3;
        }
      }

      else
      {
        v6 = v3 + 2;
      }

      *a1 = v6;
      return v5;
    }

    else
    {
      *a1 = v3 + 1;
    }

    return a2;
  }

  if (v4 >= 1)
  {
    if ((*(v2 - 1) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    return sub_243965538(a1);
  }

  if (v4)
  {
    return sub_243965538(a1);
  }

  v8 = *(a1 + 44);
  v9 = *(a1 + 24);
  if (v8 <= 0 && v9 != *(a1 + 40))
  {
    return sub_243965538(a1);
  }

  if (v9 - v8 >= *(a1 + 48))
  {
    return sub_243965538(a1);
  }

  a2 = 0;
  *(a1 + 36) = 1;
  return a2;
}

BOOL sub_2439656EC(char **a1, void *a2)
{
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = v4 != 10;
    if (v4 == 10)
    {
      break;
    }

    while (1)
    {
      v7 = *a1;
      if (*a1 != a1[1])
      {
        break;
      }

      if ((sub_243964BB8(a1) & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        goto LABEL_7;
      }
    }

    v8 = *v7;
    v5 |= (*v7 & 0x7F) << (7 * v4);
    *a1 = v7 + 1;
    ++v4;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  *a2 = v5;
  return v6;
}

uint64_t sub_243965790(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 0;
  *(a1 + 26) = byte_27ED97038 & 1;
  sub_243965828(a1);
  *(a1 + 24) = 0;
  return a1;
}

uint64_t sub_2439657D8(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 0;
  *(a1 + 26) = byte_27ED97038 & 1;
  if (a3)
  {
    sub_243965828(a1);
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_243965828(void *a1)
{
  v4 = 0;
  result = (*(**a1 + 16))(*a1, &v4, a1 + 2);
  if (result)
  {
    v3 = v4;
    *(a1 + 5) += *(a1 + 4);
  }

  else
  {
    v3 = 0;
    *(a1 + 4) = 0;
    *(a1 + 24) = 1;
  }

  a1[1] = v3;
  return result;
}

int *sub_2439658B0(int *result)
{
  if (result[4] >= 1)
  {
    v1 = result;
    result = (*(**result + 24))(*result);
    v2 = v1[5] - v1[4];
    v1[4] = 0;
    v1[5] = v2;
    *(v1 + 1) = 0;
  }

  return result;
}

uint64_t sub_243965944(uint64_t a1, char *__src, int a3)
{
  while (1)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    if (v6 >= a3)
    {
      break;
    }

    memcpy(v7, __src, v6);
    v8 = *(a1 + 16);
    a3 -= v8;
    __src += v8;
    result = sub_243965828(a1);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  result = memcpy(v7, __src, a3);
  *(a1 + 8) += a3;
  *(a1 + 16) -= a3;
  return result;
}

uint64_t sub_2439659CC(int *a1, char *__src, uint64_t a3)
{
  if (a1[4] <= a3)
  {
    sub_2439658B0(a1);
    a1[5] += a3;
    result = (*(**a1 + 40))(*a1, __src, a3);
    *(a1 + 24) |= result ^ 1;
  }

  else
  {

    return sub_243965944(a1, __src, a3);
  }

  return result;
}

uint64_t sub_243965A88(uint64_t result, int a2)
{
  if (*(result + 16) < 4u)
  {
    v5 = v2;
    v6 = v3;
    v4 = a2;
    return sub_243965944(result, &v4, 4);
  }

  else
  {
    **(result + 8) = a2;
    *(result + 8) += 4;
    *(result + 16) -= 4;
  }

  return result;
}

uint64_t sub_243965AE8(uint64_t result, uint64_t a2)
{
  v3[1] = *MEMORY[0x277D85DE8];
  if (*(result + 16) < 8u)
  {
    v3[0] = a2;
    result = sub_243965944(result, v3, 8);
  }

  else
  {
    **(result + 8) = a2;
    *(result + 8) += 8;
    *(result + 16) -= 8;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_243965B70(uint64_t a1, unsigned int a2)
{
  v2 = __src;
  if (a2 >= 0x80)
  {
    v3 = a2;
    do
    {
      *v2++ = v3 | 0x80;
      a2 = v3 >> 7;
      v4 = v3 >> 14;
      v3 >>= 7;
    }

    while (v4);
  }

  *v2 = a2;
  return sub_243965944(a1, __src, v2 - (&vars0 - 5) + 1);
}

uint64_t sub_243965BCC(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __src;
  if (a2 >= 0x80)
  {
    v3 = a2;
    do
    {
      *v2++ = v3 | 0x80;
      a2 = v3 >> 7;
      v4 = v3 >> 14;
      v3 >>= 7;
    }

    while (v4);
  }

  *v2 = a2;
  result = sub_243965944(a1, __src, v2 - __src + 1);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_243965C54(const void **a1, _BYTE *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 2);
  }

  if (v3 < 0x80)
  {
    LOBYTE(v4) = v3;
  }

  else
  {
    do
    {
      *a2++ = v3 | 0x80;
      v4 = v3 >> 7;
      v5 = v3 >> 14;
      v3 >>= 7;
    }

    while (v5);
  }

  *a2 = v4;
  v6 = a2 + 1;
  v7 = *(a1 + 23);
  if (v7 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (v7 >= 0)
  {
    LODWORD(v9) = *(a1 + 23);
  }

  else
  {
    v9 = a1[1];
  }

  memcpy(v6, v8, v9);
  return &v6[v9];
}

uint64_t sub_243965CDC()
{
  sub_2439675B4(v3, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/io/zero_copy_stream.cc", 47);
  v0 = sub_2439675CC(v3, "This ZeroCopyOutputStream doesn't support aliasing. Reaching here usually means a ZeroCopyOutputStream implementation bug.");
  sub_243967708(&v2, &v0->__r_.__value_.__l.__data_);
  sub_243967710(v3);
  return 0;
}

void sub_243965D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

uint64_t sub_243965D58(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = &unk_2856A2A98;
  *(result + 8) = a2;
  if (a4 <= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  *(result + 16) = a3;
  *(result + 20) = v4;
  *(result + 24) = 0;
  return result;
}

BOOL sub_243965D88(uint64_t a1, void *a2, _DWORD *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    *(a1 + 28) = 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(a1 + 20))
    {
      v5 = *(a1 + 20);
    }

    *(a1 + 28) = v5;
    *a2 = *(a1 + 8) + v3;
    *a3 = v5;
    *(a1 + 24) += *(a1 + 28);
  }

  return v3 < v4;
}

uint64_t sub_243965DDC(uint64_t result, int a2)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4 <= 0)
  {
    sub_2439675B4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 132);
    v5 = sub_2439675CC(v10, "CHECK failed: (last_returned_size_) > (0): ");
    v6 = sub_2439675CC(v5, "BackUp() can only be called after a successful Next().");
    sub_243967708(&v9, &v6->__r_.__value_.__l.__data_);
    result = sub_243967710(v10);
    v4 = *(v3 + 28);
  }

  if (v4 < a2)
  {
    sub_2439675B4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 134);
    v7 = sub_2439675CC(v10, "CHECK failed: (count) <= (last_returned_size_): ");
    sub_243967708(&v9, &v7->__r_.__value_.__l.__data_);
    result = sub_243967710(v10);
  }

  if (a2 < 0)
  {
    sub_2439675B4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 135);
    v8 = sub_2439675CC(v10, "CHECK failed: (count) >= (0): ");
    sub_243967708(&v9, &v8->__r_.__value_.__l.__data_);
    result = sub_243967710(v10);
  }

  *(v3 + 24) = (*(v3 + 24) - a2);
  return result;
}

void sub_243965EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

void *sub_243965F20(void *result, uint64_t a2)
{
  *result = &unk_2856A2AE0;
  result[1] = a2;
  return result;
}

uint64_t sub_243965F40(uint64_t a1, void *a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    sub_2439675B4(v18, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 151);
    v7 = sub_2439675CC(v18, "CHECK failed: target_ != NULL: ");
    sub_243967708(&v17, &v7->__r_.__value_.__l.__data_);
    sub_243967710(v18);
    v6 = *(a1 + 8);
  }

  v8 = *(v6 + 23);
  if (v8 < 0)
  {
    v8 = *(v6 + 8);
    v10 = v8;
    v9 = (*(v6 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < v9)
    {
      goto LABEL_13;
    }

    if (v8 >= 0x40000000)
    {
      sub_2439675B4(v18, 2, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 164);
      v11 = sub_2439675CC(v18, "Cannot allocate buffer larger than kint32max for ");
      v12 = sub_2439675CC(v11, "StringOutputStream.");
      sub_243967708(&v17, &v12->__r_.__value_.__l.__data_);
      sub_243967710(v18);
      return 0;
    }

LABEL_10:
    if (2 * v8 <= 16)
    {
      v9 = 16;
    }

    else
    {
      v9 = (2 * v8);
    }

    goto LABEL_13;
  }

  if (v8 >= 0x16)
  {
    v10 = *(v6 + 23);
    goto LABEL_10;
  }

  v9 = 22;
  v10 = *(v6 + 23);
LABEL_13:
  std::string::resize(v6, v9, 0);
  v14 = *(a1 + 8);
  if (*(v14 + 23) < 0)
  {
    v14 = *v14;
  }

  *a2 = v14 + v10;
  v15 = *(a1 + 8);
  v16 = *(v15 + 23);
  if (v16 < 0)
  {
    v16 = *(v15 + 8);
  }

  *a3 = v16 - v8;
  return 1;
}

void sub_2439660A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

void sub_2439660C8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_2439675B4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 182);
    v4 = sub_2439675CC(v11, "CHECK failed: (count) >= (0): ");
    sub_243967708(&v10, &v4->__r_.__value_.__l.__data_);
    sub_243967710(v11);
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_2439675B4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 183);
    v6 = sub_2439675CC(v11, "CHECK failed: target_ != NULL: ");
    sub_243967708(&v10, &v6->__r_.__value_.__l.__data_);
    sub_243967710(v11);
    v5 = *(a1 + 8);
  }

  v7 = *(v5 + 23);
  if (v7 < 0)
  {
    v8 = *(v5 + 8);
  }

  else
  {
    v8 = *(v5 + 23);
  }

  if (v8 < a2)
  {
    sub_2439675B4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 184);
    v9 = sub_2439675CC(v11, "CHECK failed: (count) <= (target_->size()): ");
    sub_243967708(&v10, &v9->__r_.__value_.__l.__data_);
    sub_243967710(v11);
    v5 = *(a1 + 8);
    LOBYTE(v7) = *(v5 + 23);
  }

  if ((v7 & 0x80) != 0)
  {
    v7 = *(v5 + 8);
  }

  else
  {
    v7 = v7;
  }

  std::string::resize(v5, v7 - a2, 0);
}

void sub_2439661FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

uint64_t sub_243966224(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    sub_2439675B4(v6, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/io/zero_copy_stream_impl_lite.cc", 189);
    v3 = sub_2439675CC(v6, "CHECK failed: target_ != NULL: ");
    sub_243967708(&v5, &v3->__r_.__value_.__l.__data_);
    sub_243967710(v6);
    v1 = *(a1 + 8);
  }

  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void sub_2439662A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2439662C8(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 56))(a1);
  result = (*(*a1 + 88))(a1, a2);
  if (result)
  {
    if ((*(*a1 + 64))(a1))
    {
      return 1;
    }

    else
    {
      sub_2439675B4(v8, 2, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/message_lite.cc", 121);
      sub_24396680C(a1, &__p);
      v5 = sub_2439675F8(v8, &__p);
      sub_243967708(&v6, &v5->__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_243967710(v8);
      return 0;
    }
  }

  return result;
}

void sub_2439663D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_243967710(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_243966404(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v5[2] = a2;
  memset(&v5[3], 0, 14);
  v5[5] = 0x7FFFFFFFLL;
  v6 = 0x7FFFFFFF;
  v7 = dword_27ED96478;
  v8 = dword_27ED96478;
  v9 = 0;
  v10 = 0;
  sub_243964BB8(v5);
  LODWORD(a1) = sub_2439662C8(a1, v5);
  v3 = BYTE4(v5[4]);
  sub_2439648EC(v5);
  return a1 & v3;
}

uint64_t sub_24396649C(uint64_t a1, uint64_t *a2)
{
  LODWORD(v3) = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v8[0] = v4;
  v8[1] = v4 + v3;
  v8[2] = 0;
  v9 = v3;
  v10 = 0;
  v11 = 0;
  v12 = v3;
  v13 = -NAN;
  v14 = dword_27ED96478;
  v15 = dword_27ED96478;
  v16 = 0;
  v17 = 0;
  (*(*a1 + 56))(a1);
  if (!(*(*a1 + 88))(a1, v8))
  {
    goto LABEL_12;
  }

  if (((*(*a1 + 64))(a1) & 1) == 0)
  {
    sub_2439675B4(v20, 2, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/message_lite.cc", 121);
    sub_24396680C(a1, &__p);
    v6 = sub_2439675F8(v20, &__p);
    sub_243967708(&v18, &v6->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_243967710(v20);
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = v11;
LABEL_13:
  sub_2439648EC(v8);
  return v5 & 1;
}

void sub_243966604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_243967710(v25 - 64);
  sub_2439648EC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_243966644(uint64_t a1, uint64_t a2, int a3)
{
  v7[0] = a2;
  v7[1] = a2 + a3;
  v7[2] = 0;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = a3;
  v12 = -NAN;
  v13 = dword_27ED96478;
  v14 = dword_27ED96478;
  v15 = 0;
  v16 = 0;
  (*(*a1 + 56))(a1);
  if (!(*(*a1 + 88))(a1, v7))
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (((*(*a1 + 64))(a1) & 1) == 0)
  {
    sub_2439675B4(v19, 2, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/message_lite.cc", 121);
    sub_24396680C(a1, &__p);
    v5 = sub_2439675F8(v19, &__p);
    sub_243967708(&v17, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_243967710(v19);
    goto LABEL_7;
  }

  v4 = v10;
LABEL_8:
  sub_2439648EC(v7);
  return v4 & 1;
}

void sub_243966794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_243967710(v25 - 64);
  sub_2439648EC(&a9);
  _Unwind_Resume(a1);
}

void sub_24396680C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "Can't ");
  std::string::append(a2, "parse");
  std::string::append(a2, " message of type ");
  (*(*a1 + 16))(&__p, a1);
  if ((v10 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v10 & 0x80u) == 0)
  {
    v5 = v10;
  }

  else
  {
    v5 = v9;
  }

  std::string::append(a2, p_p, v5);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a2, " because it is missing required fields: ");
  (*(*a1 + 72))(&__p, a1);
  if ((v10 & 0x80u) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = v9;
  }

  std::string::append(a2, v6, v7);
  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_243966948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_243966988(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 96))(a1);
  v5 = v4;
  if (v4 >> 31)
  {
    sub_2439675B4(v19, 2, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/message_lite.cc", 239);
    v6 = sub_2439675CC(v19, "Exceeded maximum protobuf size of 2GB: ");
    v7 = sub_2439679DC(v6, v5);
    sub_243967708(&v18, &v7->__r_.__value_.__l.__data_);
    sub_243967710(v19);
    return 0;
  }

  v9 = *(a2 + 16);
  if (v9 >= v4)
  {
    v10 = *(a2 + 8);
    *(a2 + 8) = v10 + v4;
    *(a2 + 16) = v9 - v4;
    if (v10)
    {
      v11 = (*(*a1 + 128))(a1, *(a2 + 26), v10) - v10;
      if (v11 != v5)
      {
        v12 = (*(*a1 + 96))(a1);
        sub_243966B90(v5, v12, v11, a1);
      }

      return 1;
    }

    v9 -= v4;
  }

  v13 = *(a2 + 20);
  (*(*a1 + 104))(a1, a2);
  v14 = *(a2 + 24);
  if ((v14 & 1) == 0)
  {
    v15 = v9 + *(a2 + 20) - (v13 + *(a2 + 16));
    if (v5 != v15)
    {
      v16 = v15;
      v17 = (*(*a1 + 96))(a1);
      sub_243966B90(v5, v17, v16, a1);
    }
  }

  return v14 ^ 1u;
}

void sub_243966B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

uint64_t sub_243966B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    sub_2439675B4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/message_lite.cc", 68);
    v7 = sub_2439675CC(v19, "CHECK failed: (byte_size_before_serialization) == (byte_size_after_serialization): ");
    (*(*a4 + 16))(__p, a4);
    v8 = sub_2439675F8(v7, __p);
    v9 = sub_2439675CC(v8, " was modified concurrently during serialization.");
    sub_243967708(&v16, &v9->__r_.__value_.__l.__data_);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    sub_243967710(v19);
  }

  if (a3 != a1)
  {
    sub_2439675B4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/message_lite.cc", 71);
    v10 = sub_2439675CC(v19, "CHECK failed: (bytes_produced_by_serialization) == (byte_size_before_serialization): ");
    v11 = sub_2439675CC(v10, "Byte size calculation and serialization were inconsistent.  This may indicate a bug in protocol buffers or it may be caused by concurrent modification of ");
    (*(*a4 + 16))(__p, a4);
    v12 = sub_2439675F8(v11, __p);
    v13 = sub_2439675CC(v12, ".");
    sub_243967708(&v16, &v13->__r_.__value_.__l.__data_);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    sub_243967710(v19);
  }

  sub_2439675B4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/message_lite.cc", 75);
  v14 = sub_2439675CC(v19, "This shouldn't be called if all the sizes are equal.");
  sub_243967708(__p, &v14->__r_.__value_.__l.__data_);
  return sub_243967710(v19);
}

void sub_243966D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_243967710(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_243966D94(uint64_t a1, uint64_t a2)
{
  sub_243965790(v5, a2);
  v3 = sub_243966988(a1, v5);
  sub_243965918(v5);
  return v3;
}

BOOL sub_243966DF4(uint64_t a1, std::string *a2)
{
  v2 = a2;
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 96))(a1);
  v6 = v5;
  v7 = v5 >> 31;
  if (v5 >> 31)
  {
    sub_2439675B4(v14, 2, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/message_lite.cc", 289);
    v10 = sub_2439675CC(v14, "Exceeded maximum protobuf size of 2GB: ");
    v11 = sub_2439679DC(v10, v6);
    sub_243967708(&v13, &v11->__r_.__value_.__l.__data_);
    sub_243967710(v14);
  }

  else
  {
    std::string::resize(v2, v5 + size, 0);
    if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
    {
      v2 = v2->__r_.__value_.__r.__words[0];
    }

    v8 = (*(*a1 + 112))(a1, v2 + size) - (v2 + size);
    if (v8 != v6)
    {
      v9 = (*(*a1 + 96))(a1);
      sub_243966B90(v6, v9, v8, a1);
    }
  }

  return v7 == 0;
}

void sub_243966F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

BOOL sub_243966F6C(uint64_t a1, std::string *a2)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    *a2->__r_.__value_.__l.__data_ = 0;
    a2->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  return sub_243966DF4(a1, a2);
}

_BYTE *sub_243966F90(uint64_t a1, unsigned __int8 a2, _BYTE *a3)
{
  v6 = (*(*a1 + 136))(a1);
  if (v6)
  {
    v7 = *v6 - 1;
    v8 = *(v6 + 8) + 24;

    return sub_2439622F0(a1, v8, v7, a2, a3);
  }

  else
  {
    v10 = (*(*a1 + 120))(a1);
    sub_243965D58(v17, a3, v10, -1);
    sub_243965790(v14, v17);
    v16 = a2;
    (*(*a1 + 104))(a1, v14);
    if (v15 == 1)
    {
      sub_2439675B4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/message_lite.cc", 373);
      v11 = sub_2439675CC(v13, "CHECK failed: !coded_out.HadError(): ");
      sub_243967708(&v12, &v11->__r_.__value_.__l.__data_);
      sub_243967710(v13);
    }

    sub_243965918(v14);
    return &a3[v10];
  }
}

void sub_243967104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_243967710(va);
  sub_243965918(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_243967130(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = v2 + a2;
  v5 = *(a1 + 16);
  if (v3 < v2 + a2)
  {
    v7 = *a1;
    v8 = 2 * v3;
    if (2 * v3 <= v4)
    {
      v8 = v4;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      v11 = v10 + 15;
      if (*(v7 + 112))
      {
        sub_243961E70(*a1, MEMORY[0x277D827A0], v11 & 0x7FFFFFFF8);
      }

      v12 = sub_243961A00(v7, v11 & 0x7FFFFFFF8);
    }

    else
    {
      v12 = operator new(v10 + 8);
    }

    *(a1 + 16) = v12;
    *(a1 + 12) = v9;
    if (v5 && (v13 = *v5, v13 >= 1))
    {
      memcpy(v12 + 2, v5 + 2, 8 * v13);
      v12 = *(a1 + 16);
      *v12 = *v5;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v12 = 0;
      if (!v7)
      {
LABEL_17:
        operator delete(v5);
        v12 = *(a1 + 16);
      }
    }

    v2 = *(a1 + 8);
    v5 = v12;
  }

  return &v5[2 * v2 + 2];
}

uint64_t sub_243967234(uint64_t result, int a2)
{
  v2 = *(result + 8);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return sub_243967130(result, v4);
  }

  return result;
}

void sub_243967248(int a1, int a2, const std::string::value_type *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2 > 3006001)
  {
    LODWORD(v21) = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/stubs/common.cc";
    v23 = 68;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program requires version ");
    sub_24396763C(a2, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v6 = &v18;
    }

    else
    {
      v6 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v7 = v20;
    }

    else
    {
      v7 = v19;
    }

    std::string::append(&v24, v6, v7);
    std::string::append(&v24, " of the Protocol Buffer runtime library, but the installed version is ");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 6, 1);
    v26 = 0;
    sub_2438BFB70(&__p, __str);
    if ((v17 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v9 = v17;
    }

    else
    {
      v9 = v16;
    }

    std::string::append(&v24, p_p, v9);
    std::string::append(&v24, ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    sub_243967A5C(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  if (a1 < 3006001)
  {
    LODWORD(v21) = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/stubs/common.cc";
    v23 = 79;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program was compiled against version ");
    sub_24396763C(a1, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v10 = &v18;
    }

    else
    {
      v10 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v11 = v20;
    }

    else
    {
      v11 = v19;
    }

    std::string::append(&v24, v10, v11);
    std::string::append(&v24, " of the Protocol Buffer runtime library, which is not compatible with the installed version (");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 6, 1);
    v26 = 0;
    sub_2438BFB70(&__p, __str);
    if ((v17 & 0x80u) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v13 = v17;
    }

    else
    {
      v13 = v16;
    }

    std::string::append(&v24, v12, v13);
    std::string::append(&v24, ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    sub_243967A5C(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_243967544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2439675B4(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

std::string *sub_2439675F8(std::string *a1, const std::string::value_type *a2)
{
  v3 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  std::string::append(a1 + 1, a2, v4);
  return a1;
}

void *sub_24396763C@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d.%d.%d", a1 / 1000000, a1 / 1000 % 1000, a1 % 1000);
  __str[127] = 0;
  result = sub_2438BFB70(a2, __str);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_243967710(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_243967744(uint64_t result, const char *a2, int a3, uint64_t a4)
{
  if ((result & 0x80000000) == 0)
  {
    v4 = MEMORY[0x277D85DF8];
    if (*(a4 + 23) >= 0)
    {
      v5 = a4;
    }

    else
    {
      v5 = *a4;
    }

    fprintf(*MEMORY[0x277D85DF8], "[libprotobuf %s %s:%d] %s\n", off_278DDADB8[result], a2, a3, v5);
    v6 = *v4;

    return fflush(v6);
  }

  return result;
}

void sub_2439677C4()
{
  if (qword_27ED970D8)
  {
    std::mutex::~mutex(qword_27ED970D8);
    operator delete(v0);
  }

  qword_27ED970D8 = 0;
}

void sub_2439677F8()
{
  v0 = operator new(0x40uLL);
  *v0 = 850045863;
  *(v0 + 8) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 7) = 0;
  qword_27ED970D8 = v0;

  sub_243967B44(sub_243967BB4, sub_2439677C4);
}

void sub_24396786C()
{
  v0 = sub_2439677F8;
  if (atomic_load_explicit(&qword_27ED97040, memory_order_acquire) != -1)
  {
    v2 = &v0;
    v1 = &v2;
    std::__call_once(&qword_27ED97040, &v1, sub_24396480C);
  }
}

std::string *sub_2439678DC(std::string *a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

std::string *sub_24396795C(std::string *a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%u", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

std::string *sub_2439679DC(std::string *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%lu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_243967A5C(const char **a1)
{
  if (*a1 == 3)
  {
    v2 = 3;
  }

  else
  {
    sub_24396786C();
    v3 = qword_27ED970D8;
    std::mutex::lock(qword_27ED970D8);
    v4 = dword_27ED970E0;
    std::mutex::unlock(v3);
    if (v4 > 0)
    {
      goto LABEL_6;
    }

    v2 = *a1;
  }

  off_281AF4118(v2, a1[1], *(a1 + 4), (a1 + 3));
LABEL_6:
  if (*a1 == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    sub_243967B3C(exception, a1[1], *(a1 + 4), a1 + 3);
    __cxa_throw(exception, &unk_2856A2B58, sub_243967B40);
  }
}

void sub_243967B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_243967BB8();
  std::mutex::lock((v4 + 24));
  *&v5 = a1;
  *(&v5 + 1) = a2;
  sub_243967C54(v4, &v5);
  std::mutex::unlock((v4 + 24));
}

uint64_t sub_243967BB8()
{
  if ((atomic_load_explicit(&qword_27ED963F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27ED963F8))
  {
    v1 = operator new(0x58uLL);
    *v1 = 0;
    v1[1] = 0;
    v1[2] = 0;
    v1[3] = 850045863;
    *(v1 + 2) = 0u;
    *(v1 + 3) = 0u;
    *(v1 + 4) = 0u;
    v1[10] = 0;
    qword_27ED963B0 = v1;
    __cxa_guard_release(&qword_27ED963F8);
  }

  return qword_27ED963B0;
}

void sub_243967C54(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_243980874();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = sub_2438E6734(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v7];
    v13 = &v11[16 * v10];
    *v12 = *a2;
    v6 = v12 + 16;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_243967D2C(std::exception *this)
{
  this->__vftable = &unk_2856A2B80;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

void sub_243967D8C(std::exception *a1)
{
  sub_243967D2C(a1);

  operator delete(v1);
}

uint64_t sub_243967DB4(uint64_t a1)
{
  result = a1 + 24;
  if (*(a1 + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_243967DD0(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_2856A2B80;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_2438BF99C((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

uint64_t sub_243967E50(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_243967E84(uint64_t a1, int a2, void *__src, size_t __len)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v5 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    if (__src)
    {
      sub_2438C1C28(&__dst, __src, __len);
      if (*(a1 + 31) < 0)
      {
        operator delete(*v5);
      }
    }

    else
    {
      __dst = 0uLL;
      v8 = 0;
    }

    *v5 = __dst;
    *(v5 + 16) = v8;
  }

  return a1;
}

void sub_243967F0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_243967F28()
{
  dword_280F7C1C8 = 0;
  qword_280F7C1D8 = 0;
  unk_280F7C1E0 = 0;
  qword_280F7C1D0 = 0;
  __cxa_atexit(sub_243967E50, &dword_280F7C1C8, &dword_2438A8000);
  sub_243967E84(&unk_280F7C1E8, 1, "", 0);
  __cxa_atexit(sub_243967E50, &unk_280F7C1E8, &dword_2438A8000);
  sub_243967E84(&unk_280F7C208, 2, "", 0);

  return __cxa_atexit(sub_243967E50, &unk_280F7C208, &dword_2438A8000);
}

BOOL sub_243967FF0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 < 8)
  {
    return 0;
  }

  v5 = a2;
  v3 = 0;
  v7 = a2 & 7;
  if (v7 <= 1)
  {
    if ((a2 & 7) != 0)
    {
      if (v7 != 1)
      {
        return v3;
      }

      __p.__r_.__value_.__r.__words[0] = 0;
      v13 = *a1;
      if ((*(a1 + 8) - *a1) < 8)
      {
        if (!sub_24396504C(a1, &__p))
        {
          return 0;
        }
      }

      else
      {
        __p.__r_.__value_.__r.__words[0] = *v13;
        *a1 = v13 + 1;
      }

      if (*(a3 + 16) < 5)
      {
        sub_243965B70(a3, v5);
      }

      else
      {
        v14 = *(a3 + 8);
        if (v5 < 0x80)
        {
          LOBYTE(v16) = v5;
          v15 = *(a3 + 8);
        }

        else
        {
          v15 = *(a3 + 8);
          do
          {
            *v15++ = v5 | 0x80;
            v16 = v5 >> 7;
            v17 = v5 >> 14;
            v5 >>= 7;
          }

          while (v17);
        }

        *v15 = v16;
        v39 = v15 - v14 + 1;
        *(a3 + 8) += v39;
        *(a3 + 16) -= v39;
      }

      sub_243965AE8(a3, __p.__r_.__value_.__l.__data_);
      return 1;
    }

    v25 = *a1;
    if (*a1 >= *(a1 + 8) || (v26 = *v25, (v26 & 0x8000000000000000) != 0))
    {
      v27 = sub_2439650E0(a1);
      if ((v28 & 1) == 0)
      {
        return 0;
      }

      v26 = v27;
    }

    else
    {
      *a1 = v25 + 1;
    }

    if (*(a3 + 16) < 5)
    {
      sub_243965B70(a3, v5);
      v33 = *(a3 + 16);
    }

    else
    {
      v29 = *(a3 + 8);
      if (v5 < 0x80)
      {
        LOBYTE(v31) = v5;
        v30 = *(a3 + 8);
      }

      else
      {
        v30 = *(a3 + 8);
        do
        {
          *v30++ = v5 | 0x80;
          v31 = v5 >> 7;
          v32 = v5 >> 14;
          v5 >>= 7;
        }

        while (v32);
      }

      *v30 = v31;
      v40 = v30 - v29 + 1;
      *(a3 + 8) += v40;
      v33 = *(a3 + 16) - v40;
      *(a3 + 16) = v33;
    }

    if (v33 < 10)
    {
      sub_243965BCC(a3, v26);
    }

    else
    {
      v41 = *(a3 + 8);
      if (v26 < 0x80)
      {
        LOBYTE(v43) = v26;
        v42 = *(a3 + 8);
      }

      else
      {
        v42 = *(a3 + 8);
        do
        {
          *v42++ = v26 | 0x80;
          v43 = v26 >> 7;
          v44 = v26 >> 14;
          v26 >>= 7;
        }

        while (v44);
      }

      *v42 = v43;
      v45 = v42 - v41 + 1;
      *(a3 + 8) += v45;
      *(a3 + 16) -= v45;
    }

    return 1;
  }

  if (v7 == 2)
  {
    v18 = *a1;
    if (*a1 >= *(a1 + 8))
    {
      LODWORD(v19) = 0;
    }

    else
    {
      v19 = *v18;
      if ((*v18 & 0x80000000) == 0)
      {
        *a1 = v18 + 1;
LABEL_72:
        if (*(a3 + 16) < 5)
        {
          sub_243965B70(a3, v5);
          v51 = *(a3 + 16);
        }

        else
        {
          v47 = *(a3 + 8);
          if (v5 < 0x80)
          {
            LOBYTE(v49) = v5;
            v48 = *(a3 + 8);
          }

          else
          {
            v48 = *(a3 + 8);
            do
            {
              *v48++ = v5 | 0x80;
              v49 = v5 >> 7;
              v50 = v5 >> 14;
              v5 >>= 7;
            }

            while (v50);
          }

          *v48 = v49;
          v52 = v48 - v47 + 1;
          *(a3 + 8) += v52;
          v51 = *(a3 + 16) - v52;
          *(a3 + 16) = v51;
        }

        if (v51 < 5)
        {
          sub_243965B70(a3, v19);
        }

        else
        {
          v53 = *(a3 + 8);
          if (v19 < 0x80)
          {
            LOBYTE(v56) = v19;
            v54 = *(a3 + 8);
          }

          else
          {
            v54 = *(a3 + 8);
            v55 = v19;
            do
            {
              *v54++ = v55 | 0x80;
              v56 = v55 >> 7;
              v57 = v55 >> 14;
              v55 >>= 7;
            }

            while (v57);
          }

          *v54 = v56;
          v58 = v54 - v53 + 1;
          *(a3 + 8) += v58;
          *(a3 + 16) -= v58;
        }

        memset(&__p, 0, sizeof(__p));
        v3 = sub_243964E08(a1, &__p, v19);
        if (v3)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v60 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v60 = __p.__r_.__value_.__r.__words[1];
          }

          sub_243965944(a3, p_p, v60);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return v3;
      }
    }

    v19 = sub_24396529C(a1, v19);
    if (v19 < 0)
    {
      return 0;
    }

    goto LABEL_72;
  }

  if (v7 != 3)
  {
    if (v7 != 5)
    {
      return v3;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    v8 = *a1;
    if ((*(a1 + 8) - *a1) >= 4)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = *v8;
      *a1 = v8 + 4;
LABEL_9:
      if (*(a3 + 16) < 5)
      {
        sub_243965B70(a3, v5);
      }

      else
      {
        v9 = *(a3 + 8);
        if (v5 < 0x80)
        {
          LOBYTE(v11) = v5;
          v10 = *(a3 + 8);
        }

        else
        {
          v10 = *(a3 + 8);
          do
          {
            *v10++ = v5 | 0x80;
            v11 = v5 >> 7;
            v12 = v5 >> 14;
            v5 >>= 7;
          }

          while (v12);
        }

        *v10 = v11;
        v38 = v10 - v9 + 1;
        *(a3 + 8) += v38;
        *(a3 + 16) -= v38;
      }

      sub_243965A88(a3, __p.__r_.__value_.__l.__data_);
      return 1;
    }

    if (sub_243964FE4(a1, &__p))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (*(a3 + 16) < 5)
  {
    sub_243965B70(a3, a2);
  }

  else
  {
    v20 = *(a3 + 8);
    if (a2 < 0x80)
    {
      LOBYTE(v23) = a2;
      v21 = *(a3 + 8);
    }

    else
    {
      v21 = *(a3 + 8);
      v22 = a2;
      do
      {
        *v21++ = v22 | 0x80;
        v23 = v22 >> 7;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
    }

    *v21 = v23;
    v34 = v21 - v20 + 1;
    *(a3 + 8) += v34;
    *(a3 + 16) -= v34;
  }

  v35 = *(a1 + 52);
  v36 = __OFSUB__(v35--, 1);
  *(a1 + 52) = v35;
  if (v35 < 0 != v36 || !sub_243968568(a1, a3))
  {
    return 0;
  }

  v37 = *(a1 + 52);
  if (v37 < *(a1 + 56))
  {
    *(a1 + 52) = v37 + 1;
  }

  return *(a1 + 32) == (v5 & 0xFFFFFFF8 | 4);
}

void sub_24396854C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_243968568(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *a1;
    if (*a1 >= *(a1 + 8))
    {
      v5 = 0;
    }

    else
    {
      v5 = *v4;
      if ((*v4 & 0x80000000) == 0)
      {
        *a1 = v4 + 1;
        goto LABEL_6;
      }
    }

    LODWORD(v5) = sub_2439655D8(a1, v5);
LABEL_6:
    *(a1 + 32) = v5;
    v6 = v5 == 0;
    if (!v5)
    {
      return v6;
    }

    if ((v5 & 7) == 4)
    {
      break;
    }

    if ((sub_243967FF0(a1) & 1) == 0)
    {
      return v6;
    }
  }

  if (*(a2 + 16) < 5)
  {
    sub_243965B70(a2, v5);
  }

  else
  {
    v7 = *(a2 + 8);
    if (v5 < 0x80)
    {
      LOBYTE(v9) = v5;
      v8 = *(a2 + 8);
    }

    else
    {
      v8 = *(a2 + 8);
      do
      {
        *v8++ = v5 | 0x80;
        v9 = v5 >> 7;
        v10 = v5 >> 14;
        LODWORD(v5) = v5 >> 7;
      }

      while (v10);
    }

    *v8 = v9;
    v11 = v8 - v7 + 1;
    *(a2 + 8) += v11;
    *(a2 + 16) -= v11;
  }

  return 1;
}

uint64_t sub_243968670(uint64_t result, signed int a2, uint64_t a3)
{
  v5 = 8 * result;
  if (*(a3 + 16) < 5)
  {
    result = sub_243965B70(a3, v5);
    v10 = *(a3 + 16);
  }

  else
  {
    v6 = *(a3 + 8);
    if (v5 < 0x80)
    {
      LOBYTE(v8) = 8 * result;
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = *(a3 + 8);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v11 = v7 - v6 + 1;
    *(a3 + 8) += v11;
    v10 = *(a3 + 16) - v11;
    *(a3 + 16) = v10;
  }

  v12 = a2;
  if (v10 < 10)
  {

    return sub_243965BCC(a3, a2);
  }

  else
  {
    v13 = *(a3 + 8);
    if (a2 < 0x80)
    {
      LOBYTE(v15) = a2;
      v14 = *(a3 + 8);
    }

    else
    {
      v14 = *(a3 + 8);
      do
      {
        *v14++ = v12 | 0x80;
        v15 = v12 >> 7;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
    }

    *v14 = v15;
    v17 = v14 - v13 + 1;
    *(a3 + 8) += v17;
    *(a3 + 16) -= v17;
  }

  return result;
}

uint64_t sub_243968790(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = 8 * result;
  if (*(a3 + 16) < 5)
  {
    result = sub_243965B70(a3, v5);
    v10 = *(a3 + 16);
  }

  else
  {
    v6 = *(a3 + 8);
    if (v5 < 0x80)
    {
      LOBYTE(v8) = 8 * result;
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = *(a3 + 8);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v11 = v7 - v6 + 1;
    *(a3 + 8) += v11;
    v10 = *(a3 + 16) - v11;
    *(a3 + 16) = v10;
  }

  if (v10 < 5)
  {

    return sub_243965B70(a3, a2);
  }

  else
  {
    v12 = *(a3 + 8);
    if (a2 < 0x80)
    {
      LOBYTE(v14) = a2;
      v13 = *(a3 + 8);
    }

    else
    {
      v13 = *(a3 + 8);
      do
      {
        *v13++ = a2 | 0x80;
        v14 = a2 >> 7;
        v15 = a2 >> 14;
        a2 >>= 7;
      }

      while (v15);
    }

    *v13 = v14;
    v16 = v13 - v12 + 1;
    *(a3 + 8) += v16;
    *(a3 + 16) -= v16;
  }

  return result;
}

uint64_t sub_2439688B0(uint64_t result, unint64_t a2, uint64_t a3)
{
  v5 = 8 * result;
  if (*(a3 + 16) < 5)
  {
    result = sub_243965B70(a3, v5);
    v10 = *(a3 + 16);
  }

  else
  {
    v6 = *(a3 + 8);
    if (v5 < 0x80)
    {
      LOBYTE(v8) = 8 * result;
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = *(a3 + 8);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v11 = v7 - v6 + 1;
    *(a3 + 8) += v11;
    v10 = *(a3 + 16) - v11;
    *(a3 + 16) = v10;
  }

  if (v10 < 10)
  {

    return sub_243965BCC(a3, a2);
  }

  else
  {
    v12 = *(a3 + 8);
    if (a2 < 0x80)
    {
      LOBYTE(v14) = a2;
      v13 = *(a3 + 8);
    }

    else
    {
      v13 = *(a3 + 8);
      do
      {
        *v13++ = a2 | 0x80;
        v14 = a2 >> 7;
        v15 = a2 >> 14;
        a2 >>= 7;
      }

      while (v15);
    }

    *v13 = v14;
    v16 = v13 - v12 + 1;
    *(a3 + 8) += v16;
    *(a3 + 16) -= v16;
  }

  return result;
}

uint64_t sub_2439689D0(uint64_t result, int a2, uint64_t a3)
{
  v5 = 8 * result;
  if (*(a3 + 16) < 5)
  {
    result = sub_243965B70(a3, v5);
    v10 = *(a3 + 16);
  }

  else
  {
    v6 = *(a3 + 8);
    if (v5 < 0x80)
    {
      LOBYTE(v8) = 8 * result;
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = *(a3 + 8);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v11 = v7 - v6 + 1;
    *(a3 + 8) += v11;
    v10 = *(a3 + 16) - v11;
    *(a3 + 16) = v10;
  }

  v12 = (2 * a2) ^ (a2 >> 31);
  if (v10 < 5)
  {

    return sub_243965B70(a3, v12);
  }

  else
  {
    v13 = *(a3 + 8);
    if (v12 < 0x80)
    {
      v15 = (2 * a2) ^ (a2 >> 31);
      v14 = *(a3 + 8);
    }

    else
    {
      v14 = *(a3 + 8);
      do
      {
        *v14++ = v12 | 0x80;
        v15 = v12 >> 7;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
    }

    *v14 = v15;
    v17 = v14 - v13 + 1;
    *(a3 + 8) += v17;
    *(a3 + 16) -= v17;
  }

  return result;
}

uint64_t sub_243968AF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = 8 * result;
  if (*(a3 + 16) < 5)
  {
    result = sub_243965B70(a3, v5);
    v10 = *(a3 + 16);
  }

  else
  {
    v6 = *(a3 + 8);
    if (v5 < 0x80)
    {
      LOBYTE(v8) = 8 * result;
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = *(a3 + 8);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v11 = v7 - v6 + 1;
    *(a3 + 8) += v11;
    v10 = *(a3 + 16) - v11;
    *(a3 + 16) = v10;
  }

  v12 = (2 * a2) ^ (a2 >> 63);
  if (v10 < 10)
  {

    return sub_243965BCC(a3, v12);
  }

  else
  {
    v13 = *(a3 + 8);
    if (v12 < 0x80)
    {
      v15 = (2 * a2) ^ (a2 >> 63);
      v14 = *(a3 + 8);
    }

    else
    {
      v14 = *(a3 + 8);
      do
      {
        *v14++ = v12 | 0x80;
        v15 = v12 >> 7;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
    }

    *v14 = v15;
    v17 = v14 - v13 + 1;
    *(a3 + 8) += v17;
    *(a3 + 16) -= v17;
  }

  return result;
}

uint64_t sub_243968C18(int a1, uint64_t a2, uint64_t a3)
{
  v5 = (8 * a1) | 1;
  if (*(a3 + 16) < 5)
  {
    sub_243965B70(a3, v5);
  }

  else
  {
    v6 = *(a3 + 8);
    if ((8 * a1) < 0x80)
    {
      LOBYTE(v8) = (8 * a1) | 1;
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = *(a3 + 8);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v10 = v7 - v6 + 1;
    *(a3 + 8) += v10;
    *(a3 + 16) -= v10;
  }

  return sub_243965AE8(a3, a2);
}

uint64_t sub_243968CD0(int a1, uint64_t a2, double a3)
{
  v5 = (8 * a1) | 1;
  if (*(a2 + 16) < 5)
  {
    sub_243965B70(a2, v5);
  }

  else
  {
    v6 = *(a2 + 8);
    if ((8 * a1) < 0x80)
    {
      LOBYTE(v8) = (8 * a1) | 1;
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = *(a2 + 8);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v10 = v7 - v6 + 1;
    *(a2 + 8) += v10;
    *(a2 + 16) -= v10;
  }

  return sub_243965AE8(a2, *&a3);
}

uint64_t sub_243968D90(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = 8 * result;
  if (*(a3 + 16) < 5)
  {
    result = sub_243965B70(a3, v5);
    v10 = *(a3 + 16);
  }

  else
  {
    v6 = *(a3 + 8);
    if (v5 < 0x80)
    {
      LOBYTE(v8) = 8 * result;
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = *(a3 + 8);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v11 = v7 - v6 + 1;
    *(a3 + 8) += v11;
    v10 = *(a3 + 16) - v11;
    *(a3 + 16) = v10;
  }

  if (v10 < 5)
  {

    return sub_243965B70(a3, a2);
  }

  else
  {
    *(*(a3 + 8))++ = a2;
    --*(a3 + 16);
  }

  return result;
}

uint64_t sub_243968E78(int a1, uint64_t a2, uint64_t a3)
{
  v5 = (8 * a1) | 2;
  if (*(a3 + 16) < 5)
  {
    sub_243965B70(a3, v5);
  }

  else
  {
    v6 = *(a3 + 8);
    if ((8 * a1) < 0x80)
    {
      LOBYTE(v8) = (8 * a1) | 2;
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = *(a3 + 8);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v10 = v7 - v6 + 1;
    *(a3 + 8) += v10;
    *(a3 + 16) -= v10;
  }

  v11 = *(a2 + 23);
  if (v11 < 0 && *(a2 + 8) >> 31)
  {
    sub_2439675B4(v24, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/wire_format_lite.cc", 507);
    v12 = sub_2439675CC(v24, "CHECK failed: (value.size()) <= (kint32max): ");
    sub_243967708(&v23, &v12->__r_.__value_.__l.__data_);
    sub_243967710(v24);
    LOBYTE(v11) = *(a2 + 23);
  }

  if ((v11 & 0x80u) == 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(a2 + 8);
  }

  if (*(a3 + 16) < 5)
  {
    sub_243965B70(a3, v13);
  }

  else
  {
    v14 = *(a3 + 8);
    if (v13 < 0x80)
    {
      LOBYTE(v16) = v13;
      v15 = *(a3 + 8);
    }

    else
    {
      v15 = *(a3 + 8);
      do
      {
        *v15++ = v13 | 0x80;
        v16 = v13 >> 7;
        v17 = v13 >> 14;
        v13 >>= 7;
      }

      while (v17);
    }

    *v15 = v16;
    v18 = v15 - v14 + 1;
    *(a3 + 8) += v18;
    *(a3 + 16) -= v18;
  }

  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  return sub_243965944(a3, v20, v21);
}

void sub_24396901C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

uint64_t sub_243969034(int a1, uint64_t a2, uint64_t a3)
{
  v5 = (8 * a1) | 2;
  if (*(a3 + 16) < 5)
  {
    sub_243965B70(a3, v5);
  }

  else
  {
    v6 = *(a3 + 8);
    if ((8 * a1) < 0x80)
    {
      LOBYTE(v8) = (8 * a1) | 2;
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = *(a3 + 8);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v10 = v7 - v6 + 1;
    *(a3 + 8) += v10;
    *(a3 + 16) -= v10;
  }

  v11 = *(a2 + 23);
  if (v11 < 0 && *(a2 + 8) >> 31)
  {
    sub_2439675B4(v24, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/wire_format_lite.cc", 516);
    v12 = sub_2439675CC(v24, "CHECK failed: (value.size()) <= (kint32max): ");
    sub_243967708(&v23, &v12->__r_.__value_.__l.__data_);
    sub_243967710(v24);
    LOBYTE(v11) = *(a2 + 23);
  }

  if ((v11 & 0x80u) == 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(a2 + 8);
  }

  if (*(a3 + 16) < 5)
  {
    sub_243965B70(a3, v13);
  }

  else
  {
    v14 = *(a3 + 8);
    if (v13 < 0x80)
    {
      LOBYTE(v16) = v13;
      v15 = *(a3 + 8);
    }

    else
    {
      v15 = *(a3 + 8);
      do
      {
        *v15++ = v13 | 0x80;
        v16 = v13 >> 7;
        v17 = v13 >> 14;
        v13 >>= 7;
      }

      while (v17);
    }

    *v15 = v16;
    v18 = v15 - v14 + 1;
    *(a3 + 8) += v18;
    *(a3 + 16) -= v18;
  }

  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  if (*(a3 + 25) == 1)
  {
    return sub_2439659CC(a3, v20, v21);
  }

  else
  {
    return sub_243965944(a3, v20, v21);
  }
}

void sub_2439691EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

uint64_t sub_243969204(int a1, uint64_t a2, uint64_t a3)
{
  v5 = (8 * a1) | 2;
  if (*(a3 + 16) < 5)
  {
    sub_243965B70(a3, v5);
  }

  else
  {
    v6 = *(a3 + 8);
    if ((8 * a1) < 0x80)
    {
      LOBYTE(v8) = (8 * a1) | 2;
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = *(a3 + 8);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v10 = v7 - v6 + 1;
    *(a3 + 8) += v10;
    *(a3 + 16) -= v10;
  }

  v11 = *(a2 + 23);
  if (v11 < 0 && *(a2 + 8) >> 31)
  {
    sub_2439675B4(v24, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/wire_format_lite.cc", 523);
    v12 = sub_2439675CC(v24, "CHECK failed: (value.size()) <= (kint32max): ");
    sub_243967708(&v23, &v12->__r_.__value_.__l.__data_);
    sub_243967710(v24);
    LOBYTE(v11) = *(a2 + 23);
  }

  if ((v11 & 0x80u) == 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(a2 + 8);
  }

  if (*(a3 + 16) < 5)
  {
    sub_243965B70(a3, v13);
  }

  else
  {
    v14 = *(a3 + 8);
    if (v13 < 0x80)
    {
      LOBYTE(v16) = v13;
      v15 = *(a3 + 8);
    }

    else
    {
      v15 = *(a3 + 8);
      do
      {
        *v15++ = v13 | 0x80;
        v16 = v13 >> 7;
        v17 = v13 >> 14;
        v13 >>= 7;
      }

      while (v17);
    }

    *v15 = v16;
    v18 = v15 - v14 + 1;
    *(a3 + 8) += v18;
    *(a3 + 16) -= v18;
  }

  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  return sub_243965944(a3, v20, v21);
}

void sub_2439693A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2439693C0(int a1, uint64_t a2, uint64_t a3)
{
  v5 = (8 * a1) | 2;
  if (*(a3 + 16) < 5)
  {
    sub_243965B70(a3, v5);
  }

  else
  {
    v6 = *(a3 + 8);
    if ((8 * a1) < 0x80)
    {
      LOBYTE(v8) = (8 * a1) | 2;
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = *(a3 + 8);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v10 = v7 - v6 + 1;
    *(a3 + 8) += v10;
    *(a3 + 16) -= v10;
  }

  v11 = *(a2 + 23);
  if (v11 < 0 && *(a2 + 8) >> 31)
  {
    sub_2439675B4(v24, 3, "/Library/Caches/com.apple.xbs/Sources/CloudKit/Submodules/CKDistributedSyncDependencies/orc-dependencies/protobuf-3.6.1/src/google/protobuf/wire_format_lite.cc", 531);
    v12 = sub_2439675CC(v24, "CHECK failed: (value.size()) <= (kint32max): ");
    sub_243967708(&v23, &v12->__r_.__value_.__l.__data_);
    sub_243967710(v24);
    LOBYTE(v11) = *(a2 + 23);
  }

  if ((v11 & 0x80u) == 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(a2 + 8);
  }

  if (*(a3 + 16) < 5)
  {
    sub_243965B70(a3, v13);
  }

  else
  {
    v14 = *(a3 + 8);
    if (v13 < 0x80)
    {
      LOBYTE(v16) = v13;
      v15 = *(a3 + 8);
    }

    else
    {
      v15 = *(a3 + 8);
      do
      {
        *v15++ = v13 | 0x80;
        v16 = v13 >> 7;
        v17 = v13 >> 14;
        v13 >>= 7;
      }

      while (v17);
    }

    *v15 = v16;
    v18 = v15 - v14 + 1;
    *(a3 + 8) += v18;
    *(a3 + 16) -= v18;
  }

  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  if (*(a3 + 25) == 1)
  {
    return sub_2439659CC(a3, v20, v21);
  }

  else
  {
    return sub_243965944(a3, v20, v21);
  }
}

void sub_243969578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_243967710(va);
  _Unwind_Resume(a1);
}

uint64_t sub_243969590(int a1, uint64_t a2, uint64_t a3)
{
  v5 = (8 * a1) | 2;
  if (*(a3 + 16) < 5)
  {
    sub_243965B70(a3, v5);
  }

  else
  {
    v6 = *(a3 + 8);
    if ((8 * a1) < 0x80)
    {
      LOBYTE(v8) = (8 * a1) | 2;
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = *(a3 + 8);
      do
      {
        *v7++ = v5 | 0x80;
        v8 = v5 >> 7;
        v9 = v5 >> 14;
        v5 >>= 7;
      }

      while (v9);
    }

    *v7 = v8;
    v10 = v7 - v6 + 1;
    *(a3 + 8) += v10;
    *(a3 + 16) -= v10;
  }

  v11 = (*(*a2 + 120))(a2);
  v12 = v11;
  if (*(a3 + 16) < 5)
  {
    sub_243965B70(a3, v11);
  }

  else
  {
    v13 = *(a3 + 8);
    if (v11 < 0x80)
    {
      LOBYTE(v15) = v11;
      v14 = *(a3 + 8);
    }

    else
    {
      v14 = *(a3 + 8);
      do
      {
        *v14++ = v12 | 0x80;
        v15 = v12 >> 7;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
    }

    *v14 = v15;
    v17 = v14 - v13 + 1;
    *(a3 + 8) += v17;
    *(a3 + 16) -= v17;
  }

  v18 = *(*a2 + 104);

  return v18(a2, a3);
}

BOOL sub_243969704(unint64_t *a1, std::string *this)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a1 >= v4)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = *v5;
    if ((*v5 & 0x80000000) == 0)
    {
      v7 = (v5 + 1);
      *a1 = v7;
      goto LABEL_4;
    }
  }

  v10 = sub_24396529C(a1, v6);
  if ((v10 & 0x8000000080000000) != 0)
  {
    return 0;
  }

  v6 = v10;
  v7 = *a1;
  v4 = a1[1];
LABEL_4:
  if (v6 <= v4 - v7)
  {
    v9 = v6;
    std::string::resize(this, v6, 0);
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this = this->__r_.__value_.__r.__words[0];
    }

    memcpy(this, *a1, v9);
    *a1 += v9;
    return 1;
  }

  else
  {

    return sub_243964EBC(a1, this, v6);
  }
}

uint64_t sub_2439697F0(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = (*(a1 + 1) + 8);
  do
  {
    v5 = *v4++;
    result += (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_243969840(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = (*(a1 + 1) + 8);
  do
  {
    v5 = *v4++;
    result += (9 * (__clz(v5 | 1) ^ 0x3F) + 73) >> 6;
    --v1;
  }

  while (v1);
  return result;
}

void sub_24396A7AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v10 = objc_msgSend_atoms(v3, v4, v5, v6, v7, v8, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_24396A8AC;
  v16[3] = &unk_278DDADE0;
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = v20;
  objc_msgSend_enumerate_(v10, v11, v16, v12, v13, v14, v15);

  _Block_object_dispose(v20, 8);
}

void sub_24396A894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24396A8AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = *(a1 + 32);
  v87 = v3;
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = objc_msgSend_atomType(v9, v3, v4, v5, v6, v7, v8);
  v3 = v87;
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = v10;
  v12 = objc_msgSend_atomType(v87, v87, v4, v5, v6, v7, v8);
  v19 = objc_msgSend_atomType(*(a1 + 32), v13, v14, v15, v16, v17, v18);
  v26 = objc_msgSend_unsignedIntegerValue(v19, v20, v21, v22, v23, v24, v25);

  v3 = v87;
  if (v12 == v26)
  {
LABEL_4:
    v27 = objc_msgSend_timestamp(v3, v3, v4, v5, v6, v7, v8);
    v34 = objc_msgSend_distributedSiteIdentifier(v27, v28, v29, v30, v31, v32, v33);
    v41 = objc_msgSend_modifier(v34, v35, v36, v37, v38, v39, v40);
    if (v41)
    {
      v48 = v41;
      v49 = objc_msgSend_siteIdentifierModifier(*(a1 + 32), v42, v43, v44, v45, v46, v47);
      if (v49)
      {
        v56 = v49;
        v57 = objc_msgSend_timestamp(v87, v50, v51, v52, v53, v54, v55);
        v64 = objc_msgSend_distributedSiteIdentifier(v57, v58, v59, v60, v61, v62, v63);
        v71 = objc_msgSend_modifier(v64, v65, v66, v67, v68, v69, v70);
        v78 = objc_msgSend_siteIdentifierModifier(*(a1 + 32), v72, v73, v74, v75, v76, v77);
        isEqual = objc_msgSend_isEqual_(v71, v79, v78, v80, v81, v82, v83);

        if ((isEqual & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_10:
        v85 = *(*(*(a1 + 48) + 8) + 24);
        (*(*(a1 + 40) + 16))();
        ++*(*(*(a1 + 48) + 8) + 24);
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  return MEMORY[0x2821F96F8]();
}

void sub_24396AC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24396AC80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24396AC98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = objc_msgSend_atoms(a2, a2, a3, a4, a5, a6, a7);
  v13 = objc_msgSend_proxyAtIndex_(v16, v8, *(a1 + 40), v9, v10, v11, v12);
  v14 = *(*(a1 + 32) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

void sub_24396AE34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = objc_msgSend_atoms(a2, a2, a3, a4, a5, a6, a7);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_24396AEEC;
  v17[3] = &unk_278DDAE58;
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v19 = v9;
  v17[4] = v10;
  v18 = v11;
  objc_msgSend_appendWithProxyBlock_(v8, v12, v17, v13, v14, v15, v16);
}

void sub_24396AEEC(uint64_t a1, void *a2)
{
  v21 = a2;
  (*(*(a1 + 48) + 16))();
  if (objc_msgSend_formatVersion(*(a1 + 32), v3, v4, v5, v6, v7, v8) <= 2 && *(a1 + 40))
  {
    v15 = objc_msgSend_location(v21, v9, v10, v11, v12, v13, v14);
    objc_msgSend_copyFromMergeableValueID_(v15, v16, *(a1 + 40), v17, v18, v19, v20);
  }
}

void sub_24396B3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_24396B418(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v149[0] = MEMORY[0x277D85DD0];
  v149[1] = 3221225472;
  v149[2] = sub_24396B844;
  v149[3] = &unk_278DDAEA8;
  v150 = *(a1 + 56);
  v151 = a4;
  v8 = MEMORY[0x245D43840](v149);
  v15 = objc_msgSend_timestamp(v7, v9, v10, v11, v12, v13, v14);
  v22 = objc_msgSend_timestamp(v15, v16, v17, v18, v19, v20, v21);

  v29 = objc_msgSend_timestamp(v7, v23, v24, v25, v26, v27, v28);
  v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"Atom %lu is missing timestamp", v31, v32, v33, v34, a3);
  (v8)[2](v8, v29 != 0, v35);

  v42 = *(a1 + 72);
  if (v42 == 3)
  {
    v43 = objc_msgSend_timestamp(v7, v36, v37, v38, v39, v40, v41);
    v50 = objc_msgSend_distributedSiteIdentifier(v43, v57, v58, v59, v60, v61, v62);
    v56 = objc_msgSend_identifier(v50, v63, v64, v65, v66, v67, v68);
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v69, @"Atom %lu is missing site identifier", v70, v71, v72, v73, a3);
    v74 = a3;
    v76 = v75 = v7;
    (v8)[2](v8, v56 != 0, v76);

    v7 = v75;
    a3 = v74;
  }

  else
  {
    if (v42 != 2)
    {
      goto LABEL_6;
    }

    v43 = objc_msgSend_timestamp(v7, v36, v37, v38, v39, v40, v41);
    v50 = objc_msgSend_siteIdentifier(v43, v44, v45, v46, v47, v48, v49);
    v56 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v51, @"Atom %lu is missing site identifier", v52, v53, v54, v55, a3);
    (v8)[2](v8, v50 != 0, v56);
  }

LABEL_6:
  v77 = objc_msgSend_contents(*(a1 + 32), v36, v37, v38, v39, v40, v41);
  v83 = objc_msgSend_atomStateForTimestamp_(v77, v78, v22, v79, v80, v81, v82);

  v84 = MEMORY[0x277CCACA8];
  v91 = objc_msgSend_contents(*(a1 + 32), v85, v86, v87, v88, v89, v90);
  v97 = objc_msgSend_stringWithFormat_(v84, v92, @"Timestamp %@ for atom %lu not included in contents vector %@", v93, v94, v95, v96, v22, a3, v91);
  (v8)[2](v8, v83 != 0, v97);

  if (v83 == 3)
  {
    v104 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v98, @"Atom %lu with timestamp %@ is marked as missing", v100, v101, v102, v103, a3, v22);
    (v8)[2](v8, 0, v104);
  }

  else
  {
    if (v83 != 2)
    {
      goto LABEL_11;
    }

    v104 = objc_msgSend_value(v7, v98, v99, v100, v101, v102, v103);
    v110 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v105, @"Atom %lu with timestamp %@ is marked as tombstoned, but has value", v106, v107, v108, v109, a3, v22);
    (v8)[2](v8, v104 == 0, v110);
  }

LABEL_11:
  v111 = objc_msgSend_references(v7, v98, v99, v100, v101, v102, v103);
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 3221225472;
  v144[2] = sub_24396B958;
  v144[3] = &unk_278DDAED0;
  v112 = v8;
  v146 = v112;
  v147 = a3;
  v148 = *(a1 + 72);
  v145 = *(a1 + 40);
  objc_msgSend_enumerate_(v111, v113, v144, v114, v115, v116, v117);

  if (v22)
  {
    v124 = *(a1 + 48);
    v125 = MEMORY[0x277CCAA78];
    v126 = objc_msgSend_clockValue(v22, v118, v119, v120, v121, v122, v123);
    v132 = objc_msgSend_indexSetWithIndex_(v125, v127, v126, v128, v129, v130, v131);
    v139 = objc_msgSend_siteIdentifierObject(v22, v133, v134, v135, v136, v137, v138);
    objc_msgSend_addClockValuesInIndexSet_forSiteIdentifier_(v124, v140, v132, v139, v141, v142, v143);
  }
}

void sub_24396B844(uint64_t a1, char a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 32) + 8) + 40) && (a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v4 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = a3;
    v5 = MEMORY[0x277CBEAC0];
    v6 = a3;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v5, v7, v19, &v18, 1, v8, v9);
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(v4, v11, @"CKDSErrorDomain", 3, v10, v12, v13);
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    **(a1 + 48) = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_24396B958(uint64_t a1, void *a2, uint64_t a3)
{
  v111 = a2;
  v11 = objc_msgSend_timestamp(v111, v5, v6, v7, v8, v9, v10);
  v18 = objc_msgSend_timestamp(v11, v12, v13, v14, v15, v16, v17);

  v19 = *(a1 + 40);
  v26 = objc_msgSend_timestamp(v111, v20, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"Reference %lu in atom %lu is missing timestamp", v28, v29, v30, v31, a3, *(a1 + 48));
  (*(v19 + 16))(v19, v26 != 0, v32);

  if (!(*(a1 + 48) | a3))
  {
    v39 = objc_msgSend_timestamp(v111, v33, v34, v35, v36, v37, v38);
    v46 = objc_msgSend_siteIdentifier(v39, v40, v41, v42, v43, v44, v45);
    if (v46)
    {
    }

    else
    {
      v53 = objc_msgSend_timestamp(v111, v47, v48, v49, v50, v51, v52);
      v60 = objc_msgSend_clock(v53, v54, v55, v56, v57, v58, v59);

      if (!v60)
      {
        goto LABEL_12;
      }
    }
  }

  v61 = *(a1 + 56);
  if (v61 == 3)
  {
    v78 = *(a1 + 40);
    v64 = objc_msgSend_timestamp(v111, v33, v34, v35, v36, v37, v38);
    v71 = objc_msgSend_distributedSiteIdentifier(v64, v79, v80, v81, v82, v83, v84);
    v77 = objc_msgSend_identifier(v71, v85, v86, v87, v88, v89, v90);
    v96 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v91, @"Reference %lu in atom %lu is missing site identifier", v92, v93, v94, v95, a3, *(a1 + 48));
    (*(v78 + 16))(v78, v77 != 0, v96);
  }

  else
  {
    v62 = v111;
    if (v61 != 2)
    {
      goto LABEL_10;
    }

    v63 = *(a1 + 40);
    v64 = objc_msgSend_timestamp(v111, v33, v34, v35, v36, v37, v38);
    v71 = objc_msgSend_siteIdentifier(v64, v65, v66, v67, v68, v69, v70);
    v77 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v72, @"Reference %lu in atom %lu is missing site identifier", v73, v74, v75, v76, a3, *(a1 + 48));
    (*(v63 + 16))(v63, v71 != 0, v77);
  }

  v62 = v111;
LABEL_10:
  v97 = objc_msgSend_location(v62, v33, v34, v35, v36, v37, v38);

  if (!v97)
  {
    v103 = *(a1 + 40);
    v104 = objc_msgSend_includesTimestamp_(*(a1 + 32), v98, v18, v99, v100, v101, v102);
    v110 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v105, @"Timestamp %@ for reference %lu in atom %lu is not present in vectors", v106, v107, v108, v109, v18, a3, *(a1 + 48));
    (*(v103 + 16))(v103, v104, v110);
  }

LABEL_12:
}

void sub_24396C160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24396C178(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = objc_msgSend_atoms(a2, a2, a3, a4, a5, a6, a7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_24396C208;
  v14[3] = &unk_278DDAF20;
  v14[4] = *(a1 + 32);
  objc_msgSend_enumerate_(v8, v9, v14, v10, v11, v12, v13);
}

void sub_24396C208(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = objc_msgSend_location(a2, a2, a3, a4, a5, a6, a7);
  v16 = objc_msgSend_mergeableValueID(v9, v10, v11, v12, v13, v14, v15);
  v17 = *(*(a1 + 32) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  *a4 = 1;
}

void sub_24396C530(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = objc_msgSend_atoms(a2, a2, a3, a4, a5, a6, a7);
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_count(v14, v8, v9, v10, v11, v12, v13);
}

void sub_24396C58C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = objc_msgSend_atoms(a2, a2, a3, a4, a5, a6, a7);
  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_count(v14, v8, v9, v10, v11, v12, v13);
}

void sub_24396C698(uint64_t a1, void *a2)
{
  v91 = a2;
  v9 = objc_msgSend_timestamp(v91, v3, v4, v5, v6, v7, v8);
  v16 = objc_msgSend_distributedSiteIdentifier(v9, v10, v11, v12, v13, v14, v15);
  v23 = objc_msgSend_identifier(v16, v17, v18, v19, v20, v21, v22);
  v30 = v23;
  if (v23)
  {
    v31 = v23;
  }

  else
  {
    v32 = objc_msgSend_timestamp(v91, v24, v25, v26, v27, v28, v29);
    v31 = objc_msgSend_siteIdentifier(v32, v33, v34, v35, v36, v37, v38);
  }

  v45 = objc_msgSend_timestamp(v91, v39, v40, v41, v42, v43, v44);
  v52 = objc_msgSend_distributedSiteIdentifier(v45, v46, v47, v48, v49, v50, v51);
  v59 = objc_msgSend_modifier(v52, v53, v54, v55, v56, v57, v58);

  v60 = objc_alloc(MEMORY[0x277CBC2C8]);
  v65 = objc_msgSend_initWithIdentifier_modifier_(v60, v61, v31, v59, v62, v63, v64);
  v66 = *(a1 + 32);
  v67 = MEMORY[0x277CCAA78];
  v74 = objc_msgSend_timestamp(v91, v68, v69, v70, v71, v72, v73);
  v81 = objc_msgSend_clock(v74, v75, v76, v77, v78, v79, v80);
  v87 = objc_msgSend_indexSetWithIndex_(v67, v82, v81, v83, v84, v85, v86);
  objc_msgSend_addClockValuesInIndexSet_withAtomState_forSiteIdentifier_(v66, v88, v87, 1, v65, v89, v90);
}

void sub_24396CBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_24396CC20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v12 = objc_msgSend_timestamp(v5, v6, v7, v8, v9, v10, v11);
  v19 = objc_msgSend_timestamp(v12, v13, v14, v15, v16, v17, v18);

  if (*(a1 + 72) == 1)
  {
    objc_msgSend_descriptionWithStringSiteIdentifiers(v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    objc_msgSend_description(v19, v20, v21, v22, v23, v24, v25);
  }
  v26 = ;
  v39 = objc_msgSend_mergeableValueID(*(a1 + 32), v27, v28, v29, v30, v31, v32);
  v40 = *(*(a1 + 56) + 8);
  v43 = *(v40 + 40);
  v42 = (v40 + 40);
  v41 = v43;
  if (v43)
  {
    v44 = v39 == 0;
  }

  else
  {
    v44 = 1;
  }

  if (v44)
  {
    if (v41 == v39)
    {
      goto LABEL_12;
    }

LABEL_16:
    v47 = v39;
    v48 = *v42;
    *v42 = v39;

    *(*(*(a1 + 64) + 8) + 24) = 0;
    if (a3)
    {
      objc_msgSend_appendFormat_(*(a1 + 40), v33, @"\n  },\n", v35, v36, v37, v38);
    }

    goto LABEL_19;
  }

  isEqual = objc_msgSend_isEqual_(v41, v33, v39, v35, v36, v37, v38);
  if ((isEqual & 1) == 0)
  {
    v42 = (*(*(a1 + 56) + 8) + 40);
    goto LABEL_16;
  }

LABEL_12:
  v46 = *(*(a1 + 64) + 8);
  if (!a3)
  {
    *(v46 + 24) = 0;
LABEL_19:
    v49 = *(a1 + 40);
    v50 = objc_msgSend_name(*(*(*(a1 + 56) + 8) + 40), v33, v34, v35, v36, v37, v38);
    objc_msgSend_appendFormat_(v49, v51, @"  ValueID %@ {\n", v52, v53, v54, v55, v50);

    goto LABEL_20;
  }

  if (*(v46 + 24))
  {
    objc_msgSend_appendFormat_(*(a1 + 40), v33, @",\n", v35, v36, v37, v38);
  }

LABEL_20:
  objc_msgSend_appendFormat_(*(a1 + 40), v33, @"    Atom {\n", v35, v36, v37, v38);
  objc_msgSend_appendFormat_(*(a1 + 40), v56, @"      Timestamp: %@\n", v57, v58, v59, v60, v26);
  v61 = *(a1 + 40);
  v68 = objc_msgSend_atomType(v5, v62, v63, v64, v65, v66, v67);
  objc_msgSend_appendFormat_(v61, v69, @"      Type: %lu\n", v70, v71, v72, v73, v68);
  v80 = objc_msgSend_references(v5, v74, v75, v76, v77, v78, v79);
  v120 = MEMORY[0x277D85DD0];
  v121 = 3221225472;
  v122 = sub_24396CF24;
  v123 = &unk_278DDAFC0;
  v124 = *(a1 + 40);
  objc_msgSend_enumerate_(v80, v81, &v120, v82, v83, v84, v85);

  v92 = objc_msgSend_value(v5, v86, v87, v88, v89, v90, v91);

  if (v92)
  {
    v99 = objc_msgSend_atomValueDescriptionBlock(*(a1 + 32), v93, v94, v95, v96, v97, v98);

    v106 = *(a1 + 40);
    if (v99)
    {
      v107 = objc_msgSend_atomValueDescriptionBlock(*(a1 + 32), v100, v101, v102, v103, v104, v105);
      (v107)[2](v107, v5);
    }

    else
    {
      v107 = objc_msgSend_value(v5, v100, v101, v102, v103, v104, v105);
      objc_msgSend_description(v107, v108, v109, v110, v111, v112, v113);
    }
    v114 = ;
    objc_msgSend_appendFormat_(v106, v115, @"      Value: %@\n", v116, v117, v118, v119, v114, v120, v121, v122, v123);
  }

  objc_msgSend_appendFormat_(*(a1 + 40), v93, @"    }", v95, v96, v97, v98);
  ++*(*(*(a1 + 64) + 8) + 24);
}

void sub_24396CF24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 32);
  v21 = objc_msgSend_timestamp(a2, a2, a3, a4, a5, a6, a7);
  v15 = objc_msgSend_timestamp(v21, v9, v10, v11, v12, v13, v14);
  objc_msgSend_appendFormat_(v8, v16, @"      Reference %lu: %@\n", v17, v18, v19, v20, a3, v15);
}

void sub_24396D5C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24396D674;
  v11[3] = &unk_278DDB010;
  v12 = v3;
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  v5 = v3;
  objc_msgSend_appendAtomWithBlock_(v4, v6, v11, v7, v8, v9, v10);
}

void sub_24396D674(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  objc_msgSend_copyFromReadProxy_(v4, v5, v3, v6, v7, v8, v9);
  v21 = objc_msgSend_location(v4, v10, v11, v12, v13, v14, v15);

  objc_msgSend_copyFromMergeableValueID_(v21, v16, *(a1 + 40), v17, v18, v19, v20);
}

void sub_24396DC18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24396DCB0;
  v11[3] = &unk_278DDB060;
  v12 = v3;
  v5 = v3;
  objc_msgSend_appendAtomWithBlock_(v4, v6, v11, v7, v8, v9, v10);
}

void sub_24396E7E0(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = 40;
  if (a3 < *(a1 + 48) >> 1)
  {
    v6 = 32;
  }

  v7 = *(a1 + v6);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_24396E8B4;
  v15[3] = &unk_278DDB010;
  v16 = v5;
  v17 = v7;
  v8 = v7;
  v9 = v5;
  objc_msgSend_appendAtomWithBlock_(v8, v10, v15, v11, v12, v13, v14);
}

void sub_24396E8B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  objc_msgSend_copyFromReadProxy_(a2, a2, *(a1 + 32), a4, a5, a6, a7);
  v14 = objc_msgSend_timestamp(*(a1 + 32), v8, v9, v10, v11, v12, v13);
  v21 = objc_msgSend_distributedSiteIdentifier(v14, v15, v16, v17, v18, v19, v20);
  v28 = objc_msgSend_identifier(v21, v22, v23, v24, v25, v26, v27);
  v35 = v28;
  if (v28)
  {
    v108 = v28;
  }

  else
  {
    v36 = objc_msgSend_timestamp(*(a1 + 32), v29, v30, v31, v32, v33, v34);
    v108 = objc_msgSend_siteIdentifier(v36, v37, v38, v39, v40, v41, v42);
  }

  v49 = objc_msgSend_timestamp(*(a1 + 32), v43, v44, v45, v46, v47, v48);
  v56 = objc_msgSend_distributedSiteIdentifier(v49, v50, v51, v52, v53, v54, v55);
  v63 = objc_msgSend_modifier(v56, v57, v58, v59, v60, v61, v62);

  v64 = objc_alloc(MEMORY[0x277CBC2C8]);
  v69 = objc_msgSend_initWithIdentifier_modifier_(v64, v65, v108, v63, v66, v67, v68);
  v76 = objc_msgSend_vectors(*(a1 + 40), v70, v71, v72, v73, v74, v75);
  v83 = objc_msgSend_contents(v76, v77, v78, v79, v80, v81, v82);
  v84 = MEMORY[0x277CCAA78];
  v91 = objc_msgSend_timestamp(*(a1 + 32), v85, v86, v87, v88, v89, v90);
  v98 = objc_msgSend_clock(v91, v92, v93, v94, v95, v96, v97);
  v104 = objc_msgSend_indexSetWithIndex_(v84, v99, v98, v100, v101, v102, v103);
  objc_msgSend_addClockValuesInIndexSet_withAtomState_forSiteIdentifier_(v83, v105, v104, 1, v69, v106, v107);
}

id sub_24396F134(id a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x277CBC460]);
  v14 = objc_msgSend_vectors(v6, v8, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_initWithVectors_(v7, v15, v14, v16, v17, v18, v19);

  v27 = objc_msgSend_storage(v6, v21, v22, v23, v24, v25, v26);
  v34 = objc_msgSend_fileURL(v27, v28, v29, v30, v31, v32, v33);

  if (v34)
  {
    v41 = objc_msgSend_mergeableValueID(v6, v35, v36, v37, v38, v39, v40);
    a1 = objc_msgSend_initWithValueID_metadata_fileURL_(a1, v42, v41, v20, v34, v43, v44);

    v51 = objc_msgSend_storage(v6, v45, v46, v47, v48, v49, v50);
    objc_msgSend_setAtomBatchStorage_(a1, v52, v51, v53, v54, v55, v56);
  }

  else
  {
    v51 = objc_msgSend_dataWithError_(v6, v35, a4, v37, v38, v39, v40);
    if (!v51)
    {
      v67 = 0;
      goto LABEL_6;
    }

    v63 = objc_msgSend_mergeableValueID(v6, v57, v58, v59, v60, v61, v62);
    a1 = objc_msgSend_initWithValueID_metadata_data_(a1, v64, v63, v20, v51, v65, v66);
  }

  v67 = a1;
LABEL_6:

  return v67;
}

void sub_24396F62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24396F654(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24396F66C(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBC458];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v11 = objc_msgSend_initWithAtomBatch_error_(v5, v7, v4, &obj, v8, v9, v10);

  objc_storeStrong((v6 + 40), obj);
  v17 = *(*(a1 + 48) + 8);
  v18 = *(v17 + 24);
  if (!v11)
  {
    v18 = 0;
  }

  *(v17 + 24) = v18;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    objc_msgSend_addObject_(*(a1 + 32), v12, v11, v13, v14, v15, v16);
  }
}

void sub_243970348(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2439707B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id CKXAtomBindingFormatVersionORC()
{
  if (qword_27ED970A0 != -1)
  {
    dispatch_once(&qword_27ED970A0, &unk_2856A2B98);
  }

  v1 = qword_27ED970A8;

  return v1;
}

uint64_t sub_2439708C8()
{
  qword_27ED970A8 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

id CKXAtomBindingFormatVersionORCv2()
{
  if (qword_27ED970B0 != -1)
  {
    dispatch_once(&qword_27ED970B0, &unk_2856A2BB8);
  }

  v1 = qword_27ED970B8;

  return v1;
}

uint64_t sub_243970958()
{
  qword_27ED970B8 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_24397197C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_243971E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243971E4C(uint64_t a1, void *a2)
{
  v9 = a2;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_size(v9, v3, v4, v5, v6, v7, v8);
}

void sub_24397440C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = objc_msgSend_references(*(a1 + 32), v4, v5, v6, v7, v8, v9);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2439744E4;
  v17[3] = &unk_278DDB148;
  v11 = v3;
  v18 = v11;
  objc_msgSend_appendWithProxyBlock_(v10, v12, v17, v13, v14, v15, v16);
}

void sub_243974E54(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = objc_msgSend_atoms(*(a1 + 32), v4, v5, v6, v7, v8, v9);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_243974F2C;
  v17[3] = &unk_278DDB198;
  v11 = v3;
  v18 = v11;
  objc_msgSend_appendWithProxyBlock_(v10, v12, v17, v13, v14, v15, v16);
}

void sub_243977004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24397701C(uint64_t a1, void *a2, uint64_t a3)
{
  cf = a2;
  if (objc_msgSend_scope(cf, v5, v6, v7, v8, v9, v10) == *(a1 + 48))
  {
    objc_msgSend_commit(cf, v11, v12, v13, v14, v15, v16);
    v17 = CFGetRetainCount(cf);
    v24 = *(a1 + 32);
    if (v17 > 2)
    {
      v30 = objc_msgSend_totalProxiesRetainedOutOfScope(*(a1 + 32), v18, v19, v20, v21, v22, v23);
      objc_msgSend_setTotalProxiesRetainedOutOfScope_(v24, v31, v30 + 1, v32, v33, v34, v35);
    }

    else
    {
      objc_msgSend__putBackProxyWithoutCheckingScope_(*(a1 + 32), v18, cf, v20, v21, v22, v23);
    }

    objc_msgSend_addIndex_(*(a1 + 40), v25, a3, v26, v27, v28, v29);
  }
}

uint64_t sub_243977468(int a1, Class aClass, objc_class *a3)
{
  v4 = NSStringFromClass(aClass);
  v5 = NSStringFromClass(a3);
  v11 = objc_msgSend_compare_(v4, v6, v5, v7, v8, v9, v10);

  return v11;
}

void sub_2439774CC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = objc_msgSend_cachedProxies(*(a1 + 32), a2, a3, a4, a5, a6, a7);
  v29 = objc_msgSend_objectForKey_(v9, v10, a2, v11, v12, v13, v14);

  v15 = *(a1 + 40);
  v16 = NSStringFromClass(a2);
  v23 = objc_msgSend_count(v29, v17, v18, v19, v20, v21, v22);
  objc_msgSend_appendFormat_(v15, v24, @"  %@: %lu\n", v25, v26, v27, v28, v16, v23);
}

void sub_24397756C(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 32);
  v5 = a2;
  v12 = objc_msgSend_scope(v5, v6, v7, v8, v9, v10, v11);
  v56 = objc_msgSend_numberWithInteger_(v3, v13, v12, v14, v15, v16, v17);
  v23 = objc_msgSend_objectForKeyedSubscript_(v4, v18, v56, v19, v20, v21, v22);
  v30 = objc_msgSend_integerValue(v23, v24, v25, v26, v27, v28, v29);
  v36 = objc_msgSend_numberWithInteger_(v3, v31, v30 + 1, v32, v33, v34, v35);
  v37 = *(a1 + 32);
  v38 = MEMORY[0x277CCABB0];
  v45 = objc_msgSend_scope(v5, v39, v40, v41, v42, v43, v44);

  v51 = objc_msgSend_numberWithInteger_(v38, v46, v45, v47, v48, v49, v50);
  objc_msgSend_setObject_forKeyedSubscript_(v37, v52, v36, v51, v53, v54, v55);
}

void sub_243977658(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v17 = a2;
  v11 = objc_msgSend_integerValue(a3, v5, v6, v7, v8, v9, v10);
  objc_msgSend_appendFormat_(v4, v12, @"  %@: %ld\n", v13, v14, v15, v16, v17, v11);
}

uint64_t sub_243977C58(uint64_t a1)
{
  *a1 = &unk_2856A2D28;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return nullsub_1(a1);
}

void sub_243977CC4(uint64_t a1)
{
  sub_243977C58(a1);

  JUMPOUT(0x245D43350);
}

uint64_t sub_243977D24(uint64_t a1)
{
  *a1 = &unk_2856A2D80;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return nullsub_1(a1);
}

void sub_243977D90(uint64_t a1)
{
  sub_243977D24(a1);

  JUMPOUT(0x245D43350);
}

void sub_2439780C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2439780F8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_243980874();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = sub_2438C1ECC(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[8 * v10];
    v12 = &v11[8 * v7];
    *v12 = *a2;
    v6 = v12 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void *sub_243978A68(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = objc_msgSend_storage(*(a1 + 32), a2, a3, a4, a5, a6, a7);
  v15 = objc_msgSend_fileURL(v8, v9, v10, v11, v12, v13, v14);

  if (!v15)
  {
    operator new();
  }

  v22 = objc_msgSend_storage(*(a1 + 32), v16, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_fileURL(v22, v23, v24, v25, v26, v27, v28);
  v36 = objc_msgSend_path(v29, v30, v31, v32, v33, v34, v35);
  v37 = v36;
  v44 = objc_msgSend_UTF8String(v37, v38, v39, v40, v41, v42, v43);
  sub_243978D8C(__p, v44);
  sub_2438DFA90(__p, &v55);
  v45 = v55;
  v55 = 0;
  if (v54 < 0)
  {
    operator delete(__p[0]);
  }

  sub_2438E06BC(__p);
  v52 = v45;
  sub_2438E5408(&v52, __p, &v55);
  v46 = *(a1 + 32);
  v47 = v55;
  v55 = 0;
  v48 = *(v46 + 16);
  *(v46 + 16) = v47;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  v49 = v55;
  v55 = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v50 = v52;
  v52 = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  return sub_2438E076C(__p);
}

void sub_243978C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  nullsub_1(v16);

  MEMORY[0x245D43350](v16, v17);
  _Unwind_Resume(a1);
}

_BYTE *sub_243978D8C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2438AA68C();
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

uint64_t sub_243979234(uint64_t a1)
{
  v67[1] = *MEMORY[0x277D85DE8];
  sub_2438E089C(v60);
  v8 = objc_msgSend_helpers(*(a1 + 32), v2, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_topLevelIndexForStruct_(v8, v9, *(a1 + 40), v10, v11, v12, v13);

  v67[0] = v14;
  sub_2439807D8(buf, v67, 1);
  sub_2438E0998(v60, buf);
  sub_2438E62A8(buf);
  (*(**(*(a1 + 32) + 16) + 224))(v67);
  v15 = v67[0];
  v22 = objc_msgSend_options(*(a1 + 32), v16, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_batchSize(v22, v23, v24, v25, v26, v27, v28);
  (*(*v15 + 32))(&v59, v15, v29);

  v30 = *(a1 + 40);
  v31 = (*(a1 + 32) + 24);
  v32 = *(*(a1 + 32) + 32);
  v33 = v32 - *v31;
  v34 = v30 + 1 > (v33 >> 4);
  if (v30 + 1 > (v33 >> 4))
  {
    v35 = v30 + 1;
  }

  else
  {
    v35 = v33 >> 4;
  }

  if (v34)
  {
    v36 = v35 - (v33 >> 4);
    v37 = *(*(a1 + 32) + 40);
    if (v36 > (v37 - v32) >> 4)
    {
      if (!(v35 >> 60))
      {
        v38 = v37 - *v31;
        if (v38 >> 3 > v35)
        {
          v35 = v38 >> 3;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFF0)
        {
          v39 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = v35;
        }

        if (!(v39 >> 60))
        {
          operator new();
        }

        sub_2438C1CC8();
      }

      sub_243980874();
    }

    bzero(*(*(a1 + 32) + 32), 16 * v36);
    v31[1] = v32 + 16 * v36;
  }

  v40 = v67[0];
  v67[0] = 0;
  v41 = v59;
  v59 = 0;
  v42 = (*(*(a1 + 32) + 24) + 16 * *(a1 + 40));
  v43 = *v42;
  *v42 = v40;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  v44 = v42[1];
  v42[1] = v41;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v45 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    v56 = *(a1 + 40);
    v57 = objc_msgSend_storage(*(a1 + 32), v46, v47, v48, v49, v50, v51);
    v58 = (*(**(*(a1 + 32) + 16) + 24))(*(*(a1 + 32) + 16));
    *buf = 134218498;
    v62 = v56;
    v63 = 2112;
    v64 = v57;
    v65 = 2048;
    v66 = v58;
    _os_log_debug_impl(&dword_2438A8000, v45, OS_LOG_TYPE_DEBUG, "Created ORC reader for struct %lu with storage %@, rows: %llu", buf, 0x20u);
  }

  v52 = v59;
  v59 = 0;
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  v53 = v67[0];
  v67[0] = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  result = sub_2438E08F8(v60);
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_243979640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  v18 = a17;
  a17 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  sub_2438E08F8(&a11);
  _Unwind_Resume(a1);
}

unint64_t sub_243979B3C(uint64_t *a1)
{
  result = (*(**(a1[4] + 16) + 24))(*(a1[4] + 16));
  if (!result)
  {
    *(*(a1[5] + 8) + 24) = 0;
    return result;
  }

  v9 = result;
  if (a1[6] >= result)
  {
    v82 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v3, v4, v5, v6, v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v82, v83, a1[7], a1[4], @"CKXORCReaderWriter.mm", 220, @"Invalid row: %llu/%llu", a1[6], v9);
  }

  v10 = (*(a1[4] + 24) + 16 * a1[8]);
  v11 = *v10;
  v12 = v10[1];
  result = (*(**v10 + 48))(*v10);
  v18 = *(v12 + 16);
  if (!v18 || (v19 = a1[6], v19 >= v18 + result))
  {
    while (1)
    {
      result = (*(*v11 + 48))(v11);
      v20 = a1[6];
      v22 = v20 >= result;
      v21 = v20 - result;
      v22 = !v22 || v21 >= *(v12 + 16);
      if (!v22)
      {
        break;
      }

      (*(*v11 + 40))(v11, v12);
    }

    goto LABEL_13;
  }

  if (v19 < result)
  {
    (*(*v11 + 56))(v11);
    result = (*(*v11 + 40))(v11, v12);
LABEL_13:
    v23 = 1;
    goto LABEL_14;
  }

  v23 = 0;
LABEL_14:
  *(*(a1[5] + 8) + 24) = v23;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v24 = objc_msgSend_options(a1[4], v19, v13, v14, v15, v16, v17);
    v37 = objc_msgSend_testExceptionDuringLoadBatch(v24, v25, v26, v27, v28, v29, v30);
    if (v37)
    {
      Count = objc_msgSend_loadCount(a1[4], v31, v32, v33, v34, v35, v36);
      v45 = objc_msgSend_options(a1[4], v39, v40, v41, v42, v43, v44);
      BatchLoadsToSkip = objc_msgSend_testExceptionDuringLoadBatchLoadsToSkip(v45, v46, v47, v48, v49, v50, v51);

      if (Count == BatchLoadsToSkip)
      {
        v59 = objc_msgSend_options(a1[4], v53, v54, v55, v56, v57, v58);
        v66 = objc_msgSend_testExceptionDuringLoadBatch(v59, v60, v61, v62, v63, v64, v65);
        v67 = v66;
        v74 = objc_msgSend_UTF8String(v67, v68, v69, v70, v71, v72, v73);
        sub_243978D8C(&v84, v74);

        exception = __cxa_allocate_exception(0x10uLL);
        sub_2438DCB2C(exception, &v84);
        __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
      }
    }

    else
    {
    }

    v76 = a1[4];
    v77 = objc_msgSend_loadCount(v76, v53, v54, v55, v56, v57, v58) + 1;

    return MEMORY[0x2821F9670](v76, sel_setLoadCount_, v77, v78, v79, v80, v81);
  }

  return result;
}

void sub_24397A098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24397A320(void *a1)
{
  v2 = *(*(a1[4] + 24) + 16 * a1[6]);
  result = (*(*v2 + 48))(v2);
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void *sub_24397A778(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  lpsrc[1] = *MEMORY[0x277D85DE8];
  v10 = a1 + 32;
  result = *(a1 + 32);
  v9 = *(v10 + 8);
  v11 = result[6];
  if (v9 >= (result[7] - v11) >> 3 || !*(v11 + 8 * v9))
  {
    v12 = objc_msgSend_helpers(result, a2, a3, a4, a5, a6, a7);
    v18 = objc_msgSend_topLevelIndexForStruct_(v12, v13, *(a1 + 40), v14, v15, v16, v17);

    sub_2438E089C(v61);
    lpsrc[0] = v18;
    sub_2439807D8(v60, lpsrc, 1);
    sub_2438E0998(v61, v60);
    sub_2438E62A8(v60);
    (*(**(*(a1 + 32) + 16) + 224))(v60);
    v19 = v60[0];
    v26 = objc_msgSend_options(*(a1 + 32), v20, v21, v22, v23, v24, v25);
    v33 = objc_msgSend_batchSize(v26, v27, v28, v29, v30, v31, v32);
    (*(*v19 + 32))(lpsrc, v19, v33);

    (*(**(*(a1 + 32) + 16) + 24))(*(*(a1 + 32) + 16));
    v34 = objc_opt_new();
    while ((*(*v60[0] + 40))(v60[0], lpsrc[0]))
    {
      v35 = **lpsrc[0];
      v36 = **(__dynamic_cast(lpsrc[0], &unk_2856A2580, &unk_2856A25F0, 0) + 10);
      if (*(v36 + 16))
      {
        v37 = 0;
        do
        {
          v38 = (*(*v60[0] + 48))(v60[0]);
          if (*(*(v36 + 40) + v37))
          {
            objc_msgSend_addIndex_(v34, v39, v37 + v38, v40, v41, v42, v43);
          }

          ++v37;
        }

        while (v37 < *(v36 + 16));
      }
    }

    v44 = *(a1 + 40);
    v45 = (*(a1 + 32) + 48);
    v46 = *(*(a1 + 32) + 56);
    v47 = v46 - *v45;
    v48 = v44 + 1 > (v47 >> 3);
    if (v44 + 1 > (v47 >> 3))
    {
      v49 = v44 + 1;
    }

    else
    {
      v49 = v47 >> 3;
    }

    if (v48)
    {
      v50 = v49 - (v47 >> 3);
      v51 = *(*(a1 + 32) + 64);
      if (v50 > (v51 - v46) >> 3)
      {
        if (!(v49 >> 61))
        {
          v52 = v51 - *v45;
          if (v52 >> 2 > v49)
          {
            v49 = v52 >> 2;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFF8)
          {
            v53 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v49;
          }

          if (!(v53 >> 61))
          {
            operator new();
          }

          sub_2438C1CC8();
        }

        sub_243980874();
      }

      bzero(*(*(a1 + 32) + 56), 8 * v50);
      v45[1] = v46 + 8 * v50;
    }

    v54 = *(a1 + 40);
    v55 = *(*(a1 + 32) + 48);
    v56 = *(v55 + 8 * v54);
    *(v55 + 8 * v54) = v34;

    v57 = lpsrc[0];
    lpsrc[0] = 0;
    if (v57)
    {
      (*(*v57 + 8))(v57);
    }

    v58 = v60[0];
    v60[0] = 0;
    if (v58)
    {
      (*(*v58 + 8))(v58);
    }

    result = sub_2438E08F8(v61);
  }

  v59 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24397ABA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  v17 = a15;
  a15 = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  sub_2438E08F8(&a13);
  _Unwind_Resume(a1);
}

void sub_24397B078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24397B300(uint64_t a1)
{
  result = (*(**(*(a1 + 32) + 16) + 24))(*(*(a1 + 32) + 16));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_24397CD18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = objc_msgSend_storage(*(a1 + 32), a2, a3, a4, a5, a6, a7);
  v15 = objc_msgSend_fileURL(v8, v9, v10, v11, v12, v13, v14);

  if (!v15)
  {
    operator new();
  }

  v22 = objc_msgSend_storage(*(a1 + 32), v16, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_fileURL(v22, v23, v24, v25, v26, v27, v28);
  v36 = objc_msgSend_path(v29, v30, v31, v32, v33, v34, v35);
  v37 = v36;
  v44 = objc_msgSend_UTF8String(v37, v38, v39, v40, v41, v42, v43);
  sub_243978D8C(__p, v44);
  sub_2438DFBDC(__p, &v162);
  v45 = *(a1 + 32);
  v46 = v162;
  v162 = 0;
  v47 = *(v45 + 24);
  *(v45 + 24) = v46;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v48 = v162;
  v162 = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  if (v161 < 0)
  {
    operator delete(__p[0]);
  }

  v55 = objc_msgSend_helpers(*(a1 + 32), v49, v50, v51, v52, v53, v54);
  v62 = objc_msgSend_generateSchema(v55, v56, v57, v58, v59, v60, v61);
  v63 = v62;
  v69 = objc_msgSend_cStringUsingEncoding_(v63, v64, 4, v65, v66, v67, v68);
  sub_243978D8C(__p, v69);
  sub_2438FA770(__p, &v162);
  if (v161 < 0)
  {
    operator delete(__p[0]);
  }

  sub_2438FF5DC(__p);
  v76 = objc_msgSend_options(*(a1 + 32), v70, v71, v72, v73, v74, v75);
  v83 = objc_msgSend_compressionKind(v76, v77, v78, v79, v80, v81, v82);

  if (v83)
  {
    if (v83 != 1)
    {
      goto LABEL_17;
    }

    v90 = 5;
  }

  else
  {
    v90 = 0;
  }

  sub_2438FF8D4(__p, v90);
LABEL_17:
  v91 = objc_msgSend_options(*(a1 + 32), v84, v85, v86, v87, v88, v89);
  v98 = objc_msgSend_compressionBlockSize(v91, v92, v93, v94, v95, v96, v97);
  sub_2438FF7DC(__p, v98);

  v105 = objc_msgSend_options(*(a1 + 32), v99, v100, v101, v102, v103, v104);
  v112 = objc_msgSend_stripeSize(v105, v106, v107, v108, v109, v110, v111);
  sub_2438FF7D0(__p, v112);

  sub_2438FF7F4(__p, 1024);
  v113 = sub_2438D9128();
  sub_2438FF848(__p, v113);
  sub_2438FF830(__p, 1.0);
  sub_2438FF80C(__p, 0);
  if (!sub_2438FF924(__p))
  {
    v155 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v114, v115, v116, v117, v118, v119);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v155, v156, *(a1 + 40), *(a1 + 32), @"CKXORCReaderWriter.mm", 724, @"Expected dictionary to be enabled");
  }

  if (sub_2438FF918(__p))
  {
    v157 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v120, v121, v122, v123, v124, v125);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v157, v158, *(a1 + 40), *(a1 + 32), @"CKXORCReaderWriter.mm", 725, @"Expected indexes to be disabled");
  }

  sub_2439012A8(v162, *(*(a1 + 32) + 24), __p, v159);
  v126 = *(a1 + 32);
  v127 = *v159;
  *v159 = 0;
  v128 = *(v126 + 16);
  *(v126 + 16) = v127;
  if (v128)
  {
    (*(*v128 + 8))(v128);
  }

  v129 = *v159;
  *v159 = 0;
  if (v129)
  {
    (*(*v129 + 8))(v129);
  }

  (*(**(*(a1 + 32) + 16) + 16))(v159);
  v136 = *(a1 + 32);
  v137 = *v159;
  *v159 = 0;
  v138 = *(v136 + 32);
  *(v136 + 32) = v137;
  if (v138)
  {
    (*(*v138 + 8))(v138);
  }

  v139 = *v159;
  *v159 = 0;
  if (v139)
  {
    (*(*v139 + 8))(v139);
  }

  v140 = objc_msgSend_helpers(*(a1 + 32), v130, v131, v132, v133, v134, v135, *v159);
  v147 = objc_msgSend_rootColumn(*(a1 + 32), v141, v142, v143, v144, v145, v146);
  objc_msgSend_configureColumnsWithRootColumn_(v140, v148, v147, v149, v150, v151, v152);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v153 = *MEMORY[0x277CBC840];
  if (os_log_type_enabled(*MEMORY[0x277CBC840], OS_LOG_TYPE_DEBUG))
  {
    *v159 = 0;
    _os_log_debug_impl(&dword_2438A8000, v153, OS_LOG_TYPE_DEBUG, "Created ORC writer", v159, 2u);
  }

  sub_2438FF6E4(__p);
  result = v162;
  v162 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_24397D2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  sub_2438FF6E4(&__p);
  v19 = a17;
  a17 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  _Unwind_Resume(a1);
}

void sub_24397D49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24397D4B4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(*(result + 32) + 8);
  if (*(v3 + 24) > v2)
  {
    v2 = *(v3 + 24);
  }

  *(v3 + 24) = v2;
  return result;
}

void *sub_24397DA2C(void *result, char **lpsrc)
{
  if (lpsrc)
  {
    v2 = result;
    v3 = **lpsrc;
    result = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A2608, 0);
    if (result)
    {
      v4 = result[2];
      if (v4 < *(*(v2[4] + 32) + 16))
      {
        v5 = result[12];
        v6 = *(v5 + 8 * v4);
        v7 = v5 + 8;
        do
        {
          *(v7 + 8 * v4++) = v6;
        }

        while (v4 < *(*(v2[4] + 32) + 16));
      }
    }
  }

  return result;
}

uint64_t sub_24397DAEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = objc_msgSend_options(*(a1 + 32), a2, a3, a4, a5, a6, a7);
  v21 = objc_msgSend_testExceptionDuringCommitBatch(v8, v9, v10, v11, v12, v13, v14);
  if (v21)
  {
    v22 = objc_msgSend_commitCount(*(a1 + 32), v15, v16, v17, v18, v19, v20);
    v29 = objc_msgSend_options(*(a1 + 32), v23, v24, v25, v26, v27, v28);
    v36 = objc_msgSend_testExceptionDuringCommitBatchCommitsToSkip(v29, v30, v31, v32, v33, v34, v35);

    if (v22 == v36)
    {
      v43 = objc_msgSend_options(*(a1 + 32), v37, v38, v39, v40, v41, v42);
      v50 = objc_msgSend_testExceptionDuringCommitBatch(v43, v44, v45, v46, v47, v48, v49);
      v51 = v50;
      v58 = objc_msgSend_UTF8String(v51, v52, v53, v54, v55, v56, v57);
      sub_243978D8C(&v64, v58);

      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCB2C(exception, &v64);
      __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
    }
  }

  else
  {
  }

  v60 = *(a1 + 32);
  v61 = *(v60 + 32);
  v62 = *(**(v60 + 16) + 24);

  return v62();
}

void sub_24397DC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24397DC90(int a1, char **lpsrc)
{
  if (lpsrc)
  {
    v2 = **lpsrc;
    v3 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A25C0, 0);
    if (v3)
    {
      v4 = v3;
      if (v3[2])
      {
        v5 = 0;
        do
        {
          free(*(v4[12] + 8 * v5));
          *(v4[12] + 8 * v5++) = 0;
        }

        while (v5 < v4[2]);
      }
    }
  }
}

void sub_24397DD34(int a1, char **lpsrc)
{
  if (lpsrc)
  {
    v2 = **lpsrc;
    v3 = __dynamic_cast(lpsrc, &unk_2856A2580, &unk_2856A2608, 0);
    if (v3)
    {
      v4 = 0;
      v5 = v3[12];
      do
      {
        *(v5 + 8 * v4++) = 0;
      }

      while (v4 <= v3[2]);
    }
  }
}

uint64_t sub_24397E13C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2[1];
  v10 = a1[5];
  if (v9 > v10)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, a3, a4, a5, a6, a7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a1[6], a1[4], @"CKXORCReaderWriter.mm", 872, @"Previous column capacity %llu unexpectedly greater than batch capacity %llu", v9, a1[5]);

    v17 = a1[5];
  }

  (*(*a2 + 24))(a2);
  v13 = a1[4];
  v14 = a1[5] - v9;

  return MEMORY[0x2821F9670](v13, sel_resetColumnNulls_inRange_, a2, v9, v14, v11, v12);
}

void sub_24397E7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24397E860(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *(v2 + 24);
  if (v3 <= *(a2 + 16))
  {
    v3 = *(a2 + 16);
  }

  *(v2 + 24) = v3;
  return result;
}

uint64_t sub_243980080(uint64_t a1)
{
  (*(**(*(a1 + 32) + 16) + 32))(*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  result = *(v2 + 16);
  *(v2 + 16) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void *sub_243980794(void *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = result[6];
  v5 = *(result[4] + 8);
  v6 = *(v5 + 24);
  if (v4 >= v6 + a3)
  {
    *(v5 + 24) = v6 + a3;
  }

  else
  {
    *(*(result[5] + 8) + 24) = v4 + a2 - v6;
    *a4 = 1;
  }

  return result;
}

void *sub_2439807D8(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    operator new();
  }

  return result;
}

uint64_t sub_24398088C(uint64_t *a1)
{
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *a1;
  *a1 = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void sub_243980924(void *a1)
{
  if (a1)
  {
    sub_243980924(*a1);
    sub_243980924(a1[1]);

    operator delete(a1);
  }
}

uint64_t sub_243980970(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_14:
    operator new();
  }

  v4 = a2[1];
  v3 = a2[2];
  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v2;
      v7 = v2[5];
      if (v4 >= v7)
      {
        break;
      }

LABEL_4:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_14;
      }
    }

    if (v4 <= v7)
    {
      v8 = v6[6];
      if (v3 < v8)
      {
        goto LABEL_4;
      }

      if (v3 <= v8)
      {
        v9 = v6[4];
        if (v5 < v9)
        {
          goto LABEL_4;
        }

        if (v9 >= v5)
        {
          return result;
        }
      }
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_243984150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (objc_msgSend_length(*(a1 + 32), a2, a3, a4, a5, a6, a7) < 3)
  {
    return 0;
  }

  if (*a2 != 21071 || *(a2 + 2) != 67)
  {
    return 0;
  }

  *a3 = 259;
  *(a3 + 2) = 4;
  return 1;
}

uint64_t sub_2439841BC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (objc_msgSend_length(*(a1 + 32), a2, a3, a4, a5, a6, a7) < 5 || *a2 != -1421867861)
  {
    return 0;
  }

  v17 = *(a2 + 4);
  if (v17 > 2 || objc_msgSend_length(*(a1 + 32), v10, v11, v12, v13, v14, v15) < 7)
  {
    v22 = 0;
    v21 = 0;
  }

  else
  {
    *(v23 + 3) = 0;
    v23[0] = 0;
    objc_msgSend_getBytes_range_(*(a1 + 32), v18, v23, 0, 7, v19, v20);
    v21 = BYTE1(v23[1]);
    v22 = BYTE2(v23[1]);
  }

  *a3 = v17;
  a3[1] = v21;
  result = 1;
  a3[2] = v22;
  return result;
}

uint64_t sub_24398427C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (objc_msgSend_length(*(a1 + 32), a2, a3, a4, a5, a6, a7) < 0xC)
  {
    return 0;
  }

  if (*a2 != 1836020833)
  {
    return 0;
  }

  v14 = 0;
  objc_msgSend_getBytes_range_(*(a1 + 32), v10, &v14, 4, 8, v11, v12);
  if (v14 != 1)
  {
    return 0;
  }

  *a3 = 257;
  result = 1;
  *(a3 + 2) = 1;
  return result;
}

__CFString *CKDSStringForBackingStoreFormatVersion(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 >= 4)
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"Unknown (%d)", a4, a5, a6, a7, a1);
  }

  else
  {
    v8 = off_278DDB4A0[a1];
  }

  return v8;
}

void sub_243985530(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = objc_msgSend_backingStore(*(a1 + 32), a2, a3, a4, a5, a6, a7);
  v15 = *(a1 + 32);
  if (v15)
  {
    objc_msgSend_listInstance(v15, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  v16 = objc_msgSend_structProxyForListInstance_atIndex_(v14, v8, v17, *(a1 + 56), v11, v12, v13);

  (*(*(a1 + 40) + 16))(*(a1 + 40), v16, *(a1 + 56), *(*(a1 + 48) + 8) + 24);
}

void sub_243985858(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = objc_msgSend_backingStore(*(a1 + 32), a2, a3, a4, a5, a6, a7);
  v15 = *(a1 + 32);
  if (v15)
  {
    objc_msgSend_listInstance(v15, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  v16 = objc_msgSend_appendedStructProxyForListInstance_(v14, v8, v38, v10, v11, v12, v13);

  if (v16)
  {
    v23 = *(a1 + 32);
    v24 = objc_msgSend_index(v23, v17, v18, v19, v20, v21, v22);
    objc_msgSend_setIndex_(v23, v25, v24 + 1, v26, v27, v28, v29);
    v30 = *(a1 + 40);
    v37 = objc_msgSend_index(*(a1 + 32), v31, v32, v33, v34, v35, v36);
    (*(v30 + 16))(v30, v16, v37);
  }
}

void *sub_243985D18(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_243985DC8(id *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void *sub_243985E0C(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_24398622C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243986240(va);
  _Unwind_Resume(a1);
}

uint64_t sub_243986240(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2439866A8(_Unwind_Exception *a1)
{
  v1[8] = v2;

  _Unwind_Resume(a1);
}

char *sub_243986708(char *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v7 = result;
    v14 = objc_msgSend_newIdentifier(result, a2, a3, a4, a5, a6, a7);
    sub_2439867B8(v7 + 1, &v14);
    if (v14 + 1 > 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 8) - *(v7 + 7)) >> 3))
    {
      v8 = v14 + 1;
    }

    else
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 8) - *(v7 + 7)) >> 3);
    }

    sub_243986898(v7 + 7, v8);
    v9 = *(v7 + 4);
    v10 = *(v7 + 5);
    v11 = v7 + 32;
    v12 = v10 - v9;
    if (v14 + 1 > (v12 >> 1))
    {
      v13 = v14 + 1;
    }

    else
    {
      v13 = v12 >> 1;
    }

    sub_243986940(v11, v13);
    result = v14;
    *(*v11 + 2 * v14) = 1;
  }

  return result;
}

void sub_2439867B8(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 3;
    v10 = (v8 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_243980874();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      v14 = sub_2438C1ECC(a1, v13);
      v13 = v15;
      v7 = *a1;
      v8 = a1[1] - *a1;
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v9];
    v17 = &v14[8 * v13];
    v18 = *a2;
    v19 = &v16[-8 * (v8 >> 3)];
    *v16 = v18;
    v6 = v16 + 8;
    memcpy(v19, v7, v8);
    v20 = *a1;
    *a1 = v19;
    a1[1] = v6;
    a1[2] = v17;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_243986898(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_243987E20(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void sub_243986940(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_243987F90(a1, a2 - v2);
  }
}

uint64_t sub_243986B28(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    return 0;
  }

  v7 = a4;
  v11 = a1[4];
  if (a2 >= (a1[5] - v11) >> 1 || (*(v11 + 2 * a2) & 1) == 0)
  {
    v33 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5, a6, a7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, sel_defineFieldForStruct_withEncoding_optional_, a1, @"CKXSchema.mm", 109, @"Token not found");

    v11 = a1[4];
  }

  if (*(v11 + 2 * a2 + 1))
  {
    v35 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5, a6, a7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v36, sel_defineFieldForStruct_withEncoding_optional_, a1, @"CKXSchema.mm", 110, @"Can't define field for top-level container struct");
  }

  v12 = objc_msgSend_typeForEncoding_(MEMORY[0x277CBC4D8], a2, a3, a4, a5, a6, a7);
  v18 = objc_msgSend_defineFieldForStruct_(a1, v13, a2, v14, v15, v16, v17);
  v19 = a1[10] + 56 * v18;
  *(v19 + 8) = 0;
  *(v19 + 16) = a2;
  *(a1[10] + 56 * v18 + 24) = objc_msgSend_size(v12, v20, v21, v22, v23, v24, v25);
  *(a1[10] + 56 * v18 + 32) = objc_msgSend_code(v12, v26, v27, v28, v29, v30, v31);
  *(a1[10] + 56 * v18 + 40) = v7;

  return v18;
}

uint64_t sub_243986CB4(uint64_t result, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v9 = result;
    v10 = *(result + 32);
    if (a3 >= (*(result + 40) - v10) >> 1 || (*(v10 + 2 * a3) & 1) == 0)
    {
      v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5, a6, a7);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, sel_defineStructReferenceToType_forStruct_, v9, @"CKXSchema.mm", 122, @"Token not found");

      v10 = v9[4];
    }

    if (*(v10 + 2 * a3 + 1))
    {
      v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5, a6, a7);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, sel_defineStructReferenceToType_forStruct_, v9, @"CKXSchema.mm", 123, @"Can't define struct reference for top-level container struct");
    }

    result = objc_msgSend_defineFieldForStruct_(v9, a2, a3, a4, a5, a6, a7);
    v11 = (v9[10] + 56 * result);
    v11[1] = 1;
    v11[2] = a3;
    v11[3] = a2;
  }

  return result;
}

uint64_t sub_243986DD4(uint64_t result, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v9 = result;
    v10 = *(result + 32);
    if (a3 >= (*(result + 40) - v10) >> 1 || (*(v10 + 2 * a3) & 1) == 0)
    {
      v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5, a6, a7);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, sel_defineListReferenceToStructType_forStruct_, v9, @"CKXSchema.mm", 132, @"Token not found");
    }

    result = objc_msgSend_defineFieldForStruct_(v9, a2, a3, a4, a5, a6, a7);
    v11 = (v9[10] + 56 * result);
    v11[1] = 2;
    v11[2] = a3;
    v11[3] = 0;
    *(v9[10] + 56 * result + 32) = a2;
    *(v9[10] + 56 * result + 40) = 0;
    *(v9[10] + 56 * result + 48) = 23;
  }

  return result;
}

uint64_t sub_243986ED0(void *a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    if (a2 != 3)
    {
      goto LABEL_4;
    }

    v35 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], 3, a3, a4, a5, a6, a7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v39, sel_defineListReferenceOfType_forStruct_, a1, @"CKXSchema.mm", 145, @"Invalid list type");
  }

  else
  {
    v35 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], 0, a3, a4, a5, a6, a7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v36, sel_defineListReferenceOfType_forStruct_, a1, @"CKXSchema.mm", 144, @"Invalid list type");
  }

LABEL_4:
  v10 = a1[4];
  if (a3 >= (a1[5] - v10) >> 1 || (*(v10 + 2 * a3) & 1) == 0)
  {
    v33 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5, a6, a7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, sel_defineValueListReferenceWithEncoding_forStruct_, a1, @"CKXSchema.mm", 152, @"Token not found");

    v10 = a1[4];
  }

  if (*(v10 + 2 * a3 + 1))
  {
    v37 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5, a6, a7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v37, v38, sel_defineValueListReferenceWithEncoding_forStruct_, a1, @"CKXSchema.mm", 153, @"Can't define non-struct list for top-level container struct");
  }

  v11 = objc_msgSend_typeForEncoding_(MEMORY[0x277CBC4D8], a2, "C", a4, a5, a6, a7);
  v17 = objc_msgSend_defineFieldForStruct_(a1, v12, a3, v13, v14, v15, v16);
  v18 = 56 * v17;
  v19 = (a1[10] + 56 * v17);
  v19[1] = 2;
  v19[2] = a3;
  v19[3] = 3;
  *(a1[10] + 56 * v17 + 32) = -1;
  *(a1[10] + 56 * v17 + 40) = objc_msgSend_size(v11, v20, v21, v22, v23, v24, v25);
  *(a1[10] + v18 + 48) = objc_msgSend_code(v11, v26, v27, v28, v29, v30, v31);

  *(a1[10] + v18 + 24) = a2;
  return v17;
}

uint64_t sub_243987104(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v8 = result;
    v9 = *(result + 80);
    if (0x6DB6DB6DB6DB6DB7 * ((*(result + 88) - v9) >> 3) <= a2 || (*(v9 + 56 * a2) & 1) == 0)
    {
      v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5, a6, a7);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, sel_fieldTypeForField_, v8, @"CKXSchema.mm", 166, @"Token not found");

      v9 = *(v8 + 80);
    }

    return *(v9 + 56 * a2 + 8);
  }

  return result;
}

uint64_t sub_2439871D0(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v8 = result;
    if (sub_243987104(result, a2, a3, a4, a5, a6, a7) != 2)
    {
      v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10, v11, v12, v13, v14);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, sel_listTypeForField_, v8, @"CKXSchema.mm", 172, @"Invalid field type");
    }

    return *(*(v8 + 80) + 56 * a2 + 24);
  }

  return result;
}

uint64_t sub_243987270(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    if (a2)
    {
      v8 = result;
      v9 = *(result + 80);
      if (0x6DB6DB6DB6DB6DB7 * ((*(result + 88) - v9) >> 3) <= a2 || (*(v9 + 56 * a2) & 1) == 0)
      {
        v17 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5, a6, a7);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, sel_valueSizeForField_, v8, @"CKXSchema.mm", 181, @"Token not found");
      }

      v10 = sub_243987104(v8, a2, a3, a4, a5, a6, a7);
      if ((v10 - 1) >= 2)
      {
        if (!v10)
        {
          v16 = *(v8 + 80) + 56 * a2 + 24;
          return *v16;
        }
      }

      else if (sub_2439871D0(v8, a2, v11, v12, v13, v14, v15) == 3)
      {
        v16 = *(v8 + 80) + 56 * a2 + 40;
        return *v16;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_243987390(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  v9 = *(a1 + 80);
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 88) - v9) >> 3) <= a2 || (*(v9 + 56 * a2) & 1) == 0)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5, a6, a7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, sel_valueFieldIsOptional_, a1, @"CKXSchema.mm", 245, @"Token not found");
  }

  if (!sub_243987104(a1, a2, a3, a4, a5, a6, a7))
  {
    v10 = *(*(a1 + 80) + 56 * a2 + 40);
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_243987478(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v8 = result;
    if (sub_243987104(result, a2, a3, a4, a5, a6, a7) != 1)
    {
      v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10, v11, v12, v13, v14);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, sel_structForStructReference_, v8, @"CKXSchema.mm", 262, @"Token not found");
    }

    return *(*(v8 + 80) + 56 * a2 + 24);
  }

  return result;
}

uint64_t sub_243987518(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v8 = result;
    if (sub_2439871D0(result, a2, a3, a4, a5, a6, a7))
    {
      v15 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10, v11, v12, v13, v14);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, sel_structForListReference_, v8, @"CKXSchema.mm", 269, @"Invalid list type");
    }

    return *(*(v8 + 80) + 56 * a2 + 32);
  }

  return result;
}

uint64_t sub_2439875B4(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 2 * a2;
    while (1)
    {
      v12 = a1[4];
      if (a2 < (a1[5] - v12) >> 1 && *(v12 + v11) == 1)
      {
        v13 = *(a1[7] + 24 * a2);
        if (v9 >= (*(a1[7] + 24 * a2 + 8) - v13) >> 3)
        {
          return v10;
        }

        v14 = *(v13 + 8 * v9);
      }

      else
      {
        if (v9 == -1)
        {
          return v10;
        }

        v14 = -1;
      }

      v15 = sub_243987104(a1, v14, a3, a4, a5, a6, a7);
      if (v15 == 2)
      {
        v16 = sub_2439871D0(a1, v14, a3, a4, a5, a6, a7) == 0;
      }

      else
      {
        v16 = v15 == 1;
      }

      if (v16)
      {
        ++v10;
      }

      ++v9;
    }
  }

  return 0;
}

uint64_t sub_24398768C(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (result)
  {
    v3 = *(result + 32);
    if (a3 < (*(result + 40) - v3) >> 1 && *(v3 + 2 * a3) == 1 && (v4 = *(*(result + 56) + 24 * a3), a2 < (*(*(result + 56) + 24 * a3 + 8) - v4) >> 3))
    {
      return *(v4 + 8 * a2);
    }

    else
    {
      return -1;
    }
  }

  return result;
}

uint64_t sub_2439876DC(uint64_t result, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = 0;
  v11 = 2 * a3;
  while (1)
  {
    v12 = v9[4];
    if (a3 < (v9[5] - v12) >> 1 && *(v12 + v11) == 1)
    {
      v13 = *(v9[7] + 24 * a3);
      if (v10 >= (*(v9[7] + 24 * a3 + 8) - v13) >> 3)
      {
        goto LABEL_15;
      }

      v14 = *(v13 + 8 * v10);
    }

    else
    {
      if (v10 == -1)
      {
LABEL_15:
        v16 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5, a6, a7);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, sel_referencedStructAtIndex_forStructToken_, v9, @"CKXSchema.mm", 345, @"Index out of bounds");

        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v14 = -1;
    }

    v15 = sub_243987104(v9, v14, a3, a4, a5, a6, a7);
    if (v15 == 2)
    {
      break;
    }

    if (v15 == 1 && !a2)
    {

      return sub_243987478(v9, v14, a3, a4, a5, a6, a7);
    }

LABEL_14:
    ++v10;
  }

  if (sub_2439871D0(v9, v14, a3, a4, a5, a6, a7))
  {
    goto LABEL_14;
  }

  return sub_243987518(v9, v14, a3, a4, a5, a6, a7);
}

uint64_t sub_243987864(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v9 = *(a1 + 32);
    if (a2 >= (*(a1 + 40) - v9) >> 1 || (*(v9 + 2 * a2) & 1) == 0)
    {
      v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5, a6, a7);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, sel_structIsTopLevelContainer_, a1, @"CKXSchema.mm", 350, @"Token not found");

      v9 = *(a1 + 32);
    }

    v10 = *(v9 + 2 * a2 + 1);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void *sub_2439879D0(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 3)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (a4 <= (v15 - v9) >> 3)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = *(v7 + 8);
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if (a4 >> 61)
    {
      sub_243980874();
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_2438D8D44(v7, v11);
    v12 = *(v7 + 8);
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(*(v7 + 8), __src, v13);
    }

    v14 = (v12 + v13);
  }

  *(v7 + 8) = v14;
  return result;
}

void sub_243987B14(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2438C1CC8();
}

void *sub_243987B58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      v8 = *v6;
      v7 = *(v6 + 8);
      v9 = v7 - *v6;
      if (v7 != *v6)
      {
        sub_2438D8D44(v4, v9 >> 3);
        v10 = v4[1];
        memmove(v10, v8, v9);
        v4[1] = &v10[v9];
        v4 = v15;
      }

      v6 += 24;
      v4 += 3;
      v15 = v4;
    }

    while (v6 != a3);
  }

  v13 = 1;
  sub_243987C44(v12);
  return v4;
}

void sub_243987C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_243987C44(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_243987C44(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 8);
    v3 = **(a1 + 16);
    if (v3 != v2)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 = v4;
      }

      while (v4 != v2);
    }
  }

  return a1;
}

char **sub_243987CAC(char **a1, char **a2, char **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        sub_2439879D0(a3, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_243987D14(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_243987D6C(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2438C1CC8();
}

void sub_243987DC4(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  sub_2438C1CC8();
}

void sub_243987E20(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_243987AFC();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      sub_243987D6C(v8);
    }

    v10 = 24 * v5;
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v10, v11);
    v12 = v10 + v11;
    v13 = *(a1 + 8) - *a1;
    v14 = v10 - v13;
    memcpy((v10 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_243987F90(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    if ((a2 + (v6 >> 1)) < 0)
    {
      sub_243987AFC();
    }

    v7 = v4 - *a1;
    if (v7 <= a2 + (v6 >> 1))
    {
      v8 = a2 + (v6 >> 1);
    }

    else
    {
      v8 = v7;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_243987B14(v9);
    }

    v10 = (2 * (v6 >> 1));
    bzero(v10, 2 * a2);
    v11 = &v10[2 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

__CFString *CKDSStringForErrorCode(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unknown Error";
  }

  else
  {
    return off_278DDB518[a1 - 1];
  }
}

uint64_t sub_243989058(unsigned __int8 *a1, char *__dst, int a3, int a4)
{
  v4 = 0xFFFFFFFFLL;
  if (!a1 || a4 < 0)
  {
    return v4;
  }

  if (!a4)
  {
    if (a3 == 1)
    {
      if (*a1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }

    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  v6 = &a1[a3];
  v7 = &__dst[a4];
  v8 = v6 - 15;
  v9 = v7 - 12;
  v10 = v7 - 7;
  v11 = a1;
  v12 = __dst;
  while (1)
  {
    while (1)
    {
      v14 = v11 + 1;
      v13 = *v11;
      v15 = v13 >> 4;
      if ((v13 >> 4) == 15)
      {
        break;
      }

      if (v14 >= v6 - 1 || v12 > v7 - 32)
      {
        ++v11;
        goto LABEL_13;
      }

      *v12 = *v14;
      v20 = &v12[v15];
      v28 = v13 & 0xF;
      v11 = v14 + v15 + 2;
      v25 = *(v14 + v15);
      v27 = &v20[-v25];
      if (v28 == 15 || v25 < 8 || v27 < __dst)
      {
        v24 = v11;
        goto LABEL_31;
      }

      *v20 = *v27;
      *(v20 + 1) = *(v27 + 8);
      *(v20 + 8) = *(v27 + 16);
      v12 = &v20[v28 + 4];
    }

    if (v14 >= v8)
    {
      LODWORD(v11) = v11 + 1;
      return (~v11 + a1);
    }

    LODWORD(v16) = 0;
    v17 = (v11 + 2);
    ++v11;
    do
    {
      v19 = *v11++;
      v18 = v19;
      v16 = (v16 + v19);
      ++v17;
    }

    while (v11 < v8 && v18 == 255);
    v15 = v16 + 15;
    if (__CFADD__(v12, v15) || v15 > -v17)
    {
      return (~v11 + a1);
    }

LABEL_13:
    v20 = &v12[v15];
    v21 = &v11[v15];
    if (&v12[v15] > v9 || v21 > v6 - 4)
    {
      break;
    }

    do
    {
      v23 = *v11;
      v11 += 8;
      *v12 = v23;
      v12 += 8;
    }

    while (v12 < v20);
    v26 = *v21;
    v24 = (v21 + 1);
    v25 = v26;
    v27 = &v20[-v26];
    v28 = v13 & 0xF;
LABEL_31:
    if (v28 == 15)
    {
      LODWORD(v32) = 0;
      while (1)
      {
        v11 = v24 + 1;
        if (v24 + 1 >= v6 - 4)
        {
          return (~v11 + a1);
        }

        v33 = *v24;
        v32 = (v32 + v33);
        ++v24;
        if (v33 != 255)
        {
          v28 = v32 + 15;
          if (__CFADD__(v20, v28))
          {
            return (~v11 + a1);
          }

          goto LABEL_39;
        }
      }
    }

    v11 = v24;
LABEL_39:
    if (v27 < __dst)
    {
      return (~v11 + a1);
    }

    if (v25 <= 7)
    {
      *v20 = 0;
      *v20 = *v27;
      v20[1] = *(v27 + 1);
      v20[2] = *(v27 + 2);
      v20[3] = *(v27 + 3);
      v40 = (v27 + dword_24398C3D4[v25]);
      *(v20 + 1) = *v40;
      v34 = v40 - dword_24398C3F4[v25];
    }

    else
    {
      v35 = *v27;
      v34 = (v27 + 8);
      *v20 = v35;
    }

    v12 = &v20[v28 + 4];
    v36 = v20 + 8;
    if (v12 > v9)
    {
      if (v12 > v7 - 5)
      {
        return (~v11 + a1);
      }

      if (v36 < v10)
      {
        v41 = v34;
        v42 = v20 + 8;
        do
        {
          v43 = *v41++;
          *v42 = v43;
          v42 += 8;
        }

        while (v42 < v10);
        v34 += v10 - v36;
        v36 = v7 - 7;
      }

      while (v36 < v12)
      {
        v44 = *v34++;
        *v36++ = v44;
      }
    }

    else
    {
      *v36 = *v34;
      if (v28 >= 0xD)
      {
        v37 = v20 + 16;
        v38 = (v34 + 8);
        do
        {
          v39 = *v38++;
          *v37 = v39;
          v37 += 8;
        }

        while (v37 < v12);
      }
    }
  }

  if (v21 == v6 && v20 <= v7)
  {
    memmove(v12, v11, v15);
    return (v20 - __dst);
  }

  return (~v11 + a1);
}

uint64_t sub_243989360(uint64_t a1, unsigned int a2, unint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  if (*a3 >= a3[1] || (v8 = *v7, (v8 & 0x8000000000000000) != 0))
  {
    v9 = sub_2439650E0(a3);
    if ((v10 & 1) == 0)
    {
      return 0;
    }

    v8 = v9;
  }

  else
  {
    *a3 = (v7 + 1);
  }

  v11 = *a4;
  v12 = *(a4 + 4);
  if (*a4 == v12)
  {
    sub_2438BFA30(a4, v11 + 1);
    v11 = *a4;
    v12 = *(a4 + 4);
  }

  v13 = *(a4 + 8) + 8 * v11;
  v14 = v11 + 1;
  *a4 = v11 + 1;
  *(v13 + 8) = v8;
  if (v12 - (v11 + 1) >= 1)
  {
    v15 = v12 - v11;
    do
    {
      if (a2 > 0x7F)
      {
        if (a2 >> 14)
        {
          return 1;
        }

        v19 = *a3;
        v16 = a3[1];
        if ((v16 - *a3) < 2 || (a2 & 0x7F | 0x80) != *v19 || a2 >> 7 != v19[1])
        {
          return 1;
        }

        v18 = (v19 + 2);
      }

      else
      {
        v17 = *a3;
        v16 = a3[1];
        if (*a3 >= v16 || *v17 != a2)
        {
          return 1;
        }

        v18 = (v17 + 1);
      }

      *a3 = v18;
      if (v18 >= v16 || (v20 = *v18, (v20 & 0x8000000000000000) != 0))
      {
        v20 = sub_2439650E0(a3);
        if ((v21 & 1) == 0)
        {
          return 0;
        }

        v14 = *a4;
      }

      else
      {
        *a3 = (v18 + 1);
      }

      v22 = *(a4 + 8) + 8 * v14++;
      *a4 = v14;
      *(v22 + 8) = v20;
      --v15;
    }

    while (v15 > 1);
  }

  return 1;
}

uint64_t sub_2439894CC(uint64_t a1, unsigned int a2, unint64_t *a3, signed int *a4)
{
  v7 = *a3;
  if (*a3 >= a3[1])
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      *a3 = (v7 + 1);
      goto LABEL_6;
    }
  }

  v9 = sub_24396529C(a3, v8);
  v8 = v9;
  if (v9 < 0)
  {
    return 0;
  }

LABEL_6:
  v10 = *a4;
  if (*a4 == a4[1])
  {
    sub_2438C01D4(a4, v10 + 1);
    v10 = *a4;
  }

  v11 = *(a4 + 1) + 4 * v10;
  *a4 = v10 + 1;
  *(v11 + 8) = v8;
  v12 = a4[1] - *a4;
  if (v12 >= 1)
  {
    v13 = v12 + 1;
    while (1)
    {
      if (a2 > 0x7F)
      {
        if (a2 >> 14)
        {
          return 1;
        }

        v17 = *a3;
        v14 = a3[1];
        if ((v14 - *a3) < 2 || (a2 & 0x7F | 0x80) != *v17 || a2 >> 7 != v17[1])
        {
          return 1;
        }

        v16 = (v17 + 2);
      }

      else
      {
        v15 = *a3;
        v14 = a3[1];
        if (*a3 >= v14 || *v15 != a2)
        {
          return 1;
        }

        v16 = (v15 + 1);
      }

      *a3 = v16;
      if (v16 >= v14)
      {
        break;
      }

      v18 = *v16;
      if (*v16 < 0)
      {
        goto LABEL_23;
      }

      *a3 = (v16 + 1);
LABEL_24:
      v20 = *a4;
      v21 = *(a4 + 1) + 4 * v20;
      *a4 = v20 + 1;
      *(v21 + 8) = v18;
      if (--v13 <= 1)
      {
        return 1;
      }
    }

    v18 = 0;
LABEL_23:
    v19 = sub_24396529C(a3, v18);
    v18 = v19;
    if (v19 < 0)
    {
      return 0;
    }

    goto LABEL_24;
  }

  return 1;
}

void sub_2439896B4()
{
  if (__cxa_guard_acquire(&qword_27ED96450))
  {
    xmmword_27ED96440 = xmmword_24398CA20;

    __cxa_guard_release(&qword_27ED96450);
  }
}

void sub_24398970C()
{
  if (__cxa_guard_acquire(&qword_27ED96468))
  {
    xmmword_27ED96458 = xmmword_24398CA30;

    __cxa_guard_release(&qword_27ED96468);
  }
}

void sub_243989798()
{
  if (__cxa_guard_acquire(&qword_27ED97068))
  {
    qword_27ED97060 = 0xB00000000;

    __cxa_guard_release(&qword_27ED97068);
  }
}

void sub_2439897E8()
{
  if (__cxa_guard_acquire(&qword_27ED97078))
  {
    qword_27ED97070 = 0xC00000000;

    __cxa_guard_release(&qword_27ED97078);
  }
}

void sub_243989860()
{
  *off_281AF4150() = 1;
  v0 = off_281AF4120();
  _tlv_atexit(sub_2438DB09C, v0);
  v1 = off_281AF4138();

  _tlv_atexit(sub_2438DB230, v1);
}

void sub_243989900()
{
  if (__cxa_guard_acquire(&qword_27ED97058))
  {
    __cxa_atexit(nullsub_4, off_281AF4110, &dword_2438A8000);

    __cxa_guard_release(&qword_27ED97058);
  }
}

void sub_243989968()
{
  if (__cxa_guard_acquire(&qword_27ED97088))
  {
    dword_27ED97080 = 1;

    __cxa_guard_release(&qword_27ED97088);
  }
}

void sub_243989AE4()
{
  if (__cxa_guard_acquire(&qword_27ED97098))
  {
    qword_27ED97090 = strlen(qword_27ED96470);

    __cxa_guard_release(&qword_27ED97098);
  }
}

void sub_243989B3C()
{
  if (__cxa_guard_acquire(&qword_27ED97050))
  {
    __cxa_atexit(std::mutex::~mutex, &unk_27ED963B8, &dword_2438A8000);

    __cxa_guard_release(&qword_27ED97050);
  }
}

uint64_t sub_243989BA4(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 40);
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 8);
    v6 = *(a1 + 44);
    v7 = v4 - v6 + *a1 - v5;
    if ((v7 ^ 0x7FFFFFFFu) >= a2 && result - v7 > a2)
    {
      v9 = v7 + a2;
      *(a1 + 40) = v9;
      v10 = v5 + v6;
      *(a1 + 8) = v10;
      v11 = *(a1 + 48);
      if (v11 >= v9)
      {
        v11 = v9;
      }

      v12 = __OFSUB__(v4, v11);
      v13 = v4 - v11;
      if ((v13 < 0) ^ v12 | (v13 == 0))
      {
        v13 = 0;
      }

      else
      {
        *(a1 + 8) = v10 - v13;
      }

      *(a1 + 44) = v13;
    }
  }

  return result;
}

unint64_t sub_243989C1C(uint64_t a1, unsigned int a2)
{
  v3 = sub_243989BA4(a1, a2);
  v4 = (*(a1 + 52) - 1);
  *(a1 + 52) = v4;
  return v3 | (v4 << 32);
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const std::string *a2)
{
  return MEMORY[0x2821F7480](this, a2);
}

{
  return MEMORY[0x2821F7498](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7930]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[](void *__p)
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

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}