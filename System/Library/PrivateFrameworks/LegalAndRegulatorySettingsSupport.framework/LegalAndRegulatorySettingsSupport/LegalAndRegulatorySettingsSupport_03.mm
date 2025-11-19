uint64_t cmark_utf8proc_is_space(unsigned int a1)
{
  result = 1;
  if (a1 > 0x20 || ((1 << a1) & 0x100003600) == 0)
  {
    v3 = a1 == 8287 || a1 == 12288;
    v4 = a1 == 8239 || v3;
    if (a1 - 0x2000 >= 0xB)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1;
    }

    if (a1 == 5760)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    if (a1 == 160)
    {
      return 1;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

BOOL cmark_utf8proc_is_punctuation(int a1)
{
  if (a1 > 127)
  {
    result = 1;
    if (a1 <= 1416)
    {
      if (a1 > 902)
      {
        if ((a1 - 1370) < 6 || a1 == 903)
        {
          return result;
        }
      }

      else if ((a1 - 161) <= 0x1E && ((1 << (a1 + 95)) & 0x44600441) != 0 || a1 == 894)
      {
        return result;
      }
    }

    else if (a1 <= 1522)
    {
      if ((a1 - 1417) <= 0x3D && ((1 << (a1 + 119)) & 0x24A0000000000003) != 0)
      {
        return result;
      }
    }

    else if ((a1 - 1523) <= 0x2C && ((1 << (a1 + 13)) & 0x190006C00003) != 0 || (a1 - 1642) < 4 || a1 == 1748)
    {
      return result;
    }
  }

  else if (cmark_ispunct(a1))
  {
    return 1;
  }

  result = 1;
  if ((a1 - 2096) < 0xF || (a1 - 1792) < 0xE || (a1 - 2039) < 3)
  {
    return result;
  }

  if (a1 <= 2799)
  {
    if ((a1 - 2404) <= 0xC && ((1 << (a1 - 100)) & 0x1003) != 0 || a1 == 2142)
    {
      return result;
    }
  }

  else if ((a1 - 3663) <= 0xC && ((1 << (a1 - 79)) & 0x1801) != 0 || a1 == 2800 || a1 == 3572)
  {
    return result;
  }

  if (a1 == 3860 || (a1 - 3844) < 0xF)
  {
    return result;
  }

  if (a1 > 4169)
  {
    if ((a1 - 4170) < 6 || a1 == 4347)
    {
      return result;
    }
  }

  else if ((a1 - 4048) <= 0xA && ((1 << (a1 + 48)) & 0x61F) != 0 || (a1 - 3898) < 4 || a1 == 3973)
  {
    return result;
  }

  if ((a1 - 4960) < 9)
  {
    return result;
  }

  if (a1 > 5940)
  {
    if ((a1 - 6100) <= 6 && a1 != 6103 || (a1 - 5941) < 2)
    {
      return result;
    }
  }

  else if ((a1 - 5741) <= 0x2F && ((1 << (a1 - 109)) & 0xC00000000003) != 0 || (a1 - 5867) < 3 || a1 == 5120)
  {
    return result;
  }

  if ((a1 - 6144) >= 0xB && (a1 - 6468) >= 2 && (a1 - 6686) >= 2)
  {
    v3 = a1 & 0xFFFFFFFC;
    if ((a1 & 0xFFFFFFFC) != 0x1BFC)
    {
      if (a1 <= 7001)
      {
        if ((a1 - 6816) <= 0xD && a1 != 6823)
        {
          return result;
        }
      }

      else if ((a1 - 7002) < 7 || (a1 - 7227) < 5 || (a1 - 7294) < 2)
      {
        return result;
      }

      v4 = vdupq_n_s32(a1);
      if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_255D09E50, vaddq_s32(v4, xmmword_255D09E40)))) & 1) == 0 && a1 != 7379 && (a1 & 0xFFFFFFF8) != 0x1CC0 && ((a1 - 8317) > 0x11 || ((1 << (a1 - 125)) & 0x30003) == 0) && v3 != 8968 && (a1 - 9001) >= 2 && (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_255D09E70, vaddq_s32(v4, xmmword_255D09E60)))) & 1) == 0 && v3 != 10712)
      {
        v5 = a1 & 0xFFFFFFFE;
        if ((a1 & 0xFFFFFFFE) != 0x29FC && ((a1 - 11513) > 6 || a1 == 11517) && a1 != 11632 && (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_255D09E90, vaddq_s32(v4, xmmword_255D09E80)))) & 1) == 0 && (a1 - 12308) >= 0xC)
        {
          if (a1 > 42508)
          {
            if ((a1 - 42509) < 3 || a1 == 42611)
            {
              return result;
            }

            v6 = 42622;
          }

          else if (a1 > 12538)
          {
            if ((a1 - 42238) < 2)
            {
              return result;
            }

            v6 = 12539;
          }

          else
          {
            if (a1 == 12336 || a1 == 12349)
            {
              return result;
            }

            v6 = 12448;
          }

          if (a1 != v6 && (a1 - 42738) >= 6 && v3 != 43124 && v5 != 43214 && (a1 - 43256) >= 3 && ((a1 - 43310) > 0x31 || ((1 << (a1 - 46)) & 0x2000000000003) == 0) && (a1 - 43457) >= 0xD && v5 != 43486 && (a1 - 65108) >= 0xE && (a1 - 65072) >= 0x23 && (a1 - 65040) >= 0xA && v5 != 64830 && a1 != 44011 && v5 != 43760 && v3 != 43612 && v5 != 43742 && ((a1 - 65281) > 9 || a1 == 65284) && ((a1 - 65123) > 8 || ((1 << (a1 - 99)) & 0x1A1) == 0) && v3 != 65292 && ((a1 - 65311) > 0x3E || ((1 << (a1 - 31)) & 0x5000000170000003) == 0) && (a1 - 65306) >= 2 && (a1 - 65375) >= 7)
          {
            if (a1 <= 66511)
            {
              if ((a1 - 65792) < 3)
              {
                return result;
              }

              v7 = 927;
            }

            else if (a1 <= 67670)
            {
              if (a1 == 66512)
              {
                return result;
              }

              v7 = 1391;
            }

            else
            {
              if (a1 == 67671 || a1 == 67871)
              {
                return result;
              }

              v7 = 2367;
            }

            if (a1 != (v7 | 0x10000) && (a1 - 68176) >= 9)
            {
              if (a1 > 68504)
              {
                if ((a1 - 69703) < 7 || (a1 - 68505) < 4 || (a1 - 69819) < 2)
                {
                  return result;
                }
              }

              else if ((a1 - 68336) < 7 || (a1 - 68409) < 7 || a1 == 68223)
              {
                return result;
              }

              if ((a1 - 69822) >= 4 && v3 != 69952 && v5 != 70004 && (a1 - 70200) >= 6 && ((a1 - 70085) > 8 || ((1 << (a1 + 59)) & 0x10F) == 0) && a1 != 70854 && (a1 - 71105) >= 9 && (a1 - 71233) >= 3)
              {
                if (a1 > 92916)
                {
                  if (((a1 - 92983) > 0xD || ((1 << (a1 - 55)) & 0x201F) == 0) && a1 != 92917)
                  {
                    return a1 == 113823;
                  }
                }

                else if ((a1 - 74864) >= 5 && (a1 - 92782) >= 2)
                {
                  return a1 == 113823;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

_DWORD *outc(uint64_t a1, uint64_t a2, int a3, signed int a4, int a5)
{
  v6 = a1;
  if (!a3)
  {
    goto LABEL_45;
  }

  if (a4 <= 94)
  {
    if (a4 > 59)
    {
      if (a4 > 91)
      {
        if (a4 == 92)
        {
          if (a3 == 3)
          {
            v7 = "/";
          }

          else
          {
            v7 = "\\textbackslash{}";
          }

LABEL_76:

          return cmark_render_ascii(v6, v7);
        }

        if (a4 != 93)
        {
          v7 = "\\^{}";
          goto LABEL_76;
        }
      }

      else
      {
        if (a4 == 60)
        {
          v7 = "\\textless{}";
          goto LABEL_76;
        }

        if (a4 == 62)
        {
          v7 = "\\textgreater{}";
          goto LABEL_76;
        }

        if (a4 != 91)
        {
          goto LABEL_45;
        }
      }

      cmark_render_ascii(a1, "{");
      cmark_render_code_point(v6, a4);
      v7 = "}";
      goto LABEL_76;
    }

    if (a4 > 36)
    {
      if ((a4 - 37) >= 2)
      {
        if (a4 == 39)
        {
          v7 = "\\textquotesingle{}";
          goto LABEL_76;
        }

        if (a4 == 45)
        {
          if (a5 == 45)
          {
            v7 = "-{}";
          }

          else
          {
            v7 = "-";
          }

          goto LABEL_76;
        }

        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (a4 == 34)
    {
      v7 = "\\textquotedbl{}";
      goto LABEL_76;
    }

    if (a4 != 35)
    {
      if (a4 == 36)
      {
        goto LABEL_30;
      }

LABEL_45:
      a1 = v6;
      v8 = a4;
      goto LABEL_46;
    }

LABEL_44:
    cmark_render_ascii(a1, "\");
    goto LABEL_45;
  }

  if (a4 <= 8210)
  {
    if (a4 <= 124)
    {
      if (a4 != 95)
      {
        if (a4 != 123)
        {
          if (a4 == 124)
          {
            v7 = "\\textbar{}";
            goto LABEL_76;
          }

          goto LABEL_45;
        }

        goto LABEL_44;
      }

LABEL_30:
      if (a3 != 1)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    if (a4 == 125)
    {
      goto LABEL_44;
    }

    if (a4 != 126)
    {
      if (a4 == 160)
      {
        v7 = "~";
        goto LABEL_76;
      }

      goto LABEL_45;
    }

    if (a3 == 1)
    {
      v7 = "\\textasciitilde{}";
      goto LABEL_76;
    }

    v8 = 126;
  }

  else if (a4 <= 8216)
  {
    switch(a4)
    {
      case 8211:
        if (a3 == 1)
        {
          v7 = "--";
          goto LABEL_76;
        }

        v8 = 8211;
        break;
      case 8212:
        if (a3 == 1)
        {
          v7 = "---";
          goto LABEL_76;
        }

        v8 = 8212;
        break;
      case 8216:
        if (a3 == 1)
        {
          goto LABEL_76;
        }

        v8 = 8216;
        break;
      default:
        goto LABEL_45;
    }
  }

  else if (a4 > 8220)
  {
    if (a4 != 8221)
    {
      if (a4 == 8230)
      {
        v7 = "\\ldots{}";
        goto LABEL_76;
      }

      goto LABEL_45;
    }

    if (a3 == 1)
    {
      v7 = "''";
      goto LABEL_76;
    }

    v8 = 8221;
  }

  else if (a4 == 8217)
  {
    if (a3 == 1)
    {
      v7 = "'";
      goto LABEL_76;
    }

    v8 = 8217;
  }

  else
  {
    if (a4 != 8220)
    {
      goto LABEL_45;
    }

    if (a3 == 1)
    {
      goto LABEL_76;
    }

    v8 = 8220;
  }

LABEL_46:

  return cmark_render_code_point(a1, v8);
}

uint64_t S_render_node_0(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 28);
  v8 = v7 > 0 && (a4 & 0x10) == 0;
  v9 = *(a2 + 104);
  if (v9)
  {
    v10 = *(v9 + 112);
    if (v10)
    {
      goto LABEL_6;
    }
  }

  v12 = *(a2 + 100);
  v11 = 1;
  if (v12 <= 0xC000)
  {
    if (*(a2 + 100) > 0x8005u)
    {
      if (*(a2 + 100) <= 0x8008u)
      {
        if (v12 == 32774)
        {
          return v11;
        }

        if (v12 != 32775)
        {
          if (a3 == 2)
          {
            return v11;
          }

          goto LABEL_91;
        }

        (*(a1 + 56))(a1);
        v36 = *(a1 + 72);
        if (a3 == 2)
        {
          v37 = cmark_node_get_on_enter(a2);
        }

        else
        {
          v37 = cmark_node_get_on_exit(a2);
        }

        v36(a1, a2, v37, 0, 0);
LABEL_89:
        (*(a1 + 56))(a1);
        return 1;
      }

      if (v12 != 32777)
      {
        if (v12 != 32778)
        {
          v17 = 32779;
          goto LABEL_35;
        }

        (*(a1 + 64))(a1);
        (*(a1 + 72))(a1, a2, "\\begin{center}\\rule{0.5\\linewidth}{\\linethickness}\\end{center}", 0, 0);
LABEL_91:
        (*(a1 + 64))(a1);
        return v11;
      }

      if (a3 != 2)
      {
        (*(a1 + 72))(a1, a2, "}", 0, 0);
        goto LABEL_91;
      }

      v33 = cmark_node_get_heading_level(a2) - 1;
      if (v33 <= 4)
      {
        (*(a1 + 72))(a1, a2, off_2798112D0[v33], 0, 0);
      }

      v13 = *(a1 + 72);
      v14 = "{";
LABEL_77:
      v13(a1, a2, v14, 0, 0);
      return v11;
    }

    if (*(a2 + 100) > 0x8002u)
    {
      if (v12 == 32771)
      {
        list_type = cmark_node_get_list_type(a2);
        v23 = *(a1 + 72);
        if (list_type == 2)
        {
          v24 = "enumerate";
        }

        else
        {
          v24 = "itemize";
        }

        if (a3 == 2)
        {
          v23(a1, a2, "\\begin{", 0, 0);
          (*(a1 + 72))(a1, a2, v24, 0, 0);
          (*(a1 + 72))(a1, a2, "}", 0, 0);
          (*(a1 + 56))(a1);
          list_start = cmark_node_get_list_start(a2);
          if (list_start < 2)
          {
            return 1;
          }

          v26 = list_start;
          enumlevel = S_get_enumlevel(a2);
          if ((enumlevel - 1) <= 4)
          {
            v28 = enumlevel;
            snprintf(__str, 0x14uLL, "%d", v26);
            (*(a1 + 72))(a1, a2, "\\setcounter{enum", 0, 0);
            (*(a1 + 72))(a1, a2, off_2798112A8[v28 - 1], 0, 0);
            (*(a1 + 72))(a1, a2, "}{", 0, 0);
            (*(a1 + 72))(a1, a2, __str, 0, 1);
            (*(a1 + 72))(a1, a2, "}", 0, 0);
          }

          goto LABEL_89;
        }

        v23(a1, a2, "\\end{", 0, 0);
        (*(a1 + 72))(a1, a2, v24, 0, 0);
        (*(a1 + 72))(a1, a2, "}", 0, 0);
LABEL_83:
        (*(a1 + 64))(a1);
        return 1;
      }

      if (v12 != 32772)
      {
        (*(a1 + 56))(a1);
        (*(a1 + 72))(a1, a2, "\\begin{verbatim}", 0, 0);
        (*(a1 + 56))(a1);
        v15 = *(a1 + 72);
        literal = cmark_node_get_literal(a2);
        v15(a1, a2, literal, 0, 0);
        (*(a1 + 56))(a1);
        (*(a1 + 72))(a1, a2, "\\end{verbatim}", 0, 0);
        goto LABEL_83;
      }

      if (a3 == 2)
      {
        v13 = *(a1 + 72);
        v14 = "\\item ";
        goto LABEL_77;
      }

LABEL_48:
      (*(a1 + 56))(a1);
      return v11;
    }

    if (v12 == 32769)
    {
      return v11;
    }

    if (v12 != 32770)
    {
      goto LABEL_99;
    }

    v18 = *(a1 + 72);
    if (a3 != 2)
    {
      v18(a1, a2, "\\end{quote}", 0, 0);
      goto LABEL_91;
    }

    v19 = "\\begin{quote}";
LABEL_47:
    v18(a1, a2, v19, 0, 0);
    goto LABEL_48;
  }

  if (*(a2 + 100) <= 0xC005u)
  {
    if (*(a2 + 100) <= 0xC002u)
    {
      if (v12 == 49153)
      {
        v20 = *(a1 + 72);
        v21 = cmark_node_get_literal(a2);
        v20(a1, a2, v21, v8, 1);
        return v11;
      }

      if (v12 != 49154)
      {
        goto LABEL_99;
      }

      if ((a4 & 4) == 0)
      {
        if (v7 | a4 & 0x10)
        {
          (*(a1 + 72))(a1, a2, " ", v8, 1);
          return v11;
        }

        goto LABEL_48;
      }
    }

    else if (v12 != 49155)
    {
      if (v12 != 49156)
      {
        v17 = 49157;
        goto LABEL_35;
      }

      (*(a1 + 72))(a1, a2, "\\texttt{", 0, 0);
      v29 = *(a1 + 72);
      v30 = cmark_node_get_literal(a2);
      v29(a1, a2, v30, 0, 1);
      goto LABEL_71;
    }

    v18 = *(a1 + 72);
    v19 = "\\\";
    goto LABEL_47;
  }

  if (*(a2 + 100) <= 0xC008u)
  {
    if (v12 == 49158)
    {
      v31 = *(a1 + 72);
      if (a3 == 2)
      {
        v32 = cmark_node_get_on_enter(a2);
      }

      else
      {
        v32 = cmark_node_get_on_exit(a2);
      }

      v31(a1, a2, v32, 0, 0);
      return 1;
    }

    if (v12 == 49159)
    {
      v13 = *(a1 + 72);
      if (a3 == 2)
      {
        v14 = "\\emph{";
        goto LABEL_77;
      }
    }

    else
    {
      v13 = *(a1 + 72);
      if (a3 == 2)
      {
        v14 = "\\textbf{";
        goto LABEL_77;
      }
    }

LABEL_76:
    v14 = "}";
    goto LABEL_77;
  }

  if (v12 != 49161)
  {
    if (v12 != 49162)
    {
      v17 = 49163;
LABEL_35:
      if (v12 == v17)
      {
        return v11;
      }

LABEL_99:
      S_render_node_cold_1_0();
    }

    if (a3 != 2)
    {
      return v11;
    }

    (*(a1 + 72))(a1, a2, "\\protect\\includegraphics{", 0, 0);
    v38 = *(a1 + 72);
    url = cmark_node_get_url(a2);
    v38(a1, a2, url, 0, 3);
LABEL_81:
    (*(a1 + 72))(a1, a2, "}", 0, 0);
    return 0;
  }

  if (a3 != 2)
  {
LABEL_71:
    v13 = *(a1 + 72);
    goto LABEL_76;
  }

  v34 = cmark_node_get_url(a2);
  link_type = get_link_type(a2);
  v10 = *(a1 + 72);
  if (link_type > 1)
  {
    if (link_type == 2)
    {
      (v10)(a1, a2, "\\href{", 0, 0);
      (*(a1 + 72))(a1, a2, v34, 0, 3);
      v10 = *(a1 + 72);
    }

    else
    {
      if (link_type == 3)
      {
        (v10)(a1, a2, "\\href{", 0, 0);
        (*(a1 + 72))(a1, a2, v34, 0, 3);
      }

      else
      {
        (v10)(a1, a2, "\\protect\\hyperlink{", 0, 0);
        (*(a1 + 72))(a1, a2, v34 + 1, 0, 3);
      }

      v10 = *(a1 + 72);
    }

    goto LABEL_6;
  }

  if (link_type)
  {
    (v10)(a1, a2, "\\url{", 0, 0);
    (*(a1 + 72))(a1, a2, v34, 0, 3);
    goto LABEL_81;
  }

LABEL_6:
  v10();
  return 1;
}

uint64_t S_get_enumlevel(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1;
  do
  {
    if (*(v3 + 100) == 32771)
    {
      if (cmark_node_get_list_type(a1) == 2)
      {
        v2 = (v2 + 1);
      }

      else
      {
        v2 = v2;
      }
    }

    v3 = *(v3 + 40);
  }

  while (v3);
  return v2;
}

uint64_t get_link_type(uint64_t a1)
{
  if (*(a1 + 100) != 49161)
  {
    return 0;
  }

  url = cmark_node_get_url(a1);
  v3 = url;
  if (url)
  {
    v13 = url;
    v14 = strlen(url);
    if (*v3 == 35)
    {
      return 4;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v5 = strlen(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!_scan_at(_scan_scheme, &v13, 0))
  {
    return 0;
  }

  if (*cmark_node_get_title(a1))
  {
    return 3;
  }

  v7 = *(a1 + 48);
  cmark_consolidate_text_nodes(v7);
  if (!v7)
  {
    return 0;
  }

  v8 = strncmp(v3, "mailto:", 7uLL);
  v9 = v6 - 7;
  if (v8)
  {
    v9 = v6;
  }

  v4 = 3;
  if (v9 == *(v7 + 136))
  {
    v10 = 7;
    if (v8)
    {
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (!strncmp(&v3[v10], *(v7 + 128), v9))
    {
      return v11;
    }

    else
    {
      return 3;
    }
  }

  return v4;
}

uint64_t cmark_render_commonmark(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = *a1;
  if ((a2 & 4) != 0)
  {
    a3 = 0;
  }

  return cmark_render(v5, a1, a2, a3, outc_0, S_render_node_1);
}

uint64_t cmark_render_commonmark_with_mem(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((a2 & 4) != 0)
  {
    a3 = 0;
  }

  return cmark_render(a4, a1, a2, a3, outc_0, S_render_node_1);
}

_DWORD *outc_0(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 8);
  v10 = *(v9 + 20);
  if (v10 < 1)
  {
    v11 = 0;
    if (!a3)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v11 = cmark_isdigit(*(*(v9 + 8) + v10 - 1));
    if (!a3)
    {
      goto LABEL_29;
    }
  }

  if (a4 > 127)
  {
    goto LABEL_29;
  }

  switch(a3)
  {
    case 3:
      if (((a4 - 60) > 0x24 || ((1 << (a4 - 60)) & 0x1000000005) == 0) && !cmark_isspace(a4) && ((a4 - 40) > 0x34 || ((1 << (a4 - 40)) & 0x10000000000003) == 0))
      {
        break;
      }

      if (cmark_isspace(a4))
      {
        snprintf(__str, 0x14uLL, "%%%2X", a4);
        result = cmark_strbuf_puts(*(a1 + 8), __str);
        v14 = *(a1 + 24) + 3;
        goto LABEL_33;
      }

      goto LABEL_27;
    case 2:
      if ((a4 - 34) <= 0x3E && ((1 << (a4 - 34)) & 0x4400000014000001) != 0)
      {
        goto LABEL_27;
      }

      break;
    case 1:
      if (a4 < 32)
      {
        goto LABEL_27;
      }

      v12 = (a4 - 33);
      if (v12 > 0x3F)
      {
        goto LABEL_26;
      }

      if (((1 << (a4 - 33)) & 0xDC00000028000205) != 0)
      {
        goto LABEL_27;
      }

      if (v12 == 5)
      {
        if (cmark_isalpha(a5))
        {
          goto LABEL_27;
        }
      }

      else
      {
LABEL_26:
        if (a4 == 126)
        {
          goto LABEL_27;
        }
      }

      if (*(a1 + 41) == 1 && a4 <= 0x3D)
      {
        if (((1 << a4) & 0x2000280000000000) != 0)
        {
          if (v11)
          {
            if (a4 != 46)
            {
              break;
            }

LABEL_42:
            if (a5 && !cmark_isspace(a5))
            {
              break;
            }
          }

LABEL_27:
          if (cmark_ispunct(a4))
          {
            cmark_render_ascii(a1, "\");
            break;
          }

          snprintf(__str, 0x14uLL, "&#%d;", a4);
          cmark_strbuf_puts(*(a1 + 8), __str);
          result = strlen(__str);
          v14 = *(a1 + 24) + result;
LABEL_33:
          *(a1 + 24) = v14;
          return result;
        }

        if (((1 << a4) & 0x420000000000) != 0 && v11)
        {
          goto LABEL_42;
        }
      }

      break;
    default:
      break;
  }

LABEL_29:

  return cmark_render_code_point(a1, a4);
}

uint64_t S_render_node_1(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v106 = *MEMORY[0x277D85DE8];
  v104 = 0;
  v8 = *(a1 + 28) >= 1 && (a4 & 4) == 0;
  v9 = (a4 & 0x10) == 0 && v8;
  if (*(a2 + 100) != 32772 || a3 != 2 || *(a2 + 32))
  {
    v10 = a2;
    while (1)
    {
      v11 = *(v10 + 100);
      if ((v11 & 0xC000) == 0x8000)
      {
        break;
      }

      v10 = *(v10 + 40);
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    if (v11 == 32772 && cmark_node_get_list_tight(*(v10 + 40)))
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      v12 = *(v10 + 40);
      if (v12)
      {
        if (*(v12 + 100) != 32772)
        {
LABEL_13:
          LOBYTE(v12) = 0;
          goto LABEL_20;
        }

        LOBYTE(v12) = cmark_node_get_list_tight(*(v12 + 40)) != 0;
      }
    }

LABEL_20:
    *(a1 + 43) = v12;
  }

  v13 = *(a2 + 104);
  if (v13)
  {
    v14 = *(v13 + 96);
    if (v14)
    {
      goto LABEL_165;
    }
  }

  v15 = *(a2 + 100);
  if (v15 > 0xC000)
  {
    if (*(a2 + 100) > 0xC005u)
    {
      if (*(a2 + 100) <= 0xC008u)
      {
        if (v15 != 49158)
        {
          v14 = *(a1 + 72);
          goto LABEL_165;
        }

        v35 = *(a1 + 72);
        if (a3 == 2)
        {
          v36 = cmark_node_get_on_enter(a2);
        }

        else
        {
          v36 = cmark_node_get_on_exit(a2);
        }

LABEL_157:
        v35(a1, a2, v36, 0, 0);
        return 1;
      }

      switch(v15)
      {
        case 0xC009u:
          if (*(a2 + 136))
          {
            if (_scan_at(_scan_scheme, (a2 + 128), 0))
            {
              if (*(a2 + 152) <= 0)
              {
                v91 = *(a2 + 48);
                if (v91)
                {
                  cmark_consolidate_text_nodes(*(a2 + 48));
                  v92 = *(a2 + 128);
                  v93 = *(a2 + 136);
                  v94 = strncmp(v92, "mailto:", 7uLL);
                  v95 = v93 - 7;
                  if (v94)
                  {
                    v95 = v93;
                  }

                  if (v95 == *(v91 + 136))
                  {
                    v96 = 7;
                    if (v94)
                    {
                      v96 = 0;
                    }

                    if (!strncmp(&v92[v96], *(v91 + 128), v95))
                    {
                      if (a3 != 2)
                      {
                        return 1;
                      }

                      (*(a1 + 72))(a1, a2, "<", 0, 0);
                      url = cmark_node_get_url(a2);
                      v98 = strncmp(url, "mailto:", 7uLL);
                      v99 = *(a1 + 72);
                      v100 = cmark_node_get_url(a2);
                      v101 = v100;
                      if (!v98)
                      {
                        v101 = v100 + 7;
                      }

                      v99(a1, a2, v101, 0, 0);
                      (*(a1 + 72))(a1, a2, ">", 0, 0);
                      return 0;
                    }
                  }
                }
              }
            }
          }

          v14 = *(a1 + 72);
          if (a3 != 2)
          {
            (v14)(a1, a2, "](", 0, 0);
            v61 = *(a1 + 72);
            v62 = cmark_node_get_url(a2);
            v61(a1, a2, v62, 0, 3);
            title = cmark_node_get_title(a2);
            if (*title)
            {
              v64 = title;
              (*(a1 + 72))(a1, a2, " ", 0, 0);
              (*(a1 + 72))(a1, a2, v64, 0, 2);
LABEL_133:
              (*(a1 + 72))(a1, a2, "", 0, 0);
            }

LABEL_134:
            v14 = *(a1 + 72);
          }

          break;
        case 0xC00Au:
          v14 = *(a1 + 72);
          if (a3 != 2)
          {
            (v14)(a1, a2, "](", 0, 0);
            v65 = *(a1 + 72);
            v66 = cmark_node_get_url(a2);
            v65(a1, a2, v66, 0, 3);
            v67 = cmark_node_get_title(a2);
            if (*v67)
            {
              v68 = v67;
              (*(a1 + 72))(a1, a2, " ", v9, 0);
              (*(a1 + 72))(a1, a2, v68, 0, 2);
              goto LABEL_133;
            }

            goto LABEL_134;
          }

          break;
        case 0xC00Bu:
          if (a3 != 2)
          {
            return 1;
          }

          (*(a1 + 72))(a1, a2, "[^", 0, 0);
          v37 = 1;
          v38 = (**a1)(*(*(a2 + 120) + 136) + 1, 1);
          memmove(v38, *(*(a2 + 120) + 128), *(*(a2 + 120) + 136));
          (*(a1 + 72))(a1, a2, v38, 0, 0);
          (*(*a1 + 16))(v38);
          (*(a1 + 72))(a1, a2, "]", 0, 0);
          return v37;
        default:
          goto LABEL_210;
      }

LABEL_165:
      v14();
      return 1;
    }

    if (*(a2 + 100) <= 0xC002u)
    {
      if (v15 == 49153)
      {
        v41 = *(a1 + 72);
        literal = cmark_node_get_literal(a2);
        v37 = 1;
        v41(a1, a2, literal, v9, 1);
        return v37;
      }

      if (v15 != 49154)
      {
        goto LABEL_210;
      }

      if ((a4 & 4) == 0)
      {
        if ((*(a1 + 42) & 1) == 0 && !(*(a1 + 28) | a4 & 0x10))
        {
          goto LABEL_144;
        }

        v14 = *(a1 + 72);
        goto LABEL_165;
      }
    }

    else
    {
      if (v15 != 49155)
      {
        if (v15 == 49156)
        {
          v46 = cmark_node_get_literal(a2);
          v47 = strlen(v46);
          v48 = strlen(v46);
          v49 = 0;
          v50 = 0;
          if (v48 + 1 > 1)
          {
            v51 = v48 + 1;
          }

          else
          {
            v51 = 1;
          }

          v52 = 1;
          do
          {
            v53 = v46[v49];
            if ((v50 - 1) >= 0x1F)
            {
              v54 = 0;
            }

            else
            {
              v54 = 1 << v50;
            }

            v55 = v54 | v52;
            if (v53 == 96)
            {
              ++v50;
            }

            else
            {
              v50 = 0;
            }

            if (v53 != 96)
            {
              v52 = v55;
            }

            ++v49;
          }

          while (v51 != v49);
          if (v52)
          {
            v56 = 0;
            do
            {
              v75 = v56++;
              if (v75 > 0x1E)
              {
                break;
              }

              v76 = v52;
              v52 >>= 1;
            }

            while ((v76 & 2) != 0);
          }

          else
          {
            LODWORD(v56) = 0;
          }

          v78 = !v47 || (v77 = *v46, v77 == 96) || v77 == 32 || (v46[v47 - 1] & 0xBF) == 32;
          if (v56)
          {
            v86 = v56;
            do
            {
              --v86;
            }

            while (v86);
          }

          if (v78)
          {
            (*(a1 + 72))(a1, a2, " ", 0, 0);
          }

          v87 = *(a1 + 72);
          v88 = cmark_node_get_literal(a2);
          v87(a1, a2, v88, v9, 0);
          if (v78)
          {
            (*(a1 + 72))(a1, a2, " ", 0, 0);
          }

          if (!v56)
          {
            return 1;
          }

          do
          {
            v37 = 1;
            LODWORD(v56) = v56 - 1;
          }

          while (v56);
          return v37;
        }

        v35 = *(a1 + 72);
        v36 = cmark_node_get_literal(a2);
        goto LABEL_157;
      }

      if ((a4 & 4) != 0)
      {
        goto LABEL_144;
      }
    }

    (*(a1 + 72))(a1, a2, "  ", 0, 0);
    goto LABEL_144;
  }

  if (*(a2 + 100) <= 0x8005u)
  {
    if (*(a2 + 100) > 0x8002u)
    {
      if (v15 == 32771)
      {
        if (a3 == 2)
        {
          return 1;
        }

        v43 = *(a2 + 24);
        if (!v43)
        {
          return 1;
        }

        v44 = *(v43 + 100);
        if (v44 != 32773 && v44 != 32771)
        {
          return 1;
        }

        (*(a1 + 56))(a1);
        (*(a1 + 72))(a1, a2, "<!-- end list -->", 0, 0);
        goto LABEL_155;
      }

      if (v15 != 32772)
      {
        if (!*(a2 + 32) && (v84 = *(a2 + 40)) != 0 && *(v84 + 100) == 32772)
        {
          v16 = 1;
        }

        else
        {
          (*(a1 + 64))(a1);
          v16 = 0;
        }

        fence_info = cmark_node_get_fence_info(a2);
        v18 = *fence_info;
        if (strchr(fence_info, 96))
        {
          v19 = 126;
        }

        else
        {
          v19 = 96;
        }

        LOBYTE(v104) = v19;
        v20 = cmark_node_get_literal(a2);
        v21 = strlen(v20);
        if (v18)
        {
          goto LABEL_45;
        }

        v22 = v21;
        if (v21 < 3 || cmark_isspace(*v20))
        {
          goto LABEL_45;
        }

        v89 = &v20[v22];
        if (cmark_isspace(*(v89 - 1)))
        {
          if (cmark_isspace(*(v89 - 2)))
          {
            v90 = 1;
          }

          else
          {
            v90 = v16;
          }

          if ((v90 & 1) == 0)
          {
            goto LABEL_209;
          }
        }

        else if ((v16 & 1) == 0)
        {
LABEL_209:
          (*(a1 + 72))(a1, a2, "    ", 0, 0);
          cmark_strbuf_puts(*(a1 + 16), "    ");
          v102 = *(a1 + 72);
          v103 = cmark_node_get_literal(a2);
          v102(a1, a2, v103, 0, 0);
          v39 = *(a1 + 16);
          v40 = *(v39 + 20) - 4;
LABEL_84:
          cmark_strbuf_truncate(v39, v40);
LABEL_155:
          (*(a1 + 64))(a1);
          return 1;
        }

LABEL_45:
        v23 = strlen(v20);
        v24 = 0;
        v25 = 0;
        v26 = 1;
        if (v23 + 1 > 1)
        {
          v26 = v23 + 1;
        }

        do
        {
          v28 = *v20++;
          v27 = v28;
          if (v25 <= v24)
          {
            v29 = v24;
          }

          else
          {
            v29 = v25;
          }

          if (v27 == 96)
          {
            ++v25;
          }

          else
          {
            v25 = 0;
          }

          if (v27 != 96)
          {
            v24 = v29;
          }

          --v26;
        }

        while (v26);
        if (v24 <= 2)
        {
          v30 = 2;
        }

        else
        {
          v30 = v24;
        }

        if (v24 <= 0x7FFFFFFE)
        {
          v31 = v30 + 1;
          do
          {
            (*(a1 + 72))(a1, a2, &v104, 0, 0);
            --v31;
          }

          while (v31);
        }

        (*(a1 + 72))(a1, a2, " ", 0, 0);
        (*(a1 + 72))(a1, a2, fence_info, 0, 0);
        (*(a1 + 56))(a1);
        v32 = *(a1 + 72);
        v33 = cmark_node_get_literal(a2);
        v32(a1, a2, v33, 0, 0);
        (*(a1 + 56))(a1);
        if (v24 <= 0x7FFFFFFE)
        {
          v34 = v30 + 1;
          do
          {
            (*(a1 + 72))(a1, a2, &v104, 0, 0);
            --v34;
          }

          while (v34);
        }

        goto LABEL_155;
      }

      if (cmark_node_get_list_type(*(a2 + 40)) == 1)
      {
        v45 = 4;
      }

      else
      {
        list_start = cmark_node_get_list_start(*(a2 + 40));
        list_delim = cmark_node_get_list_delim(*(a2 + 40));
        v71 = list_start - 1;
        v72 = a2;
        do
        {
          v72 = *(v72 + 32);
          ++v71;
        }

        while (v72);
        v73 = ".";
        if (list_delim == 2)
        {
          v73 = ")";
        }

        v74 = " ";
        if (v71 < 10)
        {
          v74 = "  ";
        }

        snprintf(__str, 0x14uLL, "%d%s%s", v71, v73, v74);
        v45 = strlen(__str);
      }

      if (a3 == 2)
      {
        if (cmark_node_get_list_type(*(a2 + 40)) == 1)
        {
          v79 = "  - ";
        }

        else
        {
          v79 = __str;
        }

        (*(a1 + 72))(a1, a2, v79, 0, 0);
        v37 = 1;
        for (*(a1 + 41) = 1; v45; v37 = 1)
        {
          --v45;
          cmark_strbuf_putc(*(a1 + 16), 32);
        }

        return v37;
      }

      cmark_strbuf_truncate(*(a1 + 16), *(*(a1 + 16) + 20) - v45);
LABEL_144:
      (*(a1 + 56))(a1);
      return 1;
    }

    if (v15 == 32769)
    {
      return 1;
    }

    if (v15 == 32770)
    {
      if (a3 == 2)
      {
        (*(a1 + 72))(a1, a2, "> ", 0, 0);
        v37 = 1;
        *(a1 + 41) = 1;
        cmark_strbuf_puts(*(a1 + 16), "> ");
        return v37;
      }

      v39 = *(a1 + 16);
      v40 = *(v39 + 20) - 2;
      goto LABEL_84;
    }

LABEL_210:
    S_render_node_cold_1_1();
  }

  if (*(a2 + 100) <= 0x8008u)
  {
    if (v15 == 32774)
    {
      (*(a1 + 64))(a1);
      v57 = *(a1 + 72);
      v58 = cmark_node_get_literal(a2);
      v57(a1, a2, v58, 0, 0);
    }

    else if (v15 == 32775)
    {
      (*(a1 + 64))(a1);
      v59 = *(a1 + 72);
      if (a3 == 2)
      {
        v60 = cmark_node_get_on_enter(a2);
      }

      else
      {
        v60 = cmark_node_get_on_exit(a2);
      }

      v59(a1, a2, v60, 0, 0);
    }

    else if (a3 == 2)
    {
      return 1;
    }

    goto LABEL_155;
  }

  if (v15 == 32777)
  {
    if (a3 == 2)
    {
      heading_level = cmark_node_get_heading_level(a2);
      if (heading_level >= 1)
      {
        v81 = heading_level + 1;
        do
        {
          (*(a1 + 72))(a1, a2, "#", 0, 0);
          --v81;
        }

        while (v81 > 1);
      }

      (*(a1 + 72))(a1, a2, " ", 0, 0);
      *(a1 + 41) = 257;
      return 1;
    }

    *(a1 + 42) = 0;
    goto LABEL_155;
  }

  if (v15 == 32778)
  {
    (*(a1 + 64))(a1);
    (*(a1 + 72))(a1, a2, "-----", 0, 0);
    goto LABEL_155;
  }

  if (v15 != 32779)
  {
    goto LABEL_210;
  }

  if (a3 != 2)
  {
    cmark_strbuf_truncate(*(a1 + 16), *(*(a1 + 16) + 20) - 4);
    return 1;
  }

  ++*(a1 + 80);
  (*(a1 + 72))(a1, a2, "[^", 0, 0);
  v37 = 1;
  v82 = (**a1)(*(a2 + 136) + 1, 1);
  memmove(v82, *(a2 + 128), *(a2 + 136));
  (*(a1 + 72))(a1, a2, v82, 0, 0);
  (*(*a1 + 16))(v82);
  (*(a1 + 72))(a1, a2, "]:\n", 0, 0);
  cmark_strbuf_puts(*(a1 + 16), "    ");
  return v37;
}

uint64_t cmark_render_plaintext(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = *a1;
  if ((a2 & 4) != 0)
  {
    a3 = 0;
  }

  return cmark_render(v5, a1, a2, a3, outc_1, S_render_node_2);
}

uint64_t cmark_render_plaintext_with_mem(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((a2 & 4) != 0)
  {
    a3 = 0;
  }

  return cmark_render(a4, a1, a2, a3, outc_1, S_render_node_2);
}

uint64_t S_render_node_2(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 28) >= 1 && (a4 & 4) == 0;
  v9 = (a4 & 0x10) == 0 && v8;
  if (*(a2 + 100) != 32772 || a3 != 2 || *(a2 + 32))
  {
    v10 = a2;
    while (1)
    {
      v11 = *(v10 + 100);
      if ((v11 & 0xC000) == 0x8000)
      {
        break;
      }

      v10 = *(v10 + 40);
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    if (v11 == 32772 && cmark_node_get_list_tight(*(v10 + 40)))
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      v12 = *(v10 + 40);
      if (v12)
      {
        if (*(v12 + 100) != 32772)
        {
LABEL_13:
          LOBYTE(v12) = 0;
          goto LABEL_20;
        }

        LOBYTE(v12) = cmark_node_get_list_tight(*(v12 + 40)) != 0;
      }
    }

LABEL_20:
    *(a1 + 43) = v12;
  }

  v13 = *(a2 + 104);
  if (v13)
  {
    v14 = *(v13 + 104);
    if (v14)
    {
      goto LABEL_23;
    }
  }

  v15 = *(a2 + 100);
  if (v15 > 0xC000)
  {
    if (*(a2 + 100) <= 0xC003u)
    {
      if (v15 != 49153)
      {
        if (v15 == 49154)
        {
          if ((a4 & 4) == 0 && ((*(a1 + 42) & 1) != 0 || *(a1 + 28) | a4 & 0x10))
          {
            v14 = *(a1 + 72);
LABEL_23:
            v14();
            return 1;
          }
        }

        else if (v15 != 49155)
        {
          goto LABEL_92;
        }

        goto LABEL_79;
      }

      v22 = *(a1 + 72);
      literal = cmark_node_get_literal(a2);
      v24 = a1;
      v25 = a2;
      v26 = v9;
      v27 = 1;
    }

    else
    {
      if (v15 - 49157 < 6)
      {
        return 1;
      }

      if (v15 != 49156)
      {
        if (v15 == 49163)
        {
          if (a3 != 2)
          {
            return 1;
          }

          (*(a1 + 72))(a1, a2, "[^", 0, 0);
          v16 = *(a1 + 72);
          v17 = cmark_chunk_to_cstr(*a1, (a2 + 128));
          v16(a1, a2, v17, 0, 0);
          v14 = *(a1 + 72);
          goto LABEL_23;
        }

        goto LABEL_92;
      }

      v22 = *(a1 + 72);
      literal = cmark_node_get_literal(a2);
      v24 = a1;
      v25 = a2;
      v26 = v9;
      v27 = 0;
    }

    v22(v24, v25, literal, v26, v27);
    return 1;
  }

  if (*(a2 + 100) > 0x8005u)
  {
    if (*(a2 + 100) <= 0x8008u)
    {
      if (v15 - 32774 < 2)
      {
        return 1;
      }

      if (v15 == 32776)
      {
        if (a3 == 2)
        {
          return 1;
        }

        goto LABEL_67;
      }

LABEL_92:
      S_render_node_cold_1_2();
    }

    if (v15 == 32777)
    {
      if (a3 == 2)
      {
        *(a1 + 41) = 257;
        return 1;
      }

      *(a1 + 42) = 0;
      goto LABEL_67;
    }

    if (v15 != 32778)
    {
      if (v15 != 32779)
      {
        goto LABEL_92;
      }

      if (a3 == 2)
      {
        ++*(a1 + 80);
        (*(a1 + 72))(a1, a2, "[^", 0, 0);
        snprintf(__str, 0x20uLL, "%d", *(a1 + 80));
        (*(a1 + 72))(a1, a2, __str, 0, 0);
        (*(a1 + 72))(a1, a2, "]: ", 0, 0);
        cmark_strbuf_puts(*(a1 + 16), "    ");
      }

      else
      {
        cmark_strbuf_truncate(*(a1 + 16), *(*(a1 + 16) + 20) - 4);
      }

      return 1;
    }

LABEL_67:
    (*(a1 + 64))(a1);
    return 1;
  }

  if (*(a2 + 100) > 0x8003u)
  {
    if (v15 != 32772)
    {
      if (*(a2 + 32) || (v37 = *(a2 + 40)) == 0 || *(v37 + 100) != 32772)
      {
        (*(a1 + 64))(a1);
      }

      v20 = *(a1 + 72);
      v21 = cmark_node_get_literal(a2);
      v20(a1, a2, v21, 0, 0);
      goto LABEL_67;
    }

    if (cmark_node_get_list_type(*(a2 + 40)) == 1)
    {
      v28 = 4;
    }

    else
    {
      list_start = cmark_node_get_list_start(*(a2 + 40));
      list_delim = cmark_node_get_list_delim(*(a2 + 40));
      v31 = list_start - 1;
      v32 = a2;
      do
      {
        v32 = *(v32 + 32);
        ++v31;
      }

      while (v32);
      v33 = ".";
      if (list_delim == 2)
      {
        v33 = ")";
      }

      v34 = " ";
      if (v31 < 10)
      {
        v34 = "  ";
      }

      snprintf(__str, 0x14uLL, "%d%s%s", v31, v33, v34);
      v28 = strlen(__str);
    }

    if (a3 == 2)
    {
      if (cmark_node_get_list_type(*(a2 + 40)) == 1)
      {
        v36 = "  - ";
      }

      else
      {
        v36 = __str;
      }

      (*(a1 + 72))(a1, a2, v36, 0, 0);
      *(a1 + 41) = 1;
      while (v28)
      {
        --v28;
        cmark_strbuf_putc(*(a1 + 16), 32);
      }

      return 1;
    }

    cmark_strbuf_truncate(*(a1 + 16), *(*(a1 + 16) + 20) - v28);
LABEL_79:
    (*(a1 + 56))(a1);
    return 1;
  }

  if (v15 - 32769 < 2)
  {
    return 1;
  }

  if (v15 != 32771)
  {
    goto LABEL_92;
  }

  if (a3 != 2)
  {
    v18 = *(a2 + 24);
    if (v18)
    {
      v19 = *(v18 + 100);
      if (v19 == 32773 || v19 == 32771)
      {
        goto LABEL_79;
      }
    }
  }

  return 1;
}

_BYTE *cmark_chunk_to_cstr(uint64_t (**a1)(uint64_t, uint64_t), int *a2)
{
  if (a2[3])
  {
    return *a2;
  }

  v4 = (*a1)(a2[2] + 1, 1);
  v3 = v4;
  v5 = a2[2];
  if (v5 >= 1)
  {
    memcpy(v4, *a2, v5);
    LODWORD(v5) = a2[2];
  }

  v3[v5] = 0;
  *a2 = v3;
  a2[3] = 1;
  return v3;
}

void *create_autolink_extension()
{
  v0 = cmark_syntax_extension_new("autolink");
  cmark_syntax_extension_set_match_inline_func(v0, match_0);
  cmark_syntax_extension_set_postprocess_func(v0, postprocess);
  default_mem_allocator = cmark_get_default_mem_allocator();
  v2 = cmark_llist_append(default_mem_allocator, 0, 58);
  v3 = cmark_llist_append(default_mem_allocator, v2, 119);
  cmark_syntax_extension_set_special_inline_chars(v0, v3);
  return v0;
}

uint64_t match_0(uint64_t a1, uint64_t (***a2)(uint64_t, uint64_t), uint64_t a3, int a4, _DWORD *a5)
{
  if (cmark_inline_parser_in_bracket(a5, 0) || cmark_inline_parser_in_bracket(a5, 1))
  {
    return 0;
  }

  if (a4 != 119)
  {
    if (a4 == 58)
    {
      chunk = cmark_inline_parser_get_chunk(a5);
      offset = cmark_inline_parser_get_offset(a5);
      v13 = *(chunk + 8) - offset;
      if (v13 >= 4)
      {
        v14 = offset;
        v15 = *chunk + offset;
        if (*(v15 + 1) == 47 && *(v15 + 2) == 47)
        {
          v50 = chunk;
          v51 = offset;
          v49 = offset;
          if (offset < 1)
          {
            v18 = 0;
          }

          else
          {
            v16 = 0;
            v17 = offset + *chunk - 1;
            while (cmark_isalpha(*(v17 + v16)))
            {
              --v16;
              if (!(v14 + v16))
              {
                v18 = v14;
                goto LABEL_34;
              }
            }

            v18 = -v16;
          }

LABEL_34:
          v34 = 0;
          v52 = v13;
          v53 = v15;
          v35 = (v15 - v18);
          v48 = v18;
          v36 = v13 + v18;
          while (1)
          {
            v37 = strlen(sd_autolink_issafe_valid_uris[v34]);
            v38 = v36 - v37;
            if (v36 > v37)
            {
              v39 = v37;
              if (!strncasecmp(v35, sd_autolink_issafe_valid_uris[v34], v37) && is_valid_hostchar(&v35[v39], v38))
              {
                break;
              }
            }

            v9 = 0;
            if (++v34 == 3)
            {
              return v9;
            }
          }

          v40 = check_domain(v53 + 3, v52 - 3, 1);
          if (v40)
          {
            v41 = v40 + 3;
            if (v40 + 3 >= v52)
            {
              v42 = v51;
            }

            else
            {
              v42 = v51;
              do
              {
                if (cmark_isspace(*(v53 + v41)))
                {
                  break;
                }

                ++v41;
              }

              while (v41 < v52);
            }

            v43 = autolink_delim(v53, v41);
            if (v43)
            {
              v44 = v43;
              cmark_inline_parser_set_offset(a5, v42 + v43);
              cmark_node_unput(a3, v48);
              v9 = cmark_node_new_with_mem(0xC009u, *a2);
              v45 = (v48 + v44);
              v46 = *v50 + v49 - v48;
              *(v9 + 128) = v46;
              *(v9 + 136) = v45;
              v47 = cmark_node_new_with_mem(0xC001u, *a2);
              v47[16] = v46;
              v47[17] = v45;
              cmark_node_append_child(v9, v47);
              return v9;
            }
          }
        }
      }
    }

    return 0;
  }

  v19 = cmark_inline_parser_get_chunk(a5);
  v20 = cmark_inline_parser_get_offset(a5);
  v21 = (*v19 + v20);
  v22 = *(v19 + 8) - v20;
  column = cmark_inline_parser_get_column(a5);
  if (v20 && (v24 = *(v21 - 1), !memchr("*_~(", v24, 5uLL)))
  {
    if (!cmark_isspace(v24) || v22 < 4)
    {
      return 0;
    }
  }

  else if (v22 < 4)
  {
    return 0;
  }

  if (*v21 == 779581303)
  {
    v26 = check_domain(v21, v22, 0);
    if (v26)
    {
        ;
      }

      v28 = autolink_delim(v21, i);
      if (v28)
      {
        v29 = v28;
        cmark_inline_parser_set_offset(a5, v20 + v28);
        v9 = cmark_node_new_with_mem(0xC009u, *a2);
        v54[0] = 0;
        v54[1] = 0;
        v55 = 0;
        cmark_strbuf_init(*a2, v54, 10);
        cmark_strbuf_puts(v54, "http://");
        cmark_strbuf_put(v54, v21, v29);
        v30 = HIDWORD(v55);
        *(v9 + 128) = cmark_strbuf_detach(v54);
        *(v9 + 136) = v30 | 0x100000000;
        v31 = cmark_node_new_with_mem(0xC001u, *a2);
        *(v31 + 128) = *v19 + v20;
        *(v31 + 136) = v29;
        cmark_node_append_child(v9, v31);
        line = cmark_inline_parser_get_line(a5);
        *(v31 + 88) = line;
        *(v9 + 88) = line;
        *(v31 + 80) = line;
        *(v31 + 84) = column - 1;
        *(v9 + 80) = line;
        *(v9 + 84) = column - 1;
        v33 = cmark_inline_parser_get_column(a5);
        *(v31 + 92) = v33 - 1;
        *(v9 + 92) = v33 - 1;
        return v9;
      }
    }
  }

  return 0;
}

void *postprocess(uint64_t a1, uint64_t a2, void *a3)
{
  cmark_consolidate_text_nodes(a3);
  v5 = cmark_iter_new(a3);
  v6 = cmark_iter_next(v5);
  if (v6 != 1)
  {
    v7 = v6;
    v8 = 0;
    do
    {
      node = cmark_iter_get_node(v5);
      if (v8)
      {
        if (v7 != 3)
        {
          goto LABEL_11;
        }

        v8 = *(node + 100) != 49161;
      }

      else
      {
        if (v7 == 2)
        {
          v10 = *(node + 100);
          if (v10 == 49161)
          {
LABEL_11:
            v8 = 1;
            goto LABEL_12;
          }

          if (v10 == 49153)
          {
            postprocess_text(a2, node, 0, 0);
          }
        }

        v8 = 0;
      }

LABEL_12:
      v7 = cmark_iter_next(v5);
    }

    while (v7 != 1);
  }

  cmark_iter_free(v5);
  return a3;
}

uint64_t check_domain(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2 - 1;
  if ((a2 - 1) < 2)
  {
    v13 = 0;
    v10 = 1;
LABEL_17:
    if (a3)
    {
      return v10;
    }

    else
    {
      return v13;
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a2 - 2;
  v10 = 1;
  do
  {
    v11 = *(a1 + v10);
    if (v11 == 46)
    {
      ++v8;
      v7 = v6;
      v6 = 0;
    }

    else if (v11 == 95)
    {
      ++v6;
    }

    else if (!is_valid_hostchar((a1 + v10), v9 + 1) && *(a1 + v10) != 45)
    {
      goto LABEL_11;
    }

    ++v10;
    --v9;
  }

  while (v9);
  v10 = v4;
LABEL_11:
  result = 0;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (!(v7 | v6))
  {
    goto LABEL_17;
  }

  return result;
}

unint64_t autolink_delim(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  while (*(a1 + v3) != 60)
  {
    if (a2 == ++v3)
    {
      v3 = a2;
      goto LABEL_8;
    }
  }

  if (v3)
  {
    do
    {
LABEL_8:
      v4 = *(a1 - 1 + v3);
      if (v4 == 41)
      {
        v5 = 40;
      }

      else
      {
        v5 = 0;
      }

      if (!memchr("?!.,:*_~'", *(a1 - 1 + v3), 0xBuLL))
      {
        if (v4 == 59)
        {
          if (v3 == 2)
          {
            v6 = 0;
          }

          else
          {
            v6 = v3 - 2;
            do
            {
              if (!cmark_isalpha(*(a1 + v6)))
              {
                break;
              }

              --v6;
            }

            while (v6);
          }

          if (v6 < v3 - 2 && *(a1 + v6) == 38)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v4 != 41)
          {
            return v3;
          }

          v7 = 0;
          v8 = 0;
          v9 = 0;
          do
          {
            v10 = *(a1 + v9);
            if (v10 == 41)
            {
              ++v8;
            }

            if (v5 == v10)
            {
              ++v7;
            }

            ++v9;
          }

          while (v3 != v9);
          if (v8 <= v7)
          {
            return v3;
          }
        }
      }

      v6 = v3 - 1;
LABEL_31:
      v3 = v6;
    }

    while (v6);
  }

  return v3;
}

uint64_t postprocess_text(uint64_t result, uint64_t a2, unsigned int a3, int a4)
{
  v29 = result;
  if (a4 <= 1000)
  {
    v4 = a4;
    v6 = a2;
    do
    {
      if ((a3 & 0x80000000) != 0)
      {
        break;
      }

      v7 = *(v6 + 136);
      if (v7 <= a3)
      {
        break;
      }

      v8 = *(v6 + 128);
      v9 = (v8 + a3);
      v10 = v7 - a3;
      result = memchr(v9, 64, v10);
      if (!result)
      {
        break;
      }

      v11 = result - v9;
      if (result - v9 >= 1)
      {
        v12 = 0;
        v13 = v9 + v11;
        v14 = v10 - v11;
        v15 = v8 + v11 + a3 - 1;
        while (1)
        {
          v16 = *(v15 + v12);
          result = cmark_isalnum(v16);
          if (!result)
          {
            result = memchr(".+-_", v16, 5uLL);
            if (!result)
            {
              break;
            }
          }

          if (-(v11 & 0x7FFFFFFF) == --v12)
          {
            v17 = 0;
            v18 = v11;
            goto LABEL_13;
          }
        }

        v18 = -v12;
        v17 = v16 == 47;
LABEL_13:
        v30 = v18;
        if (v18 && !v17 && v14)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          do
          {
            v22 = *(v13 + v19);
            result = cmark_isalnum(v22);
            if (!result)
            {
              if (v22 > 0x3Fu)
              {
                if (v22 != 95)
                {
                  if (v22 != 64)
                  {
                    goto LABEL_29;
                  }

                  ++v20;
                }
              }

              else if (v22 != 45)
              {
                if (v22 != 46)
                {
                  goto LABEL_29;
                }

                if (v19 >= v14 - 1)
                {
                  goto LABEL_29;
                }

                result = cmark_isalnum(*(v13 + v19 + 1));
                if (!result)
                {
                  goto LABEL_29;
                }

                ++v21;
              }
            }

            ++v19;
          }

          while (v14 != v19);
          v19 = v14;
LABEL_29:
          if (v19 >= 2 && v20 == 1)
          {
            if (v21)
            {
              result = cmark_isalpha(*(v13 + v19 - 1));
              if (result || *(v13 + v19 - 1) == 46)
              {
                result = autolink_delim(v13, v19);
                if (result)
                {
                  v23 = result;
                  cmark_chunk_to_cstr_0(*v29, a2 + 128);
                  v24 = cmark_node_new_with_mem(0xC009u, *v29);
                  v34[0] = 0;
                  v34[1] = 0;
                  v35 = 0;
                  cmark_strbuf_init(*v29, v34, 10);
                  cmark_strbuf_puts(v34, "mailto:");
                  cmark_strbuf_put(v34, (v13 - v30), v30 + v23);
                  v25 = HIDWORD(v35);
                  v31 = v24;
                  *(v24 + 128) = cmark_strbuf_detach(v34);
                  *(v24 + 136) = v25 | 0x100000000;
                  v26 = cmark_node_new_with_mem(0xC001u, *v29);
                  LODWORD(v25) = a3 + v11;
                  v27 = a3 + v11 - v30;
                  *&v33 = *(a2 + 128) + v27;
                  *(&v33 + 1) = v30 + v23;
                  cmark_chunk_to_cstr_0(*v29, &v33);
                  *(v26 + 128) = v33;
                  cmark_node_append_child(v31, v26);
                  cmark_node_insert_after(a2, v31);
                  v28 = cmark_node_new_with_mem(0xC001u, *v29);
                  v28[16] = *(a2 + 128) + v25 + v23;
                  v28[17] = (v14 - v23);
                  cmark_chunk_to_cstr_0(*v29, (v28 + 16));
                  cmark_node_insert_after(v31, v28);
                  *(a2 + 136) = v27;
                  *(*(a2 + 128) + v27) = 0;
                  return postprocess_text(v29, v28, 0, (v4 + 1));
                }
              }
            }
          }
        }
      }

      ++v4;
      a3 += v11 + 1;
      v6 = a2;
    }

    while (v4 != 1001);
  }

  return result;
}

uint64_t (**cmark_chunk_to_cstr_0(uint64_t (**result)(uint64_t, uint64_t), uint64_t a2))(uint64_t, uint64_t)
{
  if (!*(a2 + 12))
  {
    result = (*result)(*(a2 + 8) + 1, 1);
    v3 = result;
    v4 = *(a2 + 8);
    if (v4 >= 1)
    {
      result = memcpy(result, *a2, v4);
      LODWORD(v4) = *(a2 + 8);
    }

    *(v3 + v4) = 0;
    *a2 = v3;
    *(a2 + 12) = 1;
  }

  return result;
}

uint64_t _ext_scan_at(uint64_t (*a1)(uint64_t), uint64_t a2, int a3, int a4)
{
  if (!a2 || a4 >= a3)
  {
    return 0;
  }

  v6 = *(a2 + a3);
  *(a2 + a3) = 0;
  result = a1(a2 + a4);
  *(a2 + a3) = v6;
  return result;
}

uint64_t _scan_table_start(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x20)
  {
    if (v1 > 0xA)
    {
      if (v1 >= 0xD && v1 != 32)
      {
        return 0;
      }
    }

    else if (v1 != 9)
    {
      return 0;
    }

LABEL_18:
    v2 = a1 + 1;
    v4 = a1[1];
    if ((_scan_table_start_yybm[v4] & 0x40) != 0)
    {
      do
      {
        v6 = *++v2;
        v5 = v6;
      }

      while ((_scan_table_start_yybm[v6] & 0x40) != 0);
      if (v5 != 58)
      {
        if (v5 == 45)
        {
          goto LABEL_38;
        }

        return 0;
      }
    }

    else
    {
      if (v4 == 45)
      {
        goto LABEL_38;
      }

      if (v4 != 58)
      {
        return 0;
      }
    }

    goto LABEL_37;
  }

  if (v1 <= 0x39)
  {
    if (v1 == 45)
    {
      v2 = a1 + 1;
      v3 = a1[1];
      if (_scan_table_start_yybm[a1[1]] < 0)
      {
        goto LABEL_38;
      }

      if (v3 > 0x20)
      {
        v7 = v3 == 58;
        if (v3 <= 0x3A)
        {
          goto LABEL_35;
        }

        goto LABEL_48;
      }

      if (v3 >= 9 && (v3 < 0xE || v3 == 32))
      {
        goto LABEL_29;
      }
    }

    return 0;
  }

  if (v1 != 58)
  {
    if (v1 != 124)
    {
      return 0;
    }

    goto LABEL_18;
  }

  v2 = a1;
LABEL_37:
  v8 = *++v2;
  if ((_scan_table_start_yybm[v8] & 0x80000000) == 0)
  {
    return 0;
  }

  while (1)
  {
    do
    {
LABEL_38:
      v9 = *++v2;
      v3 = v9;
    }

    while (_scan_table_start_yybm[v9] < 0);
    if (v3 <= 0x1F)
    {
      break;
    }

    if (v3 <= 0x3A)
    {
      if (v3 == 32 || v3 == 58)
      {
        goto LABEL_61;
      }

      return 0;
    }

LABEL_48:
    v10 = v3 == 124;
LABEL_49:
    if (!v10)
    {
      return 0;
    }

    while (1)
    {
      v12 = *++v2;
      v11 = v12;
      if (_scan_table_start_yybm[v12] < 0)
      {
        break;
      }

      if (v11 > 0xD)
      {
        v10 = v11 == 32;
        if (v11 <= 0x20)
        {
          goto LABEL_49;
        }

        if (v11 == 58)
        {
          goto LABEL_37;
        }

        return 0;
      }

      v10 = v11 == 9;
      if (v11 <= 9)
      {
        goto LABEL_49;
      }

      if (v11 == 10)
      {
        return (v2 - a1 + 1);
      }

      if (v11 == 13)
      {
        goto LABEL_63;
      }
    }
  }

  if (v3 <= 0xA)
  {
    if (v3 < 9)
    {
      return 0;
    }

    if (v3 == 10)
    {
      return (v2 - a1 + 1);
    }

LABEL_61:
    while (1)
    {
      v13 = *++v2;
      v3 = v13;
LABEL_29:
      if (v3 > 0xD)
      {
        break;
      }

      v7 = v3 == 9;
      if (v3 <= 9)
      {
LABEL_35:
        if (!v7)
        {
          return 0;
        }
      }

      else
      {
        if (v3 == 10)
        {
          return (v2 - a1 + 1);
        }

        if (v3 == 13)
        {
          goto LABEL_63;
        }
      }
    }

    v7 = v3 == 32;
    if (v3 > 0x20)
    {
      goto LABEL_48;
    }

    goto LABEL_35;
  }

  if (v3 < 0xD)
  {
    goto LABEL_61;
  }

  if (v3 == 13)
  {
LABEL_63:
    v14 = v2[1];
    LODWORD(v2) = v2 + 1;
    if (v14 != 10)
    {
      return 0;
    }

    return (v2 - a1 + 1);
  }

  return 0;
}

uint64_t _scan_table_cell(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1;
  if ((_scan_table_cell_yybm[*a1] & 0x40) != 0)
  {
    goto LABEL_28;
  }

  if (v1 > 0xEC)
  {
    if (v1 > 0xF0)
    {
      if (v1 >= 0xF4)
      {
        if (v1 != 244)
        {
          return 0;
        }

        v3 = a1 + 1;
        if (a1[1] >= -112)
        {
          return 0;
        }
      }

      else
      {
        v3 = a1 + 1;
        if (a1[1] >= -64)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v1 == 237)
      {
        v4 = a1 + 1;
        if (a1[1] < -96)
        {
          goto LABEL_26;
        }

        return 0;
      }

      if (v1 != 240)
      {
        goto LABEL_20;
      }

      v3 = a1 + 1;
      if (a1[1] - 144 >= 0x30)
      {
        return 0;
      }
    }

    v5 = 1;
    LODWORD(v2) = v3;
    goto LABEL_64;
  }

  if (v1 <= 0xC1)
  {
    v2 = a1;
    if (v1 - 14 < 0x4F)
    {
      goto LABEL_32;
    }

    return 0;
  }

  if (v1 >= 0xE0)
  {
    if (v1 == 224)
    {
      v4 = a1 + 1;
      if ((a1[1] & 0xE0) != 0xA0)
      {
        return 0;
      }

LABEL_26:
      v5 = 1;
      LODWORD(v2) = v4;
      goto LABEL_65;
    }

LABEL_20:
    v4 = a1 + 1;
    if (a1[1] >= -64)
    {
      return 0;
    }

    goto LABEL_26;
  }

  v2 = a1 + 1;
  if (a1[1] >= -64)
  {
    return 0;
  }

  do
  {
    while (1)
    {
      do
      {
LABEL_28:
        v8 = *++v2;
        v7 = v8;
      }

      while ((_scan_table_cell_yybm[v8] & 0x40) != 0);
      if (v7 > 0xEC)
      {
        if (v7 <= 0xF0)
        {
          if (v7 == 237)
          {
            goto LABEL_44;
          }

          v5 = 0;
          v3 = v2;
          if (v7 != 240)
          {
            goto LABEL_64;
          }

LABEL_53:
          v5 = 0;
          v3 = v2 + 1;
          if (v2[1] - 144 >= 0x30)
          {
            return (v2 - a1);
          }

          goto LABEL_64;
        }

        goto LABEL_55;
      }

      if (v7 > 0xC1)
      {
        break;
      }

      if (v7 - 14 > 0x4E)
      {
        return (v2 - a1);
      }

      do
      {
LABEL_32:
        v9 = *++v2;
        v7 = v9;
      }

      while (_scan_table_cell_yybm[v9] < 0);
      if (v7 > 0xDF)
      {
        if (v7 <= 0xEF)
        {
          if (v7 == 224)
          {
            goto LABEL_62;
          }

          v5 = 0;
          v3 = v2;
          if (v7 == 237)
          {
LABEL_44:
            v5 = 0;
            v4 = v2 + 1;
            if (v2[1] >= -96)
            {
              return (v2 - a1);
            }

            goto LABEL_65;
          }

          goto LABEL_64;
        }

        if (v7 == 240)
        {
          goto LABEL_53;
        }

LABEL_55:
        if (v7 >= 0xF4)
        {
          if (v7 != 244)
          {
            return (v2 - a1);
          }

          v5 = 0;
          v3 = v2 + 1;
          if (v2[1] >= -112)
          {
            return (v2 - a1);
          }
        }

        else
        {
          v5 = 0;
          v3 = v2 + 1;
          if (v2[1] >= -64)
          {
            return (v2 - a1);
          }
        }

        goto LABEL_64;
      }

      if (v7 > 0xC)
      {
        if (v7 == 13)
        {
          return (v2 - a1);
        }

        if ((v7 & 0x80) != 0)
        {
          v5 = 0;
          v4 = v2;
          if (v7 < 0xC2)
          {
            return (v2 - a1);
          }

          goto LABEL_65;
        }
      }

      else if (v7 == 10)
      {
        return (v2 - a1);
      }
    }

    if (v7 < 0xE0)
    {
      v5 = 0;
      v4 = v2;
      goto LABEL_65;
    }

    v5 = 0;
    v3 = v2;
    if (v7 == 224)
    {
LABEL_62:
      v5 = 0;
      v4 = v2 + 1;
      if ((v2[1] & 0xE0) != 0xA0)
      {
        return (v2 - a1);
      }

      goto LABEL_65;
    }

LABEL_64:
    v10 = v3[1];
    v4 = v3 + 1;
    v11 = v2;
    if (v10 >= -64)
    {
      break;
    }

LABEL_65:
    v11 = v2;
    v2 = v4 + 1;
  }

  while (v4[1] <= -65);
  LODWORD(v2) = v11;
  if (v5)
  {
    return 0;
  }

  return (v2 - a1);
}

uint64_t _scan_table_cell_end(_BYTE *a1)
{
  if (*a1 != 124)
  {
    return 0;
  }

  result = 0;
  v3 = a1 + 1;
  do
  {
    v4 = _scan_table_row_end_yybm[v3[result++]];
  }

  while (v4 < 0);
  return result;
}

uint64_t _scan_table_row_end(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0xC)
  {
    if (v1 < 9)
    {
      return 0;
    }

    LODWORD(v2) = a1;
    if (v1 == 10)
    {
      return (v2 - a1 + 1);
    }

    goto LABEL_7;
  }

  if (v1 != 13)
  {
    if (v1 != 32)
    {
      return 0;
    }

LABEL_7:
    v2 = a1 + 1;
    v3 = a1[1];
    if (v3 < 9 || v3 >= 0xE && v3 != 32)
    {
      return 0;
    }

    if (_scan_table_row_end_yybm[a1[1]] < 0)
    {
      do
      {
        v4 = *++v2;
        v3 = v4;
      }

      while (_scan_table_row_end_yybm[v4] < 0);
      if (v3 < 9)
      {
        return 0;
      }
    }

    if (v3 < 0xB)
    {
      return (v2 - a1 + 1);
    }

    if (v3 > 0xD)
    {
      return 0;
    }

    goto LABEL_17;
  }

  v2 = a1;
LABEL_17:
  v5 = v2[1];
  LODWORD(v2) = v2 + 1;
  if (v5 == 10)
  {
    return (v2 - a1 + 1);
  }

  return 0;
}

uint64_t _scan_tasklist(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0x20)
  {
    if (v1 > 0x2C)
    {
      if (v1 != 45)
      {
        if (v1 - 48 >= 0xA)
        {
          return 0;
        }

        v3 = a1 + 1;
        v9 = a1[1];
        if (v9 <= 0x1F)
        {
          v10 = v9 == 9;
          if (v9 > 9)
          {
            if (v9 == 10)
            {
              return 0;
            }

            if (v9 < 0xD)
            {
              goto LABEL_70;
            }

LABEL_43:
            while (_scan_tasklist_yybm[v9] < 0)
            {
              v12 = *++v3;
              v9 = v12;
            }

            if (v9 <= 0xC1)
            {
              if (v9 <= 0xC)
              {
                if (v9 >= 9)
                {
                  if (v9 != 10)
                  {
                    goto LABEL_75;
                  }

                  return 0;
                }

                goto LABEL_70;
              }

              if (v9 != 32)
              {
                if ((v9 & 0x80) != 0)
                {
                  return 0;
                }

LABEL_70:
                v20 = *++v3;
                v19 = v20;
                if (v20 != 91)
                {
                  goto LABEL_76;
                }

                return 0;
              }

              while (1)
              {
LABEL_75:
                while (1)
                {
                  v23 = *++v3;
                  v19 = v23;
LABEL_76:
                  if (v19 > 0xC)
                  {
                    break;
                  }

                  if (v19 != 9 && v19 < 0xB)
                  {
                    return 0;
                  }
                }

                v8 = v19 == 32;
                if (v19 > 0x20)
                {
                  break;
                }

LABEL_83:
                if (!v8)
                {
                  return 0;
                }
              }

              if (v19 != 91)
              {
                return 0;
              }

              v25 = v3[1];
              if (v25 > 0x57)
              {
                if ((v25 & 0xFFFFFFDF) != 0x58)
                {
                  return 0;
                }
              }

              else if (v25 != 32)
              {
                return 0;
              }

              if (v3[2] == 93)
              {
                v26 = v3[3];
                if (v26 > 0xA)
                {
                  if (v26 >= 0xD && v26 != 32)
                  {
                    return 0;
                  }

LABEL_96:
                  v2 = (v3 - a1 + 4);
                  for (i = v3 + 4; ; ++i)
                  {
                    v28 = *i;
                    if (v28 > 0xA)
                    {
                      if (v28 >= 0xD && v28 != 32)
                      {
                        return v2;
                      }
                    }

                    else if (v28 != 9)
                    {
                      return v2;
                    }

                    v2 = (v2 + 1);
                  }
                }

                if (v26 == 9)
                {
                  goto LABEL_96;
                }
              }

              return 0;
            }

            if (v9 > 0xED)
            {
              if (v9 > 0xF0)
              {
                if (v9 >= 0xF4)
                {
                  if (v9 != 244)
                  {
                    return 0;
                  }

                  v16 = *++v3;
                  if (v16 >= -112)
                  {
                    return 0;
                  }
                }

                else
                {
                  v15 = *++v3;
                  if (v15 >= -64)
                  {
                    return 0;
                  }
                }
              }

              else if (v9 == 240)
              {
                v14 = *++v3;
                if ((v14 - 144) >= 0x30)
                {
                  return 0;
                }
              }
            }

            else
            {
              if (v9 < 0xE0)
              {
                goto LABEL_69;
              }

              if (v9 == 224)
              {
                v21 = *++v3;
                if ((v21 & 0xE0) != 0xA0)
                {
                  return 0;
                }

                goto LABEL_69;
              }

              if (v9 == 237)
              {
                v13 = *++v3;
                if (v13 >= -96)
                {
                  return 0;
                }

LABEL_69:
                v18 = *++v3;
                if (v18 < -64)
                {
                  goto LABEL_70;
                }

                return 0;
              }
            }

            v17 = *++v3;
            if (v17 >= -64)
            {
              return 0;
            }

            goto LABEL_69;
          }

LABEL_42:
          if (v10)
          {
            goto LABEL_70;
          }

          goto LABEL_43;
        }

        if ((v9 & 0x80) != 0)
        {
          if (v9 - 194 >= 0x33)
          {
            return 0;
          }

          goto LABEL_43;
        }

LABEL_41:
        v10 = v9 == 32;
        goto LABEL_42;
      }
    }

    else
    {
      v2 = 0;
      if (v1 < 0x2A || v1 == 44)
      {
        return v2;
      }
    }

    v3 = a1 + 1;
    v7 = a1[1];
    if (v7 <= 0xA)
    {
      v8 = v7 == 9;
      goto LABEL_83;
    }

    if (v7 >= 0xD)
    {
      v8 = v7 == 32;
      goto LABEL_83;
    }

    goto LABEL_75;
  }

  if (v1 > 0xA)
  {
    if (v1 >= 0xD && v1 != 32)
    {
      return 0;
    }
  }

  else if (v1 != 9)
  {
    return 0;
  }

  v3 = a1 + 1;
  v4 = a1[1];
  if ((_scan_tasklist_yybm[a1[1]] & 0x40) != 0)
  {
    do
    {
      v6 = *++v3;
      v4 = v6;
    }

    while ((_scan_tasklist_yybm[v6] & 0x40) != 0);
    if (v4 > 0x2C)
    {
      if (v4 == 45)
      {
        goto LABEL_70;
      }

      if (v4 - 48 >= 0xA)
      {
        return 0;
      }

      v5 = v3 - 1;
      goto LABEL_35;
    }
  }

  else if (v4 > 0x2C)
  {
    if (v4 == 45)
    {
      goto LABEL_70;
    }

    v5 = a1;
    if (v4 - 48 >= 0xA)
    {
      return 0;
    }

LABEL_35:
    v11 = v5[2];
    v3 = v5 + 2;
    v9 = v11;
    if (v11 <= 0xA)
    {
      v10 = v9 == 9;
      goto LABEL_42;
    }

    if (v9 < 0xD)
    {
      goto LABEL_70;
    }

    goto LABEL_41;
  }

  v2 = 0;
  if (v4 >= 0x2A && v4 != 44)
  {
    goto LABEL_70;
  }

  return v2;
}

void *cmark_llist_append(uint64_t (**a1)(uint64_t, uint64_t), void *a2, uint64_t a3)
{
  v5 = (*a1)(1, 16);
  *v5 = 0;
  v5[1] = a3;
  if (!a2)
  {
    return v5;
  }

  v6 = a2;
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6);
  *v7 = v5;
  return a2;
}

uint64_t cmark_llist_free_full(uint64_t result, void *a2, void (*a3)(uint64_t, void))
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      if (a3)
      {
        a3(v5, v4[1]);
      }

      v6 = *v4;
      result = (*(v5 + 16))(v4);
      v4 = v6;
    }

    while (v6);
  }

  return result;
}

uint64_t cmark_llist_free(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    do
    {
      v3 = *a2;
      result = (*(v2 + 16))(a2);
      a2 = v3;
    }

    while (v3);
  }

  return result;
}

uint64_t cmark_strbuf_init(uint64_t result, uint64_t *a2, int a3)
{
  *a2 = result;
  a2[1] = &cmark_strbuf__initbuf;
  a2[2] = 0;
  if (a3 >= 1)
  {
    return cmark_strbuf_grow(a2, a3);
  }

  return result;
}

uint64_t cmark_strbuf_grow(uint64_t result, int a2)
{
  if (a2 <= 0)
  {
    cmark_strbuf_grow_cold_2();
  }

  v2 = result;
  v3 = *(result + 16);
  if (v3 <= a2)
  {
    if (a2 >> 30)
    {
      cmark_strbuf_grow_cold_1();
    }

    v4 = (a2 + (a2 >> 1) + 8) & 0x7FFFFFF8;
    if (v3)
    {
      v5 = *(result + 8);
    }

    else
    {
      v5 = 0;
    }

    result = (*(*v2 + 8))(v5, (a2 + (a2 >> 1) + 8) & 0x7FFFFFF8);
    *(v2 + 8) = result;
    *(v2 + 16) = v4;
  }

  return result;
}

uint64_t cmark_strbuf_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 8);
    if (result != &cmark_strbuf__initbuf)
    {
      result = (*(*v1 + 16))();
    }

    v1[1] = &cmark_strbuf__initbuf;
    v1[2] = 0;
  }

  return result;
}

uint64_t cmark_strbuf_clear(uint64_t result)
{
  *(result + 20) = 0;
  if (*(result + 16) >= 1)
  {
    **(result + 8) = 0;
  }

  return result;
}

uint64_t cmark_strbuf_set(uint64_t result, void *__src, size_t __len)
{
  v3 = result;
  if (__src && (v4 = __len, __len > 0))
  {
    result = *(result + 8);
    if (result == __src)
    {
      v6 = __len;
    }

    else
    {
      if (*(v3 + 16) <= __len)
      {
        cmark_strbuf_grow(v3, __len);
        result = *(v3 + 8);
      }

      v6 = v4;
      memmove(result, __src, v4);
      result = *(v3 + 8);
    }

    *(v3 + 20) = v4;
    v7 = (result + v6);
  }

  else
  {
    *(result + 20) = 0;
    if (*(result + 16) < 1)
    {
      return result;
    }

    v7 = *(result + 8);
  }

  *v7 = 0;
  return result;
}

uint64_t cmark_strbuf_sets(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
  }

  else
  {
    v4 = 0;
  }

  return cmark_strbuf_set(a1, __s, v4);
}

uint64_t cmark_strbuf_putc(uint64_t a1, char a2)
{
  result = cmark_strbuf_grow(a1, *(a1 + 20) + 1);
  v5 = *(a1 + 8);
  v6 = *(a1 + 20);
  *(a1 + 20) = v6 + 1;
  *(v5 + v6) = a2;
  *(*(a1 + 8) + *(a1 + 20)) = 0;
  return result;
}

_DWORD *cmark_strbuf_put(_DWORD *result, const void *a2, int a3)
{
  if (a3 >= 1)
  {
    v5 = result;
    cmark_strbuf_grow(result, result[5] + a3);
    result = memmove((*(v5 + 1) + v5[5]), a2, a3);
    v6 = v5[5] + a3;
    v5[5] = v6;
    *(*(v5 + 1) + v6) = 0;
  }

  return result;
}

_DWORD *cmark_strbuf_puts(_DWORD *a1, char *__s)
{
  v4 = strlen(__s);

  return cmark_strbuf_put(a1, __s, v4);
}

_BYTE *cmark_strbuf_copy_cstr(_BYTE *__dst, int a2, uint64_t a3)
{
  if (!a3)
  {
    cmark_strbuf_copy_cstr_cold_1();
  }

  v3 = __dst;
  if (__dst)
  {
    if (a2 >= 1)
    {
      *__dst = 0;
      v4 = *(a3 + 20);
      if (v4)
      {
        if (*(a3 + 16) >= 1)
        {
          if (v4 >= a2)
          {
            v5 = a2 - 1;
          }

          else
          {
            v5 = *(a3 + 20);
          }

          __dst = memmove(__dst, *(a3 + 8), v5);
          v3[v5] = 0;
        }
      }
    }
  }

  return __dst;
}

__n128 cmark_strbuf_swap(__n128 *a1, __n128 *a2)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v4 = a2[1].n128_u64[0];
  *a1 = *a2;
  a1[1].n128_u64[0] = v4;
  *a2 = result;
  a2[1].n128_u64[0] = v2;
  return result;
}

uint64_t cmark_strbuf_detach(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return (**a1)(1, 1);
  }

  v1 = *(a1 + 8);
  *(a1 + 8) = &cmark_strbuf__initbuf;
  *(a1 + 16) = 0;
  return v1;
}

uint64_t cmark_strbuf_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = *(a2 + 20);
  v4 = v2 <= v3;
  if (v2 >= v3)
  {
    v2 = *(a2 + 20);
  }

  v5 = v2;
  v6 = !v4;
  if (v4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  LODWORD(result) = memcmp(*(a1 + 8), *(a2 + 8), v5);
  if (result)
  {
    return result;
  }

  else
  {
    return v7;
  }
}

uint64_t cmark_strbuf_strchr(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 20);
  if (v3 <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 8);
  v5 = memchr((v4 + (a3 & ~(a3 >> 31))), a2, v3 - (a3 & ~(a3 >> 31)));
  if (v5)
  {
    return (v5 - v4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t cmark_strbuf_strrchr(uint64_t a1, unsigned __int8 a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 20);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  result = v4 <= a3 ? (v4 - 1) : a3;
  if ((result & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 8);
  while (*(v6 + result) != a2)
  {
    v7 = result <= 0;
    result = (result - 1);
    if (v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t cmark_strbuf_truncate(uint64_t result, int a2)
{
  v2 = a2 & ~(a2 >> 31);
  if (v2 < *(result + 20))
  {
    *(result + 20) = v2;
    *(*(result + 8) + v2) = 0;
  }

  return result;
}

void *cmark_strbuf_drop(void *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v3 = *(result + 5);
    if (v3 >= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = *(result + 5);
    }

    v5 = v3 - v4;
    *(result + 5) = v3 - v4;
    if (v3 > a2)
    {
      result = memmove(*(result + 1), (*(result + 1) + v4), v5);
      v5 = v2[5];
    }

    *(*(v2 + 1) + v5) = 0;
  }

  return result;
}

uint64_t cmark_strbuf_rtrim(uint64_t result)
{
  v1 = *(result + 20);
  if (v1)
  {
    v2 = result;
    if (v1 >= 1)
    {
      do
      {
        result = cmark_isspace(*(*(v2 + 8) + v1 - 1));
        v1 = *(v2 + 20);
        if (!result)
        {
          break;
        }

        v3 = __OFSUB__(v1--, 1);
        *(v2 + 20) = v1;
      }

      while (!((v1 < 0) ^ v3 | (v1 == 0)));
    }

    *(*(v2 + 8) + v1) = 0;
  }

  return result;
}

uint64_t cmark_strbuf_trim(uint64_t result)
{
  v1 = *(result + 20);
  if (v1)
  {
    v2 = result;
    if (v1 < 1)
    {
      LODWORD(v3) = 0;
    }

    else
    {
      v3 = 0;
      do
      {
        if (!cmark_isspace(*(*(v2 + 8) + v3)))
        {
          break;
        }

        ++v3;
      }

      while (v3 < *(v2 + 20));
    }

    cmark_strbuf_drop(v2, v3);

    return cmark_strbuf_rtrim(v2);
  }

  return result;
}

uint64_t cmark_strbuf_normalize_whitespace(uint64_t result)
{
  v1 = result;
  LODWORD(v2) = *(result + 20);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      result = cmark_isspace(*(*(v1 + 8) + v3));
      if (!result)
      {
        break;
      }

      if (!v5)
      {
        v6 = *(v1 + 8);
        v7 = 32;
LABEL_7:
        *(v6 + v4++) = v7;
      }

      ++v3;
      v2 = *(v1 + 20);
      v5 = result != 0;
      if (v3 >= v2)
      {
        goto LABEL_11;
      }
    }

    v6 = *(v1 + 8);
    v7 = *(v6 + v3);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_11:
  v8 = v4 & ~(v4 >> 31);
  if (v8 < v2)
  {
    *(v1 + 20) = v8;
    *(*(v1 + 8) + v8) = 0;
  }

  return result;
}

uint64_t cmark_strbuf_unescape(uint64_t result)
{
  v1 = result;
  v2 = *(result + 20);
  if (v2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      v5 = *(v1 + 8);
      v6 = *(v5 + i);
      if (v6 == 92)
      {
        result = cmark_ispunct(*(v5 + i + 1));
        if (result)
        {
          ++i;
        }

        v5 = *(v1 + 8);
        LOBYTE(v6) = *(v5 + i);
      }

      v7 = v3 + 1;
      *(v5 + v3) = v6;
      v2 = *(v1 + 20);
      ++v3;
    }
  }

  if (v7 < v2)
  {
    *(v1 + 20) = v7;
    *(*(v1 + 8) + v7) = 0;
  }

  return result;
}

uint64_t cmark_gfm_extensions_set_tasklist_item_checked(uint64_t result, char a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 104) && (type_string = cmark_node_get_type_string(result), !strcmp(type_string, "tasklist")))
    {
      *(v2 + 150) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_gfm_extensions_get_tasklist_item_checked(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      type_string = cmark_node_get_type_string(a1);
      if (!strcmp(type_string, "tasklist"))
      {
        LOBYTE(v2) = *(a1 + 150);
      }

      else
      {
        LOBYTE(v2) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

void *create_tasklist_extension()
{
  v0 = cmark_syntax_extension_new("tasklist");
  cmark_syntax_extension_set_match_block_func(v0, matches_0);
  cmark_syntax_extension_set_get_type_string_func(v0, get_type_string_1);
  cmark_syntax_extension_set_open_block_func(v0, open_tasklist_item);
  cmark_syntax_extension_set_can_contain_func(v0, can_contain_1);
  cmark_syntax_extension_set_commonmark_render_func(v0, commonmark_render_1);
  cmark_syntax_extension_set_plaintext_render_func(v0, commonmark_render_1);
  cmark_syntax_extension_set_html_render_func(v0, html_render_1);
  cmark_syntax_extension_set_xml_attr_func(v0, xml_attr_0);
  return v0;
}

uint64_t matches_0(int a1, uint64_t a2, char *__s, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 56) >= *(a5 + 136) + *(a5 + 132))
  {
    v5 = 1;
    cmark_parser_advance_offset(a2, __s, *(a5 + 136) + *(a5 + 132), 1);
  }

  else if (*(a2 + 60) == 1 && *(a5 + 48))
  {
    cmark_parser_advance_offset(a2, __s, *(a2 + 44) - *(a2 + 36), 0);
    return 1;
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t open_tasklist_item(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6)
{
  if (cmark_node_get_type(a4) == 32772 && _ext_scan_at(_scan_tasklist, a5, a6, 0))
  {
    cmark_node_set_syntax_extension(a4, a1);
    cmark_parser_advance_offset(a3, a5, 3, 0);
    if (strstr(a5, "[x]"))
    {
      v11 = 1;
    }

    else
    {
      v11 = strstr(a5, "[X]") != 0;
    }

    *(a4 + 150) = v11;
  }

  return 0;
}

_DWORD *commonmark_render_1(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 2)
  {
    (*(a2 + 56))(a2);
    if (*(a3 + 150))
    {
      v6 = "- [x] ";
    }

    else
    {
      v6 = "- [ ] ";
    }

    (*(a2 + 72))(a2, a3, v6, 0, 0);
    v7 = *(a2 + 16);

    return cmark_strbuf_puts(v7, "  ");
  }

  else
  {
    cmark_strbuf_truncate(*(a2 + 16), *(*(a2 + 16) + 20) - 2);
    v9 = *(a2 + 56);

    return v9(a2);
  }
}

_DWORD *html_render_1(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, char a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (a4 == 2)
  {
    v9 = *(v5 + 20);
    if (v9 && *(*(v5 + 8) + v9 - 1) != 10)
    {
      cmark_strbuf_putc(v5, 10);
      v5 = *a2;
    }

    cmark_strbuf_puts(v5, "<li");
    v10 = *a2;
    if ((a5 & 2) != 0)
    {
      start_line = cmark_node_get_start_line(a3);
      start_column = cmark_node_get_start_column(a3);
      end_line = cmark_node_get_end_line(a3);
      end_column = cmark_node_get_end_column(a3);
      snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", start_line, start_column, end_line, end_column);
      cmark_strbuf_puts(v10, __str);
      v10 = *a2;
    }

    cmark_strbuf_putc(v10, 62);
    if (*(a3 + 150) == 1)
    {
      v15 = "<input type=checkbox checked= disabled= /> ";
    }

    else
    {
      v15 = "<input type=checkbox disabled= /> ";
    }

    return cmark_strbuf_puts(*a2, v15);
  }

  else
  {

    return cmark_strbuf_puts(v5, "</li>\n");
  }
}

const char *xml_attr_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 150))
  {
    return " completed=true";
  }

  else
  {
    return " completed=false";
  }
}

uint64_t UnderlineStyle._collectAttributes(in:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD8E0);
  MEMORY[0x28223BE20](v1 - 8);
  sub_255C7299C(v0, &v4 - v2, &qword_27F7DD8E0);
  sub_255C725E4();
  return sub_255D059F8();
}

uint64_t sub_255C72190()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD8E0);
  MEMORY[0x28223BE20](v1 - 8);
  sub_255C7299C(v0, &v4 - v2, &qword_27F7DD8E0);
  sub_255C725E4();
  return sub_255D059F8();
}

uint64_t sub_255C722F0()
{
  sub_255D07728();
  swift_getWitnessTable();
  sub_255D05CE8();
  return sub_255D07768();
}

uint64_t sub_255C72358()
{
  swift_getWitnessTable();

  return sub_255D05CD8();
}

uint64_t sub_255C7246C()
{
  v0 = sub_255D06CE8();
  v1 = sub_255D06F78();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = 0x3FF8000000000000;
  *(v4 + 32) = 0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v3;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD930);
  sub_255C72D60();
  return sub_255D06E78();
}

uint64_t sub_255C7252C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD8E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_255C725E4()
{
  result = qword_27F7DD8E8;
  if (!qword_27F7DD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DD8E8);
  }

  return result;
}

uint64_t sub_255C72638()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_255D065E8();

    return sub_255D061D8();
  }

  else
  {
    sub_255D06268();
    swift_getWitnessTable();
    sub_255D06588();
    sub_255D061D8();
    sub_255D074A8();
    swift_getWitnessTable();
    sub_255D06268();
    swift_getWitnessTable();
    sub_255D06588();
    return sub_255D061D8();
  }
}

uint64_t sub_255C7279C()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_255D065E8();
    sub_255D061D8();
  }

  else
  {
    sub_255D06268();
    swift_getWitnessTable();
    sub_255D06588();
    sub_255D061D8();
    sub_255D074A8();
    swift_getWitnessTable();
    sub_255D06268();
    swift_getWitnessTable();
    sub_255D06588();
    sub_255D061D8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_255C7299C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255C72A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD8E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255C72AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD8E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for UnderlineStyle()
{
  result = qword_27F7DD900;
  if (!qword_27F7DD900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255C72B6C()
{
  sub_255C72BD8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_255C72BD8()
{
  if (!qword_27F7DD910)
  {
    sub_255D06978();
    v0 = sub_255D074A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DD910);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_255C72C40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255C72C60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TableCellIndex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TableCellIndex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_255C72D1C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_255C72D60()
{
  result = qword_27F7DD938;
  if (!qword_27F7DD938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DD930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DD938);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_255C72E70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 168))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255C72ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_255C72FD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255C7301C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255C73060(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255C73080(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_255C730D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255C730F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_255C7316C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 184))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255C731C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_255C73270(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255C732CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlowLayout.Item(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FlowLayout.Item(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_255C733E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255C7343C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_255C73528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255C73584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

uint64_t sub_255C73624(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255C73680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void sub_255C73704(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t FontWeight._collectAttributes(in:)()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    *(v4 + *(v5 + 36)) = v1;
  }

  (v2)(v7, 0);
}

void sub_255C7391C()
{
  sub_255C73C84();
  sub_255D05A58();
  __break(1u);
}

void sub_255C73944()
{
  sub_255C73C84();
  sub_255D05A58();
  __break(1u);
}

void (*sub_255C739EC(void *a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  a1[3] = sub_255C73C84();
  sub_255D059E8();
  return sub_255C73AC0;
}

void sub_255C73AC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  sub_255C73CD8(v1, v2);
  sub_255D059F8();
  sub_255C73D48(v1);
  free(v1);

  free(v2);
}

uint64_t sub_255C73B34()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    *(v4 + *(v5 + 36)) = v1;
  }

  (v2)(v7, 0);
}

uint64_t getEnumTagSinglePayload for FontWeight(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FontWeight(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_255C73C84()
{
  result = qword_27F7DD9E8;
  if (!qword_27F7DD9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DD9E8);
  }

  return result;
}

uint64_t sub_255C73CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255C73D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255C73DB0()
{
  v1 = *(v0 + 40);
  sub_255D07728();
  sub_255D07058();
  sub_255D07058();
  sub_255D07748();
  if (v1)
  {
    sub_255D07058();
  }

  return sub_255D07768();
}

uint64_t sub_255C73E58()
{
  v1 = *(v0 + 40);
  sub_255D07058();
  sub_255D07058();
  if (!v1)
  {
    return sub_255D07748();
  }

  sub_255D07748();

  return sub_255D07058();
}

uint64_t sub_255C73EF4()
{
  v1 = *(v0 + 40);
  sub_255D07728();
  sub_255D07058();
  sub_255D07058();
  sub_255D07748();
  if (v1)
  {
    sub_255D07058();
  }

  return sub_255D07768();
}

uint64_t sub_255C73F98(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_255D076D8()) && (v2 == v6 && v4 == v7 || (sub_255D076D8()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (sub_255D076D8() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_255C7407C@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char **a5@<X8>)
{
  v5 = result;
  if (a4 != 6)
  {
    if (a4 == 7)
    {
      v7 = a2;

      v18 = sub_255CB2770(a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA00);
      sub_255C743A0();
      v9 = sub_255D07068();
      v11 = v10;

      v12 = v5;
LABEL_9:
      v5 = 0;
      v17 = 0;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (*(a3 + 16) != 1)
  {
LABEL_7:
    v12 = 0;
    v7 = 0;
LABEL_8:
    v9 = 0;
    v11 = 0;
    goto LABEL_9;
  }

  v13 = *(a3 + 32);
  v14 = *(a3 + 40);
  v15 = *(a3 + 48);
  v16 = *(a3 + 56);
  v17 = a2;

  sub_255C74200(v13, v14, v15, v16);
  sub_255C7407C(&v18, v13, v14, v15, v16);
  sub_255C7429C(v13, v14, v15, v16);
  v7 = v19;
  if (!v19)
  {

    v12 = 0;
    goto LABEL_8;
  }

  v9 = v20;
  v11 = v21;
  v12 = v18;
  v23 = v22;
  result = sub_255C74338(&v23);
LABEL_10:
  *a5 = v12;
  a5[1] = v7;
  a5[2] = v9;
  a5[3] = v11;
  a5[4] = v5;
  a5[5] = v17;
  return result;
}

uint64_t sub_255C74200(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 3u)
  {
    if (a4 > 5u)
    {
      if (a4 != 6 && a4 != 7)
      {
        return result;
      }
    }

    else if (a4 != 4 && a4 != 5)
    {
      return result;
    }
  }

  else if (a4 >= 4u)
  {
    return result;
  }
}

uint64_t sub_255C7429C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 3u)
  {
    if (a4 > 5u)
    {
      if (a4 != 6 && a4 != 7)
      {
        return result;
      }
    }

    else if (a4 != 4 && a4 != 5)
    {
      return result;
    }
  }

  else if (a4 >= 4u)
  {
    return result;
  }
}

uint64_t sub_255C74338(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255C743A0()
{
  result = qword_27F7DDA08;
  if (!qword_27F7DDA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDA08);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_255C74418(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255C74460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_255C744C0()
{
  result = qword_27F7DDA10;
  if (!qword_27F7DDA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDA10);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_255C74550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255C74598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255C74614@<X0>(uint64_t *a1@<X8>)
{
  v19 = a1;
  v2 = sub_255D063E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 33);
  v40 = *(v1 + 17);
  v41 = v9;
  v42 = *(v1 + 49);
  v18 = *(v1 + 57);
  v38 = *(v1 + 58);
  v39 = *(v1 + 62);
  v10 = *(v1 + 64);
  if (v8)
  {
    v36 = v7;
    v37 = v6;
    sub_255C74B94();
    v11 = v7;
  }

  else
  {
    sub_255C74B94();
    sub_255D07438();
    v12 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74BA0();
    (*(v3 + 8))(v5, v2);
    v11 = v36;
  }

  v29 = v40;
  v26 = v7;
  v27 = v6;
  v28 = v8;
  v30 = v41;
  v31 = v42;
  v13 = v18;
  v32 = v18;
  v33 = v38;
  v34 = v39;
  v35 = v10;
  sub_255C748DC(v24);
  v22 = v24[2];
  v23[0] = v25[0];
  *(v23 + 9) = *(v25 + 9);
  v20 = v24[0];
  v21 = v24[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA18);
  sub_255C74BAC();
  v14 = sub_255D06E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_255D0AA80;
  *(v15 + 32) = v13 & 1;
  *(v15 + 40) = v10;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = 1;
  *&v24[0] = v14;
  *(&v24[0] + 1) = v15;

  v16 = v11(v24);

  *v19 = v16;
  return result;
}

uint64_t sub_255C748DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_255D063E8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  LODWORD(v6) = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v22 = *(v1 + 57);
  v12 = *(v1 + 64);
  v21 = v5;
  if (v6 == 1)
  {

    sub_255C74B94();
  }

  else
  {

    sub_255C74B94();
    sub_255D07438();
    v13 = sub_255D066C8();
    v20 = v12;
    v14 = v3;
    v15 = v13;
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74BA0();
    v16 = v14;
    v12 = v20;
    (*(v4 + 8))(v7, v16);
    v8 = v23;
    v9 = v24;
  }

  result = swift_getKeyPath();
  v18 = result;
  if (v11)
  {
    v23 = v10;
  }

  else
  {

    sub_255D07438();
    v19 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74DA4(v10, 0);
    result = (*(v4 + 8))(v7, v21);
    v10 = v23;
  }

  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v25 = 1;
    result = swift_getKeyPath();
    *a1 = v12;
    *(a1 + 8) = 1;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    *(a1 + 48) = v18;
    *(a1 + 56) = v10 + 1;
    *(a1 + 64) = result;
    *(a1 + 72) = v22;
  }

  return result;
}

unint64_t sub_255C74BAC()
{
  result = qword_27F7DDA20;
  if (!qword_27F7DDA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDA18);
    sub_255C74C50();
    sub_255C74D48(&qword_27F7DDA50, &qword_27F7DDA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDA20);
  }

  return result;
}

unint64_t sub_255C74C50()
{
  result = qword_27F7DDA28;
  if (!qword_27F7DDA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDA30);
    sub_255C74CF4();
    sub_255C74D48(&qword_27F7DDA40, &qword_27F7DDA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDA28);
  }

  return result;
}

unint64_t sub_255C74CF4()
{
  result = qword_27F7DDA38;
  if (!qword_27F7DDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDA38);
  }

  return result;
}

uint64_t sub_255C74D48(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255C74DA4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_255C74DF0@<X0>(void *a1@<X8>)
{
  sub_255C76F08();
  result = sub_255D063F8();
  *a1 = v3;
  return result;
}

uint64_t sub_255C74E8C()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  v3 = *(v0 + 1) | ((*(v0 + 5) | (v0[7] << 16)) << 32);
  v4 = v0[32];
  if (v4 > 4)
  {
    if (v0[32] > 6u)
    {
      if (v4 == 7)
      {
        KeyPath = swift_getKeyPath();
        LOBYTE(v57) = v2;
        BYTE7(v57) = BYTE6(v3);
        *(&v57 + 5) = WORD2(v3);
        *(&v57 + 1) = v3;
        *(&v57 + 1) = v1;
        LOBYTE(v58) = 1;
        sub_255C76B38(v0, &v49);
        sub_255C7691C();
        sub_255C769FC();

        sub_255D06528();
        KeyPath = v49;
        v57 = v50;
        LOBYTE(v58) = v51;
        BYTE9(v61) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB20);
        sub_255C7683C();
        sub_255C76970();
        sub_255D06528();
        sub_255C7299C(&v38, &KeyPath, &qword_27F7DDAF0);
        v63 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAA0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAF0);
        sub_255C764BC();
        sub_255C767B0();
        sub_255D06528();
        sub_255C76B94(&v38, &qword_27F7DDAF0);
        sub_255C7299C(&v49, &KeyPath, &qword_27F7DDA80);
        v64 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA88);
        sub_255C76430();
        sub_255C76A50();
        sub_255D06528();

        return sub_255C76B94(&v49, &qword_27F7DDA80);
      }

      if (v4 == 8)
      {
        swift_getKeyPath();
        *(&v57 + 1) = swift_getKeyPath();
        LOBYTE(v58) = 0;
        *(&v58 + 1) = v2 | (v3 << 8);
        *v59 = v1;
        sub_255C76AE4();

        KeyPath = sub_255D06E78();
        LOWORD(v57) = 0;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        LOWORD(v57) = 256;
        sub_255C74B94();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA68);
      sub_255C76360();
      sub_255C763DC();
      sub_255D06528();
      KeyPath = v49;
      LOWORD(v57) = v50;
      v64 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA88);
      sub_255C76430();
      sub_255C76A50();
      sub_255D06528();
    }

    if (v4 == 5)
    {
      v8 = v2 | (v3 << 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_255D0AA80;

      if (sub_255D071F8())
      {
        v10 = sub_255C98930(1);
        v12 = v11;
        v14 = v13;
        v16 = v15;
        sub_255C76BF4(v0);
        v8 = MEMORY[0x259C4B570](v10, v12, v14, v16);
        v1 = v17;
      }

      *(v9 + 32) = v8;
      *(v9 + 40) = v1;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      KeyPath = swift_getKeyPath();
      LOBYTE(v57) = 0;
      *(&v57 + 1) = v9;
      BYTE8(v61) = 1;
      sub_255C74B94();
      sub_255C768C8();
      sub_255C7691C();

      sub_255D06528();
      sub_255C7299C(&v49, &KeyPath, &qword_27F7DDB00);
      BYTE9(v61) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB20);
      sub_255C7683C();
      sub_255C76970();
      sub_255D06528();
      sub_255C76B94(&v49, &qword_27F7DDB00);
      sub_255C7299C(&v38, &KeyPath, &qword_27F7DDAF0);
      v63 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAF0);
      sub_255C764BC();
      sub_255C767B0();
      sub_255D06528();
      sub_255C76B94(&v38, &qword_27F7DDAF0);
      sub_255C7299C(&v49, &KeyPath, &qword_27F7DDA80);
      v64 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA88);
      sub_255C76430();
      sub_255C76A50();
      sub_255D06528();
      sub_255C74DD0();

      return sub_255C76B94(&v49, &qword_27F7DDA80);
    }

    KeyPath = swift_getKeyPath();
    *&v57 = 0;
    *(&v57 + 1) = v2 | (v3 << 8);
    LOBYTE(v58) = 0;
    sub_255C76B38(v0, &v49);
    sub_255C74B94();
    sub_255C7691C();
    sub_255C769FC();

    sub_255D06528();
    KeyPath = v49;
    v57 = v50;
    LOBYTE(v58) = v51;
    BYTE9(v61) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB20);
    sub_255C7683C();
    sub_255C76970();
    sub_255D06528();
    sub_255C7299C(&v38, &KeyPath, &qword_27F7DDAF0);
    v63 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAF0);
    sub_255C764BC();
    sub_255C767B0();
    sub_255D06528();
    sub_255C76B94(&v38, &qword_27F7DDAF0);
LABEL_25:
    sub_255C7299C(&v49, &KeyPath, &qword_27F7DDA80);
    v64 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA88);
    sub_255C76430();
    sub_255C76A50();
    sub_255D06528();
    sub_255C74DD0();

    return sub_255C76B94(&v49, &qword_27F7DDA80);
  }

  if (v0[32] <= 1u)
  {
    if (v0[32])
    {
      LOBYTE(v49) = 0;
      LOBYTE(v38) = 0;
      v31 = swift_getKeyPath();
      LOBYTE(v32) = 0;
      *(&v32 + 1) = swift_getKeyPath();
      *&v33 = 0;
      BYTE8(v33) = 0;
      *&v34 = swift_getKeyPath();
      BYTE8(v34) = 0;
      BYTE9(v34) = v2 & 1;
      *&v35 = v1;
      v58 = v33;
      *v59 = v34;
      *&v59[16] = v1;
      KeyPath = v31;
      v57 = v32;
      v47 = 1;
      v59[24] = 1;
      sub_255C76B38(v0, &v49);
      sub_255C76E58(&v31, &v49);
      sub_255C765D4();
      sub_255C76628();
      sub_255D06528();
      v58 = v51;
      *v59 = *v52;
      *&v59[9] = *&v52[9];
      KeyPath = v49;
      v57 = v50;
      v48 = 0;
      HIBYTE(v62) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAD0);
      sub_255C76548();
      sub_255C7667C();
      sub_255D06528();
      *&v59[16] = v42;
      v60 = v43;
      v61 = v44;
      v62 = v45;
      KeyPath = v38;
      v57 = v39;
      v58 = v40;
      *v59 = v41;
      v63 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAF0);
      sub_255C764BC();
      sub_255C767B0();
      sub_255D06528();
      sub_255C7299C(&v49, &KeyPath, &qword_27F7DDA80);
      v64 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA88);
      sub_255C76430();
      sub_255C76A50();
      sub_255D06528();
      sub_255C76EB4(&v31);
      return sub_255C76B94(&v49, &qword_27F7DDA80);
    }

    v48 = 0;
    v47 = 0;
    KeyPath = swift_getKeyPath();
    LOBYTE(v57) = 0;
    *(&v57 + 1) = v2 | (v3 << 8);
    v59[24] = 0;
    sub_255C76B38(v0, &v49);
    sub_255C74B94();
    sub_255C765D4();
    sub_255C76628();

    sub_255D06528();
    v58 = v51;
    *v59 = *v52;
    *&v59[9] = *&v52[9];
    KeyPath = v49;
    v57 = v50;
    LOBYTE(v31) = 0;
    HIBYTE(v62) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAD0);
    sub_255C76548();
    sub_255C7667C();
    sub_255D06528();
    *&v59[16] = v42;
    v60 = v43;
    v61 = v44;
    v62 = v45;
    KeyPath = v38;
    v57 = v39;
    v58 = v40;
    *v59 = v41;
    v63 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAF0);
    sub_255C764BC();
    sub_255C767B0();
    sub_255D06528();
    goto LABEL_25;
  }

  v5 = *(v0 + 2);
  if (v4 == 2)
  {
    v18 = swift_getKeyPath();
    LOBYTE(v38) = 0;
    v19 = swift_getKeyPath();
    v48 = 0;
    v20 = swift_getKeyPath();
    *&v49 = 0;
    BYTE8(v49) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB48);
    sub_255D06D98();
    v31 = v18;
    LOBYTE(v32) = 0;
    *(&v32 + 1) = v19;
    *&v33 = 0;
    BYTE8(v33) = 0;
    *&v34 = v20;
    BYTE8(v34) = 0;
    *&v35 = KeyPath;
    BYTE8(v35) = BYTE8(KeyPath);
    *&v36 = v57;
    BYTE8(v36) = v2 & 1;
    *&v37 = v1;
    *(&v37 + 1) = v5;
    *&v59[16] = v35;
    v60 = v36;
    v61 = v37;
    v58 = v33;
    *v59 = v34;
    KeyPath = v18;
    v57 = v32;
    v47 = 0;
    LOBYTE(v62) = 0;
    sub_255C76DA8(&v31, &v49);
    sub_255C76708();
    sub_255C7675C();
    sub_255D06528();
    *&v59[16] = *&v52[16];
    v60 = v53;
    v61 = v54;
    LOBYTE(v62) = v55;
    KeyPath = v49;
    v57 = v50;
    v58 = v51;
    *v59 = *v52;
    v48 = 1;
    HIBYTE(v62) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAD0);
    sub_255C76548();
    sub_255C7667C();
    sub_255D06528();
    *&v59[16] = v42;
    v60 = v43;
    v61 = v44;
    v62 = v45;
    KeyPath = v38;
    v57 = v39;
    v58 = v40;
    *v59 = v41;
    v63 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAF0);
    sub_255C764BC();
    sub_255C767B0();
    sub_255D06528();
    sub_255C7299C(&v49, &KeyPath, &qword_27F7DDA80);
    v64 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA88);
    sub_255C76430();
    sub_255C76A50();
    sub_255D06528();
    sub_255C76E04(&v31);
    return sub_255C76B94(&v49, &qword_27F7DDA80);
  }

  if (v4 == 3)
  {
    v6 = swift_getKeyPath();
    v7 = swift_getKeyPath();
    v48 = 0;
    v47 = 0;
    v46 = 1;
    KeyPath = v6;
    LOBYTE(v57) = 0;
    *(&v57 + 1) = v7;
    LOBYTE(v58) = 0;
    BYTE1(v58) = v2 & 1;
    *(&v58 + 1) = v1;
    LOBYTE(v62) = 1;
    sub_255C76B38(v0, &v49);
    sub_255C74B94();
    sub_255C76D9C(v7, 0);
    sub_255C76708();
    sub_255C7675C();

    sub_255D06528();
    *&v59[16] = *&v52[16];
    v60 = v53;
    v61 = v54;
    LOBYTE(v62) = v55;
    KeyPath = v49;
    v57 = v50;
    v58 = v51;
    *v59 = *v52;
    LOBYTE(v31) = 1;
    HIBYTE(v62) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAD0);
    sub_255C76548();
    sub_255C7667C();
    sub_255D06528();
    *&v59[16] = v42;
    v60 = v43;
    v61 = v44;
    v62 = v45;
    KeyPath = v38;
    v57 = v39;
    v58 = v40;
    *v59 = v41;
    v63 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAF0);
    sub_255C764BC();
    sub_255C767B0();
    sub_255D06528();
    sub_255C7299C(&v49, &KeyPath, &qword_27F7DDA80);
    v64 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA88);
    sub_255C76430();
    sub_255C76A50();
    sub_255D06528();
    sub_255C74DD0();
    sub_255C74DA4(v7, 0);

    return sub_255C76B94(&v49, &qword_27F7DDA80);
  }

  v21 = *(v0 + 3);
  v31 = swift_getKeyPath();
  LOBYTE(v32) = 0;
  *(&v32 + 1) = swift_getKeyPath();
  LOBYTE(v35) = 0;
  BYTE8(v35) = v2;
  HIBYTE(v35) = BYTE6(v3);
  *(&v35 + 13) = WORD2(v3);
  *(&v35 + 9) = v3;
  *&v36 = v1;

  if (sub_255D071F8())
  {
    v22 = sub_255C98930(1);
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v5 = MEMORY[0x259C4B570](v22, v24, v26, v28);
    v21 = v29;
  }

  *(&v36 + 1) = v5;
  *&v37 = v21;
  sub_255C76C50(&v31, &KeyPath);
  BYTE8(v61) = 0;
  sub_255C768C8();
  sub_255C7691C();
  sub_255D06528();
  sub_255C7299C(&v49, &KeyPath, &qword_27F7DDB00);
  BYTE9(v61) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB20);
  sub_255C7683C();
  sub_255C76970();
  sub_255D06528();
  sub_255C76B94(&v49, &qword_27F7DDB00);
  sub_255C7299C(&v38, &KeyPath, &qword_27F7DDAF0);
  v63 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDAF0);
  sub_255C764BC();
  sub_255C767B0();
  sub_255D06528();
  sub_255C76B94(&v38, &qword_27F7DDAF0);
  sub_255C7299C(&v49, &KeyPath, &qword_27F7DDA80);
  v64 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA88);
  sub_255C76430();
  sub_255C76A50();
  sub_255D06528();
  sub_255C76B94(&v49, &qword_27F7DDA80);
  return sub_255C76CAC(&v31);
}

unint64_t sub_255C76360()
{
  result = qword_27F7DDA70;
  if (!qword_27F7DDA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDA68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDA70);
  }

  return result;
}

unint64_t sub_255C763DC()
{
  result = qword_27F7DDA78;
  if (!qword_27F7DDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDA78);
  }

  return result;
}

unint64_t sub_255C76430()
{
  result = qword_27F7DDA90;
  if (!qword_27F7DDA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDA80);
    sub_255C764BC();
    sub_255C767B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDA90);
  }

  return result;
}

unint64_t sub_255C764BC()
{
  result = qword_27F7DDA98;
  if (!qword_27F7DDA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDAA0);
    sub_255C76548();
    sub_255C7667C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDA98);
  }

  return result;
}

unint64_t sub_255C76548()
{
  result = qword_27F7DDAA8;
  if (!qword_27F7DDAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDAB0);
    sub_255C765D4();
    sub_255C76628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDAA8);
  }

  return result;
}

unint64_t sub_255C765D4()
{
  result = qword_27F7DDAB8;
  if (!qword_27F7DDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDAB8);
  }

  return result;
}

unint64_t sub_255C76628()
{
  result = qword_27F7DDAC0;
  if (!qword_27F7DDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDAC0);
  }

  return result;
}

unint64_t sub_255C7667C()
{
  result = qword_27F7DDAC8;
  if (!qword_27F7DDAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDAD0);
    sub_255C76708();
    sub_255C7675C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDAC8);
  }

  return result;
}

unint64_t sub_255C76708()
{
  result = qword_27F7DDAD8;
  if (!qword_27F7DDAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDAD8);
  }

  return result;
}

unint64_t sub_255C7675C()
{
  result = qword_27F7DDAE0;
  if (!qword_27F7DDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDAE0);
  }

  return result;
}

unint64_t sub_255C767B0()
{
  result = qword_27F7DDAE8;
  if (!qword_27F7DDAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDAF0);
    sub_255C7683C();
    sub_255C76970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDAE8);
  }

  return result;
}

unint64_t sub_255C7683C()
{
  result = qword_27F7DDAF8;
  if (!qword_27F7DDAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDB00);
    sub_255C768C8();
    sub_255C7691C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDAF8);
  }

  return result;
}

unint64_t sub_255C768C8()
{
  result = qword_27F7DDB08;
  if (!qword_27F7DDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDB08);
  }

  return result;
}

unint64_t sub_255C7691C()
{
  result = qword_27F7DDB10;
  if (!qword_27F7DDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDB10);
  }

  return result;
}

unint64_t sub_255C76970()
{
  result = qword_27F7DDB18;
  if (!qword_27F7DDB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDB20);
    sub_255C7691C();
    sub_255C769FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDB18);
  }

  return result;
}

unint64_t sub_255C769FC()
{
  result = qword_27F7DDB28;
  if (!qword_27F7DDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDB28);
  }

  return result;
}

unint64_t sub_255C76A50()
{
  result = qword_27F7DDB30;
  if (!qword_27F7DDB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDA88);
    sub_255C76360();
    sub_255C763DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDB30);
  }

  return result;
}

unint64_t sub_255C76AE4()
{
  result = qword_27F7DDB38;
  if (!qword_27F7DDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDB38);
  }

  return result;
}

uint64_t sub_255C76B94(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255C76D00@<X0>(void *a1@<X8>)
{
  sub_255C76F08();
  result = sub_255D063F8();
  *a1 = v3;
  return result;
}

uint64_t sub_255C76D9C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_255C76F08()
{
  result = qword_27F7DDB50;
  if (!qword_27F7DDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDB50);
  }

  return result;
}

unint64_t sub_255C76F60()
{
  result = qword_27F7DDB58;
  if (!qword_27F7DDB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F7DDB60);
    sub_255C76430();
    sub_255C76A50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DDB58);
  }

  return result;
}

void sub_255C77034()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_255D07338();
    if (v1 <= 0x3F)
    {
      sub_255C77614();
      if (v2 <= 0x3F)
      {
        sub_255C77664();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_255C770EC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_255D07338();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  v14 = *(*(v8 - 8) + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v12)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_255C7734C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_255D07338() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v8 + 64) + v12;
  v15 = *(v10 + 64) + 7;
  v16 = ((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v19 = 0;
    v20 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((v15 + (v14 & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a3 - v13 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v13)
      {
        v23 = *(v27 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v24 = (a1 + v14) & ~v12;
        if (v11 == v13)
        {
          v25 = *(v10 + 56);

          v25(v24, a2);
        }

        else
        {
          v26 = ((v15 + v24) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v26 = a2 & 0x7FFFFFFF;
            v26[1] = 0;
          }

          else
          {
            *v26 = (a2 - 1);
          }
        }
      }

      return;
    }
  }

  if (((((v15 + (v14 & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((v15 + (v14 & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v22 = ~v13 + a2;
    bzero(a1, ((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

unint64_t sub_255C77614()
{
  result = qword_27F7DDBE8;
  if (!qword_27F7DDBE8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F7DDBE8);
  }

  return result;
}

void sub_255C77664()
{
  if (!qword_27F7DDBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DDBF8);
    v0 = sub_255D06DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DDBF0);
    }
  }
}

uint64_t sub_255C7770C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v49 = a1;
  v56 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  swift_getWitnessTable();
  v45 = sub_255D06598();
  v46 = sub_255D061D8();
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v62 = &v41 - v8;
  v48 = sub_255D061D8();
  v54 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v63 = &v41 - v9;
  v10 = *(a2 + 24);
  v60 = *(a2 + 16);
  v11 = v60;
  v61 = v10;
  v12 = v10;
  v52 = sub_255D06578();
  v53 = sub_255D061D8();
  v55 = *(v53 - 8);
  v13 = MEMORY[0x28223BE20](v53);
  v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v51 = &v41 - v15;
  v16 = *(v6 + 16);
  v57 = v6 + 16;
  v59 = v16;
  v41 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v4;
  v16(v41, v4, a2);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v44 = v7;
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = v12;
  v19 = *(v6 + 32);
  v58 = v6 + 32;
  v19(v18 + v17, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v20 = v19;
  v43 = v19;
  WitnessTable = swift_getWitnessTable();
  sub_255D06C08();

  v22 = v41;
  v59(v41, v4, a2);
  v23 = swift_allocObject();
  v24 = v61;
  *(v23 + 16) = v60;
  *(v23 + 24) = v24;
  v25 = v22;
  v20(v23 + v17, v22, a2);
  v68 = WitnessTable;
  v69 = MEMORY[0x277CE0790];
  v26 = v46;
  v27 = swift_getWitnessTable();
  v28 = v62;
  sub_255D06A98();

  (*(v50 + 8))(v28, v26);
  v59(v25, v42, a2);
  v29 = swift_allocObject();
  v30 = v61;
  *(v29 + 16) = v60;
  *(v29 + 24) = v30;
  v43(v29 + v17, v25, a2);
  v66 = v27;
  v67 = MEMORY[0x277CE0790];
  v31 = v48;
  v32 = swift_getWitnessTable();
  v33 = v47;
  v34 = v63;
  sub_255D06C18();

  (*(v54 + 8))(v34, v31);
  v35 = swift_getWitnessTable();
  v64 = v32;
  v65 = v35;
  v36 = v53;
  v37 = swift_getWitnessTable();
  v38 = v51;
  sub_255C818BC(v33, v36, v37);
  v39 = *(v55 + 8);
  v39(v33, v36);
  sub_255C818BC(v38, v36, v37);
  return (v39)(v38, v36);
}

uint64_t sub_255C77D50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  v5 = type metadata accessor for TaskModifier();
  v6 = v5[9];
  v7 = sub_255D07338();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, a1 + v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  v9 = (a1 + v5[10]);
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_255D0B040;
  v13[5] = v12;

  v14 = sub_255C781EC(0, 0, v4, &unk_255D0B048, v13);
  v17 = *(a1 + v5[11]);
  v16[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC08);
  return sub_255D06DB8();
}

uint64_t sub_255C77F28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_255C79334;

  return v6();
}

uint64_t sub_255C78010(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_255C780F8;

  return v7();
}

uint64_t sub_255C780F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_255C781EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_255C78C08(a3, v25 - v10);
  v12 = sub_255D07338();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_255C78C78(v11);
  }

  else
  {
    sub_255D07328();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_255D072E8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_255D07138() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_255C78C78(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_255C78C78(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_255C784AC()
{
  type metadata accessor for TaskModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC08);
  sub_255D06DA8();
  if (v1)
  {
    sub_255D07358();
  }

  return sub_255D06DB8();
}

uint64_t sub_255C78564(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for TaskModifier();
  v7 = (a2 + v6[11]);
  v8 = *v7;
  v9 = v7[1];
  v22 = *v7;
  v23 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC08);
  sub_255D06DA8();
  if (v21)
  {
    sub_255D07358();
  }

  v10 = v6[9];
  v11 = sub_255D07338();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v5, a2 + v10, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  v13 = (a2 + v6[10]);
  v15 = *v13;
  v14 = v13[1];
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_255D0B010;
  v17[5] = v16;

  v18 = sub_255C781EC(0, 0, v5, &unk_255D0B020, v17);
  v22 = v8;
  v23 = v9;
  v21 = v18;
  return sub_255D06DB8();
}

uint64_t sub_255C7880C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for TaskModifier() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for TaskModifier() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v4, v1);
  v6 = v2[11];
  v7 = sub_255D07338();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_255C789EC(uint64_t a1)
{
  v3 = *(type metadata accessor for TaskModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_255C78564(a1, v4);
}

uint64_t sub_255C78A78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_255C79334;

  return sub_255C77F28(v2, v3, v4);
}

uint64_t sub_255C78B3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255C79334;

  return sub_255C78010(a1, v4, v5, v6);
}

uint64_t sub_255C78C08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255C78C78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255C78CE0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_255C78DD8;

  return v6(a1);
}

uint64_t sub_255C78DD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_255C78ED0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255C78F08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_255C79334;

  return sub_255C78CE0(a1, v4);
}

uint64_t sub_255C78FC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_255C780F8;

  return sub_255C78CE0(a1, v4);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255C790B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_255C780F8;

  return sub_255C78010(a1, v4, v5, v6);
}

uint64_t sub_255C791B4()
{
  type metadata accessor for TaskModifier();
  swift_getWitnessTable();
  sub_255D06598();
  sub_255D061D8();
  sub_255D061D8();
  sub_255D06578();
  sub_255D061D8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t DefaultNetworkImageCache.__allocating_init(countLimit:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v2 + 16) = v3;
  [v3 setCountLimit_];
  return v2;
}

uint64_t DefaultNetworkImageCache.init(countLimit:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v1 + 16) = v3;
  [v3 setCountLimit_];
  return v1;
}

void sub_255C793EC()
{
  type metadata accessor for DefaultNetworkImageCache();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v0 + 16) = v1;
  v2 = v1;
  [v2 setCountLimit_];

  qword_27F7DDC10 = v0;
}

uint64_t static DefaultNetworkImageCache.shared.getter()
{
  if (qword_27F7DD7B8 != -1)
  {
    swift_once();
  }
}

uint64_t DefaultNetworkImageCache.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id DefaultNetworkImageCache.image(for:)()
{
  v1 = *(v0 + 16);
  v2 = sub_255D05AF8();
  v3 = [v1 objectForKey_];

  return v3;
}

void DefaultNetworkImageCache.setImage(_:for:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_255D05AF8();
  [v3 setObject:a1 forKey:v4];
}

id sub_255C795D0()
{
  v1 = *(v0 + 16);
  v2 = sub_255D05AF8();
  v3 = [v1 objectForKey_];

  return v3;
}

void sub_255C79624(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_255D05AF8();
  [v3 setObject:a1 forKey:v4];
}

uint64_t sub_255C7971C(uint64_t a1, uint64_t a2)
{
  v4 = sub_255D05B78();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255C7979C(uint64_t a1, uint64_t a2)
{
  v4 = sub_255D05B78();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ImageSource()
{
  result = qword_27F7DDC18;
  if (!qword_27F7DDC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255C79858()
{
  result = sub_255D05B78();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255C79914()
{
  sub_255D07728();
  sub_255D05B78();
  sub_255C79B68(&qword_27F7DDC30, MEMORY[0x277CC9260]);
  sub_255D07038();
  v1 = *(v0 + *(type metadata accessor for ImageSource() + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x259C4BB80](*&v1);
  return sub_255D07768();
}

uint64_t sub_255C799C8(uint64_t a1, uint64_t a2)
{
  sub_255D05B78();
  sub_255C79B68(&qword_27F7DDC30, MEMORY[0x277CC9260]);
  sub_255D07038();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x259C4BB80](*&v4);
}

uint64_t sub_255C79A64(uint64_t a1, uint64_t a2)
{
  sub_255D07728();
  sub_255D05B78();
  sub_255C79B68(&qword_27F7DDC30, MEMORY[0x277CC9260]);
  sub_255D07038();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x259C4BB80](*&v4);
  return sub_255D07768();
}

uint64_t sub_255C79B68(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *DefaultNetworkImageLoader.__allocating_init(cache:session:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_255C7DA2C(a1, a3, v3, ObjectType, a2);

  return v8;
}

uint64_t sub_255C79C08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255C79CA8;

  return MEMORY[0x28211ED00](a1, 0);
}

uint64_t sub_255C79CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

void sub_255C79DC0()
{
  if (qword_27F7DD7B8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F7DDC10;

  v1 = sub_255C7E424(15.0);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  type metadata accessor for DefaultNetworkImageLoader();
  v3 = swift_allocObject();
  v4 = v1;
  swift_defaultActor_initialize();
  v5 = sub_255CD421C(MEMORY[0x277D84F90]);

  v3[18] = v5;
  v3[14] = &unk_255D0B258;
  v3[15] = v2;
  v3[16] = v0;
  v3[17] = &protocol witness table for DefaultNetworkImageCache;
  qword_27F7DDC38 = v3;
}

uint64_t DefaultNetworkImageLoader.deinit()
{

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DefaultNetworkImageLoader.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t DefaultNetworkImageLoader.image(from:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_255D05B78();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = *(v4 + 64);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC00);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255C7A058, v1, 0);
}

uint64_t sub_255C7A058()
{
  v1 = v0[10];
  v2 = *(v0[11] + 136);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(v1, ObjectType, v2);
  if (v4)
  {
    v5 = v4;

    v6 = v0[1];

    return v6(v5);
  }

  v8 = v0[11];
  swift_beginAccess();
  v9 = *(v8 + 144);
  if (!*(v9 + 16))
  {
    goto LABEL_9;
  }

  v10 = v0[10];

  v11 = sub_255C7B568(v10);
  if ((v12 & 1) == 0)
  {

LABEL_9:
    v23 = v0[15];
    v22 = v0[16];
    v24 = v0[13];
    v25 = v0[11];
    v26 = v0[12];
    v27 = v0[10];
    v38 = v27;
    v28 = sub_255D07338();
    (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
    (*(v24 + 16))(v23, v27, v26);
    v30 = sub_255C7E148(&qword_27F7DDC40, v29, type metadata accessor for DefaultNetworkImageLoader);
    v31 = (*(v24 + 80) + 40) & ~*(v24 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = v25;
    *(v32 + 3) = v30;
    *(v32 + 4) = v25;
    (*(v24 + 32))(&v32[v31], v23, v26);
    swift_retain_n();
    v33 = sub_255C7B004(0, 0, v22, &unk_255D0B158, v32);
    v0[20] = v33;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v8 + 144);
    *(v8 + 144) = 0x8000000000000000;
    sub_255C7CE24(v33, v38, isUniquelyReferenced_nonNull_native);
    *(v8 + 144) = v39;
    swift_endAccess();
    v35 = swift_task_alloc();
    v0[21] = v35;
    type metadata accessor for CGImage(0);
    v37 = v36;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC48);
    *v35 = v0;
    v35[1] = sub_255C7A5F0;
    v18 = MEMORY[0x277D84950];
    v19 = v0 + 8;
    v20 = v33;
    v21 = v37;
    goto LABEL_10;
  }

  v13 = *(*(v9 + 56) + 8 * v11);
  v0[17] = v13;

  v14 = swift_task_alloc();
  v0[18] = v14;
  type metadata accessor for CGImage(0);
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC48);
  *v14 = v0;
  v14[1] = sub_255C7A448;
  v18 = MEMORY[0x277D84950];
  v19 = v0 + 9;
  v20 = v13;
  v21 = v16;
LABEL_10:

  return MEMORY[0x282200430](v19, v20, v21, v17, v18);
}

uint64_t sub_255C7A448()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_255C7A798;
  }

  else
  {
    v4 = sub_255C7A574;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_255C7A574()
{

  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_255C7A5F0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = sub_255C7A80C;
  }

  else
  {
    v4 = sub_255C7A71C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_255C7A71C()
{

  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_255C7A798()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255C7A80C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_255C7A880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[11] = a1;
  sub_255D05C68();
  v5[14] = swift_task_alloc();
  v7 = sub_255D05C88();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255C7A974, a4, 0);
}

uint64_t sub_255C7A974()
{
  v4 = (*(v0[12] + 112) + **(v0[12] + 112));
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_255C7AA68;
  v2 = v0[13];

  return v4(v2);
}

uint64_t sub_255C7AA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v5[19] = a1;
  v5[20] = a2;
  v5[21] = a3;

  if (v3)
  {

    v7 = v6[1];

    return v7();
  }

  else
  {
    v9 = v5[12];

    return MEMORY[0x2822009F8](sub_255C7ABC8, v9, 0);
  }
}

uint64_t sub_255C7ABC8()
{
  v1 = v0[13];
  swift_beginAccess();
  sub_255C7AF3C(v1);
  swift_endAccess();

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && [v2 statusCode] - 200 <= 0x63)
  {
    v3 = sub_255D05B88();
    v4 = CGImageSourceCreateWithData(v3, 0);

    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC68);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_255D0AA80;
      v6 = *MEMORY[0x277CD3618];
      *(inited + 32) = *MEMORY[0x277CD3618];
      *(inited + 40) = 1;
      v7 = v6;
      sub_255CD4540(inited);
      swift_setDeallocating();
      sub_255C76B94(inited + 32, &qword_27F7DDC70);
      type metadata accessor for CFString(0);
      sub_255C7E148(&qword_27F7DD958, 255, type metadata accessor for CFString);
      v8 = sub_255D06FF8();

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, 0, v8);

      if (ImageAtIndex)
      {
        v10 = v0[20];
        v11 = v0[21];
        v12 = v0[19];
        v13 = v0[13];
        v14 = v0[11];
        v15 = *(v0[12] + 136);
        ObjectType = swift_getObjectType();
        (*(v15 + 16))(ImageAtIndex, v13, ObjectType, v15);

        sub_255C7E0E4(v12, v10);
        *v14 = ImageAtIndex;

        v17 = v0[1];
        goto LABEL_10;
      }
    }

    v18 = v0[20];
    v19 = v0[21];
    v20 = v0[19];
    v22 = v0[16];
    v21 = v0[17];
    v23 = v0[15];
    sub_255D05C58();
  }

  else
  {
    v18 = v0[20];
    v19 = v0[21];
    v20 = v0[19];
    v22 = v0[16];
    v21 = v0[17];
    v23 = v0[15];
    sub_255D05C48();
  }

  sub_255C7DFA0(MEMORY[0x277D84F90]);
  sub_255C7E148(&qword_27F7DDC60, 255, MEMORY[0x277CC9AE8]);
  sub_255D05A48();
  sub_255D05C78();
  (*(v22 + 8))(v21, v23);
  swift_willThrow();

  sub_255C7E0E4(v20, v18);

  v17 = v0[1];
LABEL_10:

  return v17();
}

uint64_t sub_255C7AF3C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_255C7B568(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_255C7D220();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_255D05B78();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_255C7CB00(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_255C7B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_255C7299C(a3, v22 - v9, &qword_27F7DDC00);
  v11 = sub_255D07338();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_255C76B94(v10, &qword_27F7DDC00);
  }

  else
  {
    sub_255D07328();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_255D072E8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_255D07138() + 32;
      type metadata accessor for CGImage(0);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_255C76B94(a3, &qword_27F7DDC00);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_255C76B94(a3, &qword_27F7DDC00);
  type metadata accessor for CGImage(0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_255C7B2BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255C7B350;

  return DefaultNetworkImageLoader.image(from:)(a1);
}

uint64_t sub_255C7B350(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_255C7B454()
{
  if (qword_27F7DD7C0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_255C7B4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_255D076D8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_255C7B568(uint64_t a1)
{
  sub_255D05B78();
  sub_255C7E148(&qword_27F7DDC30, 255, MEMORY[0x277CC9260]);
  v2 = sub_255D07028();

  return sub_255C7B860(a1, v2);
}

unint64_t sub_255C7B604(uint64_t a1)
{
  v2 = sub_255D07508();

  return sub_255C7BA24(a1, v2);
}

unint64_t sub_255C7B648(uint64_t a1)
{
  sub_255D07728();
  type metadata accessor for CFString(0);
  sub_255C7E148(&qword_27F7DDC78, 255, type metadata accessor for CFString);
  sub_255D05CE8();
  v2 = sub_255D07768();

  return sub_255C7BAEC(a1, v2);
}

unint64_t sub_255C7B700(uint64_t a1, uint64_t a2)
{
  sub_255D07728();
  MEMORY[0x259C4BB60](a1);
  MEMORY[0x259C4BB60](a2);
  v4 = sub_255D07768();

  return sub_255C7BBFC(a1, a2, v4);
}

unint64_t sub_255C7B780(uint64_t a1)
{
  v2 = sub_255D07718();

  return sub_255C7BC74(a1, v2);
}

uint64_t sub_255C7B7DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_255D07728();
  sub_255D07058();
  v5 = sub_255D07768();

  return a3(a1, a2, v5);
}

unint64_t sub_255C7B860(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_255D05B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_255C7E148(&qword_27F7DDC90, 255, MEMORY[0x277CC9260]);
      v15 = sub_255D07078();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_255C7BA24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_255C7DEF0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C4B940](v9, a1);
      sub_255C7DF4C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_255C7BAEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_255C7E148(&qword_27F7DDC78, 255, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_255D05CD8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_255C7BBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_255C7BC74(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_255C7BCE0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_255D05B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC58);
  v39 = a2;
  result = sub_255D07648();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_255C7E148(&qword_27F7DDC30, 255, MEMORY[0x277CC9260]);
      result = sub_255D07028();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_255C7C0C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCA0);
  result = sub_255D07648();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v29 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      sub_255D07728();
      MEMORY[0x259C4BB60](v29);
      MEMORY[0x259C4BB60](*(&v29 + 1));
      result = sub_255D07768();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v29;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_255C7C360(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC98);
  v34 = a2;
  result = sub_255D07648();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_255D07728();
      sub_255D07058();
      result = sub_255D07768();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_255C7C608(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCA8);
  result = sub_255D07648();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_255D07718();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_255C7C86C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC50);
  result = sub_255D07648();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = a2;
    v35 = v3;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v37 = *(v22 + 24);
      v23 = *(v22 + 16);
      v24 = *(v22 + 8);
      v25 = *v22;
      result = sub_255D07718();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v25;
      *(v16 + 8) = v24;
      *(v16 + 16) = v23;
      *(v16 + 24) = v37;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_255C7CB00(int64_t a1, uint64_t a2)
{
  v40 = sub_255D05B78();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_255D074F8();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_255C7E148(&qword_27F7DDC30, 255, MEMORY[0x277CC9260]);
      v23 = sub_255D07028();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_255C7CE24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_255D05B78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_255C7B568(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_255C7D220();
      goto LABEL_7;
    }

    sub_255C7BCE0(v17, a3 & 1);
    v22 = sub_255C7B568(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_255C7D168(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_255D07708();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}