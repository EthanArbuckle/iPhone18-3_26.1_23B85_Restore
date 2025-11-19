_DWORD *cmark_render_ascii(uint64_t a1, char *a2)
{
  v3 = *(a1 + 8);
  v4 = v3[5];
  result = cmark_strbuf_puts(v3, a2);
  *(a1 + 24) += *(*(a1 + 8) + 20) - v4;
  return result;
}

_DWORD *cmark_render_code_point(uint64_t a1, unsigned int a2)
{
  result = cmark_utf8proc_encode_char(a2, *(a1 + 8));
  ++*(a1 + 24);
  return result;
}

uint64_t cmark_render(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int (*a6)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v32[0] = a1;
  v32[1] = &cmark_strbuf__initbuf;
  v32[2] = 0;
  v31[0] = a1;
  v31[1] = &cmark_strbuf__initbuf;
  v31[2] = 0;
  v11 = cmark_iter_new(a2);
  v25 = 257;
  v30 = 0;
  v12 = v31;
  v19 = a1;
  v20 = v31;
  v21 = v32;
  v22 = 0;
  v23 = a4;
  v24 = 0;
  v26 = a5;
  v27 = S_cr;
  v28 = S_blankline;
  v29 = S_out;
  v13 = cmark_iter_next(v11);
  if (v13 != 1)
  {
    v14 = v13;
    do
    {
      node = cmark_iter_get_node(v11);
      if (!a6(&v19, node, v14, a3))
      {
        cmark_iter_reset(v11, node, 3);
      }

      v14 = cmark_iter_next(v11);
    }

    while (v14 != 1);
    v12 = v20;
  }

  v16 = *(v12 + 5);
  if (!v16 || *(v12[1] + v16 - 1) != 10)
  {
    cmark_strbuf_putc(v12, 10);
    v12 = v20;
  }

  v17 = cmark_strbuf_detach(v12);
  cmark_iter_free(v11);
  cmark_strbuf_free(v21);
  cmark_strbuf_free(v20);
  return v17;
}

uint64_t S_cr(uint64_t result)
{
  if (*(result + 32) <= 0)
  {
    *(result + 32) = 1;
  }

  return result;
}

uint64_t S_blankline(uint64_t result)
{
  if (*(result + 32) <= 1)
  {
    *(result + 32) = 2;
  }

  return result;
}

uint64_t S_out(uint64_t a1, uint64_t a2, char *__s, int a4, uint64_t a5)
{
  v7 = __s;
  result = strlen(__s);
  v11 = result;
  if (a2)
  {
    v12 = a2;
    while (1)
    {
      v13 = *(v12 + 104);
      if (v13)
      {
        break;
      }

      v12 = *(v12 + 40);
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    if (*(v13 + 176))
    {
      v14 = *(v12 + 104);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  if (a4)
  {
    v15 = *(a1 + 42);
  }

  else
  {
    v15 = 1;
  }

  v16 = *(*(a1 + 8) + 20);
  v42 = 0;
  v17 = *(a1 + 32);
  if (*(a1 + 43) != 1 || v17 < 2)
  {
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v17 = 1;
    *(a1 + 32) = 1;
  }

  v37 = v16 - 1;
  do
  {
    if ((v37 & 0x80000000) != 0 || (result = *(a1 + 8), *(*(result + 8) + v37) == 10))
    {
      --v37;
    }

    else
    {
      result = cmark_strbuf_putc(result, 10);
      v17 = *(a1 + 32);
      if (v17 >= 2)
      {
        result = cmark_strbuf_put(*(a1 + 8), *(*(a1 + 16) + 8), *(*(a1 + 16) + 20));
        v17 = *(a1 + 32);
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 40) = 257;
    *(a1 + 32) = --v17;
  }

  while (v17);
LABEL_18:
  if (v11 >= 1)
  {
    v19 = 0;
    v39 = v7;
    v40 = v7 + 1;
    v41 = v15;
    v38 = a2;
    while (1)
    {
      if (*(a1 + 40) == 1)
      {
        cmark_strbuf_put(*(a1 + 8), *(*(a1 + 16) + 8), *(*(a1 + 16) + 20));
        *(a1 + 24) = *(*(a1 + 16) + 20);
      }

      result = cmark_utf8proc_iterate(&v7[v19], v11 - v19, &v42);
      if (result == -1)
      {
        return result;
      }

      v20 = result;
      if (v14)
      {
        result = (*(v14 + 176))(v14, a2, v42);
        if (result)
        {
          result = cmark_strbuf_putc(*(a1 + 8), 92);
        }
      }

      v21 = v19;
      if (!((v42 != 32) | v15 & 1))
      {
        if ((*(a1 + 40) & 1) == 0)
        {
          v23 = *(a1 + 8);
          v24 = *(v23 + 20);
          cmark_strbuf_putc(v23, 32);
          ++*(a1 + 24);
          *(a1 + 40) = 0;
          --v19;
          v25 = &v40[v21];
          do
          {
            v27 = *v25++;
            v26 = v27;
            ++v19;
          }

          while (v27 == 32);
          result = cmark_isdigit(v26);
          if (!result)
          {
            *(a1 + 36) = v24;
          }

          v15 = v41;
        }

        goto LABEL_41;
      }

      if (a5)
      {
        break;
      }

      if (v42 != 10)
      {
        result = cmark_utf8proc_encode_char(v42, *(a1 + 8));
        v22 = 0;
        ++*(a1 + 24);
        goto LABEL_38;
      }

      result = cmark_strbuf_putc(*(a1 + 8), 10);
      *(a1 + 24) = 0;
      *(a1 + 40) = 257;
      *(a1 + 36) = 0;
LABEL_41:
      v28 = *(a1 + 28);
      if (v28 >= 1 && *(a1 + 24) > v28 && (*(a1 + 40) & 1) == 0)
      {
        v29 = *(a1 + 36);
        if (v29 >= 1)
        {
          v30 = a5;
          v31 = *(*(a1 + 8) + 8) + v29;
          v32 = strlen((v31 + 1));
          v33 = (**a1)(v32 + 1, 1);
          v34 = (v31 + 1);
          a5 = v30;
          v7 = v39;
          memcpy(v33, v34, v32 + 1);
          cmark_strbuf_truncate(*(a1 + 8), *(a1 + 36));
          cmark_strbuf_putc(*(a1 + 8), 10);
          cmark_strbuf_put(*(a1 + 8), *(*(a1 + 16) + 8), *(*(a1 + 16) + 20));
          cmark_strbuf_put(*(a1 + 8), v33, v32);
          v35 = *(*(a1 + 16) + 20) + v32;
          v15 = v41;
          *(a1 + 24) = v35;
          v36 = v33;
          a2 = v38;
          result = (*(*a1 + 16))(v36);
          *(a1 + 36) = 0;
          *(a1 + 40) = 0;
        }
      }

      v19 += v20;
      if (v19 >= v11)
      {
        return result;
      }
    }

    result = (*(a1 + 48))(a1, a2, a5);
    v22 = 0;
LABEL_38:
    *(a1 + 40) = 0;
    if (*(a1 + 41) == 1)
    {
      result = cmark_isdigit(v42);
      v22 = result == 1;
    }

    *(a1 + 41) = v22;
    goto LABEL_41;
  }

  return result;
}

_BYTE *cmark_footnote_create(uint64_t a1, uint64_t a2)
{
  result = normalize_map_label(*a1, a2 + 128);
  if (result)
  {
    if (*(a1 + 16))
    {
      cmark_footnote_create_cold_1();
    }

    v5 = result;
    result = (**a1)(1, 40);
    *(result + 3) = a2;
    v6 = *(a1 + 24);
    *(result + 4) = v6;
    *result = *(a1 + 8);
    *(result + 1) = v5;
    *(a1 + 8) = result;
    *(a1 + 24) = v6 + 1;
  }

  return result;
}

uint64_t footnote_free(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *result;
    (*(*result + 16))(*(a2 + 8));
    v4 = *(a2 + 24);
    if (v4)
    {
      cmark_node_free(v4);
    }

    v5 = *(v3 + 16);

    return v5(a2);
  }

  return result;
}

void *cmark_unlink_footnotes_map(void *result)
{
  v1 = result[1];
  while (v1)
  {
    result = v1[3];
    v1 = *v1;
    if (result)
    {
      result = cmark_node_unlink(result);
    }
  }

  return result;
}

uint64_t cmark_render_html_with_mem(uint64_t a1, int a2, void *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  v103 = *MEMORY[0x277D85DE8];
  v98[0] = a4;
  v98[1] = &cmark_strbuf__initbuf;
  v98[2] = 0;
  v96 = 0u;
  v97 = 0u;
  v95 = v98;
  v7 = cmark_iter_new(a1);
  if (a3)
  {
    v8 = 0;
    do
    {
      v9 = a3[1];
      if (*(v9 + 144))
      {
        v8 = cmark_llist_append(a4, v8, v9);
        *(&v96 + 1) = v8;
      }

      a3 = *a3;
    }

    while (a3);
  }

  v10 = cmark_iter_next(v7);
  if (v10 != 1)
  {
    v13 = v10;
    v94 = a2;
    do
    {
      node = cmark_iter_get_node(v7);
      v15 = node;
      strcpy(__s, "<h0");
      strcpy(v99, "</h0");
      v16 = v95;
      if (v96 == node)
      {
        *&v96 = 0;
      }

      else if (v96)
      {
        v17 = *(node + 100) - 49153;
        if (v17 <= 4)
        {
          if (((1 << v17) & 0x19) == 0)
          {
            goto LABEL_82;
          }

LABEL_15:
          houdini_escape_html0(v95, *(v15 + 128), *(v15 + 136), 0);
          goto LABEL_205;
        }

        goto LABEL_205;
      }

      v18 = *(node + 104);
      if (v18)
      {
        v19 = *(v18 + 136);
        if (v19)
        {
          v19();
          goto LABEL_205;
        }
      }

      v20 = *(v15 + 100);
      if (v20 > 0xC000)
      {
        if (*(v15 + 100) > 0xC005u)
        {
          if (*(v15 + 100) > 0xC008u)
          {
            switch(v20)
            {
              case 0xC009u:
                if (v13 == 2)
                {
                  cmark_strbuf_puts(v95, "<a href=");
                  if ((a2 & 0x20000) != 0 || !_scan_at(_scan_dangerous_url, (v15 + 128), 0))
                  {
                    houdini_escape_href(v16, *(v15 + 128), *(v15 + 136));
                  }

                  if (*(v15 + 152))
                  {
                    cmark_strbuf_puts(v16, " title=");
                    houdini_escape_html0(v16, *(v15 + 144), *(v15 + 152), 0);
                  }

                  v26 = v16;
                  v27 = ">";
                }

                else
                {
                  v26 = v95;
                  v27 = "</a>";
                }

                break;
              case 0xC00Au:
                if (v13 == 2)
                {
                  cmark_strbuf_puts(v95, "<img src=");
                  if ((a2 & 0x20000) != 0 || !_scan_at(_scan_dangerous_url, (v15 + 128), 0))
                  {
                    houdini_escape_href(v16, *(v15 + 128), *(v15 + 136));
                  }

                  cmark_strbuf_puts(v16, " alt=");
                  *&v96 = v15;
                  goto LABEL_205;
                }

                if (*(v15 + 152))
                {
                  cmark_strbuf_puts(v95, " title=");
                  houdini_escape_html0(v16, *(v15 + 144), *(v15 + 152), 0);
                }

                v26 = v16;
                v27 = " />";
                break;
              case 0xC00Bu:
                if (v13 != 2)
                {
                  goto LABEL_205;
                }

                cmark_strbuf_puts(v95, "<sup class=footnote-ref><a href=#fn-");
                houdini_escape_href(v16, *(*(v15 + 120) + 128), *(*(v15 + 120) + 136));
                cmark_strbuf_puts(v16, " id=fnref-");
                houdini_escape_href(v16, *(*(v15 + 120) + 128), *(*(v15 + 120) + 136));
                if (*(v15 + 112) >= 2)
                {
                  snprintf(__str, 0x20uLL, "%d", *(v15 + 112));
                  cmark_strbuf_puts(v16, "-");
                  cmark_strbuf_puts(v16, __str);
                }

                cmark_strbuf_puts(v16, " data-footnote-ref>");
                houdini_escape_href(v16, *(v15 + 128), *(v15 + 136));
                v26 = v16;
                v27 = "</a></sup>";
                break;
              default:
                goto LABEL_217;
            }
          }

          else
          {
            if (v20 == 49158)
            {
              if (v13 == 2)
              {
                v47 = *(v15 + 128);
                v48 = *(v15 + 136);
              }

              else
              {
                v47 = *(v15 + 144);
                v48 = *(v15 + 152);
              }

              cmark_strbuf_put(v95, v47, v48);
              goto LABEL_205;
            }

            if (v20 == 49159)
            {
              v26 = v95;
              if (v13 == 2)
              {
                v27 = "<em>";
              }

              else
              {
                v27 = "</em>";
              }
            }

            else
            {
              v26 = v95;
              if (v13 == 2)
              {
                v27 = "<strong>";
              }

              else
              {
                v27 = "</strong>";
              }
            }
          }

          goto LABEL_204;
        }

        if (*(v15 + 100) > 0xC002u)
        {
          if (v20 == 49155)
          {
LABEL_84:
            v26 = v95;
            v27 = "<br />\n";
          }

          else if (v20 == 49156)
          {
            cmark_strbuf_puts(v95, "<code>");
            houdini_escape_html0(v16, *(v15 + 128), *(v15 + 136), 0);
            v26 = v16;
            v27 = "</code>";
          }

          else
          {
            if ((a2 & 0x20000) != 0)
            {
              v70 = &v96 + 1;
              while (1)
              {
                v70 = *v70;
                if (!v70)
                {
                  break;
                }

                if (!(*(v70[1] + 144))())
                {
                  cmark_strbuf_puts(v16, "&lt;");
                  v71 = *(v15 + 136) - 1;
                  v72 = (*(v15 + 128) + 1);
                  goto LABEL_188;
                }
              }

              v72 = *(v15 + 128);
              v71 = *(v15 + 136);
LABEL_188:
              cmark_strbuf_put(v16, v72, v71);
              goto LABEL_205;
            }

            v26 = v95;
            v27 = "<!-- raw HTML omitted -->";
          }

LABEL_204:
          cmark_strbuf_puts(v26, v27);
          goto LABEL_205;
        }

        if (v20 != 49153)
        {
          if (v20 != 49154)
          {
LABEL_217:
            cmark_render_html_with_mem_cold_1();
          }

          if ((a2 & 4) != 0)
          {
            goto LABEL_84;
          }

          if ((a2 & 0x10) != 0)
          {
LABEL_82:
            v38 = v95;
            v39 = 32;
LABEL_83:
            cmark_strbuf_putc(v38, v39);
            goto LABEL_205;
          }

LABEL_216:
          v38 = v16;
          v39 = 10;
          goto LABEL_83;
        }

        goto LABEL_15;
      }

      if (*(v15 + 100) > 0x8005u)
      {
        if (*(v15 + 100) > 0x8008u)
        {
          if (v20 != 32777)
          {
            if (v20 == 32778)
            {
              v58 = v95[5];
              if (v58 && *(*(v95 + 1) + v58 - 1) != 10)
              {
                cmark_strbuf_putc(v95, 10);
              }

              cmark_strbuf_puts(v16, "<hr");
              if ((a2 & 2) != 0)
              {
                start_line = cmark_node_get_start_line(v15);
                start_column = cmark_node_get_start_column(v15);
                end_line = cmark_node_get_end_line(v15);
                end_column = cmark_node_get_end_column(v15);
                v90 = end_line;
                a2 = v94;
                snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", start_line, start_column, v90, end_column);
                cmark_strbuf_puts(v16, __str);
              }

              v26 = v16;
              v27 = " />\n";
            }

            else
            {
              if (v20 != 32779)
              {
                goto LABEL_217;
              }

              if (v13 == 2)
              {
                v31 = v97;
                if (!v97)
                {
                  cmark_strbuf_puts(v95, "<section class=footnotes data-footnotes>\n<ol>\n");
                  v31 = v97;
                }

                LODWORD(v97) = v31 + 1;
                cmark_strbuf_puts(v16, "<li id=fn-");
                houdini_escape_href(v16, *(v15 + 128), *(v15 + 136));
                v26 = v16;
                v27 = ">\n";
              }

              else
              {
                if (S_put_footnote_backref(&v95, v95, v15))
                {
                  cmark_strbuf_putc(v16, 10);
                }

LABEL_179:
                v26 = v16;
                v27 = "</li>\n";
              }
            }

            goto LABEL_204;
          }

          if (v13 != 2)
          {
            v99[3] = *(v15 + 128) + 48;
            v37 = v99;
LABEL_161:
            cmark_strbuf_puts(v16, v37);
            goto LABEL_162;
          }

          v49 = v95[5];
          if (v49 && *(*(v95 + 1) + v49 - 1) != 10)
          {
            cmark_strbuf_putc(v95, 10);
          }

          __s[2] = *(v15 + 128) + 48;
          v25 = __s;
          v24 = v16;
          goto LABEL_109;
        }

        if (v20 != 32774)
        {
          if (v20 != 32775)
          {
            v21 = cmark_node_parent(v15);
            v22 = cmark_node_parent(v21);
            if (v22 && *(v22 + 100) == 32771 && (*(v22 + 149) & 1) != 0)
            {
              goto LABEL_205;
            }

            if (v13 != 2)
            {
              if (*(v21 + 100) == 32779 && !*(v15 + 24))
              {
                cmark_strbuf_putc(v16, 32);
                S_put_footnote_backref(&v95, v16, v21);
              }

              v26 = v16;
              v27 = "</p>\n";
              goto LABEL_204;
            }

            v23 = v16[5];
            if (v23 && *(*(v16 + 1) + v23 - 1) != 10)
            {
              cmark_strbuf_putc(v16, 10);
            }

            v24 = v16;
            v25 = "<p";
            goto LABEL_109;
          }

          v54 = v95[5];
          if (v54 && *(*(v95 + 1) + v54 - 1) != 10)
          {
            cmark_strbuf_putc(v95, 10);
          }

          v55 = 144;
          if (v13 == 2)
          {
            v55 = 128;
          }

          v56 = 152;
          if (v13 == 2)
          {
            v56 = 136;
          }

          cmark_strbuf_put(v16, *(v15 + v55), *(v15 + v56));
          v57 = v16[5];
          if (!v57)
          {
            goto LABEL_205;
          }

LABEL_215:
          if (*(*(v16 + 1) + v57 - 1) == 10)
          {
            goto LABEL_205;
          }

          goto LABEL_216;
        }

        v46 = v95[5];
        if (v46 && *(*(v95 + 1) + v46 - 1) != 10)
        {
          cmark_strbuf_putc(v95, 10);
        }

        if ((a2 & 0x20000) == 0)
        {
          cmark_strbuf_puts(v16, "<!-- raw HTML omitted -->");
          goto LABEL_214;
        }

        v63 = *(v15 + 128);
        v64 = *(v15 + 136);
        if (*(&v96 + 1))
        {
          if (v64)
          {
            v65 = v95;
            while (1)
            {
              v66 = memchr(v63, 60, v64);
              if (!v66)
              {
                break;
              }

              v67 = v66;
              v68 = v66 - v63;
              if (v66 != v63)
              {
                cmark_strbuf_put(v65, v63, v68);
                v64 -= v68;
                v63 = v67;
              }

              v69 = &v96 + 1;
              a2 = v94;
              while (1)
              {
                v69 = *v69;
                if (!v69)
                {
                  break;
                }

                if (!(*(v69[1] + 144))())
                {
                  cmark_strbuf_puts(v65, "&lt;");
                  goto LABEL_156;
                }
              }

              cmark_strbuf_putc(v65, 60);
LABEL_156:
              ++v63;
              if (!--v64)
              {
                goto LABEL_214;
              }
            }

            v83 = v65;
LABEL_213:
            cmark_strbuf_put(v83, v63, v64);
          }

LABEL_214:
          v57 = v16[5];
          if (!v57)
          {
            goto LABEL_205;
          }

          goto LABEL_215;
        }

        v83 = v16;
        goto LABEL_213;
      }

      if (*(v15 + 100) > 0x8002u)
      {
        if (v20 == 32771)
        {
          v40 = *(v15 + 128);
          if (v13 == 2)
          {
            v41 = *(v15 + 140);
            v42 = v95[5];
            if (v42 && *(*(v95 + 1) + v42 - 1) != 10)
            {
              cmark_strbuf_putc(v95, 10);
            }

            if (v40 == 1)
            {
              v43 = v16;
              v44 = "<ul";
            }

            else if (v41 == 1)
            {
              v43 = v16;
              v44 = "<ol";
            }

            else
            {
              snprintf(v101, 0x64uLL, "<ol start=%d", v41);
              v44 = v101;
              v43 = v16;
            }

            cmark_strbuf_puts(v43, v44);
            if ((a2 & 2) != 0)
            {
              v84 = cmark_node_get_start_line(v15);
              v85 = cmark_node_get_start_column(v15);
              v86 = cmark_node_get_end_line(v15);
              v87 = cmark_node_get_end_column(v15);
              v93 = v86;
              a2 = v94;
              snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", v84, v85, v93, v87);
              cmark_strbuf_puts(v16, __str);
            }

            cmark_strbuf_puts(v16, ">\n");
            goto LABEL_205;
          }

          if (v40 == 1)
          {
            v27 = "</ul>\n";
          }

          else
          {
            v27 = "</ol>\n";
          }

          v26 = v95;
          goto LABEL_204;
        }

        if (v20 != 32772)
        {
          v28 = v95[5];
          if (v28 && *(*(v95 + 1) + v28 - 1) != 10)
          {
            cmark_strbuf_putc(v95, 10);
          }

          v29 = *(v15 + 136);
          if (v29)
          {
            if (v29 < 1)
            {
              LODWORD(v30) = 0;
            }

            else
            {
              v30 = 0;
              do
              {
                if (cmark_isspace(*(*(v15 + 128) + v30)))
                {
                  break;
                }

                ++v30;
              }

              while (v30 < *(v15 + 136));
            }

            cmark_strbuf_puts(v16, "<pre");
            if ((a2 & 2) != 0)
            {
              v79 = cmark_node_get_start_line(v15);
              v80 = cmark_node_get_start_column(v15);
              v81 = cmark_node_get_end_line(v15);
              v82 = cmark_node_get_end_column(v15);
              v92 = v81;
              a2 = v94;
              snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", v79, v80, v92, v82);
              cmark_strbuf_puts(v16, __str);
            }

            if ((a2 & 0x800) != 0)
            {
              cmark_strbuf_puts(v16, " lang=");
              houdini_escape_html0(v16, *(v15 + 128), v30, 0);
              if ((a2 & 0x10000) != 0 && v30 < *(v15 + 136))
              {
                cmark_strbuf_puts(v16, " data-meta=");
                houdini_escape_html0(v16, *(v15 + 128) + v30 + 1, *(v15 + 136) + ~v30, 0);
              }

              v77 = v16;
              v78 = "><code>";
            }

            else
            {
              cmark_strbuf_puts(v16, "><code class=language-");
              houdini_escape_html0(v16, *(v15 + 128), v30, 0);
              if ((a2 & 0x10000) != 0 && v30 < *(v15 + 136))
              {
                cmark_strbuf_puts(v16, " data-meta=");
                houdini_escape_html0(v16, *(v15 + 128) + v30 + 1, *(v15 + 136) + ~v30, 0);
              }

              v77 = v16;
              v78 = ">";
            }
          }

          else
          {
            cmark_strbuf_puts(v16, "<pre");
            if ((a2 & 2) != 0)
            {
              v73 = cmark_node_get_start_line(v15);
              v74 = cmark_node_get_start_column(v15);
              v75 = cmark_node_get_end_line(v15);
              v76 = cmark_node_get_end_column(v15);
              v91 = v75;
              a2 = v94;
              snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", v73, v74, v91, v76);
              cmark_strbuf_puts(v16, __str);
            }

            v77 = v16;
            v78 = "><code>";
          }

          cmark_strbuf_puts(v77, v78);
          houdini_escape_html0(v16, *(v15 + 144), *(v15 + 152), 0);
          v26 = v16;
          v27 = "</code></pre>\n";
          goto LABEL_204;
        }

        if (v13 != 2)
        {
          goto LABEL_179;
        }

        v45 = v95[5];
        if (v45 && *(*(v95 + 1) + v45 - 1) != 10)
        {
          cmark_strbuf_putc(v95, 10);
        }

        v24 = v16;
        v25 = "<li";
LABEL_109:
        cmark_strbuf_puts(v24, v25);
        if ((a2 & 2) != 0)
        {
          v50 = cmark_node_get_start_line(v15);
          v51 = cmark_node_get_start_column(v15);
          v52 = cmark_node_get_end_line(v15);
          v53 = cmark_node_get_end_column(v15);
          v89 = v52;
          a2 = v94;
          snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", v50, v51, v89, v53);
          cmark_strbuf_puts(v16, __str);
        }

        v38 = v16;
        v39 = 62;
        goto LABEL_83;
      }

      if (v20 != 32769)
      {
        if (v20 != 32770)
        {
          goto LABEL_217;
        }

        v32 = v95[5];
        if (v13 != 2)
        {
          if (v32 && *(*(v95 + 1) + v32 - 1) != 10)
          {
            cmark_strbuf_putc(v95, 10);
          }

          v26 = v16;
          v27 = "</blockquote>\n";
          goto LABEL_204;
        }

        if (v32 && *(*(v95 + 1) + v32 - 1) != 10)
        {
          cmark_strbuf_putc(v95, 10);
        }

        cmark_strbuf_puts(v16, "<blockquote");
        if ((a2 & 2) != 0)
        {
          v33 = cmark_node_get_start_line(v15);
          v34 = cmark_node_get_start_column(v15);
          v35 = cmark_node_get_end_line(v15);
          v36 = cmark_node_get_end_column(v15);
          v88 = v35;
          a2 = v94;
          snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", v33, v34, v88, v36);
          v37 = __str;
          goto LABEL_161;
        }

LABEL_162:
        v26 = v16;
        v27 = ">\n";
        goto LABEL_204;
      }

LABEL_205:
      v13 = cmark_iter_next(v7);
    }

    while (v13 != 1);
  }

  if (v97)
  {
    cmark_strbuf_puts(v98, "</ol>\n</section>\n");
  }

  v11 = cmark_strbuf_detach(v98);
  cmark_llist_free(a4, *(&v96 + 1));
  cmark_iter_free(v7);
  return v11;
}

BOOL S_put_footnote_backref(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v3 = *(a1 + 28);
  if (v3 < v4)
  {
    *(a1 + 28) = v4;
    cmark_strbuf_puts(a2, "<a href=#fnref-");
    houdini_escape_href(a2, *(a3 + 128), *(a3 + 136));
    cmark_strbuf_puts(a2, " class=footnote-backref data-footnote-backref aria-label=Back to content>↩</a>");
    if (*(a3 + 112) >= 2)
    {
      v7 = 1;
      do
      {
        snprintf(__str, 0x20uLL, "%d", ++v7);
        cmark_strbuf_puts(a2, " <a href=#fnref-");
        houdini_escape_href(a2, *(a3 + 128), *(a3 + 136));
        cmark_strbuf_puts(a2, "-");
        cmark_strbuf_puts(a2, __str);
        cmark_strbuf_puts(a2, " class=footnote-backref data-footnote-backref aria-label=Back to content>↩<sup class=footnote-ref>");
        cmark_strbuf_puts(a2, __str);
        cmark_strbuf_puts(a2, "</sup></a>");
      }

      while (v7 < *(a3 + 112));
    }
  }

  return v3 < v4;
}

uint64_t cmark_parser_attach_syntax_extension(uint64_t a1, uint64_t a2)
{
  *(a1 + 128) = cmark_llist_append(*a1, *(a1 + 128), a2);
  if (*(a2 + 16) || *(a2 + 24))
  {
    *(a1 + 136) = cmark_llist_append(*a1, *(a1 + 136), a2);
  }

  return 1;
}

uint64_t cmark_parser_new_with_mem(int a1, uint64_t (**a2)(uint64_t, uint64_t))
{
  v4 = (*a2)(1, 152);
  *v4 = a2;
  *(v4 + 120) = a1;
  cmark_parser_reset(v4);
  return v4;
}

__n128 cmark_parser_reset(uint64_t a1)
{
  v2 = *(a1 + 120);
  v3 = *a1;
  v7 = *(a1 + 128);
  cmark_parser_dispose(a1);
  *(a1 + 144) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *a1 = v3;
  cmark_strbuf_init(v3, (a1 + 64), 256);
  cmark_strbuf_init(*a1, (a1 + 96), 0);
  v4 = *a1;
  v5 = (**a1)(1, 168);
  cmark_strbuf_init(v4, v5, 32);
  *(v5 + 100) = 98305;
  *(v5 + 80) = 0x100000001;
  *(v5 + 88) = 1;
  *(a1 + 8) = cmark_reference_map_new(*a1);
  *(a1 + 16) = v5;
  *(a1 + 24) = v5;
  result = v7;
  *(a1 + 128) = v7;
  *(a1 + 120) = v2;
  return result;
}

_DWORD *cmark_parser_new(int a1)
{
  v2 = (CMARK_DEFAULT_MEM_ALLOCATOR[0])(1uLL, 0x98uLL);
  *v2 = CMARK_DEFAULT_MEM_ALLOCATOR;
  v2[30] = a1;
  cmark_parser_reset(v2);
  return v2;
}

uint64_t cmark_parser_free(uint64_t a1)
{
  v2 = *a1;
  cmark_parser_dispose(a1);
  cmark_strbuf_free(a1 + 64);
  cmark_strbuf_free(a1 + 96);
  cmark_llist_free(*a1, *(a1 + 128));
  cmark_llist_free(*a1, *(a1 + 136));
  v3 = *(v2 + 16);

  return v3(a1);
}

uint64_t cmark_parser_dispose(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    cmark_node_free(v2);
  }

  result = *(a1 + 8);
  if (result)
  {

    return cmark_map_free(result);
  }

  return result;
}

uint64_t cmark_manage_extensions_special_characters(uint64_t result, int a2)
{
  for (i = *(result + 136); i; i = *i)
  {
    v4 = i[1];
    for (j = *(v4 + 32); j; j = *j)
    {
      v6 = *(v4 + 56);
      v7 = *(j + 8);
      if (a2)
      {
        result = cmark_inlines_add_special_character(v7, v6);
      }

      else
      {
        result = cmark_inlines_remove_special_character(v7, v6);
      }
    }
  }

  return result;
}

uint64_t cmark_parse_file(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v11 = *MEMORY[0x277D85DE8];
  v5 = (CMARK_DEFAULT_MEM_ALLOCATOR[0])(1uLL, 0x98uLL);
  *v5 = CMARK_DEFAULT_MEM_ALLOCATOR;
  v5[30] = v3;
  cmark_parser_reset(v5);
  do
  {
    v6 = fread(__ptr, 1uLL, 0x1000uLL, v4);
    if (!v6)
    {
      break;
    }

    v7 = v6;
    S_parser_feed(v5, __ptr, v6, v6 < 0x1000);
  }

  while (v7 > 0xFFF);
  v8 = cmark_parser_finish(v5);
  cmark_parser_free(v5);
  return v8;
}

uint64_t S_parser_feed(uint64_t result, _BYTE *a2, uint64_t a3, int a4)
{
  v5 = a2;
  v6 = result;
  v7 = &a2[a3];
  if (*(result + 124) == 1 && *a2 == 10)
  {
    v5 = a2 + 1;
  }

  *(result + 124) = 0;
  if (v5 >= v7)
  {
    return result;
  }

  do
  {
    v8 = 0;
    do
    {
      v9 = v5[v8];
      if (!v5[v8])
      {
        cmark_strbuf_put((v6 + 96), v5, v8);
        v11 = (v6 + 96);
        v12 = &S_parser_feed_repl;
        v13 = 3;
LABEL_18:
        result = cmark_strbuf_put(v11, v12, v13);
        goto LABEL_19;
      }

      if (v9 == 10 || v9 == 13)
      {
        goto LABEL_13;
      }

      ++v8;
    }

    while (&v5[v8] < v7);
    if (!a4)
    {
      v11 = (v6 + 96);
      v12 = v5;
      v13 = v8;
      goto LABEL_18;
    }

LABEL_13:
    if (*(v6 + 116) < 1)
    {
      result = S_process_line(v6, v5, v8);
    }

    else
    {
      cmark_strbuf_put((v6 + 96), v5, v8);
      S_process_line(v6, *(v6 + 104), *(v6 + 116));
      result = cmark_strbuf_clear(v6 + 96);
    }

LABEL_19:
    v5 += v8;
    if (v5 >= v7)
    {
      continue;
    }

    if (*v5 == 13)
    {
      if (++v5 != v7)
      {
        goto LABEL_24;
      }

      *(v6 + 124) = 1;
      return result;
    }

    if (!*v5)
    {
      ++v5;
      continue;
    }

LABEL_24:
    if (v5 < v7 && *v5 == 10)
    {
      ++v5;
    }
  }

  while (v5 < v7);
  return result;
}

uint64_t cmark_parser_finish(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 116);
  if (v3)
  {
    S_process_line(a1, *(a1 + 104), v3);
    cmark_strbuf_clear(a1 + 96);
    v1 = *(a1 + 16);
  }

  for (i = *(a1 + 24); i != v1; v1 = *(a1 + 16))
  {
    i = finalize(a1, i);
    *(a1 + 24) = i;
  }

  finalize(a1, v1);
  v5 = *(a1 + 120);
  v6 = *(a1 + 8);
  v7 = cmark_iter_new(*(a1 + 16));
  cmark_manage_extensions_special_characters(a1, 1);
  v8 = cmark_iter_next(v7);
  if (v8 != 1)
  {
    for (j = v8; j != 1; j = cmark_iter_next(v7))
    {
      node = cmark_iter_get_node(v7);
      if (j == 2)
      {
        v11 = node;
        v12 = *(node + 104);
        if (v12)
        {
          v13 = *(v12 + 88);
          if (v13)
          {
            if (!v13())
            {
              continue;
            }

LABEL_14:
            cmark_parse_inlines(a1, v11, v6, v5);
            continue;
          }
        }

        if ((*(v11 + 100) & 0xFFFE) == 0x8008)
        {
          goto LABEL_14;
        }
      }
    }
  }

  cmark_manage_extensions_special_characters(a1, 0);
  cmark_iter_free(v7);
  if ((*(a1 + 121) & 0x20) != 0)
  {
    v14 = cmark_footnote_map_new(*a1);
    v15 = cmark_iter_new(*(a1 + 16));
    v16 = cmark_iter_next(v15);
    if (v16 != 1)
    {
      for (k = v16; k != 1; k = cmark_iter_next(v15))
      {
        v18 = cmark_iter_get_node(v15);
        if (k == 3 && *(v18 + 100) == 32779)
        {
          cmark_footnote_create(v14, v18);
        }
      }
    }

    cmark_iter_free(v15);
    v19 = cmark_iter_new(*(a1 + 16));
    v20 = cmark_iter_next(v19);
    if (v20 != 1)
    {
      v21 = v20;
      v22 = 0;
      do
      {
        v23 = cmark_iter_get_node(v19);
        if (v21 == 3)
        {
          v24 = v23;
          if (*(v23 + 100) == 49163)
          {
            v25 = cmark_map_lookup(v14, v23 + 128);
            if (v25)
            {
              if (!*(v25 + 8))
              {
                *(v25 + 8) = ++v22;
              }

              v26 = *(v25 + 3);
              *(v24 + 120) = v26;
              v27 = *(v26 + 112) + 1;
              *(v26 + 112) = v27;
              *(v24 + 112) = v27;
              snprintf(__str, 0x20uLL, "%d", *(v25 + 8));
              if (*(v24 + 140))
              {
                (*(*a1 + 16))(*(v24 + 128));
              }

              *(v24 + 128) = 0;
              *(v24 + 136) = 0;
              v39[0] = *a1;
              v39[1] = &cmark_strbuf__initbuf;
              v40 = 0;
              cmark_strbuf_puts(v39, __str);
              v28 = HIDWORD(v40);
              *(v24 + 128) = cmark_strbuf_detach(v39);
              *(v24 + 136) = v28 | 0x100000000;
            }

            else
            {
              v29 = (**a1)(1, 168);
              cmark_strbuf_init(*a1, v29, 0);
              *(v29 + 100) = -16383;
              *__str = *a1;
              v42 = &cmark_strbuf__initbuf;
              v43 = 0;
              cmark_strbuf_puts(__str, "[^");
              cmark_strbuf_put(__str, *(v24 + 128), *(v24 + 136));
              cmark_strbuf_putc(__str, 93);
              v30 = HIDWORD(v43);
              *(v29 + 128) = cmark_strbuf_detach(__str);
              *(v29 + 136) = v30 | 0x100000000;
              cmark_node_insert_after(v24, v29);
              cmark_node_free(v24);
            }
          }
        }

        v21 = cmark_iter_next(v19);
      }

      while (v21 != 1);
    }

    cmark_iter_free(v19);
    v31 = v14[2];
    if (v31)
    {
      qsort(v31, *(v14 + 6), 8uLL, sort_footnote_by_ix);
      if (*(v14 + 6))
      {
        v32 = 0;
        do
        {
          v33 = v14[2][v32];
          if (*(v33 + 8))
          {
            cmark_node_append_child(*(a1 + 16), *(v33 + 3));
            *(v33 + 3) = 0;
          }

          else
          {
            cmark_node_unlink(*(v33 + 3));
          }

          ++v32;
        }

        while (v32 < *(v14 + 6));
      }
    }

    cmark_unlink_footnotes_map(v14);
    cmark_map_free(v14);
  }

  cmark_consolidate_text_nodes(*(a1 + 16));
  cmark_strbuf_free(a1 + 64);
  cmark_strbuf_free(a1 + 96);
  for (m = *(a1 + 128); m; m = *m)
  {
    v35 = *(m[1] + 152);
    if (v35)
    {
      v36 = v35();
      if (v36)
      {
        *(a1 + 16) = v36;
      }
    }
  }

  v37 = *(a1 + 16);
  *(a1 + 16) = 0;
  cmark_parser_reset(a1);
  return v37;
}

uint64_t cmark_parse_document(_BYTE *a1, uint64_t a2, int a3)
{
  v6 = (CMARK_DEFAULT_MEM_ALLOCATOR[0])(1uLL, 0x98uLL);
  *v6 = CMARK_DEFAULT_MEM_ALLOCATOR;
  v6[30] = a3;
  cmark_parser_reset(v6);
  S_parser_feed(v6, a1, a2, 1);
  v7 = cmark_parser_finish(v6);
  cmark_parser_free(v6);
  return v7;
}

uint64_t cmark_parser_feed_reentrant(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = 0;
  __s = 0;
  v9 = 0;
  cmark_strbuf_init(*a1, &v7, 0);
  cmark_strbuf_puts(&v7, *(a1 + 104));
  cmark_strbuf_clear(a1 + 96);
  S_parser_feed(a1, a2, a3, 1);
  cmark_strbuf_sets(a1 + 96, __s);
  return cmark_strbuf_free(&v7);
}

uint64_t S_process_line(uint64_t a1, const void *a2, int a3)
{
  cmark_strbuf_clear(a1 + 64);
  if ((*(a1 + 121) & 2) != 0)
  {
    cmark_utf8proc_check((a1 + 64), a2, a3);
  }

  else
  {
    cmark_strbuf_put((a1 + 64), a2, a3);
  }

  v145 = 0;
  v146 = 0;
  v6 = *(a1 + 84);
  if (!v6 || ((v7 = *(a1 + 72), v8 = v7[v6 - 1], v8 != 10) ? (v9 = v8 == 13) : (v9 = 1), !v9))
  {
    cmark_strbuf_putc(a1 + 64, 10);
    v7 = *(a1 + 72);
    v6 = *(a1 + 84);
  }

  *(a1 + 36) = 0;
  v10 = (a1 + 36);
  *(a1 + 60) = 0;
  *(a1 + 44) = 0;
  *(a1 + 52) = 0;
  v145 = v7;
  v146 = v6;
  v11 = *(a1 + 32);
  if (!v11 && v6 >= 3)
  {
    v12 = *v7;
    v13 = v7[2];
    if (v12 == 48111 && v13 == 191)
    {
      *v10 = 3;
    }
  }

  *(a1 + 32) = v11 + 1;
  v15 = *(a1 + 16);
  v16 = *(v15 + 56);
  if (!v16 || (*(v16 + 102) & 1) == 0)
  {
    v143 = 1;
    goto LABEL_85;
  }

  while (1)
  {
    v15 = v16;
    v17 = *(v16 + 100);
    S_find_first_nonspace(a1, &v145);
    v18 = *(v15 + 104);
    if (v18)
    {
      if (!*v18 || !(*v18)())
      {
        goto LABEL_83;
      }

      goto LABEL_24;
    }

    if (v17 <= 32773)
    {
      break;
    }

    if (v17 > 32776)
    {
      if (v17 == 32779)
      {
        if (*(a1 + 56) >= 4)
        {
          goto LABEL_75;
        }

        if (v146 < 1)
        {
          goto LABEL_83;
        }

        v22 = *v145;
        if (v22 != 10 && (v22 != 13 || v145[1] != 10))
        {
          goto LABEL_83;
        }
      }

      else if (v17 == 32777)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v17 == 32774)
      {
        v23 = *(v15 + 128);
        if ((v23 - 8) <= 0xFFFFFFF8)
        {
          S_process_line_cold_1();
        }

        if ((v23 - 1) < 5)
        {
          goto LABEL_24;
        }
      }

      else if (v17 != 32776)
      {
        goto LABEL_24;
      }

      if (*(a1 + 60))
      {
        goto LABEL_83;
      }
    }

LABEL_24:
    v16 = *(v15 + 56);
    if (!v16 || (*(v16 + 102) & 1) == 0)
    {
      v143 = 1;
      goto LABEL_85;
    }
  }

  if (v17 != 32770)
  {
    if (v17 == 32772)
    {
      v29 = *(v15 + 136) + *(v15 + 132);
      if (*(a1 + 56) >= v29)
      {
        v28 = a1;
        goto LABEL_76;
      }

      if (*(a1 + 60) != 1 || !*(v15 + 48))
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v17 != 32773)
      {
        goto LABEL_24;
      }

      v19 = *(a1 + 56);
      if (*(v15 + 163))
      {
        if (v19 <= 3 && (v20 = *(a1 + 44), v145[v20] == *(v15 + 162)))
        {
          v21 = _scan_at(_scan_close_code_fence, &v145, v20);
        }

        else
        {
          v21 = 0;
        }

        if (v21 >= *(v15 + 160))
        {
          S_advance_offset(a1, &v145, v21, 0);
          *(a1 + 24) = finalize(a1, v15);
          goto LABEL_265;
        }

        if (*(v15 + 161))
        {
          v30 = v145;
          v31 = *(v15 + 161) + 1;
          do
          {
            v32 = v30[*v10];
            if (v32 != 32 && v32 != 9)
            {
              break;
            }

            S_advance_offset(a1, &v145, 1, 1);
            --v31;
          }

          while (v31 > 1);
        }

        goto LABEL_24;
      }

      if (v19 >= 4)
      {
LABEL_75:
        v28 = a1;
        v29 = 4;
        goto LABEL_76;
      }

      if (*(a1 + 60) != 1)
      {
        goto LABEL_83;
      }
    }

    v29 = *(a1 + 44) - *(a1 + 36);
    v28 = a1;
    v34 = 0;
LABEL_81:
    S_advance_offset(v28, &v145, v29, v34);
    goto LABEL_24;
  }

  v24 = *(a1 + 56);
  if (v24 <= 3)
  {
    v25 = v145;
    if (v145[*(a1 + 44)] == 62)
    {
      S_advance_offset(a1, &v145, v24 + 1, 1);
      v26 = v25[*(a1 + 36)];
      if (v26 != 32 && v26 != 9)
      {
        goto LABEL_24;
      }

      v28 = a1;
      v29 = 1;
LABEL_76:
      v34 = 1;
      goto LABEL_81;
    }
  }

LABEL_83:
  v15 = *(v15 + 40);
  if (!v15)
  {
    goto LABEL_265;
  }

  v143 = 0;
LABEL_85:
  v144 = *(a1 + 24);
  v35 = *(v144 + 100) == 32776;
  v36 = *(v15 + 100);
  v37 = v15;
  while ((v36 - 32775) <= 0xFFFFFFFD)
  {
    S_find_first_nonspace(a1, &v145);
    v38 = *(a1 + 56);
    if (v38 > 3)
    {
      goto LABEL_88;
    }

    v59 = v145;
    v60 = *(a1 + 44);
    if (v145[v60] == 62)
    {
      v61 = v60 + 1;
      S_advance_offset(a1, &v145, v60 + 1 - *(a1 + 36), 0);
      v62 = v59[*(a1 + 36)];
      if (v62 == 32 || v62 == 9)
      {
        S_advance_offset(a1, &v145, 1, 1);
      }

      v64 = add_child(a1, v37, 32770, v61);
      goto LABEL_125;
    }

    v65 = _scan_at(_scan_atx_heading_start, &v145, v60);
    v66 = *(a1 + 44);
    if (v65)
    {
      v67 = v65;
      S_advance_offset(a1, &v145, v66 + v65 - *(a1 + 36), 0);
      v37 = add_child(a1, v37, 32777, v66 + 1);
      v68 = v145;
      v69 = v146;
      v70 = memchr(&v145[*(a1 + 44)], 35, v146 - *(a1 + 44));
      LODWORD(v71) = 0;
      v72 = v70 - v68;
      if (!v70)
      {
        v72 = v69;
      }

      if (v68[v72] == 35)
      {
        v71 = 0;
        v73 = &v68[v72 + 1];
        do
        {
          v74 = *(v73 + v71++);
        }

        while (v74 == 35);
      }

      *(v37 + 128) = v71;
      *(v37 + 132) = 0;
      *(v37 + 96) = v67;
      goto LABEL_204;
    }

    v75 = _scan_at(_scan_open_code_fence, &v145, *(a1 + 44));
    v76 = *(a1 + 44);
    if (v75)
    {
      v77 = v75;
      v78 = add_child(a1, v37, 32773, v76 + 1);
      v37 = v78;
      *(v78 + 163) = 1;
      *(v78 + 162) = v145[*(a1 + 44)];
      if (v77 >= 255)
      {
        v79 = -1;
      }

      else
      {
        v79 = v77;
      }

      *(v78 + 160) = v79;
      *(v78 + 161) = *(a1 + 44) - *(a1 + 36);
      *(v78 + 128) = "";
      *(v78 + 136) = 0;
      v80 = *(a1 + 44) + v77 - *(a1 + 36);
      goto LABEL_138;
    }

    v81 = _scan_at(_scan_html_block_start, &v145, v76);
    if (v81)
    {
LABEL_140:
      v82 = v81;
      v37 = add_child(a1, v37, 32774, *(a1 + 44) + 1);
      *(v37 + 128) = v82;
      goto LABEL_204;
    }

    v90 = *(a1 + 44);
    if (v36 == 32776)
    {
      v91 = _scan_at(_scan_setext_heading_line, &v145, v90);
      if (v91)
      {
        v92 = v91;
        if (resolve_reference_link_definitions(a1, v37))
        {
          *(v37 + 100) = -32759;
          *(v37 + 128) = v92;
          *(v37 + 132) = 1;
          goto LABEL_153;
        }

        goto LABEL_204;
      }

      if (!v143)
      {
        goto LABEL_213;
      }
    }

    else
    {
      v81 = _scan_at(_scan_html_block_start_7, &v145, v90);
      if (v81)
      {
        goto LABEL_140;
      }
    }

    v98 = *(a1 + 44);
    if (*(a1 + 52) > v98)
    {
      goto LABEL_213;
    }

    v99 = v145[v98];
    if ((v99 - 42) > 0x35 || ((1 << (v99 - 42)) & 0x20000000000009) == 0)
    {
      goto LABEL_212;
    }

    v100 = v98 + 1;
    v101 = v145[v100];
    if (!v145[v100])
    {
      ++v98;
LABEL_212:
      *(a1 + 52) = v98;
LABEL_213:
      if ((*(a1 + 121) & 0x20) != 0)
      {
        v111 = _scan_at(_scan_footnote_definition, &v145, *(a1 + 44));
        if (v111)
        {
          v112 = v111;
          v113 = *(a1 + 44);
          v114 = (v111 - 2);
          v115 = v145;
          v116 = (**a1)(v111 - 1, 1);
          v117 = v116;
          if (v112 >= 3)
          {
            memcpy(v116, &v115[v113 + 2], v114);
          }

          v117[v114] = 0;
          if (v117[v114 - 1] != 93)
          {
            v118 = (v114 << 32) - 0x100000000;
            do
            {
              LODWORD(v114) = v114 - 1;
              v119 = v117[(v118 >> 32) - 1];
              v118 -= 0x100000000;
            }

            while (v119 != 93);
          }

          S_advance_offset(a1, &v145, *(a1 + 44) + v112 - *(a1 + 36), 0);
          v37 = add_child(a1, v37, 32779, v112 + *(a1 + 44) + 1);
          *(v37 + 128) = v117;
          *(v37 + 136) = (v114 - 1) | 0x100000000;
          *(v37 + 96) = v112;
          goto LABEL_204;
        }
      }

LABEL_88:
      if (v36 != 32771 && v38 > 3 || *(a1 + 56) > 3)
      {
        goto LABEL_196;
      }

      v139 = *a1;
      v39 = *(a1 + 44);
      v40 = v145[v39];
      v141 = *(v37 + 100);
      v41 = v145[v39];
      v42 = v40 > 0x2D;
      v43 = (1 << v40) & 0x2C0000000000;
      if (v42 || v43 == 0)
      {
        v138 = *(a1 + 44);
        if (!cmark_isdigit(v41))
        {
          goto LABEL_196;
        }

        v83 = 0;
        v84 = v138;
        v85 = -8;
        while (1)
        {
          v83 = v145[v84] + 10 * v83 - 48;
          if (!v85)
          {
            break;
          }

          v86 = v84 + 1;
          v87 = cmark_isdigit(v145[v84 + 1]);
          ++v85;
          v84 = v86;
          if (!v87)
          {
            v88 = v138 + v85 + 7;
            v89 = v138 + v85 + 8;
            goto LABEL_155;
          }
        }

        v88 = v138 + 8;
        v89 = v138 + 9;
LABEL_155:
        if (v141 == 32776 && v83 != 1)
        {
          goto LABEL_196;
        }

        v93 = v145[v89];
        if (v93 != 46 && v93 != 41)
        {
          goto LABEL_196;
        }

        v137 = v88 + 2;
        if (!cmark_isspace(v145[v137]))
        {
          goto LABEL_196;
        }

        if (v141 != 32776)
        {
          goto LABEL_192;
        }

        v94 = &v145[v137];
        do
        {
          while (1)
          {
            v96 = *v94++;
            v95 = v96;
            if (v96 > 12)
            {
              break;
            }

            if (v95 != 9)
            {
              if (v95 != 10)
              {
                goto LABEL_192;
              }

              goto LABEL_196;
            }
          }
        }

        while (v95 == 32);
        if (v95 == 13)
        {
          goto LABEL_196;
        }

LABEL_192:
        v106 = (*v139)(1, 24);
        *v106 = 2;
        *(v106 + 20) = 0;
        *(v106 + 12) = v83;
        if (v93 == 46)
        {
          v107 = 1;
        }

        else
        {
          v107 = 2;
        }

        *(v106 + 16) = v107;
        if (v137 == v138)
        {
LABEL_196:
          if (v38 >= 4 && !v35 && (*(a1 + 60) & 1) == 0)
          {
            S_advance_offset(a1, &v145, 4, 1);
            v37 = add_child(a1, v37, 32773, *(a1 + 36) + 1);
            *(v37 + 160) = 0;
            *(v37 + 128) = "";
            *(v37 + 136) = 0;
            goto LABEL_204;
          }

          v108 = *(a1 + 128);
          if (!v108)
          {
            break;
          }

          while (1)
          {
            v109 = *(v108[1] + 8);
            if (v109)
            {
              v64 = v109();
              if (v64)
              {
                break;
              }
            }

            v108 = *v108;
            if (!v108)
            {
              goto LABEL_221;
            }
          }

LABEL_125:
          v37 = v64;
          goto LABEL_204;
        }

        v50 = v106;
        v140 = (v106 + 16);
        v49 = v137 - v138;
      }

      else
      {
        v45 = v39 + 1;
        if (!cmark_isspace(v145[v39 + 1]))
        {
          goto LABEL_196;
        }

        if (v141 == 32776)
        {
          v46 = &v145[v45];
          do
          {
            do
            {
              v48 = *v46++;
              v47 = v48;
            }

            while (v48 == 9);
          }

          while (v47 == 32);
          if (v47 == 10)
          {
            goto LABEL_196;
          }
        }

        v49 = 1;
        v50 = (*v139)(1, 24);
        *v50 = 1;
        *(v50 + 20) = v41;
        *(v50 + 16) = 0;
        v140 = (v50 + 16);
        *(v50 + 12) = 0;
        *(v50 + 21) = 0;
      }

      S_advance_offset(a1, &v145, *(a1 + 44) + v49 - *(a1 + 36), 0);
      v51 = 0;
      v142 = *(a1 + 61);
      v53 = *(a1 + 36);
      v52 = *(a1 + 40);
      v54 = v145;
      while (1)
      {
        v55 = v54[*v10];
        if (v55 != 32 && v55 != 9)
        {
          break;
        }

        S_advance_offset(a1, &v145, 1, 1);
        v51 = *(a1 + 40) - v52;
        if (v51 >= 6)
        {
          goto LABEL_109;
        }
      }

      if ((v51 - 5) >= 0xFFFFFFFC)
      {
        if (v55 != 13 && v55 != 10)
        {
          *(v50 + 8) = v51 + v49;
          goto LABEL_111;
        }

LABEL_109:
        *(v50 + 8) = v49 + 1;
        *(a1 + 36) = v53;
        *(a1 + 40) = v52;
        *(a1 + 61) = v142;
      }

      else
      {
        *(v50 + 8) = v49 + 1;
        *(a1 + 36) = v53;
        *(a1 + 40) = v52;
        *(a1 + 61) = v142;
        if (v51 < 1)
        {
LABEL_111:
          *(v50 + 4) = *(a1 + 56);
          if (v36 != 32771 || *(v37 + 128) != *v50 || *(v37 + 144) != *v140 || *(v37 + 148) != *(v50 + 20))
          {
            v37 = add_child(a1, v37, 32771, *(a1 + 44) + 1);
            v57 = *(v50 + 16);
            *(v37 + 128) = *v50;
            *(v37 + 144) = v57;
          }

          v37 = add_child(a1, v37, 32772, *(a1 + 44) + 1);
          v58 = *v50;
          *(v37 + 144) = *(v50 + 16);
          *(v37 + 128) = v58;
          (*(*a1 + 16))(v50);
          goto LABEL_204;
        }
      }

      S_advance_offset(a1, &v145, 1, 1);
      goto LABEL_111;
    }

    v102 = &v145[v100 + 1];
    v103 = 1;
    v104 = v98 + 1;
    while (v101 == v99)
    {
      ++v103;
LABEL_185:
      ++v104;
      v105 = *v102++;
      v101 = v105;
      if (!v105)
      {
        goto LABEL_186;
      }
    }

    if (v101 == 32 || v101 == 9)
    {
      goto LABEL_185;
    }

LABEL_186:
    if (v103 < 3 || v101 != 13 && v101 != 10)
    {
      v98 = v104;
      goto LABEL_212;
    }

    if (v104 - v98 == -1)
    {
      goto LABEL_213;
    }

    v37 = add_child(a1, v37, 32778, v100);
LABEL_153:
    v80 = v146 + ~*(a1 + 36);
LABEL_138:
    S_advance_offset(a1, &v145, v80, 0);
LABEL_204:
    v35 = 0;
    v36 = *(v37 + 100);
    if ((v36 - 32773) > 4 || ((1 << (v36 - 5)) & 0x19) == 0)
    {
      continue;
    }

    break;
  }

LABEL_221:
  if (v144 == *(a1 + 24))
  {
    S_find_first_nonspace(a1, &v145);
    v120 = *(a1 + 60);
    if ((v120 & 1) == 0)
    {
      v123 = (v37 + 100);
      goto LABEL_233;
    }

    v121 = *(v37 + 56);
    if (v121)
    {
      *(v121 + 102) |= 2u;
    }

    v123 = (v37 + 100);
    v122 = *(v37 + 100);
    if (v122 > 0x8008)
    {
      if (v122 - 32777 >= 2)
      {
        goto LABEL_259;
      }

      goto LABEL_233;
    }

    if (v122 == 32770)
    {
      goto LABEL_233;
    }

    if (v122 == 32772)
    {
      if (*(v37 + 48))
      {
        goto LABEL_259;
      }

      v125 = *(v37 + 102) & 0xFFFD;
      if (*(v37 + 80) == *(a1 + 32))
      {
        v124 = 0;
      }

      else
      {
LABEL_260:
        v124 = 2;
      }
    }

    else
    {
      if (v122 != 32773 || !*(v37 + 163))
      {
LABEL_259:
        v125 = *(v37 + 102) & 0xFFFD;
        goto LABEL_260;
      }

LABEL_233:
      v124 = 0;
      v125 = *(v37 + 102) & 0xFFFD;
    }

    *(v37 + 102) = v124 | v125;
    for (i = *(v37 + 40); i; i = *(i + 40))
    {
      *(i + 102) &= ~2u;
    }

    v127 = *(a1 + 24);
    if (v37 == v15)
    {
      v128 = v127 != v15 && v120 == 0;
      if (v128 && *(v127 + 100) == 32776)
      {
        add_line(*(a1 + 24), &v145, a1);
        goto LABEL_265;
      }
    }

    while (v127 != v15)
    {
      v127 = finalize(a1, v127);
      *(a1 + 24) = v127;
      if (!v127)
      {
        S_process_line_cold_2();
      }
    }

    v129 = *v123;
    if (v129 == 32773)
    {
LABEL_263:
      add_line(v37, &v145, a1);
    }

    else
    {
      if (v129 == 32774)
      {
        add_line(v37, &v145, a1);
        v130 = *(v37 + 128) - 1;
        if (v130 <= 4 && _scan_at(off_2867D4390[v130], &v145, *(a1 + 44)))
        {
          v131 = finalize(a1, v37);
          if (!*(a1 + 24))
          {
            S_process_line_cold_3();
          }

          v37 = v131;
        }

        goto LABEL_264;
      }

      if ((*(a1 + 60) & 1) == 0)
      {
        if ((v129 & 0xFFFE) == 0x8008)
        {
          if (v129 == 32777 && (*(v37 + 132) & 1) == 0)
          {
            chop_trailing_hashtags(&v145);
          }
        }

        else
        {
          v37 = add_child(a1, v37, 32776, *(a1 + 44) + 1);
        }

        S_advance_offset(a1, &v145, *(a1 + 44) - *(a1 + 36), 0);
        goto LABEL_263;
      }
    }

LABEL_264:
    *(a1 + 24) = v37;
  }

LABEL_265:
  v132 = v146;
  *(a1 + 88) = v146;
  if (v132)
  {
    v133 = v145;
    v134 = v132 - 1;
    if (v145[v134] != 10 || (*(a1 + 88) = v134, --v132, v134))
    {
      v135 = v132 - 1;
      if (v133[v135] == 13)
      {
        *(a1 + 88) = v135;
      }
    }
  }

  return cmark_strbuf_clear(a1 + 64);
}

uint64_t add_child(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    add_child_cold_1();
  }

    ;
  }

  v8 = *a1;
  v9 = *(a1 + 32);
  v10 = (**a1)(1, 168);
  cmark_strbuf_init(v8, v10, 32);
  *(v10 + 100) = a3;
  *(v10 + 102) = 1;
  *(v10 + 80) = v9;
  *(v10 + 84) = a4;
  *(v10 + 88) = v9;
  *(v10 + 40) = i;
  v11 = *(i + 56);
  v12 = (i + 48);
  if (v11)
  {
    v12 = (v11 + 24);
  }

  *v12 = v10;
  *(v10 + 32) = v11;
  *(i + 56) = v10;
  return v10;
}

uint64_t cmark_parser_advance_offset(uint64_t a1, char *__s, int a3, int a4)
{
  if (__s)
  {
    v8 = strlen(__s);
  }

  else
  {
    v8 = 0;
  }

  v10[0] = __s;
  v10[1] = v8;
  return S_advance_offset(a1, v10, a3, a4 != 0);
}

uint64_t S_advance_offset(uint64_t result, uint64_t *a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v4 = *a2;
    v5 = *(result + 36);
    do
    {
      if (*(v4 + v5) == 9)
      {
        v7 = *(result + 40);
        if (v7 <= 0)
        {
          v8 = -(-v7 & 3);
        }

        else
        {
          v8 = *(result + 40) & 3;
        }

        v9 = 4 - v8;
        if (a4)
        {
          v10 = v9 > a3;
          *(result + 61) = v9 > a3;
          if (v9 >= a3)
          {
            v9 = a3;
          }

          v11 = v9 + v7;
          if (!v10)
          {
            ++v5;
          }

          *(result + 36) = v5;
          *(result + 40) = v11;
          a3 -= v9;
          continue;
        }

        *(result + 61) = 0;
        v6 = v9 + v7;
        ++v5;
      }

      else
      {
        if (!*(v4 + v5))
        {
          return result;
        }

        *(result + 61) = 0;
        ++v5;
        v6 = *(result + 40) + 1;
      }

      *(result + 36) = v5;
      *(result + 40) = v6;
      --a3;
    }

    while (a3 > 0);
  }

  return result;
}

uint64_t S_find_first_nonspace(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 44);
  v3 = *(result + 36);
  if (v2 <= v3)
  {
    v5 = *(result + 40);
    if (v5 <= 0)
    {
      v10 = -(-v5 & 3);
    }

    else
    {
      v10 = *(result + 40) & 3;
    }

    v11 = 4 - v10;
    *(result + 44) = v3;
    *(result + 48) = v5;
    v6 = *a2;
    v4 = v5;
    while (1)
    {
      while (1)
      {
        v2 = v3;
        v12 = *(v6 + v3);
        if (v12 != 9)
        {
          break;
        }

        v3 = v2 + 1;
        v4 += v11;
        *(result + 44) = v2 + 1;
        *(result + 48) = v4;
        v11 = 4;
      }

      if (v12 != 32)
      {
        break;
      }

      v3 = v2 + 1;
      ++v4;
      *(result + 44) = v2 + 1;
      *(result + 48) = v4;
      if (!--v11)
      {
        v11 = 4;
      }
    }
  }

  else
  {
    v4 = *(result + 48);
    v5 = *(result + 40);
    v6 = *a2;
  }

  *(result + 56) = v4 - v5;
  v7 = *(v6 + v2);
  v9 = v7 == 10 || v7 == 13;
  *(result + 60) = v9;
  return result;
}

uint64_t finalize(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 102);
  if ((v2 & 1) == 0)
  {
    finalize_cold_2();
  }

  v4 = *(a2 + 40);
  *(a2 + 102) = v2 & 0xFFFE;
  v5 = *(a1 + 84);
  if (!v5)
  {
    v10 = *(a1 + 88);
    *(a2 + 88) = *(a1 + 32);
    *(a2 + 92) = v10;
    v6 = *(a2 + 100);
    goto LABEL_14;
  }

  v6 = *(a2 + 100);
  if (v6 == 32769)
  {
    goto LABEL_7;
  }

  if (v6 != 32777)
  {
    if (v6 == 32773 && *(a2 + 163))
    {
      goto LABEL_7;
    }

LABEL_13:
    v11 = *(a1 + 88);
    *(a2 + 88) = *(a1 + 32) - 1;
    *(a2 + 92) = v11;
    goto LABEL_14;
  }

  if (*(a2 + 132) != 1)
  {
    goto LABEL_13;
  }

LABEL_7:
  *(a2 + 88) = *(a1 + 32);
  *(a2 + 92) = v5;
  v7 = *(a1 + 72);
  v8 = v5 - 1;
  if (*(v7 + v8) != 10 || (*(a2 + 92) = v8, --v5, v8))
  {
    v9 = v5 - 1;
    if (*(v7 + v9) == 13)
    {
      *(a2 + 92) = v9;
    }
  }

LABEL_14:
  if (v6 > 32773)
  {
    if (v6 == 32774)
    {
      v23 = *(a2 + 20);
      *(a2 + 128) = cmark_strbuf_detach(a2);
      *(a2 + 136) = v23 | 0x100000000;
    }

    else if (v6 == 32776 && (resolve_reference_link_definitions(a1, a2) & 1) == 0)
    {
      cmark_node_free(a2);
    }
  }

  else if (v6 == 32771)
  {
    *(a2 + 149) = 1;
    v17 = *(a2 + 48);
    if (v17)
    {
      while ((*(v17 + 102) & 2) == 0 || !*(v17 + 24))
      {
        v18 = *(v17 + 48);
        if (!v18)
        {
          goto LABEL_80;
        }

        v19 = *(v17 + 24);
        do
        {
          if (!v19 && !*(v18 + 24))
          {
            break;
          }

          v21 = (v18 + 102);
          v20 = *(v18 + 102);
          if ((v20 & 4) == 0)
          {
            v22 = v18;
            while (*(v22 + 100) - 32771 <= 1)
            {
              v22 = *(v22 + 56);
              if (!v22)
              {
                break;
              }

              *v21 = v20 | 4;
              v21 = (v22 + 102);
              v20 = *(v22 + 102);
              if ((v20 & 4) != 0)
              {
                goto LABEL_44;
              }
            }

            *v21 = v20 | 4;
          }

LABEL_44:
          if ((v20 & 2) != 0)
          {
            goto LABEL_56;
          }

          v18 = *(v18 + 24);
        }

        while (v18);
        if (*(a2 + 149))
        {
LABEL_80:
          v17 = *(v17 + 24);
          if (v17)
          {
            continue;
          }
        }

        return v4;
      }

LABEL_56:
      *(a2 + 149) = 0;
    }
  }

  else if (v6 == 32773)
  {
    v12 = *(a2 + 20);
    if (*(a2 + 163))
    {
      if (v12 < 1)
      {
LABEL_25:
        finalize_cold_1();
      }

      v13 = 0;
      v14 = *(a2 + 8);
      while (1)
      {
        v15 = v14[v13];
        if (v15 == 10 || v15 == 13)
        {
          break;
        }

        if (v12 == ++v13)
        {
          goto LABEL_25;
        }
      }

      v42[0] = *a1;
      v42[1] = &cmark_strbuf__initbuf;
      v43 = 0;
      houdini_unescape_html_f(v42, v14, v13);
      cmark_strbuf_trim(v42);
      cmark_strbuf_unescape(v42);
      v24 = HIDWORD(v43);
      *(a2 + 128) = cmark_strbuf_detach(v42);
      *(a2 + 136) = v24 | 0x100000000;
      v25 = (*(a2 + 8) + v13);
      v26 = *v25;
      v27 = v26 == 13;
      if (v26 == 13)
      {
        ++v25;
      }

      if (*v25 == 10)
      {
        v28 = v27 + 1;
      }

      else
      {
        v28 = v27;
      }

      cmark_strbuf_drop(a2, v28 + v13);
    }

    else
    {
      if (v12 < 1)
      {
LABEL_64:
        cmark_strbuf_clear(a2);
      }

      else
      {
        v29 = *(a2 + 8);
        v30 = *(a2 + 20);
        while (1)
        {
          v31 = v30 - 1;
          v32 = *(v29 - 1 + v30);
          v33 = v32 > 0x20;
          v34 = (1 << v32) & 0x100002600;
          if (v33 || v34 == 0)
          {
            break;
          }

          --v30;
          if ((v31 + 1) <= 1)
          {
            goto LABEL_64;
          }
        }

        if (v12 >= v30)
        {
          v38 = (v29 + v31);
          while (1)
          {
            v40 = *v38++;
            v39 = v40;
            if (v40 == 13 || v39 == 10)
            {
              break;
            }

            LODWORD(v31) = v31 + 1;
            if (v12 <= v31)
            {
              goto LABEL_65;
            }
          }

          cmark_strbuf_truncate(a2, v31);
        }
      }

LABEL_65:
      cmark_strbuf_putc(a2, 10);
    }

    v36 = *(a2 + 20);
    *(a2 + 144) = cmark_strbuf_detach(a2);
    *(a2 + 152) = v36 | 0x100000000;
  }

  return v4;
}

uint64_t resolve_reference_link_definitions(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *&v14 = v3;
  v4 = *(a2 + 20);
  *(&v14 + 1) = v4;
  if (v4)
  {
    if (*v3 == 91)
    {
      do
      {
        v6 = cmark_parse_reference_inline(*a1, &v14, a1[1]);
        v4 = DWORD2(v14);
        if (!v6)
        {
          break;
        }

        v7 = (v14 + v6);
        *&v14 = v7;
        v4 = DWORD2(v14) - v6;
        DWORD2(v14) = v4;
        if (!v4)
        {
          break;
        }
      }

      while (*v7 == 91);
    }

    v8 = *(a2 + 20) - v4;
  }

  else
  {
    v8 = 0;
  }

  cmark_strbuf_drop(a2, v8);
  v9 = *(a2 + 20);
  if (v9 < 1)
  {
    return 0;
  }

  v10 = *(a2 + 8);
  while (1)
  {
    v12 = *v10++;
    v11 = v12;
    if (v12 <= 12)
    {
      break;
    }

    if (v11 != 32)
    {
      result = 0;
      if (v11 == 13)
      {
        return result;
      }

      return 1;
    }

LABEL_14:
    if (!--v9)
    {
      return 0;
    }
  }

  if (v11 == 9)
  {
    goto LABEL_14;
  }

  result = 0;
  if (v11 == 10)
  {
    return result;
  }

  return 1;
}

_DWORD *add_line(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 102) & 1) == 0)
  {
    add_line_cold_1();
  }

  if (*(a3 + 61) == 1)
  {
    v6 = *(a3 + 40);
    ++*(a3 + 36);
    v7 = -v6 < 0;
    v8 = -v6 & 3;
    v9 = v6 & 3;
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = -v8;
    }

    v11 = v10 - 4;
    do
    {
      cmark_strbuf_putc(a1, 32);
    }

    while (!__CFADD__(v11++, 1));
  }

  v13 = *(a3 + 36);
  v14 = *(a2 + 8) - v13;
  v15 = (*a2 + v13);

  return cmark_strbuf_put(a1, v15, v14);
}

uint64_t chop_trailing_hashtags(uint64_t result)
{
  if (*(result + 12))
  {
    chop_trailing_hashtags_cold_1();
  }

  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    while (1)
    {
      result = cmark_isspace(*(*v1 + v2 - 1));
      v3 = *(v1 + 8);
      v4 = __OFSUB__(v3, 1);
      v2 = v3 - 1;
      if (!result)
      {
        break;
      }

      *(v1 + 8) = v2;
      if ((v2 < 0) ^ v4 | (v2 == 0))
      {
        return result;
      }
    }

    if (v2 < 0 == v4)
    {
      for (i = 0; ; ++i)
      {
        v6 = *(*v1 + v2);
        if (v6 != 35)
        {
          break;
        }

        if (v2-- <= 0)
        {
          return result;
        }
      }

      if (i)
      {
        if (v6 == 32 || v6 == 9)
        {
          *(v1 + 8) = v2;
          if (*(v1 + 12))
          {
            chop_trailing_hashtags_cold_1();
          }

          if (v2)
          {
            do
            {
              result = cmark_isspace(*(*v1 + v2 - 1));
              if (!result)
              {
                break;
              }

              v9 = *(v1 + 8);
              v4 = __OFSUB__(v9, 1);
              v2 = v9 - 1;
              *(v1 + 8) = v2;
            }

            while (!((v2 < 0) ^ v4 | (v2 == 0)));
          }
        }
      }
    }
  }

  return result;
}

_BYTE *normalize_map_label(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = &cmark_strbuf__initbuf;
  v5[2] = 0;
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (!v2)
  {
    return 0;
  }

  cmark_utf8proc_case_fold(v5, *a2, v2);
  cmark_strbuf_trim(v5);
  cmark_strbuf_normalize_whitespace(v5);
  result = cmark_strbuf_detach(v5);
  if (!result)
  {
    normalize_map_label_cold_1();
  }

  if (!*result)
  {
    (*(a1 + 16))();
    return 0;
  }

  return result;
}

_BYTE *cmark_map_lookup(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && (*(a2 + 8) - 1001) >= 0xFFFFFC18)
  {
    if (!*(a1 + 24))
    {
      return 0;
    }

    result = normalize_map_label(*a1, a2);
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    if (!v5)
    {
      v7 = *(a1 + 8);
      v8 = (**a1)(*(a1 + 24), 8);
      v5 = v8;
      if (v7)
      {
        v9 = 0;
        do
        {
          *&v8[8 * v9++] = v7;
          v7 = *v7;
        }

        while (v7);
      }

      qsort(v8, v6, 8uLL, refcmp);
      if (v6 < 2)
      {
        LODWORD(v6) = 1;
      }

      else
      {
        v10 = 0;
        v11 = v6 - 1;
        v12 = v5 + 8;
        do
        {
          v13 = *v12;
          if (strcmp(*(*v12 + 8), *(*&v5[8 * v10] + 8)))
          {
            *&v5[8 * ++v10] = v13;
          }

          v12 += 8;
          --v11;
        }

        while (v11);
        LODWORD(v6) = v10 + 1;
      }

      *(a1 + 16) = v5;
      *(a1 + 24) = v6;
    }

    v14 = bsearch(v4, v5, v6, 8uLL, refsearch);
    (*(*a1 + 16))(v4);
    if (v14)
    {
      return *v14;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_map_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      do
      {
        v3 = *v2;
        (*(v1 + 32))(v1);
        v2 = v3;
      }

      while (v3);
    }

    (*(*v1 + 16))(*(v1 + 16), v2);
    v4 = *(*v1 + 16);

    return v4(v1);
  }

  return result;
}

uint64_t (***cmark_map_new(uint64_t (**a1)(uint64_t, uint64_t), uint64_t (**a2)(uint64_t, uint64_t)))(uint64_t, uint64_t)
{
  result = (*a1)(1, 40);
  *result = a1;
  result[4] = a2;
  return result;
}

uint64_t refcmp(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = strcmp(*(*a1 + 8), *(*a2 + 8));
  if (!result)
  {
    return (*(v2 + 16) - *(v3 + 16));
  }

  return result;
}

uint64_t cmark_reference_create(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 **a4)
{
  result = normalize_map_label(*a1, a2);
  if (result)
  {
    if (*(a1 + 16))
    {
      cmark_reference_create_cold_1();
    }

    v8 = result;
    v9 = (**a1)(1, 56);
    *(v9 + 8) = v8;
    *(v9 + 24) = cmark_clean_url(*a1, a3);
    *(v9 + 32) = v10;
    result = cmark_clean_title(*a1, a4);
    *(v9 + 40) = result;
    *(v9 + 48) = v11;
    v12 = *(a1 + 24);
    *(v9 + 16) = v12;
    *v9 = *(a1 + 8);
    *(a1 + 8) = v9;
    *(a1 + 24) = v12 + 1;
  }

  return result;
}

uint64_t reference_free(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *result;
    (*(*result + 16))(*(a2 + 8));
    if (*(a2 + 36))
    {
      (*(v3 + 16))(*(a2 + 24));
    }

    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    if (*(a2 + 52))
    {
      (*(v3 + 16))(*(a2 + 40));
    }

    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    v4 = *(v3 + 16);

    return v4(a2);
  }

  return result;
}

uint64_t cmark_render_xml_with_mem(uint64_t a1, char a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v33[0] = a3;
  v33[1] = &cmark_strbuf__initbuf;
  v33[2] = 0;
  v4 = cmark_iter_new(a1);
  cmark_strbuf_puts(v33, "<?xml version=1.0 encoding=UTF-8?>\n");
  cmark_strbuf_puts(v33, "<!DOCTYPE document SYSTEM CommonMark.dtd>\n");
  v5 = cmark_iter_next(v4);
  if (v5 != 1)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      node = cmark_iter_get_node(v4);
      v9 = node;
      if (v6 == 2)
      {
        break;
      }

      if (*(node + 48))
      {
        v22 = (v7 - 2);
        if (v7 >= 3)
        {
          v23 = v7 - 2;
          do
          {
            cmark_strbuf_putc(v33, 32);
            --v23;
          }

          while (v23);
        }

        cmark_strbuf_puts(v33, "</");
        type_string = cmark_node_get_type_string(v9);
        cmark_strbuf_puts(v33, type_string);
        goto LABEL_58;
      }

LABEL_59:
      v6 = cmark_iter_next(v4);
      if (v6 == 1)
      {
        goto LABEL_60;
      }
    }

    if (v7 >= 1)
    {
      v10 = v7;
      do
      {
        cmark_strbuf_putc(v33, 32);
        --v10;
      }

      while (v10);
    }

    cmark_strbuf_putc(v33, 60);
    v11 = cmark_node_get_type_string(v9);
    cmark_strbuf_puts(v33, v11);
    if ((a2 & 2) != 0)
    {
      v12 = *(v9 + 80);
      if (v12)
      {
        snprintf(__str, 0x64uLL, " sourcepos=%d:%d-%d:%d", v12, *(v9 + 84), *(v9 + 88), *(v9 + 92));
        cmark_strbuf_puts(v33, __str);
      }
    }

    v13 = *(v9 + 104);
    if (v13)
    {
      v14 = *(v13 + 120);
      if (v14)
      {
        v15 = v14();
        if (v15)
        {
          cmark_strbuf_puts(v33, v15);
        }
      }
    }

    v16 = 0;
    v17 = *(v9 + 100);
    if (v17 <= 0x8006)
    {
      if (*(v9 + 100) <= 0x8004u)
      {
        if (v17 == 32769)
        {
          v29 = " xmlns=http://commonmark.org/xml/1.0";
LABEL_51:
          cmark_strbuf_puts(v33, v29);
          goto LABEL_52;
        }

        if (v17 != 32771)
        {
          goto LABEL_53;
        }

        list_type = cmark_node_get_list_type(v9);
        if (list_type == 1)
        {
          v21 = " type=bullet";
        }

        else
        {
          if (list_type != 2)
          {
            goto LABEL_49;
          }

          cmark_strbuf_puts(v33, " type=ordered");
          list_start = cmark_node_get_list_start(v9);
          snprintf(__str, 0x64uLL, " start=%d", list_start);
          cmark_strbuf_puts(v33, __str);
          list_delim = cmark_node_get_list_delim(v9);
          if (list_delim == 2)
          {
            v21 = " delim=paren";
            goto LABEL_48;
          }

          if (list_delim != 1)
          {
LABEL_49:
            cmark_node_get_list_tight(v9);
            snprintf(__str, 0x64uLL, " tight=%s");
LABEL_50:
            v29 = __str;
            goto LABEL_51;
          }

          v21 = " delim=period";
        }

LABEL_48:
        cmark_strbuf_puts(v33, v21);
        goto LABEL_49;
      }

      if (v17 == 32773)
      {
        if (*(v9 + 136) >= 1)
        {
          cmark_strbuf_puts(v33, " info=");
          houdini_escape_html0(v33, *(v9 + 128), *(v9 + 136), 0);
          cmark_strbuf_putc(v33, 34);
        }

        cmark_strbuf_puts(v33, " xml:space=preserve>");
        v27 = *(v9 + 144);
        v28 = *(v9 + 152);
        goto LABEL_39;
      }

      if (v17 != 32774)
      {
        goto LABEL_53;
      }

LABEL_34:
      cmark_strbuf_puts(v33, " xml:space=preserve>");
      v27 = *(v9 + 128);
      v28 = *(v9 + 136);
LABEL_39:
      houdini_escape_html0(v33, v27, v28, 0);
      cmark_strbuf_puts(v33, "</");
      v30 = cmark_node_get_type_string(v9);
      cmark_strbuf_puts(v33, v30);
      v16 = 1;
      goto LABEL_53;
    }

    v25 = v17 - 1;
    if (v17 - 49153 > 9)
    {
      goto LABEL_41;
    }

    if (((1 << v25) & 0x19) != 0)
    {
      goto LABEL_34;
    }

    if (((1 << v25) & 0x300) != 0)
    {
      cmark_strbuf_puts(v33, " destination=");
      houdini_escape_html0(v33, *(v9 + 128), *(v9 + 136), 0);
      cmark_strbuf_putc(v33, 34);
      v26 = " title=";
LABEL_45:
      cmark_strbuf_puts(v33, v26);
      houdini_escape_html0(v33, *(v9 + 144), *(v9 + 152), 0);
      cmark_strbuf_putc(v33, 34);
LABEL_52:
      v16 = 0;
LABEL_53:
      if (*(v9 + 48))
      {
        v22 = (v7 + 2);
      }

      else
      {
        if ((v16 & 1) == 0)
        {
          cmark_strbuf_puts(v33, " /");
        }

        v22 = v7;
      }

LABEL_58:
      cmark_strbuf_puts(v33, ">\n");
      v7 = v22;
      goto LABEL_59;
    }

    if (v17 != 49158)
    {
LABEL_41:
      if (v17 != 32775)
      {
        if (v17 != 32777)
        {
          goto LABEL_53;
        }

        snprintf(__str, 0x64uLL, " level=%d");
        goto LABEL_50;
      }
    }

    cmark_strbuf_puts(v33, " on_enter=");
    houdini_escape_html0(v33, *(v9 + 128), *(v9 + 136), 0);
    cmark_strbuf_putc(v33, 34);
    v26 = " on_exit=";
    goto LABEL_45;
  }

LABEL_60:
  v31 = cmark_strbuf_detach(v33);
  cmark_iter_free(v4);
  return v31;
}

uint64_t cmark_syntax_extension_free(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (v4 && *(a2 + 48))
  {
    v4(a1);
  }

  cmark_llist_free(a1, *(a2 + 32));
  (*(a1 + 16))(*(a2 + 40));
  v5 = *(a1 + 16);

  return v5(a2);
}

void *cmark_syntax_extension_new(const char *a1)
{
  v2 = (CMARK_DEFAULT_MEM_ALLOCATOR[0])(1uLL, 0xB8uLL);
  v3 = strlen(a1);
  v4 = (CMARK_DEFAULT_MEM_ALLOCATOR[0])(1uLL, v3 + 1);
  v2[5] = v4;
  strcpy(v4, a1);
  return v2;
}

uint64_t cmark_syntax_extension_add_node(int a1)
{
  v1 = &CMARK_NODE_LAST_INLINE;
  if (!a1)
  {
    v1 = &CMARK_NODE_LAST_BLOCK;
  }

  if ((~*v1 & 0x3FFF) == 0)
  {
    cmark_syntax_extension_add_node_cold_1();
  }

  result = (*v1 + 1);
  *v1 = result;
  return result;
}

uint64_t cmark_syntax_extension_set_private(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 48) = a2;
  *(result + 64) = a3;
  return result;
}

void *cmark_plugin_new()
{
  result = (CMARK_DEFAULT_MEM_ALLOCATOR[0])(1uLL, 8uLL);
  *result = 0;
  return result;
}

void cmark_plugin_free(void **a1)
{
  cmark_llist_free_full(CMARK_DEFAULT_MEM_ALLOCATOR, *a1, cmark_syntax_extension_free);
  v2 = off_281D60E88[0];

  v2(a1);
}

uint64_t cmark_plugin_steal_syntax_extensions(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  return v1;
}

void *xcalloc(size_t a1, size_t a2)
{
  result = malloc_type_calloc(a1, a2, 0xEC576D4AuLL);
  if (!result)
  {
    xcalloc_cold_1();
  }

  return result;
}

void *xrealloc(void *a1, size_t a2)
{
  result = malloc_type_realloc(a1, a2, 0x67836CBBuLL);
  if (!result)
  {
    xrealloc_cold_1();
  }

  return result;
}

uint64_t cmark_markdown_to_html(_BYTE *a1, uint64_t a2, int a3)
{
  v4 = cmark_parse_document(a1, a2, a3);
  v5 = cmark_render_html(v4, a3, 0);
  cmark_node_free(v4);
  return v5;
}

void cmark_register_plugin(unsigned int (*a1)(void))
{
  v2 = cmark_plugin_new();
  if (a1())
  {
    v3 = cmark_plugin_steal_syntax_extensions(v2);
    v4 = v3;
    if (v3)
    {
      v5 = syntax_extensions;
      v6 = v3;
      do
      {
        v5 = cmark_llist_append(CMARK_DEFAULT_MEM_ALLOCATOR, v5, v6[1]);
        syntax_extensions = v5;
        v6 = *v6;
      }

      while (v6);
    }

    cmark_llist_free(CMARK_DEFAULT_MEM_ALLOCATOR, v4);
  }

  cmark_plugin_free(v2);
}

uint64_t cmark_release_plugins()
{
  if (syntax_extensions)
  {
    result = cmark_llist_free_full(CMARK_DEFAULT_MEM_ALLOCATOR, syntax_extensions, cmark_syntax_extension_free);
    syntax_extensions = 0;
  }

  return result;
}

void *cmark_list_syntax_extensions(uint64_t (**a1)(uint64_t, uint64_t))
{
  v1 = syntax_extensions;
  if (!syntax_extensions)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 = cmark_llist_append(a1, v3, v1[1]);
    v1 = *v1;
  }

  while (v1);
  return v3;
}

uint64_t cmark_find_syntax_extension(char *__s2)
{
  v2 = &syntax_extensions;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    v3 = v2[1];
    if (!strcmp(*(v3 + 40), __s2))
    {
      return v3;
    }
  }

  return 0;
}

void *create_tagfilter_extension()
{
  v0 = cmark_syntax_extension_new("tagfilter");
  cmark_syntax_extension_set_html_filter_func(v0, filter);
  return v0;
}

void filter(void)
{
  v2 = v1;
  v3 = v0;
  v4 = blacklist;
  v5 = "title";
  do
  {
    if (v2 >= 3 && *v3 == 60)
    {
      v6 = 0;
      v7 = v3[1] == 47 ? 2 : 1;
      while (v5[v6])
      {
        v8 = v5[v6];
        v9 = __tolower(v3[v7 + v6]) != v8 || ~v7 + v2 == v6;
        ++v6;
        if (v9)
        {
          goto LABEL_20;
        }
      }

      if (v2 - v7 != v6)
      {
        if (cmark_isspace(v3[v7 + v6]))
        {
          return;
        }

        v10 = v3[v7 + v6];
        if (v10 == 47)
        {
          if (v7 + v6 + 2 > v2)
          {
            goto LABEL_20;
          }

          v10 = v3[v7 + 1 + v6];
        }

        if (v10 == 62)
        {
          return;
        }
      }
    }

LABEL_20:
    v11 = v4[1];
    ++v4;
    v5 = v11;
  }

  while (v11);
}

uint64_t houdini_escape_href(_DWORD *a1, uint64_t a2, int a3)
{
  LOBYTE(var3) = 37;
  if (a3 >= 1)
  {
    houdini_escape_href_cold_1(&var3, a3, a2, a1);
  }

  return 1;
}

uint64_t cmark_clean_url(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = &cmark_strbuf__initbuf;
  v9[2] = 0;
  if (*(a2 + 12))
  {
    cmark_clean_url_cold_1();
  }

  if (!*(a2 + 8))
  {
    return 0;
  }

  v3 = *a2;
  do
  {
    if (!cmark_isspace(*v3))
    {
      break;
    }

    v3 = (*a2 + 1);
    *a2 = v3;
    v4 = *(a2 + 8) - 1;
    *(a2 + 8) = v4;
  }

  while (v4);
  if (*(a2 + 12))
  {
    chop_trailing_hashtags_cold_1();
  }

  v5 = *(a2 + 8);
  if (v5 >= 1)
  {
    do
    {
      v6 = cmark_isspace(*(*a2 + v5 - 1));
      v5 = *(a2 + 8);
      if (!v6)
      {
        break;
      }

      v7 = __OFSUB__(v5--, 1);
      *(a2 + 8) = v5;
    }

    while (!((v5 < 0) ^ v7 | (v5 == 0)));
  }

  if (!v5)
  {
    return 0;
  }

  houdini_unescape_html_f(v9, *a2, v5);
  cmark_strbuf_unescape(v9);
  return cmark_strbuf_detach(v9);
}

uint64_t cmark_clean_title(uint64_t a1, unsigned __int8 **a2)
{
  v7[0] = a1;
  v7[1] = &cmark_strbuf__initbuf;
  v7[2] = 0;
  v2 = *(a2 + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *v3;
  v5 = v3[v2 - 1];
  if (v4 == 39 && v5 == 39 || v4 == 40 && v5 == 41 || v4 == 34 && v5 == 34)
  {
    LODWORD(v2) = v2 - 2;
    ++v3;
  }

  houdini_unescape_html_f(v7, v3, v2);
  cmark_strbuf_unescape(v7);
  return cmark_strbuf_detach(v7);
}

uint64_t cmark_inlines_add_special_character(uint64_t result, int a2)
{
  SPECIAL_CHARS[result] = 1;
  if (a2)
  {
    SKIP_CHARS[result] = 1;
  }

  return result;
}

uint64_t cmark_inlines_remove_special_character(uint64_t result, int a2)
{
  SPECIAL_CHARS[result] = 0;
  if (a2)
  {
    SKIP_CHARS[result] = 0;
  }

  return result;
}

uint64_t cmark_parse_inlines(uint64_t (***a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = a1;
  v5 = *(a2 + 8);
  v6 = *(a2 + 20);
  v7 = *(a2 + 80);
  v8 = *(a2 + 84) + *(a2 + 96) - 1;
  v238 = *a1;
  v239 = v5;
  v240 = v6;
  v241 = 0;
  v242 = v7;
  v243 = 0;
  v244 = v8;
  v245 = 0;
  v246 = a3;
  v247 = 0u;
  memset(v248, 0, sizeof(v248));
  if (v6 < 1)
  {
    goto LABEL_354;
  }

  v10 = (v6 + v5 - 1);
  while (1)
  {
    v11 = *v10--;
    if (!cmark_isspace(v11))
    {
      break;
    }

    v12 = __OFSUB__(v6, 1);
    LODWORD(v6) = v6 - 1;
    v240 = v6;
    if ((v6 < 0) ^ v12 | (v6 == 0))
    {
      goto LABEL_354;
    }
  }

  v13 = 0;
  v235 = v4;
  v236 = (v4 + 136);
  do
  {
    v14 = v239;
    v15 = v13;
    v16 = (v239 + v13);
    v17 = *v16;
    if (v17 > 0x2C)
    {
      if (*v16 <= 0x5Bu)
      {
        if (*v16 <= 0x3Bu)
        {
          if (v17 != 45)
          {
            v18 = v236;
            if (v17 != 46)
            {
              goto LABEL_88;
            }

            v19 = v13 + 1;
            v243 = v13 + 1;
            if ((a4 & 0x400) == 0 || v19 >= v6)
            {
              goto LABEL_17;
            }

            if (*(v239 + v19) != 46)
            {
              if (!*(v239 + v19))
              {
                cmark_parse_inlines_cold_1();
              }

LABEL_17:
              autolink = (*v238)(1, 168);
              cmark_strbuf_init(v238, autolink, 0);
              *(autolink + 100) = -16383;
              *(autolink + 128) = ".";
              *(autolink + 136) = 1;
              v21 = v242;
              v22 = v244;
              v23 = v245;
              *(autolink + 88) = v242;
              v24 = v23 + v19;
LABEL_176:
              v33 = v24 + v22;
              *(autolink + 80) = v21;
              *(autolink + 84) = v33;
              goto LABEL_207;
            }

            v135 = v13 + 2;
            v243 = v13 + 2;
            if (v13 + 2 < v6)
            {
              if (*(v239 + v135) == 46)
              {
                v243 = v13 + 3;
                autolink = (*v238)(1, 168);
                cmark_strbuf_init(v238, autolink, 0);
                *(autolink + 100) = -16383;
                *(autolink + 128) = "…";
                *(autolink + 136) = 3;
                v177 = v242;
                v178 = v245 + v244 + 1;
                *(autolink + 80) = v242;
                *(autolink + 84) = v178 + v13;
                *(autolink + 88) = v177;
                v33 = v178 + v135;
                goto LABEL_207;
              }

              if (!*(v239 + v135))
              {
                cmark_parse_inlines_cold_1();
              }
            }

            autolink = (*v238)(1, 168);
            cmark_strbuf_init(v238, autolink, 0);
            *(autolink + 100) = -16383;
            *(autolink + 128) = "..";
            *(autolink + 136) = 2;
            v136 = v242;
            v137 = v245 + v244 + 1;
            *(autolink + 80) = v242;
            *(autolink + 84) = v137 + v13;
            *(autolink + 88) = v136;
            v33 = v137 + v19;
LABEL_207:
            *(autolink + 92) = v33;
            goto LABEL_352;
          }

          LODWORD(v36) = v13 + 1;
          v243 = v13 + 1;
          if ((a4 & 0x400) == 0 || v36 >= v6)
          {
            goto LABEL_106;
          }

          if (*(v239 + v36) != 45)
          {
            if (!*(v239 + v36))
            {
              cmark_parse_inlines_cold_1();
            }

LABEL_106:
            autolink = (*v238)(1, 168);
            cmark_strbuf_init(v238, autolink, 0);
            *(autolink + 100) = -16383;
            v37 = "-";
            goto LABEL_107;
          }

          v138 = (v239 + v36);
          v139 = v13 + 1;
          while (1)
          {
            v141 = *v138++;
            v140 = v141;
            if (v141 != 45)
            {
              break;
            }

            v243 = ++v139;
            if (v6 == v139)
            {
              v139 = v6;
              goto LABEL_200;
            }
          }

          if (!v140)
          {
            cmark_parse_inlines_cold_1();
          }

LABEL_200:
          v142 = v139 - v13;
          v249 = v238;
          v250 = &cmark_strbuf__initbuf;
          v251 = 0;
          if (v142 % 3)
          {
            if ((v142 & 1) == 0)
            {
              v143 = v142 >> 1;
LABEL_289:
              if (v143 >= 1)
              {
                v184 = v143 + 1;
                do
                {
                  cmark_strbuf_puts(&v249, "–");
                  --v184;
                }

                while (v184 > 1);
              }

              v185 = v243;
              v186 = HIDWORD(v251);
              v187 = cmark_strbuf_detach(&v249);
              autolink = (*v238)(1, 168);
              cmark_strbuf_init(v238, autolink, 0);
              *(autolink + 100) = -16383;
              *(autolink + 128) = v187;
              *(autolink + 136) = v186 | 0x100000000;
              v188 = v242;
              v189 = v244 + v245;
              v190 = v244 + v245 + v36;
              *(autolink + 80) = v242;
              *(autolink + 84) = v190;
              *(autolink + 88) = v188;
              *(autolink + 92) = v189 + v185;
              goto LABEL_239;
            }

            if (v142 % 3 == 2)
            {
              v142 -= 2;
              v143 = 1;
            }

            else
            {
              v142 -= 4;
              v143 = 2;
            }
          }

          else
          {
            v143 = 0;
          }

          if (v142 >= 3)
          {
            v183 = v142 / 3u + 1;
            do
            {
              cmark_strbuf_puts(&v249, "—");
              --v183;
            }

            while (v183 > 1);
          }

          goto LABEL_289;
        }

        if (v17 != 60)
        {
          v18 = v236;
          if (v17 != 91)
          {
            goto LABEL_88;
          }

          v243 = v13 + 1;
          autolink = (*v238)(1, 168);
          cmark_strbuf_init(v238, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 128) = "[";
          *(autolink + 136) = 1;
          v38 = v242;
          v39 = v245 + v13 + 1 + v244;
          *(autolink + 80) = v242;
          *(autolink + 84) = v39;
          *(autolink + 88) = v38;
          *(autolink + 92) = v39;
          v40 = (*v238)(1, 32);
          v41 = *(&v247 + 1);
          if (*(&v247 + 1))
          {
            *(*(&v247 + 1) + 30) = 1;
          }

          *(v40 + 28) = 256;
          *(v40 + 16) = autolink;
          *v40 = v41;
          *(v40 + 8) = v247;
          *(v40 + 24) = v243;
          *(v40 + 30) = 0;
          *(&v247 + 1) = v40;
          goto LABEL_239;
        }

        v243 = v13 + 1;
        v75 = _scan_at(_scan_autolink_uri, &v239, v13 + 1);
        v76 = v243;
        v77 = (v75 - 1);
        if (v75 >= 1)
        {
          v243 += v75;
          v78 = v76 - 1;
          v79 = (v239 + v76);
          v80 = v76 + v75 - 1;
          v81 = 0;
LABEL_179:
          autolink = make_autolink(&v238, v78, v80, v79, v77, v81);
          goto LABEL_351;
        }

        v123 = _scan_at(_scan_autolink_email, &v239, v243);
        v124 = v243;
        v77 = (v123 - 1);
        if (v123 >= 1)
        {
          v243 += v123;
          v78 = v124 - 1;
          v79 = (v239 + v124);
          v80 = v124 + v123 - 1;
          v81 = 1;
          goto LABEL_179;
        }

        v158 = _scan_at(_scan_html_tag, &v239, v243);
        if (v158 >= 1)
        {
          v159 = v158;
          v160 = v243;
          v161 = (v158 + 1);
          v162 = v239 + v243 - 1;
          v243 += v158;
          v163 = v243;
          autolink = (*v238)(1, 168);
          cmark_strbuf_init(v238, autolink, 0);
          *(autolink + 100) = -16379;
          *(autolink + 128) = v162;
          *(autolink + 136) = v161;
          v164 = v242;
          v165 = v244 + v245;
          v166 = v244 + v245 + v160;
          *(autolink + 80) = v242;
          *(autolink + 84) = v166;
          *(autolink + 88) = v164;
          *(autolink + 92) = v165 + v163;
          v167 = autolink;
          v168 = v159;
          v169 = 1;
          goto LABEL_296;
        }

        if ((a4 & 0x1000) == 0 || (v179 = _scan_at(_scan_liberal_html_tag, &v239, v243), v179 < 1))
        {
          v191 = v243;
          autolink = (*v238)(1, 168);
          cmark_strbuf_init(v238, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 128) = "<";
          *(autolink + 136) = 1;
          v70 = v244;
          v71 = v242;
          v72 = v245 + v191;
          goto LABEL_108;
        }

        v180 = v179;
        v181 = v243 - 1;
        v243 += v179;
        autolink = make_literal(&v238, 49157, v181, v243 - 1, v239 + v181, (v179 + 1));
        adjust_subj_node_newlines(&v238, autolink, v180, 1, a4);
LABEL_351:
        if (autolink)
        {
          goto LABEL_352;
        }

        goto LABEL_353;
      }

      if (*v16 <= 0x5Eu)
      {
        if (v17 != 92)
        {
          v18 = v236;
          if (v17 != 93)
          {
            goto LABEL_88;
          }

          v249 = 0;
          v250 = 0;
          v254 = 0;
          v255 = 0;
          v252 = 0;
          v253 = 0;
          v34 = v13 + 1;
          v243 = v13 + 1;
          v35 = *(&v247 + 1);
          if (!*(&v247 + 1))
          {
            goto LABEL_349;
          }

          if (*(*(&v247 + 1) + 29))
          {
            v234 = *(*(&v247 + 1) + 28);
            if (v34 >= v6)
            {
              goto LABEL_304;
            }

            if (*(v239 + v34) == 40)
            {
              v170 = _scan_at(_scan_spacechars, &v239, v13 + 2);
              if (v170 < 0)
              {
                goto LABEL_304;
              }

              v171 = v170 + 1;
              v172 = manual_scan_link_url(&v239, v243 + v170 + 1, &v249);
              if (v172 < 0)
              {
                goto LABEL_304;
              }

              v173 = v172 + v171 + v243;
              v174 = _scan_at(_scan_spacechars, &v239, v173);
              v175 = v173 + v174;
              if (v174)
              {
                v176 = _scan_at(_scan_link_title, &v239, v175) + v175;
              }

              else
              {
                v176 = v175;
              }

              v200 = _scan_at(_scan_spacechars, &v239, v176) + v176;
              if (*(v239 + v200) != 41)
              {
                v243 = v13 + 1;
                goto LABEL_304;
              }

              v243 = v200 + 1;
              v254 = (v239 + v175);
              v255 = (v176 - v175);
              v201 = cmark_clean_url(v238, &v249);
              v203 = v202;
              v204 = cmark_clean_title(v238, &v254);
              v206 = v205;
              if (HIDWORD(v250))
              {
                (v238[2])(v249);
              }

LABEL_316:
              v211 = v238;
              v212 = (*v238)(1, 168);
              cmark_strbuf_init(v211, v212, 0);
              if (v234)
              {
                v213 = -16374;
              }

              else
              {
                v213 = -16375;
              }

              *(v212 + 100) = v213;
              *(v212 + 128) = v201;
              *(v212 + 136) = v203;
              *(v212 + 144) = v204;
              *(v212 + 152) = v206;
              v214 = v242;
              v215 = v243;
              *(v212 + 88) = v242;
              *(v212 + 80) = v214;
              v216 = *(v35 + 16);
              *(v212 + 84) = *(v216 + 84);
              *(v212 + 92) = v245 + v215 + v244;
              cmark_node_insert_before(v216, v212);
              v217 = *(v35 + 16);
              v218 = v217[3];
              if (v218)
              {
                do
                {
                  v219 = v218[3];
                  cmark_node_append_child(v212, v218);
                  v218 = v219;
                }

                while (v219);
                v217 = *(v35 + 16);
                v4 = v235;
              }

              cmark_node_free(v217);
              process_emphasis(v4, &v238, *(v35 + 8));
              if (*(&v247 + 1))
              {
                *(&v247 + 1) = **(&v247 + 1);
                (v238[2])();
                autolink = 0;
                if (v234)
                {
                  goto LABEL_351;
                }

                v220 = *(&v247 + 1);
                if (!*(&v247 + 1))
                {
                  goto LABEL_351;
                }

                do
                {
                  if ((*(v220 + 28) & 1) == 0)
                  {
                    if (*(v220 + 29) != 1)
                    {
                      break;
                    }

                    *(v220 + 29) = 0;
                  }

                  v220 = *v220;
                }

                while (v220);
              }

              autolink = 0;
              goto LABEL_351;
            }

            if (!*(v239 + v34))
            {
              cmark_parse_inlines_cold_1();
            }

LABEL_304:
            v252 = "";
            v253 = 0;
            if (link_label(&v238, &v252))
            {
              if (v253 || (*(v35 + 30) & 1) != 0)
              {
                goto LABEL_312;
              }

              goto LABEL_309;
            }

            v243 = v13 + 1;
            if ((*(v35 + 30) & 1) == 0)
            {
LABEL_309:
              if (HIDWORD(v253))
              {
                (v238[2])(v252);
              }

              v207 = *(v35 + 24);
              v252 = (v239 + v207);
              v253 = (v13 - v207);
LABEL_312:
              v208 = cmark_map_lookup(v246, &v252);
              if (HIDWORD(v253))
              {
                (v238[2])(v252);
              }

              v252 = 0;
              v253 = 0;
              if (v208)
              {
                v201 = chunk_clone(v238, (v208 + 24));
                v203 = v209;
                v204 = chunk_clone(v238, (v208 + 40));
                v206 = v210;
                goto LABEL_316;
              }
            }

            if ((*(v4 + 121) & 0x20) != 0)
            {
              v221 = *(*(v35 + 16) + 24);
              if (v221)
              {
                if (*(v221 + 100) == 49153)
                {
                  v222 = *(v221 + 136);
                  if (v222 >= 1 && **(v221 + 128) == 94 && (v222 != 1 || *(v221 + 24)))
                  {
                    v243 = v34;
                    v223 = v238;
                    v224 = (*v238)(1, 168);
                    cmark_strbuf_init(v223, v224, 0);
                    *(v224 + 100) = -16373;
                    v225 = v242;
                    v226 = v245 + v243 + v244;
                    v227 = *(*(v35 + 16) + 84);
                    LODWORD(v228) = v226 - v227 - 2;
                    if (v227 + 2 <= v226)
                    {
                      v228 = v228;
                    }

                    else
                    {
                      v228 = 0;
                    }

                    *(v224 + 128) = *(v221 + 128) + 1;
                    *(v224 + 136) = v228;
                    *(v224 + 80) = v225;
                    *(v224 + 84) = v227;
                    *(v224 + 88) = v225;
                    *(v224 + 92) = v226;
                    cmark_node_insert_before(*(v35 + 16), v224);
                    process_emphasis(v4, &v238, *(v35 + 8));
                    v229 = *(v35 + 16);
                    v230 = v229[3];
                    if (v230)
                    {
                      do
                      {
                        v231 = v230[3];
                        cmark_node_free(v230);
                        v230 = v231;
                      }

                      while (v231);
                      v229 = *(v35 + 16);
                    }

                    cmark_node_free(v229);
                    if (*(&v247 + 1))
                    {
                      *(&v247 + 1) = **(&v247 + 1);
                      (v238[2])();
                    }

                    autolink = 0;
                    v4 = v235;
                    goto LABEL_351;
                  }
                }
              }
            }

            if (*(&v247 + 1))
            {
              *(&v247 + 1) = **(&v247 + 1);
              (v238[2])();
            }

            v243 = v34;
LABEL_349:
            autolink = (*v238)(1, 168);
            cmark_strbuf_init(v238, autolink, 0);
            *(autolink + 100) = -16383;
            *(autolink + 128) = "]";
            *(autolink + 136) = 1;
            v127 = v244;
            v128 = v242;
            v129 = v245 + v34;
          }

          else
          {
            *(&v247 + 1) = **(&v247 + 1);
            (v238[2])(v35);
            v126 = v243;
            autolink = (*v238)(1, 168);
            cmark_strbuf_init(v238, autolink, 0);
            *(autolink + 100) = -16383;
            *(autolink + 128) = "]";
            *(autolink + 136) = 1;
            v127 = v244;
            v128 = v242;
            v129 = v245 + v126;
            v4 = v235;
          }

          v232 = v129 + v127;
          *(autolink + 80) = v128;
          *(autolink + 84) = v232;
          *(autolink + 88) = v128;
          *(autolink + 92) = v232;
          goto LABEL_351;
        }

        v73 = v13 + 1;
        v243 = v73;
        if (v73 >= v6)
        {
          v74 = 0;
        }

        else
        {
          v74 = *(v239 + v73);
          if (!v74)
          {
            cmark_parse_inlines_cold_1();
          }
        }

        v115 = *(v4 + 144);
        if (!v115)
        {
          v115 = cmark_ispunct;
        }

        v116 = (v115)(v74);
        v117 = v243;
        v118 = v243;
        if (v116)
        {
          ++v243;
          v119 = v239 + v118;
          autolink = (*v238)(1, 168);
          cmark_strbuf_init(v238, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 128) = v119;
          *(autolink + 136) = 1;
          v71 = v242;
          v120 = v244 + v245;
          v121 = v244 + v245 + v117;
          *(autolink + 80) = v242;
          *(autolink + 84) = v121;
          v33 = v120 + v117 + 1;
LABEL_206:
          *(autolink + 88) = v71;
          goto LABEL_207;
        }

        if (v243 < v240)
        {
          if (*(v239 + v243) == 13)
          {
            v117 = ++v243;
            v125 = 1;
          }

          else
          {
            if (!*(v239 + v243))
            {
              cmark_parse_inlines_cold_1();
            }

            v125 = 0;
          }

          if (v117 < v240)
          {
            if (*(v239 + v117) != 10)
            {
              if (!*(v239 + v117))
              {
                cmark_parse_inlines_cold_1();
              }

              goto LABEL_267;
            }

            v243 = v117 + 1;
LABEL_284:
            v182 = v238;
            autolink = (*v238)(1, 168);
            cmark_strbuf_init(v182, autolink, 0);
            *(autolink + 100) = -16381;
            goto LABEL_352;
          }

LABEL_267:
          if (((v117 < v240) & ~v125) == 0)
          {
            goto LABEL_284;
          }
        }

        autolink = (*v238)(1, 168);
        cmark_strbuf_init(v238, autolink, 0);
        *(autolink + 100) = -16383;
        *(autolink + 128) = "\";
        *(autolink + 136) = 1;
        v70 = v244;
        v71 = v242;
        v72 = v245 + v117;
        goto LABEL_108;
      }

      if (v17 != 95)
      {
        v18 = v236;
        if (v17 != 96)
        {
          goto LABEL_88;
        }

        v42 = v6 - v13;
        v43 = 1;
        v44 = (v239 + v13);
        while (1)
        {
          v46 = *v44++;
          v45 = v46;
          if (v46 != 96)
          {
            break;
          }

          v243 = ++v13;
          ++v43;
          if (v6 == v13)
          {
            v13 = v6;
            goto LABEL_116;
          }
        }

        if (!v45)
        {
          cmark_parse_inlines_cold_1();
        }

        v42 = v43 - 1;
LABEL_116:
        v82 = v42;
        if (v42 > 80 || v248[324] == 1 && *&v248[4 * v42] <= v13)
        {
LABEL_204:
          v243 = v13;
          autolink = (*v238)(1, 168);
          cmark_strbuf_init(v238, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 128) = v16;
          *(autolink + 136) = v82;
          v71 = v242;
          v33 = v13 + v245 + v244 + 1;
          goto LABEL_205;
        }

        v83 = v13;
        do
        {
          if (v83 < v6)
          {
            v84 = v6 - v83;
            v85 = (v14 + v83);
            while (1)
            {
              v87 = *v85++;
              v86 = v87;
              if (v87 == 96)
              {
                break;
              }

              if (!v86)
              {
                cmark_parse_inlines_cold_1();
              }

              v243 = ++v83;
              if (!--v84)
              {
                goto LABEL_203;
              }
            }
          }

          v88 = v6 - v83;
          if (v6 <= v83)
          {
LABEL_203:
            v248[324] = 1;
            goto LABEL_204;
          }

          v89 = 0;
          v90 = v6 - v83;
          v91 = v14 + v83;
          while (*(v91 + v89) == 96)
          {
            v243 = ++v83;
            if (v90 == ++v89)
            {
              v83 = v6;
              goto LABEL_133;
            }
          }

          if (!*(v91 + v89))
          {
            cmark_parse_inlines_cold_1();
          }

          v88 = v89;
LABEL_133:
          if (v88 <= 0x50)
          {
            *&v248[4 * v88] = v83 - v88;
          }
        }

        while (v88 != v42);
        if (!v83)
        {
          goto LABEL_204;
        }

        v249 = v238;
        v250 = &cmark_strbuf__initbuf;
        v251 = 0;
        v92 = v83 - v13;
        cmark_strbuf_set(&v249, (v14 + v13), (v83 - v13 - v42));
        v93 = HIDWORD(v251);
        if (SHIDWORD(v251) < 1)
        {
          LODWORD(v94) = 0;
        }

        else
        {
          v94 = 0;
          v95 = 0;
          v96 = 0;
          v97 = v250;
          while (2)
          {
            v98 = v94;
            while (1)
            {
              v99 = v97[v95];
              if (v99 != 13)
              {
                break;
              }

              if (v97[v95 + 1] != 10)
              {
                v100 = 32;
                goto LABEL_148;
              }

              ++v95;
              v96 = 1;
              if (v95 >= v93)
              {
                goto LABEL_280;
              }
            }

            if (v99 == 10)
            {
              v100 = 32;
            }

            else
            {
              v100 = v97[v95];
            }

LABEL_148:
            ++v94;
            v97[v98] = v100;
            v97 = v250;
            v93 = HIDWORD(v251);
            v96 |= v250[v95++] != 32;
            if (v95 < SHIDWORD(v251))
            {
              continue;
            }

            break;
          }

          if (v96)
          {
LABEL_280:
            if (*v97 == 32 && v97[v94 - 1] == 32)
            {
              cmark_strbuf_drop(&v249, 1);
              LODWORD(v94) = v94 - 2;
            }
          }
        }

        cmark_strbuf_truncate(&v249, v94);
        v192 = v83 + ~v82;
        v193 = HIDWORD(v251);
        v194 = cmark_strbuf_detach(&v249);
        v195 = v193 | 0x100000000;
        autolink = (*v238)(1, 168);
        cmark_strbuf_init(v238, autolink, 0);
        *(autolink + 128) = v194;
        *(autolink + 136) = v195;
        v196 = v244;
        v197 = v242;
        v198 = v245 + 1;
        v199 = v244 + v13 + v245 + 1;
        *(autolink + 80) = v242;
        *(autolink + 84) = v199;
        *(autolink + 100) = -16380;
        *(autolink + 88) = v197;
        *(autolink + 92) = v192 + v196 + v198;
        v167 = autolink;
        v168 = v92;
        v169 = v82;
LABEL_296:
        adjust_subj_node_newlines(&v238, v167, v168, v169, a4);
        goto LABEL_352;
      }

      goto LABEL_53;
    }

    if (*v16 <= 0x21u)
    {
      if (*v16 <= 0xCu)
      {
        v62 = v13;
        if (v17 != 10)
        {
          v18 = v236;
          if (!*v16)
          {
            cmark_parse_inlines_cold_1();
          }

LABEL_88:
          while (1)
          {
            v18 = *v18;
            if (!v18)
            {
              break;
            }

            v63 = (*(v18[1] + 16))();
            if (v63)
            {
              autolink = v63;
              goto LABEL_352;
            }
          }

          v104 = v243 + 1;
          if (v243 + 1 >= v240)
          {
LABEL_168:
            v110 = (v240 - v243);
            v111 = v239 + v243;
            v243 = v240;
            v112 = v240;
          }

          else
          {
            v105 = (v243 << 32) + 0x100000000;
            v106 = (v239 + v243 + 1);
            v107 = -1;
            while (1)
            {
              v109 = *v106++;
              v108 = v109;
              if (SPECIAL_CHARS[v109] || (a4 & 0x400) != 0 && SMART_PUNCT_CHARS[v108])
              {
                break;
              }

              v105 += 0x100000000;
              if (v243 - v240 == --v107)
              {
                goto LABEL_168;
              }
            }

            v112 = v243 - v107;
            v110 = -v107;
            v111 = v239 + v243;
            v243 = v112;
            if (v240 > v112)
            {
              v156 = *(v239 + (v105 >> 32));
              if (v156 == 10 || v156 == 13)
              {
                if (v110 >= 1)
                {
                  do
                  {
                    if (!cmark_isspace(*(v111 - 1 + v110)))
                    {
                      break;
                    }

                    v12 = __OFSUB__(v110, 1);
                    v110 = (v110 - 1);
                  }

                  while (!((v110 < 0) ^ v12 | (v110 == 0)));
                }
              }

              else if (!*(v239 + (v105 >> 32)))
              {
                cmark_parse_inlines_cold_1();
              }
            }
          }

          autolink = (*v238)(1, 168);
          cmark_strbuf_init(v238, autolink, 0);
          *(autolink + 100) = -16383;
          *(autolink + 128) = v111;
          *(autolink + 136) = v110;
          v71 = v242;
          v113 = v244 + v245;
          v114 = v244 + v245 + v104;
          *(autolink + 80) = v242;
          *(autolink + 84) = v114;
          v33 = v113 + v112;
          goto LABEL_206;
        }
      }

      else
      {
        if (v17 != 13)
        {
          v18 = v236;
          if (v17 != 33)
          {
            goto LABEL_88;
          }

          v36 = v13 + 1;
          v243 = v13 + 1;
          if (v13 + 1 >= v6)
          {
            goto LABEL_39;
          }

          if (*(v239 + v36) != 91)
          {
            if (!*(v239 + v36))
            {
              cmark_parse_inlines_cold_1();
            }

            goto LABEL_39;
          }

          v130 = v13 + 2;
          if (v130 < v6)
          {
            if (*(v239 + v130) == 94)
            {
LABEL_39:
              autolink = (*v238)(1, 168);
              cmark_strbuf_init(v238, autolink, 0);
              *(autolink + 100) = -16383;
              v37 = "!";
LABEL_107:
              *(autolink + 128) = v37;
              *(autolink + 136) = 1;
              v70 = v244;
              v71 = v242;
              v72 = v245 + v36;
LABEL_108:
              v33 = v72 + v70;
LABEL_205:
              *(autolink + 80) = v71;
              *(autolink + 84) = v33;
              goto LABEL_206;
            }

            if (!*(v239 + v130))
            {
              cmark_parse_inlines_cold_1();
            }
          }

          v243 = v13 + 2;
          autolink = (*v238)(1, 168);
          cmark_strbuf_init(v238, autolink, 0);
          v131 = v242;
          v132 = v245 + v244;
          *(autolink + 100) = -16383;
          *(autolink + 128) = "![";
          *(autolink + 136) = 2;
          ++v132;
          *(autolink + 80) = v131;
          *(autolink + 84) = v132 + v13;
          *(autolink + 88) = v131;
          *(autolink + 92) = v132 + v36;
          v133 = (*v238)(1, 32);
          v134 = *(&v247 + 1);
          if (*(&v247 + 1))
          {
            *(*(&v247 + 1) + 30) = 1;
          }

          *(v133 + 28) = 257;
          *(v133 + 16) = autolink;
          *v133 = v134;
          *(v133 + 8) = v247;
          *(v133 + 24) = v243;
          *(v133 + 30) = 0;
          *(&v247 + 1) = v133;
          goto LABEL_352;
        }

        v62 = v13 + 1;
        v243 = v13 + 1;
        if (*(v239 + v13 + 1) != 10)
        {
LABEL_93:
          ++v242;
          v245 = -v62;
          v64 = v6 - v62;
          if (v6 > v62)
          {
            v65 = v62 + 1;
            v66 = (v239 + v62);
            while (1)
            {
              v68 = *v66++;
              v67 = v68;
              if (v68 != 32 && v67 != 9)
              {
                break;
              }

              v243 = v65++;
              if (!--v64)
              {
                goto LABEL_155;
              }
            }

            if (!v67)
            {
              cmark_parse_inlines_cold_1();
            }
          }

LABEL_155:
          if (v13 >= 2 && (v101 = v239 + v13, *(v101 - 1) == 32) && *(v101 - 2) == 32)
          {
            v102 = -16381;
          }

          else
          {
            v102 = -16382;
          }

          v103 = v238;
          autolink = (*v238)(1, 168);
          cmark_strbuf_init(v103, autolink, 0);
          *(autolink + 100) = v102;
          goto LABEL_352;
        }
      }

      v243 = ++v62;
      goto LABEL_93;
    }

    if (*v16 > 0x26u)
    {
      if (v17 != 39)
      {
        v18 = v236;
        if (v17 != 42)
        {
          goto LABEL_88;
        }
      }
    }

    else if (v17 != 34)
    {
      v18 = v236;
      if (v17 != 38)
      {
        goto LABEL_88;
      }

      v249 = v238;
      v250 = &cmark_strbuf__initbuf;
      v251 = 0;
      v243 = v13 + 1;
      v25 = houdini_unescape_ent(&v249, (v239 + v13 + 1), v6 - (v13 + 1));
      v26 = v243;
      if (!v25)
      {
        autolink = (*v238)(1, 168);
        cmark_strbuf_init(v238, autolink, 0);
        *(autolink + 100) = -16383;
        *(autolink + 128) = "&";
        *(autolink + 136) = 1;
        v21 = v242;
        v22 = v244;
        v122 = v245;
        *(autolink + 88) = v242;
        v24 = v122 + v26;
        goto LABEL_176;
      }

      v243 += v25;
      v27 = v243;
      v28 = HIDWORD(v251);
      v29 = cmark_strbuf_detach(&v249);
      v30 = v28 | 0x100000000;
      autolink = (*v238)(1, 168);
      cmark_strbuf_init(v238, autolink, 0);
      *(autolink + 100) = -16383;
      *(autolink + 128) = v29;
      *(autolink + 136) = v30;
      v31 = v242;
      v32 = v244 + v245;
      *(autolink + 80) = v242;
      *(autolink + 84) = v32 + v26;
      *(autolink + 88) = v31;
      v33 = v32 + v27;
      goto LABEL_207;
    }

LABEL_53:
    LODWORD(v249) = 0;
    LODWORD(v254) = 0;
    if (!v13)
    {
      goto LABEL_64;
    }

    v47 = 1;
    while ((*(v239 - 1 + v15) & 0xC0) == 0x80)
    {
      if (v15 < 2)
      {
        goto LABEL_61;
      }

LABEL_60:
      ++v47;
      --v15;
    }

    if (v15 >= 2 && SKIP_CHARS[*(v239 - 1 + v15)])
    {
      goto LABEL_60;
    }

LABEL_61:
    if (cmark_utf8proc_iterate((v239 + v15 - 1), v47, &v254) == -1 || v254 <= 255 && SKIP_CHARS[v254])
    {
LABEL_64:
      LODWORD(v254) = 10;
    }

    if (v17 == 34 || v17 == 39)
    {
      v48 = v240;
      LODWORD(v49) = ++v243;
      v50 = 1;
    }

    else
    {
      v48 = v240;
      v50 = 0;
      v59 = v240 - v243;
      if (v240 <= v243)
      {
        LODWORD(v49) = v243;
      }

      else
      {
        v49 = v243;
        v60 = v243 + 1;
        while (1)
        {
          if (!*(v239 + v49))
          {
            cmark_parse_inlines_cold_1();
          }

          if (*(v239 + v49) != v17)
          {
            break;
          }

          v61 = v60 + v50++;
          ++v49;
          v243 = v61;
          if (v240 == v49)
          {
            LODWORD(v49) = v240;
            v50 = v59;
            break;
          }
        }
      }
    }

    if (v49 == v48)
    {
      goto LABEL_75;
    }

    v51 = v49;
    v52 = v48;
    v53 = v48 - v49 + 1;
    v54 = (v239 + v49 - 1);
    do
    {
      v56 = *++v54;
      v55 = v56;
      --v53;
      if (v51 >= v52)
      {
        break;
      }

      ++v51;
    }

    while (SKIP_CHARS[v55]);
    if (cmark_utf8proc_iterate(v54, v53, &v249) == -1 || (v57 = v249, v249 <= 255) && SKIP_CHARS[v249])
    {
LABEL_75:
      v57 = 10;
      LODWORD(v249) = 10;
    }

    if (!v50)
    {
      is_punctuation = 0;
      goto LABEL_210;
    }

    if (cmark_utf8proc_is_space(v57))
    {
      is_punctuation = 0;
    }

    else
    {
      is_punctuation = !cmark_utf8proc_is_punctuation(v249) || cmark_utf8proc_is_space(v254) || cmark_utf8proc_is_punctuation(v254);
    }

    if (cmark_utf8proc_is_space(v254))
    {
LABEL_210:
      v144 = 0;
    }

    else
    {
      v144 = !cmark_utf8proc_is_punctuation(v254) || cmark_utf8proc_is_space(v249) || cmark_utf8proc_is_punctuation(v249);
    }

    if (v17 == 34 || v17 == 39)
    {
      if (is_punctuation)
      {
        v148 = v254 != 93 && v254 != 41;
        is_punctuation = !v144 && v148;
      }
    }

    else if (v17 == 95)
    {
      v145 = is_punctuation ^ 1;
      v146 = !v144;
      if (((is_punctuation ^ 1) & 1) == 0 && (v146 & 1) == 0)
      {
        is_punctuation = cmark_utf8proc_is_punctuation(v254);
      }

      if (((v145 | v146) & 1) == 0)
      {
        v144 = cmark_utf8proc_is_punctuation(v249);
      }

LABEL_236:
      v149 = (v239 - v50 + v243);
      v150 = v50;
      goto LABEL_237;
    }

    if ((a4 & 0x400) != 0 && v17 == 39)
    {
      v149 = "’";
    }

    else
    {
      if ((a4 & 0x400) == 0 || v17 != 34)
      {
        goto LABEL_236;
      }

      if (v144)
      {
        v149 = "”";
      }

      else
      {
        v149 = "“";
      }
    }

    v150 = 3;
LABEL_237:
    v151 = v243;
    autolink = (*v238)(1, 168);
    cmark_strbuf_init(v238, autolink, 0);
    *(autolink + 128) = v149;
    *(autolink + 136) = v150;
    v152 = v242;
    v153 = v244 + v245;
    *(autolink + 100) = -16383;
    *(autolink + 80) = v152;
    *(autolink + 84) = v151 - v50 + v153 + 1;
    *(autolink + 88) = v152;
    *(autolink + 92) = v153 + v151;
    if ((is_punctuation & 1) != 0 || v144)
    {
      v4 = v235;
      if (v17 != 39 && v17 != 34 || (a4 & 0x400) != 0)
      {
        v154 = (*v238)(1, 40);
        *(v154 + 28) = v17;
        *(v154 + 32) = is_punctuation;
        *(v154 + 36) = v144;
        *(v154 + 16) = autolink;
        *(v154 + 24) = *(autolink + 136);
        v155 = v247;
        *v154 = v247;
        *(v154 + 8) = 0;
        if (v155)
        {
          *(v155 + 8) = v154;
        }

        *&v247 = v154;
      }
    }

    else
    {
LABEL_239:
      v4 = v235;
    }

LABEL_352:
    cmark_node_append_child(a2, autolink);
LABEL_353:
    v13 = v243;
    LODWORD(v6) = v240;
  }

  while (v243 < v240);
LABEL_354:
  process_emphasis(v4, &v238, 0);
  while (v247)
  {
    remove_delimiter(&v238, v247);
  }

  while (1)
  {
    result = *(&v247 + 1);
    if (!*(&v247 + 1))
    {
      break;
    }

    *(&v247 + 1) = **(&v247 + 1);
    (v238[2])();
  }

  return result;
}

void process_emphasis(uint64_t a1, uint64_t *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a2[6];
  bzero(v54, 0xC00uLL);
  for (i = 0; i != 3072; i += 1024)
  {
    v8 = &v54[i];
    v8[42] = a3;
    v8[95] = a3;
    v8[39] = a3;
    v8[34] = a3;
  }

  v9 = v6;
  while (v9)
  {
    v10 = v9;
    v9 = *v9;
    if (v9 == a3)
    {
      while (1)
      {
        v11 = *(v10 + 28);
        for (j = *(a1 + 136); j; j = *j)
        {
          v13 = j[1];
          v14 = (v13 + 32);
          while (1)
          {
            v14 = *v14;
            if (!v14)
            {
              break;
            }

            if (v11 == *(v14 + 8))
            {
              goto LABEL_13;
            }
          }
        }

        v13 = 0;
LABEL_13:
        if (!*(v10 + 9))
        {
          v18 = v10[1];
          goto LABEL_100;
        }

        v15 = *v10;
        if (!*v10 || v15 == a3)
        {
          v17 = 0;
          v21 = *v10;
          if (v13)
          {
LABEL_38:
            if (!v17)
            {
              v18 = v10[1];
              goto LABEL_98;
            }

            v18 = (*(v13 + 24))(v13, a1, a2, v21, v10);
            goto LABEL_100;
          }
        }

        else
        {
          v19 = *(v10 + 6);
          v20 = v19 % 3;
          v21 = *v10;
          while (1)
          {
            if (v21 == *&v54[1024 * (v19 % 3) + 8 * *(v10 + 28)])
            {
LABEL_36:
              v17 = 0;
LABEL_37:
              if (!v13)
              {
                goto LABEL_42;
              }

              goto LABEL_38;
            }

            if (*(v21 + 32) && *(v21 + 28) == v11)
            {
              if (*(v10 + 8))
              {
                if (!v20)
                {
                  break;
                }
              }

              else
              {
                v17 = 1;
                if (!v20 || !*(v21 + 36))
                {
                  goto LABEL_37;
                }
              }

              if ((715827882 - 1431655765 * (*(v21 + 24) + v19)) > 0x55555554)
              {
                break;
              }
            }

            v21 = *v21;
            if (v21)
            {
              v22 = v21 == a3;
            }

            else
            {
              v22 = 1;
            }

            if (v22)
            {
              goto LABEL_36;
            }
          }

          v17 = 1;
          if (v13)
          {
            goto LABEL_38;
          }
        }

LABEL_42:
        if (*(v10 + 28) > 0x29u)
        {
          if (v11 == 95 || (v18 = v10, v11 == 42))
          {
            if (!v17)
            {
              v18 = v10[1];
              goto LABEL_98;
            }

            v28 = *(v21 + 16);
            v29 = v10[2];
            v30 = *(v28 + 136);
            v31 = *(v29 + 136);
            v33 = v31 < 2 || v30 < 2;
            v50 = v33;
            v51 = *(v28 + 136);
            if (v33)
            {
              v34 = 1;
            }

            else
            {
              v34 = 2;
            }

            v52 = v34;
            v53 = *(v29 + 136);
            *(v28 + 136) = v30 - v34;
            *(v29 + 136) = v31 - v34;
            v35 = *v10;
            if (*v10 && v35 != v21)
            {
              do
              {
                v36 = *v35;
                remove_delimiter(a2, v35);
                if (v36)
                {
                  v37 = v36 == v21;
                }

                else
                {
                  v37 = 1;
                }

                v35 = v36;
              }

              while (!v37);
            }

            v38 = *a2;
            v39 = (**a2)(1, 168);
            cmark_strbuf_init(v38, v39, 0);
            if (v50)
            {
              v40 = -16377;
            }

            else
            {
              v40 = -16376;
            }

            *(v39 + 100) = v40;
            v41 = *(v28 + 24);
            if (v41)
            {
              v42 = v41 == v29;
            }

            else
            {
              v42 = 1;
            }

            if (!v42)
            {
              do
              {
                v43 = v41[3];
                cmark_node_append_child(v39, v41);
                if (v43)
                {
                  v44 = v43 == v29;
                }

                else
                {
                  v44 = 1;
                }

                v41 = v43;
              }

              while (!v44);
            }

            cmark_node_insert_after(v28, v39);
            *&v45 = *(v28 + 80);
            *(&v45 + 1) = *(v29 + 88);
            *(v39 + 80) = v45;
            if (v51 == v52)
            {
              cmark_node_free(v28);
              remove_delimiter(a2, v21);
            }

            v18 = v10;
            if (v53 == v52)
            {
              cmark_node_free(v29);
              v18 = v10[1];
              remove_delimiter(a2, v10);
            }
          }

LABEL_86:
          if ((v17 & 1) == 0)
          {
            goto LABEL_97;
          }

          goto LABEL_100;
        }

        if (v11 != 34)
        {
          break;
        }

        v46 = v10[2];
        if (*(v46 + 140))
        {
          (*(*a2 + 16))(*(v46 + 128));
        }

        *(v46 + 128) = 0;
        *(v46 + 136) = 0;
        v47 = v10[2];
        *(v47 + 128) = "”";
        *(v47 + 136) = 3;
        if (v17)
        {
          v48 = *(v21 + 16);
          if (*(v48 + 140))
          {
            (*(*a2 + 16))(*(v48 + 128));
          }

          *(v48 + 128) = 0;
          *(v48 + 136) = 0;
          v26 = *(v21 + 16);
          v27 = "“";
LABEL_95:
          *(v26 + 128) = v27;
          *(v26 + 136) = 3;
        }

LABEL_96:
        v18 = v10[1];
        if ((v17 & 1) == 0)
        {
LABEL_97:
          v15 = *v10;
          v11 = *(v10 + 28);
LABEL_98:
          *&v54[1024 * (*(v10 + 6) % 3) + 8 * v11] = v15;
          if (!*(v10 + 8))
          {
            remove_delimiter(a2, v10);
          }
        }

LABEL_100:
        v10 = v18;
        if (!v18)
        {
          v6 = a2[6];
          goto LABEL_102;
        }
      }

      v18 = v10;
      if (v11 != 39)
      {
        goto LABEL_86;
      }

      v23 = v10[2];
      if (*(v23 + 140))
      {
        (*(*a2 + 16))(*(v23 + 128));
      }

      *(v23 + 128) = 0;
      *(v23 + 136) = 0;
      v24 = v10[2];
      *(v24 + 128) = "’";
      *(v24 + 136) = 3;
      if (!v17)
      {
        goto LABEL_96;
      }

      v25 = *(v21 + 16);
      if (*(v25 + 140))
      {
        (*(*a2 + 16))(*(v25 + 128));
      }

      *(v25 + 128) = 0;
      *(v25 + 136) = 0;
      v26 = *(v21 + 16);
      v27 = "‘";
      goto LABEL_95;
    }
  }

LABEL_102:
  if (v6 && v6 != a3)
  {
    do
    {
      remove_delimiter(a2, v6);
      v6 = a2[6];
      if (v6)
      {
        v49 = v6 == a3;
      }

      else
      {
        v49 = 1;
      }
    }

    while (!v49);
  }
}

uint64_t *remove_delimiter(uint64_t *result, uint64_t *a2)
{
  if (a2)
  {
    v3 = a2[1];
    v4 = v3;
    if (!v3)
    {
      v4 = result + 6;
      if (result[6] != a2)
      {
        remove_delimiter_cold_1();
      }
    }

    v5 = *a2;
    *v4 = *a2;
    if (v5)
    {
      *(v5 + 8) = v3;
    }

    v6 = *(*result + 16);

    return v6(a2);
  }

  return result;
}

uint64_t cmark_parse_reference_inline(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v26 = 0;
  v27 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v23 = 0;
  v24 = 0;
  v28 = a1;
  v29 = *a2;
  v30 = -1;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  memset(v52, 0, sizeof(v52));
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = link_label(&v28, &v26);
  result = 0;
  if (v4 && v27)
  {
    if (v31 >= SDWORD2(v29))
    {
      return 0;
    }

    if (*(v29 + v31) != 58)
    {
      if (!*(v29 + v31))
      {
        cmark_parse_inlines_cold_1();
      }

      return 0;
    }

    LODWORD(v31) = v31 + 1;
    spnl(&v28);
    v6 = manual_scan_link_url(&v29, v31, v25);
    if (v6 < 0)
    {
      return 0;
    }

    LODWORD(v31) = v31 + v6;
    v7 = v31;
    spnl(&v28);
    if (v31 == v7 || (v8 = _scan_at(_scan_link_title, &v29, v31)) == 0)
    {
      LODWORD(v31) = v7;
      v23 = "";
      v24 = 0;
      v9 = 1;
      v10 = v7;
    }

    else
    {
      v9 = 0;
      v23 = (v29 + v31);
      v24 = v8;
      v10 = v31 + v8;
      LODWORD(v31) = v31 + v8;
    }

    if (v10 < SDWORD2(v29))
    {
      v11 = (v29 + v10);
      while (1)
      {
        v13 = *v11++;
        v12 = v13;
        if (v13 != 32 && v12 != 9)
        {
          break;
        }

        LODWORD(v31) = ++v10;
        if (DWORD2(v29) == v10)
        {
          goto LABEL_61;
        }
      }

      if (!v12)
      {
        cmark_parse_inlines_cold_1();
      }
    }

    if (v10 < SDWORD2(v29))
    {
      if (*(v29 + v10) == 13)
      {
        LODWORD(v31) = ++v10;
        v15 = 1;
LABEL_27:
        if (v10 < SDWORD2(v29))
        {
          if (*(v29 + v10) == 10)
          {
            goto LABEL_60;
          }

          if (!*(v29 + v10))
          {
            cmark_parse_inlines_cold_1();
          }
        }

        if (v10 >= SDWORD2(v29))
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          goto LABEL_61;
        }

        if ((v9 & 1) == 0)
        {
          LODWORD(v31) = v7;
          if (v7 < SDWORD2(v29))
          {
            v17 = (v29 + v7);
            while (1)
            {
              v19 = *v17++;
              v18 = v19;
              if (v19 != 32 && v18 != 9)
              {
                break;
              }

              LODWORD(v31) = ++v7;
              if (DWORD2(v29) == v7)
              {
                goto LABEL_61;
              }
            }

            if (!v18)
            {
              cmark_parse_inlines_cold_1();
            }
          }

          if (v7 < SDWORD2(v29))
          {
            if (*(v29 + v7) == 13)
            {
              LODWORD(v31) = ++v7;
              v21 = 1;
              goto LABEL_50;
            }

            if (!*(v29 + v7))
            {
              cmark_parse_inlines_cold_1();
            }
          }

          v21 = 0;
LABEL_50:
          if (v7 >= SDWORD2(v29))
          {
            goto LABEL_53;
          }

          if (*(v29 + v7) != 10)
          {
            if (!*(v29 + v7))
            {
              cmark_parse_inlines_cold_1();
            }

LABEL_53:
            if (v7 >= SDWORD2(v29))
            {
              v22 = 1;
            }

            else
            {
              v22 = v21;
            }

            if ((v22 & 1) == 0)
            {
              return 0;
            }

LABEL_61:
            cmark_reference_create(a3, &v26, v25, &v23);
            return v31;
          }

          v10 = v7;
LABEL_60:
          LODWORD(v31) = v10 + 1;
          goto LABEL_61;
        }

        return 0;
      }

      if (!*(v29 + v10))
      {
        cmark_parse_inlines_cold_1();
      }
    }

    v15 = 0;
    goto LABEL_27;
  }

  return result;
}

uint64_t link_label(uint64_t a1, int *a2)
{
  v2 = *(a1 + 28);
  if (v2 >= *(a1 + 16))
  {
    return 0;
  }

  if (*(*(a1 + 8) + v2) != 91)
  {
    if (!*(*(a1 + 8) + v2))
    {
      cmark_parse_inlines_cold_1();
    }

    return 0;
  }

  v6 = 0;
  v7 = v2 + 1;
  *(a1 + 28) = v2 + 1;
  while (1)
  {
    v8 = *(a1 + 28);
    v9 = *(a1 + 16);
    if (v8 >= v9)
    {
LABEL_24:
      result = 0;
      goto LABEL_34;
    }

    v10 = v8;
    v11 = *(a1 + 8);
    v12 = *(v11 + v8);
    v13 = 1;
    if (v12 <= 0x5B)
    {
      if (v12 == 91)
      {
        goto LABEL_24;
      }

      if (!*(v11 + v8))
      {
        cmark_parse_inlines_cold_1();
      }

      goto LABEL_20;
    }

    if (v12 != 92)
    {
      break;
    }

    *(a1 + 28) = v8 + 1;
    if (v8 + 1 >= v9)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v11 + v8 + 1);
      if (!*(v11 + v10 + 1))
      {
        cmark_parse_inlines_cold_1();
      }
    }

    if (!cmark_ispunct(v14))
    {
      ++v6;
      goto LABEL_21;
    }

    v8 = *(a1 + 28);
    v13 = 2;
LABEL_20:
    *(a1 + 28) = v8 + 1;
    v6 += v13;
LABEL_21:
    if (v6 > 1000)
    {
      goto LABEL_24;
    }
  }

  if (v12 != 93)
  {
    goto LABEL_20;
  }

  v16 = (v8 - v7);
  v15 = v8 == v7;
  v17 = (v11 + v7);
  *a2 = v11 + v7;
  *(a2 + 1) = v16;
  if (!v15)
  {
    do
    {
      if (!cmark_isspace(*v17))
      {
        break;
      }

      v17 = (*a2 + 1);
      *a2 = v17;
      v18 = a2[2] - 1;
      a2[2] = v18;
    }

    while (v18);
    if (a2[3])
    {
      chop_trailing_hashtags_cold_1();
    }

    v19 = a2[2];
    if (v19 >= 1)
    {
      do
      {
        if (!cmark_isspace(*(*a2 + v19 - 1)))
        {
          break;
        }

        v20 = a2[2];
        v21 = __OFSUB__(v20, 1);
        v19 = v20 - 1;
        a2[2] = v19;
      }

      while (!((v19 < 0) ^ v21 | (v19 == 0)));
    }
  }

  v2 = *(a1 + 28) + 1;
  result = 1;
LABEL_34:
  *(a1 + 28) = v2;
  return result;
}

uint64_t spnl(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 28);
  if (v2 < v1)
  {
    v3 = (*(result + 8) + v2);
    while (1)
    {
      v5 = *v3++;
      v4 = v5;
      if (v5 != 32 && v4 != 9)
      {
        break;
      }

      *(result + 28) = ++v2;
      if (v1 == v2)
      {
        return result;
      }
    }

    if (!v4)
    {
      cmark_parse_inlines_cold_1();
    }
  }

  if (v2 >= v1)
  {
    goto LABEL_14;
  }

  if (*(*(result + 8) + v2) != 13)
  {
    if (!*(*(result + 8) + v2))
    {
      cmark_parse_inlines_cold_1();
    }

LABEL_14:
    v7 = 0;
    goto LABEL_16;
  }

  *(result + 28) = ++v2;
  v7 = 1;
LABEL_16:
  if (v2 >= v1)
  {
    goto LABEL_19;
  }

  if (*(*(result + 8) + v2) != 10)
  {
    if (!*(*(result + 8) + v2))
    {
      cmark_parse_inlines_cold_1();
    }

LABEL_19:
    if (((v2 < v1) & ~v7) != 0)
    {
      return result;
    }

    goto LABEL_22;
  }

  *(result + 28) = ++v2;
LABEL_22:
  v8 = __OFSUB__(v1, v2);
  v9 = v1 - v2;
  if (!((v9 < 0) ^ v8 | (v9 == 0)))
  {
    v10 = v2 + 1;
    v11 = (*(result + 8) + v2);
    while (1)
    {
      v13 = *v11++;
      v12 = v13;
      if (v13 != 32 && v12 != 9)
      {
        break;
      }

      *(result + 28) = v10++;
      if (!--v9)
      {
        return result;
      }
    }

    if (!v12)
    {
      cmark_parse_inlines_cold_1();
    }
  }

  return result;
}

uint64_t manual_scan_link_url(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = a2;
  if (v6 <= a2)
  {
    goto LABEL_30;
  }

  v8 = (*a1 + a2);
  if (*v8 != 60)
  {
    v12 = 0;
    v7 = a2;
    while (1)
    {
      v13 = *(*a1 + v7);
      if (v13 != 92)
      {
        goto LABEL_20;
      }

      v14 = v7 + 1;
      if (v14 >= v6)
      {
        break;
      }

      if (!cmark_ispunct(*(*a1 + v14)))
      {
        v13 = *(*a1 + v7);
LABEL_20:
        if (v13 == 41)
        {
          if (!v12)
          {
            goto LABEL_30;
          }

          --v12;
          goto LABEL_28;
        }

        if (v13 == 40)
        {
          if (++v12 > 0x20)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_28:
          ++v7;
          goto LABEL_29;
        }

LABEL_24:
        if (cmark_isspace(v13))
        {
          if (v7 == a2)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_30:
          if (v7 < *(a1 + 8))
          {
            v15 = (*a1 + a2);
            v16 = v7 - a2;
            result = (v7 - a2);
            goto LABEL_37;
          }

          return 0xFFFFFFFFLL;
        }

        goto LABEL_28;
      }

      v7 += 2;
LABEL_29:
      v6 = *(a1 + 8);
      if (v7 >= v6)
      {
        goto LABEL_30;
      }
    }

    LOBYTE(v13) = 92;
    goto LABEL_24;
  }

  for (i = a2 + 1; i < v6; i += v11)
  {
    v10 = *(*a1 + i);
    if (v10 <= 0x5B)
    {
      if (v10 == 10 || v10 == 60)
      {
        return 0xFFFFFFFFLL;
      }

      if (v10 == 62)
      {
        ++i;
        break;
      }
    }

    else if (v10 == 92)
    {
      v11 = 2;
      continue;
    }

    v11 = 1;
  }

  if (i >= v6)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v8 + 1;
  result = (i - a2);
  v16 = result - 2;
LABEL_37:
  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 12) = 0;
  return result;
}

uint64_t cmark_inline_parser_peek_char(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (v1 >= *(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  result = *(v2 + v1);
  if (!*(v2 + v1))
  {
    cmark_parse_inlines_cold_1();
  }

  return result;
}

_BYTE *cmark_inline_parser_take_while (uint64_t a1, unsigned int (*a2)(void))
{
  v3 = *(a1 + 28);
  if (v3 >= *(a1 + 16))
  {
    v5 = 0;
  }

  else
  {
    LODWORD(v5) = 0;
    v6 = *(a1 + 28);
    do
    {
      if (!*(*(a1 + 8) + v6))
      {
        cmark_parse_inlines_cold_1();
      }

      if (!a2())
      {
        break;
      }

      v6 = *(a1 + 28) + 1;
      *(a1 + 28) = v6;
      LODWORD(v5) = v5 + 1;
    }

    while (v6 < *(a1 + 16));
    v5 = v5;
  }

  v7 = v3;
  v8 = *(a1 + 8);
  v9 = strlen((v8 + v7));
  if (v9 >= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  result = malloc_type_malloc(v10 + 1, 0x100004077774924uLL);
  if (result)
  {
    result[v10] = 0;

    return memcpy(result, (v8 + v7), v10);
  }

  return result;
}

uint64_t cmark_inline_parser_push_delimiter(uint64_t a1, char a2, int a3, int a4, uint64_t a5)
{
  v8 = a3 != 0;
  v9 = a4 != 0;
  result = (**a1)(1, 40);
  *(result + 28) = a2;
  *(result + 32) = v8;
  *(result + 36) = v9;
  *(result + 16) = a5;
  *(result + 24) = *(a5 + 136);
  v11 = *(a1 + 48);
  *result = v11;
  *(result + 8) = 0;
  if (v11)
  {
    *(v11 + 8) = result;
  }

  *(a1 + 48) = result;
  return result;
}

uint64_t cmark_inline_parser_scan_delimiters(uint64_t a1, int a2, int a3, _BOOL4 *a4, _BOOL4 *a5, _DWORD *a6, _DWORD *a7)
{
  v32 = 0;
  v14 = *(a1 + 28);
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = 0;
  v16 = *(a1 + 8);
  do
  {
    v17 = v14 - 1;
    ++v15;
    if (v14 < 2)
    {
      break;
    }

    v18 = *(v16 + v14-- - 1) & 0xC0;
  }

  while (v18 == 128);
  if (cmark_utf8proc_iterate((v16 + v17), v15, &v32) == -1)
  {
LABEL_6:
    LODWORD(v32) = 10;
  }

  v19 = 0;
  v20 = *(a1 + 16);
  v21 = *(a1 + 28);
  v22 = v21 << 32;
  for (i = v21; ; ++i)
  {
    if (i >= v20)
    {
      v24 = 0;
    }

    else
    {
      v24 = *(*(a1 + 8) + i);
      if (!*(*(a1 + 8) + i))
      {
        cmark_parse_inlines_cold_1();
      }
    }

    if (v24 != a3 || v19 >= a2)
    {
      break;
    }

    v25 = v21 + 1 + v19;
    v19 = (v19 + 1);
    *(a1 + 28) = v25;
    v22 += 0x100000000;
  }

  if (cmark_utf8proc_iterate((*(a1 + 8) + (v22 >> 32)), v20 - v21 - v19, &v32 + 1) == -1)
  {
    HIDWORD(v32) = 10;
  }

  *a6 = cmark_utf8proc_is_punctuation(v32);
  *a7 = cmark_utf8proc_is_punctuation(SHIDWORD(v32));
  is_space = cmark_utf8proc_is_space(v32);
  v27 = cmark_utf8proc_is_space(HIDWORD(v32));
  if (v19)
  {
    v28 = v27;
    if (cmark_utf8proc_is_space(HIDWORD(v32)))
    {
      v29 = 0;
    }

    else
    {
      v29 = 1;
      if (*a7 && !is_space)
      {
        v29 = *a6 != 0;
      }
    }

    *a4 = v29;
    if (cmark_utf8proc_is_space(v32))
    {
      v30 = 0;
    }

    else
    {
      v30 = 1;
      if (*a6 && !v28)
      {
        v30 = *a7 != 0;
      }
    }
  }

  else
  {
    v30 = 0;
    *a4 = 0;
  }

  *a5 = v30;
  return v19;
}

uint64_t cmark_inline_parser_in_bracket(uint64_t a1, int a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  while (*(v2 + 29) != 1 || *(v2 + 28) != (a2 != 0))
  {
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t cmark_node_unput(uint64_t result, int a2)
{
  if (a2 >= 1)
  {
    v2 = *(result + 56);
    if (v2)
    {
      do
      {
        if (*(v2 + 100) != 49153)
        {
          break;
        }

        v3 = *(v2 + 136);
        v5 = v3 - a2;
        v4 = v3 < a2;
        a2 -= v3;
        v6 = v4 ? 0 : v5;
        *(v2 + 136) = v6;
        v2 = *(v2 + 32);
        v7 = !v4 || a2 < 1;
      }

      while (!v7 && v2 != 0);
    }
  }

  return result;
}

uint64_t make_literal(uint64_t a1, __int16 a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = (**a1)(1, 168);
  cmark_strbuf_init(*a1, v12, 0);
  *(v12 + 100) = a2;
  *(v12 + 128) = a5;
  *(v12 + 136) = a6;
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 36) + 1;
  *(v12 + 80) = v13;
  *(v12 + 84) = v15 + a3 + v14;
  *(v12 + 88) = v13;
  *(v12 + 92) = v15 + a4 + v14;
  return v12;
}

uint64_t adjust_subj_node_newlines(uint64_t result, uint64_t a2, int a3, int a4, char a5)
{
  if ((a5 & 2) != 0 && a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(result + 28);
    v8 = (*(result + 8) + v7 - (a4 + a3));
    do
    {
      v9 = *v8++;
      if (v9 == 10)
      {
        ++v6;
        v5 = 0;
      }

      else
      {
        ++v5;
      }

      --a3;
    }

    while (a3);
    if (v6)
    {
      *(result + 24) += v6;
      *(a2 + 88) += v6;
      *(a2 + 92) = v5;
      *(result + 36) = a4 - v7 + v5;
    }
  }

  return result;
}

uint64_t make_autolink(uint64_t a1, int a2, int a3, unsigned __int8 *a4, unint64_t a5, int a6)
{
  v12 = *a1;
  v13 = (**a1)(1, 168);
  cmark_strbuf_init(v12, v13, 0);
  *(v13 + 100) = -16375;
  v27 = *a1;
  v28 = &cmark_strbuf__initbuf;
  v29 = 0;
  if (HIDWORD(a5))
  {
    cmark_clean_url_cold_1();
  }

  if (!a5)
  {
    goto LABEL_16;
  }

  while (cmark_isspace(*a4))
  {
    ++a4;
    LODWORD(a5) = a5 - 1;
    if (!a5)
    {
      goto LABEL_16;
    }
  }

  if (a5 >= 1)
  {
    v14 = a5 - 1;
    while (cmark_isspace(a4[v14]))
    {
      --v14;
      v15 = __OFSUB__(a5, 1);
      LODWORD(a5) = a5 - 1;
      if (((a5 & 0x80000000) != 0) ^ v15 | (a5 == 0))
      {
        LODWORD(a5) = 0;
        goto LABEL_16;
      }
    }

    goto LABEL_13;
  }

  if (!a5)
  {
LABEL_16:
    v18 = 0;
    v17 = 0;
    goto LABEL_17;
  }

LABEL_13:
  if (a6)
  {
    cmark_strbuf_puts(&v27, "mailto:");
  }

  houdini_unescape_html_f(&v27, a4, a5);
  v16 = HIDWORD(v29);
  v17 = cmark_strbuf_detach(&v27);
  v18 = v16 | 0x100000000;
LABEL_17:
  *(v13 + 128) = v17;
  *(v13 + 136) = v18;
  *(v13 + 144) = "";
  *(v13 + 152) = 0;
  v19 = *(a1 + 24);
  v20 = a2 + 1;
  *(v13 + 80) = v19;
  *(v13 + 84) = v20;
  *(v13 + 88) = v19;
  *(v13 + 92) = a3 + 1;
  v27 = *a1;
  v28 = &cmark_strbuf__initbuf;
  v29 = 0;
  if (houdini_unescape_html(&v27, a4, a5))
  {
    v21 = HIDWORD(v29);
    a4 = cmark_strbuf_detach(&v27);
    v22 = v21 | 0x100000000;
  }

  else
  {
    v22 = a5;
  }

  v23 = (**a1)(1, 168);
  cmark_strbuf_init(*a1, v23, 0);
  *(v23 + 136) = v22;
  v24 = *(a1 + 36) + *(a1 + 32) + 1;
  *(v23 + 100) = -16383;
  *(v23 + 128) = a4;
  v25 = *(a1 + 24);
  *(v23 + 80) = v25;
  *(v23 + 84) = v24 + v20;
  *(v23 + 88) = v25;
  *(v23 + 92) = a3 + v24 - 1;
  cmark_node_append_child(v13, v23);
  return v13;
}

_BYTE *chunk_clone(uint64_t (**a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = (*a1)(v3 + 1, 1);
  v5 = v4;
  if (v3)
  {
    memcpy(v4, *a2, v3);
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v5[v6] = 0;
  return v5;
}

void *create_strikethrough_extension()
{
  v0 = cmark_syntax_extension_new("strikethrough");
  cmark_syntax_extension_set_get_type_string_func(v0, get_type_string);
  cmark_syntax_extension_set_can_contain_func(v0, can_contain);
  cmark_syntax_extension_set_commonmark_render_func(v0, commonmark_render);
  cmark_syntax_extension_set_latex_render_func(v0, latex_render);
  cmark_syntax_extension_set_man_render_func(v0, man_render);
  cmark_syntax_extension_set_html_render_func(v0, html_render);
  cmark_syntax_extension_set_plaintext_render_func(v0, plaintext_render);
  CMARK_NODE_STRIKETHROUGH = cmark_syntax_extension_add_node(1);
  cmark_syntax_extension_set_match_inline_func(v0, match);
  cmark_syntax_extension_set_inline_from_delim_func(v0, insert);
  default_mem_allocator = cmark_get_default_mem_allocator();
  v2 = cmark_llist_append(default_mem_allocator, 0, 126);
  cmark_syntax_extension_set_special_inline_chars(v0, v2);
  cmark_syntax_extension_set_emphasis(v0, 1);
  return v0;
}

const char *get_type_string(uint64_t a1, uint64_t a2)
{
  if (CMARK_NODE_STRIKETHROUGH == *(a2 + 100))
  {
    return "strikethrough";
  }

  else
  {
    return "<unknown>";
  }
}

uint64_t latex_render(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 2)
  {
    v5 = "\\sout{";
  }

  else
  {
    v5 = "}";
  }

  return (*(a2 + 72))(a2, a3, v5, 0, 0);
}

uint64_t man_render(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 2)
  {
    (*(a2 + 56))(a2);
    v6 = *(a2 + 72);

    return v6(a2, a3, ".ST ", 0, 0);
  }

  else
  {
    (*(a2 + 72))(a2, a3, "", 0, 0);
    v8 = *(a2 + 56);

    return v8(a2);
  }
}

_DWORD *html_render(uint64_t a1, _DWORD **a2, uint64_t a3, int a4)
{
  v4 = *a2;
  if (a4 == 2)
  {
    v5 = "<del>";
  }

  else
  {
    v5 = "</del>";
  }

  return cmark_strbuf_puts(v4, v5);
}

_DWORD *match(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a4 != 126)
  {
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v7 = cmark_inline_parser_scan_delimiters(a5, 100, 126, &v12 + 1, &v12, &v11 + 1, &v11);
  __memset_chk();
  __s[v7] = 0;
  v8 = cmark_node_new_with_mem(0xC001u, *a2);
  cmark_node_set_literal(v8, __s);
  line = cmark_inline_parser_get_line(a5);
  v8[22] = line;
  v8[20] = line;
  v8[21] = cmark_inline_parser_get_column(a5) - v7;
  if (v12 && (v7 == 2 || v7 == 1 && (*(a2 + 120) & 0x4000) == 0))
  {
    cmark_inline_parser_push_delimiter(a5, 126, SHIDWORD(v12), v12, v8);
  }

  return v8;
}

uint64_t insert(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v5 = a4[2];
  v6 = a5[1];
  if (*(v5 + 136) == *(a5[2] + 136))
  {
    v7 = a5;
    if (cmark_node_set_type(a4[2], CMARK_NODE_STRIKETHROUGH))
    {
      cmark_node_set_syntax_extension(v5, a1);
      v11 = cmark_node_next(a4[2]);
      if (v11)
      {
        v12 = v11;
        do
        {
          if (v12 == v7[2])
          {
            break;
          }

          v13 = cmark_node_next(v12);
          cmark_node_append_child(v5, v12);
          v12 = v13;
        }

        while (v13);
      }

      v14 = v7[2];
      *(v5 + 92) = *(v14 + 84) + *(v14 + 136) - 1;
      cmark_node_free(v14);
      if (v7 != a4)
      {
        do
        {
          v15 = *v7;
          cmark_inline_parser_remove_delimiter(a3, v7);
          if (v15)
          {
            v16 = v15 == a4;
          }

          else
          {
            v16 = 1;
          }

          v7 = v15;
        }

        while (!v16);
      }

      cmark_inline_parser_remove_delimiter(a3, a4);
    }
  }

  return v6;
}

BOOL cmark_node_can_contain_type(uint64_t a1, int a2)
{
  if (a2 == 32769)
  {
    return 0;
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    v6 = *(v5 + 80);
    if (v6)
    {
      return v6(v5, a1) != 0;
    }
  }

  v7 = *(a1 + 100);
  if (v7 <= 0x8007)
  {
    if (*(a1 + 100) > 0x8003u)
    {
      if (v7 != 32772)
      {
        return v7 == 32775;
      }
    }

    else if (v7 - 32769 >= 2)
    {
      if (v7 == 32771)
      {
        return a2 == 32772;
      }

      return 0;
    }

    return a2 != 32772 && (a2 & 0xC000) == 0x8000;
  }

  if (v7 - 49158 >= 5 && v7 - 32776 >= 2)
  {
    if (v7 != 32779)
    {
      return 0;
    }

    return a2 != 32772 && (a2 & 0xC000) == 0x8000;
  }

  return (~a2 & 0xC000) == 0;
}

uint64_t cmark_node_new_with_mem_and_ext(unsigned __int16 a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = (*a2)(1, 168);
  cmark_strbuf_init(a2, v6, 0);
  *(v6 + 100) = a1;
  *(v6 + 104) = a3;
  if (a1 == 32771)
  {
    *(v6 + 128) = 1;
    *(v6 + 140) = 0;
    *(v6 + 149) = 0;
    if (!a3)
    {
      return v6;
    }

    goto LABEL_7;
  }

  if (a1 == 32777)
  {
    *(v6 + 128) = 1;
  }

  if (a3)
  {
LABEL_7:
    v7 = *(a3 + 160);
    if (v7)
    {
      v7(a3, a2, v6);
    }
  }

  return v6;
}

uint64_t cmark_node_free(void *a1)
{
  v1 = a1;
  S_node_unlink(a1);
  v1[3] = 0;
  do
  {
    cmark_strbuf_free(v1);
    if (v1[8])
    {
      v2 = v1[9];
      if (v2)
      {
        v2(*v1);
      }
    }

    if (v1[16])
    {
      v3 = v1[13];
      if (v3)
      {
        v4 = *(v3 + 168);
        if (v4)
        {
          v4();
        }
      }
    }

    free_node_as(v1);
    v5 = v1[7];
    v6 = v1[3];
    if (v5)
    {
      *(v5 + 24) = v6;
      v6 = v1[6];
      v1[3] = v6;
    }

    result = (*(*v1 + 16))(v1);
    v1 = v6;
  }

  while (v6);
  return result;
}

void *S_node_unlink(void *result)
{
  if (result)
  {
    v1 = result[3];
    v2 = result[4];
    if (v2)
    {
      *(v2 + 24) = v1;
    }

    if (v1)
    {
      *(v1 + 32) = v2;
    }

    v3 = result[5];
    if (v3)
    {
      if (*(v3 + 48) == result)
      {
        *(v3 + 48) = v1;
      }

      if (*(v3 + 56) == result)
      {
        *(v3 + 56) = result[4];
      }
    }
  }

  return result;
}

uint64_t cmark_node_get_type(uint64_t result)
{
  if (result)
  {
    return *(result + 100);
  }

  return result;
}

BOOL cmark_node_set_type(uint64_t a1, int a2)
{
  v2 = *(a1 + 100);
  if (v2 != a2)
  {
    v3 = a2;
    *(a1 + 100) = a2;
    result = S_can_contain(*(a1 + 40), a1);
    *(a1 + 100) = v2;
    if (!result)
    {
      return result;
    }

    free_node_as(a1);
    *(a1 + 100) = v3;
  }

  return 1;
}

BOOL S_can_contain(void *a1, uint64_t a2)
{
  if (a1 && a2 && *a1 == *a2)
  {
    v3 = a1;
    while (v3 != a2)
    {
      v3 = v3[5];
      if (!v3)
      {
        return cmark_node_can_contain_type(a1, *(a2 + 100));
      }
    }
  }

  return 0;
}

uint64_t free_node_as(uint64_t result)
{
  v1 = result;
  v2 = *(result + 100);
  if (v2 <= 0x800A)
  {
    if (v2 != 32773)
    {
      if (v2 == 32774)
      {
LABEL_15:
        v4 = (result + 128);
        if (!*(result + 140))
        {
LABEL_17:
          *v4 = 0;
          v4[1] = 0;
          return result;
        }

LABEL_16:
        result = (*(*v1 + 16))(*v4);
        goto LABEL_17;
      }

      if (v2 != 32775)
      {
        return result;
      }
    }

LABEL_11:
    if (*(result + 140))
    {
      result = (*(*result + 16))(*(result + 128));
    }

    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
    v4 = (v1 + 144);
    if (!*(v1 + 156))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v3 = v2 - 1;
  if (v2 - 49153 <= 0xA)
  {
    if (((1 << v3) & 0x419) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << v3) & 0x300) != 0 || v2 == 49158)
    {
      goto LABEL_11;
    }
  }

  if (v2 == 32779)
  {
    goto LABEL_15;
  }

  return result;
}

const char *cmark_node_get_type_string(uint64_t a1)
{
  if (!a1)
  {
    return "NONE";
  }

  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      return v3();
    }
  }

  v5 = *(a1 + 100);
  if (v5 <= 0x8009)
  {
    if (*(a1 + 100) > 0x8004u)
    {
      if (*(a1 + 100) > 0x8006u)
      {
        switch(v5)
        {
          case 0x8007u:
            return "custom_block";
          case 0x8008u:
            return "paragraph";
          case 0x8009u:
            return "heading";
        }

        return "<unknown>";
      }

      if (v5 == 32773)
      {
        return "code_block";
      }

      else
      {
        return "html_block";
      }
    }

    else
    {
      if (*(a1 + 100) <= 0x8001u)
      {
        if (!*(a1 + 100))
        {
          return "none";
        }

        if (v5 == 32769)
        {
          return "document";
        }

        return "<unknown>";
      }

      if (v5 == 32770)
      {
        return "block_quote";
      }

      else if (v5 == 32771)
      {
        return "list";
      }

      else
      {
        return "item";
      }
    }
  }

  else
  {
    if (*(a1 + 100) > 0xC004u)
    {
      if (*(a1 + 100) <= 0xC007u)
      {
        if (v5 == 49157)
        {
          return "html_inline";
        }

        if (v5 == 49158)
        {
          return "custom_inline";
        }

        return "emph";
      }

      switch(v5)
      {
        case 0xC008u:
          return "strong";
        case 0xC009u:
          return "link";
        case 0xC00Au:
          return "image";
      }

      return "<unknown>";
    }

    if (*(a1 + 100) <= 0xC001u)
    {
      if (v5 == 32778)
      {
        return "thematic_break";
      }

      if (v5 == 49153)
      {
        return "text";
      }

      return "<unknown>";
    }

    if (v5 == 49154)
    {
      return "softbreak";
    }

    else if (v5 == 49155)
    {
      return "linebreak";
    }

    else
    {
      return "code";
    }
  }
}

uint64_t cmark_node_next(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t cmark_node_previous(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t cmark_node_parent(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t cmark_node_first_child(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t cmark_node_last_child(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t cmark_node_get_user_data(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t cmark_node_set_user_data(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 64) = a2;
    return 1;
  }

  return result;
}

uint64_t cmark_node_set_user_data_free_func(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 72) = a2;
    return 1;
  }

  return result;
}

_BYTE *cmark_node_get_literal(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 100);
  if ((v2 - 49153) <= 0xA && ((1 << (v2 - 1)) & 0x419) != 0)
  {
LABEL_6:
    if (*(a1 + 140))
    {
      return *(a1 + 128);
    }

    v5 = (**a1)(*(a1 + 136) + 1, 1);
    v4 = v5;
    v6 = *(a1 + 136);
    if (v6 >= 1)
    {
      memcpy(v5, *(a1 + 128), v6);
      LODWORD(v6) = *(a1 + 136);
    }

    v4[v6] = 0;
    *(a1 + 128) = v4;
    *(a1 + 140) = 1;
    return v4;
  }

  if (v2 != 32773)
  {
    if (v2 == 32774)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (*(a1 + 156))
  {
    return *(a1 + 144);
  }

  v7 = (**a1)(*(a1 + 152) + 1, 1);
  v4 = v7;
  v8 = *(a1 + 152);
  if (v8 >= 1)
  {
    memcpy(v7, *(a1 + 144), v8);
    LODWORD(v8) = *(a1 + 152);
  }

  v4[v8] = 0;
  *(a1 + 144) = v4;
  *(a1 + 156) = 1;
  return v4;
}

uint64_t cmark_node_set_literal(uint64_t result, char *__s)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 100);
    if ((v4 - 49153) <= 0xA && ((1 << (v4 - 1)) & 0x419) != 0)
    {
      goto LABEL_6;
    }

    if (v4 != 32773)
    {
      if (v4 != 32774)
      {
        return 0;
      }

LABEL_6:
      v6 = *result;
      if (*(result + 140))
      {
        v7 = *(result + 128);
        if (__s)
        {
LABEL_8:
          v8 = strlen(__s);
          *(v3 + 136) = v8;
          v9 = (*v6)(v8 + 1, 1);
          *(v3 + 128) = v9;
          *(v3 + 140) = 1;
          v10 = *(v3 + 136);
          goto LABEL_9;
        }
      }

      else
      {
        v7 = 0;
        if (__s)
        {
          goto LABEL_8;
        }
      }

      *(result + 128) = 0;
      *(result + 136) = 0;
      if (!v7)
      {
        return 1;
      }

      goto LABEL_10;
    }

    v6 = *result;
    if (*(result + 156))
    {
      v7 = *(result + 144);
      if (__s)
      {
LABEL_21:
        v11 = strlen(__s);
        *(v3 + 152) = v11;
        v9 = (*v6)(v11 + 1, 1);
        *(v3 + 144) = v9;
        *(v3 + 156) = 1;
        v10 = *(v3 + 152);
LABEL_9:
        memcpy(v9, __s, v10 + 1);
        if (!v7)
        {
          return 1;
        }

LABEL_10:
        (*(v6 + 16))(v7);
        return 1;
      }
    }

    else
    {
      v7 = 0;
      if (__s)
      {
        goto LABEL_21;
      }
    }

    *(result + 144) = 0;
    *(result + 152) = 0;
    if (!v7)
    {
      return 1;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t cmark_node_get_heading_level(uint64_t result)
{
  if (result)
  {
    if (*(result + 100) == 32777)
    {
      return *(result + 128);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_set_heading_level(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 - 7) >= 0xFFFFFFFA)
  {
    if (*(a1 + 100) == 32777)
    {
      *(a1 + 128) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_get_list_type(uint64_t result)
{
  if (result)
  {
    if (*(result + 100) == 32771)
    {
      return *(result + 128);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_set_list_type(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 - 3) >= 0xFFFFFFFE)
  {
    if (*(a1 + 100) == 32771)
    {
      *(a1 + 128) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_get_list_delim(uint64_t result)
{
  if (result)
  {
    if (*(result + 100) == 32771)
    {
      return *(result + 144);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_set_list_delim(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 - 3) >= 0xFFFFFFFE)
  {
    if (*(a1 + 100) == 32771)
    {
      *(a1 + 144) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_get_list_start(uint64_t result)
{
  if (result)
  {
    if (*(result + 100) == 32771)
    {
      return *(result + 140);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_set_list_start(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (*(a1 + 100) == 32771)
    {
      *(a1 + 140) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_get_list_tight(uint64_t result)
{
  if (result)
  {
    if (*(result + 100) == 32771)
    {
      return *(result + 149);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_set_list_tight(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 100) == 32771)
    {
      *(result + 149) = a2 == 1;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_BYTE *cmark_node_get_fence_info(uint64_t a1)
{
  if (!a1 || *(a1 + 100) != 32773)
  {
    return 0;
  }

  if (*(a1 + 140))
  {
    return *(a1 + 128);
  }

  v4 = (**a1)(*(a1 + 136) + 1, 1);
  v2 = v4;
  v5 = *(a1 + 136);
  if (v5 >= 1)
  {
    memcpy(v4, *(a1 + 128), v5);
    LODWORD(v5) = *(a1 + 136);
  }

  v2[v5] = 0;
  *(a1 + 128) = v2;
  *(a1 + 140) = 1;
  return v2;
}

uint64_t cmark_node_set_fence_info(uint64_t result, char *__s)
{
  if (result)
  {
    v2 = result;
    if (*(result + 100) == 32773)
    {
      v4 = *result;
      if (*(result + 140))
      {
        v5 = *(result + 128);
        if (__s)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = 0;
        if (__s)
        {
LABEL_5:
          v6 = strlen(__s);
          *(v2 + 136) = v6;
          v7 = (*v4)(v6 + 1, 1);
          *(v2 + 128) = v7;
          *(v2 + 140) = 1;
          memcpy(v7, __s, *(v2 + 136) + 1);
          if (!v5)
          {
            return 1;
          }

LABEL_6:
          (*(v4 + 16))(v5);
          return 1;
        }
      }

      *(result + 128) = 0;
      *(result + 136) = 0;
      if (!v5)
      {
        return 1;
      }

      goto LABEL_6;
    }

    return 0;
  }

  return result;
}

uint64_t cmark_node_get_fenced(uint64_t result, _DWORD *a2, _DWORD *a3, _BYTE *a4)
{
  if (result)
  {
    if (*(result + 100) == 32773)
    {
      *a2 = *(result + 160);
      *a3 = *(result + 161);
      *a4 = *(result + 162);
      return *(result + 163);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_node_set_fenced(uint64_t a1, char a2, char a3, char a4, char a5)
{
  if (!a1 || *(a1 + 100) != 32773)
  {
    return 0;
  }

  *(a1 + 163) = a2;
  *(a1 + 160) = a3;
  *(a1 + 161) = a4;
  v5 = 1;
  *(a1 + 162) = a5;
  return v5;
}

_BYTE *cmark_node_get_url(uint64_t a1)
{
  if (!a1 || (*(a1 + 100) + 16375) > 1u)
  {
    return 0;
  }

  if (*(a1 + 140))
  {
    return *(a1 + 128);
  }

  v4 = (**a1)(*(a1 + 136) + 1, 1);
  v2 = v4;
  v5 = *(a1 + 136);
  if (v5 >= 1)
  {
    memcpy(v4, *(a1 + 128), v5);
    LODWORD(v5) = *(a1 + 136);
  }

  v2[v5] = 0;
  *(a1 + 128) = v2;
  *(a1 + 140) = 1;
  return v2;
}

uint64_t cmark_node_set_url(uint64_t result, char *__s)
{
  if (result)
  {
    v2 = result;
    if ((*(result + 100) + 16375) <= 1u)
    {
      v4 = *result;
      if (*(result + 140))
      {
        v5 = *(result + 128);
        if (__s)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = 0;
        if (__s)
        {
LABEL_5:
          v6 = strlen(__s);
          *(v2 + 136) = v6;
          v7 = (*v4)(v6 + 1, 1);
          *(v2 + 128) = v7;
          *(v2 + 140) = 1;
          memcpy(v7, __s, *(v2 + 136) + 1);
          if (!v5)
          {
            return 1;
          }

LABEL_6:
          (*(v4 + 16))(v5);
          return 1;
        }
      }

      *(result + 128) = 0;
      *(result + 136) = 0;
      if (!v5)
      {
        return 1;
      }

      goto LABEL_6;
    }

    return 0;
  }

  return result;
}

_BYTE *cmark_node_get_title(uint64_t a1)
{
  if (!a1 || (*(a1 + 100) + 16375) > 1u)
  {
    return 0;
  }

  if (*(a1 + 156))
  {
    return *(a1 + 144);
  }

  v4 = (**a1)(*(a1 + 152) + 1, 1);
  v2 = v4;
  v5 = *(a1 + 152);
  if (v5 >= 1)
  {
    memcpy(v4, *(a1 + 144), v5);
    LODWORD(v5) = *(a1 + 152);
  }

  v2[v5] = 0;
  *(a1 + 144) = v2;
  *(a1 + 156) = 1;
  return v2;
}

uint64_t cmark_node_set_title(uint64_t result, char *__s)
{
  if (result)
  {
    v2 = result;
    if ((*(result + 100) + 16375) <= 1u)
    {
      v4 = *result;
      if (*(result + 156))
      {
        v5 = *(result + 144);
        if (__s)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = 0;
        if (__s)
        {
LABEL_5:
          v6 = strlen(__s);
          *(v2 + 152) = v6;
          v7 = (*v4)(v6 + 1, 1);
          *(v2 + 144) = v7;
          *(v2 + 156) = 1;
          memcpy(v7, __s, *(v2 + 152) + 1);
          if (!v5)
          {
            return 1;
          }

LABEL_6:
          (*(v4 + 16))(v5);
          return 1;
        }
      }

      *(result + 144) = 0;
      *(result + 152) = 0;
      if (!v5)
      {
        return 1;
      }

      goto LABEL_6;
    }

    return 0;
  }

  return result;
}

_BYTE *cmark_node_get_on_enter(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 100);
  if (v2 != 49158 && v2 != 32775)
  {
    return 0;
  }

  if (*(a1 + 140))
  {
    return *(a1 + 128);
  }

  v5 = (**a1)(*(a1 + 136) + 1, 1);
  v4 = v5;
  v6 = *(a1 + 136);
  if (v6 >= 1)
  {
    memcpy(v5, *(a1 + 128), v6);
    LODWORD(v6) = *(a1 + 136);
  }

  v4[v6] = 0;
  *(a1 + 128) = v4;
  *(a1 + 140) = 1;
  return v4;
}

uint64_t cmark_node_set_on_enter(uint64_t result, char *__s)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 100);
    if (v3 != 49158 && v3 != 32775)
    {
      return 0;
    }

    v6 = *result;
    if (*(result + 140))
    {
      v7 = *(result + 128);
      if (__s)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = 0;
      if (__s)
      {
LABEL_9:
        v8 = strlen(__s);
        *(v2 + 136) = v8;
        v9 = (*v6)(v8 + 1, 1);
        *(v2 + 128) = v9;
        *(v2 + 140) = 1;
        memcpy(v9, __s, *(v2 + 136) + 1);
        if (!v7)
        {
          return 1;
        }

LABEL_10:
        (*(v6 + 16))(v7);
        return 1;
      }
    }

    *(result + 128) = 0;
    *(result + 136) = 0;
    if (!v7)
    {
      return 1;
    }

    goto LABEL_10;
  }

  return result;
}

_BYTE *cmark_node_get_on_exit(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 100);
  if (v2 != 49158 && v2 != 32775)
  {
    return 0;
  }

  if (*(a1 + 156))
  {
    return *(a1 + 144);
  }

  v5 = (**a1)(*(a1 + 152) + 1, 1);
  v4 = v5;
  v6 = *(a1 + 152);
  if (v6 >= 1)
  {
    memcpy(v5, *(a1 + 144), v6);
    LODWORD(v6) = *(a1 + 152);
  }

  v4[v6] = 0;
  *(a1 + 144) = v4;
  *(a1 + 156) = 1;
  return v4;
}

uint64_t cmark_node_set_on_exit(uint64_t result, char *__s)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 100);
    if (v3 != 49158 && v3 != 32775)
    {
      return 0;
    }

    v6 = *result;
    if (*(result + 156))
    {
      v7 = *(result + 144);
      if (__s)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = 0;
      if (__s)
      {
LABEL_9:
        v8 = strlen(__s);
        *(v2 + 152) = v8;
        v9 = (*v6)(v8 + 1, 1);
        *(v2 + 144) = v9;
        *(v2 + 156) = 1;
        memcpy(v9, __s, *(v2 + 152) + 1);
        if (!v7)
        {
          return 1;
        }

LABEL_10:
        (*(v6 + 16))(v7);
        return 1;
      }
    }

    *(result + 144) = 0;
    *(result + 152) = 0;
    if (!v7)
    {
      return 1;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t cmark_node_get_syntax_extension(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

uint64_t cmark_node_set_syntax_extension(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 104) = a2;
    return 1;
  }

  return result;
}

uint64_t cmark_node_get_start_line(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t cmark_node_get_start_column(uint64_t result)
{
  if (result)
  {
    return *(result + 84);
  }

  return result;
}

uint64_t cmark_node_get_end_line(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t cmark_node_get_end_column(uint64_t result)
{
  if (result)
  {
    return *(result + 92);
  }

  return result;
}

void *cmark_node_unlink(void *a1)
{
  result = S_node_unlink(a1);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  return result;
}

uint64_t cmark_node_insert_before(uint64_t a1, void *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 40);
      if (result)
      {
        result = S_can_contain(result, a2);
        if (result)
        {
          S_node_unlink(a2);
          v5 = *(a1 + 32);
          if (v5)
          {
            *(v5 + 24) = a2;
          }

          a2[3] = a1;
          a2[4] = v5;
          *(a1 + 32) = a2;
          v6 = *(a1 + 40);
          a2[5] = v6;
          result = 1;
          if (!v5)
          {
            if (v6)
            {
              *(v6 + 48) = a2;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t cmark_node_insert_after(uint64_t a1, void *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 40);
      if (result)
      {
        result = S_can_contain(result, a2);
        if (result)
        {
          S_node_unlink(a2);
          v5 = *(a1 + 24);
          if (v5)
          {
            *(v5 + 32) = a2;
          }

          a2[3] = v5;
          a2[4] = a1;
          *(a1 + 24) = a2;
          v6 = *(a1 + 40);
          a2[5] = v6;
          result = 1;
          if (!v5)
          {
            if (v6)
            {
              *(v6 + 56) = a2;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t cmark_node_replace(void *a1, void *a2)
{
  result = cmark_node_insert_before(a1, a2);
  if (result)
  {
    S_node_unlink(a1);
    a1[3] = 0;
    a1[4] = 0;
    result = 1;
    a1[5] = 0;
  }

  return result;
}

BOOL cmark_node_prepend_child(void *a1, void *a2)
{
  result = S_can_contain(a1, a2);
  if (result)
  {
    S_node_unlink(a2);
    v5 = a1[6];
    a2[3] = v5;
    a2[4] = 0;
    a2[5] = a1;
    a1[6] = a2;
    if (v5)
    {
      v6 = (v5 + 32);
    }

    else
    {
      v6 = a1 + 7;
    }

    *v6 = a2;
    return 1;
  }

  return result;
}

BOOL cmark_node_append_child(void *a1, void *a2)
{
  result = S_can_contain(a1, a2);
  if (result)
  {
    S_node_unlink(a2);
    v5 = a1[7];
    a2[3] = 0;
    a2[4] = v5;
    a2[5] = a1;
    a1[7] = a2;
    if (v5)
    {
      v6 = (v5 + 24);
    }

    else
    {
      v6 = a1 + 6;
    }

    *v6 = a2;
    return 1;
  }

  return result;
}

uint64_t cmark_node_check(void *a1, FILE *a2)
{
  if (a1)
  {
    v4 = 0;
    for (i = a1; ; i = *v7)
    {
      v7 = i + 6;
      v6 = i[6];
      if (v6)
      {
        if (*(v6 + 32))
        {
          S_print_error(a2, v6, "prev");
          v6 = *v7;
          *(*v7 + 32) = 0;
          v4 = (v4 + 1);
        }

        if (*(v6 + 40) != i)
        {
          S_print_error(a2, v6, "parent");
LABEL_18:
          *(*v7 + 40) = i;
          v4 = (v4 + 1);
          continue;
        }
      }

      else
      {
        if (i == a1)
        {
          return v4;
        }

        while (1)
        {
          v8 = i[3];
          if (v8)
          {
            break;
          }

          v9 = i[5];
          if (*(v9 + 56) != i)
          {
            S_print_error(a2, v9, "last_child");
            v9 = i[5];
            *(v9 + 56) = i;
            v4 = (v4 + 1);
          }

          i = v9;
          if (v9 == a1)
          {
            return v4;
          }
        }

        if (*(v8 + 32) != i)
        {
          S_print_error(a2, v8, "prev");
          v8 = i[3];
          *(v8 + 32) = i;
          v4 = (v4 + 1);
        }

        v7 = i + 3;
        if (*(v8 + 40) != i[5])
        {
          S_print_error(a2, v8, "parent");
          i = i[5];
          goto LABEL_18;
        }
      }
    }
  }

  return 0;
}

FILE *S_print_error(FILE *result, uint64_t a2, const char *a3)
{
  if (result)
  {
    v5 = result;
    type_string = cmark_node_get_type_string(a2);
    return fprintf(v5, "Invalid '%s' in node type %s at %d:%d\n", a3, type_string, *(a2 + 80), *(a2 + 84));
  }

  return result;
}

uint64_t cmark_iter_new(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    result = (**result)(1, 48);
    *result = v2;
    *(result + 8) = v1;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 2;
    *(result + 40) = v1;
  }

  return result;
}

uint64_t cmark_iter_next(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  *(a1 + 16) = result;
  *(a1 + 24) = v3;
  if (result != 1)
  {
    if (result != 2 || (v4 = *(v3 + 100), (v4 - 49153) < 5) || ((v5 = v4 - 32773, v6 = v5 > 5, v7 = (1 << v5) & 0x23, !v6) ? (v8 = v7 == 0) : (v8 = 1), !v8))
    {
      if (v3 == *(a1 + 8))
      {
        *(a1 + 32) = 1;
        *(a1 + 40) = 0;
        return result;
      }

      v9 = *(v3 + 24);
      if (v9)
      {
        *(a1 + 32) = 2;
        *(a1 + 40) = v9;
        return result;
      }

      v10 = *(v3 + 40);
      if (!v10)
      {
        cmark_iter_next_cold_1();
      }

      v11 = 3;
      goto LABEL_14;
    }

    v10 = *(v3 + 48);
    if (v10)
    {
      v11 = 2;
LABEL_14:
      *(a1 + 32) = v11;
      *(a1 + 40) = v10;
      return result;
    }

    *(a1 + 32) = 3;
  }

  return result;
}

uint64_t cmark_iter_reset(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 32) = a3;
  *(a1 + 40) = a2;
  return cmark_iter_next(a1);
}

void *cmark_consolidate_text_nodes(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v3 = (**result)(1, 48);
    *v3 = v2;
    *(v3 + 8) = v1;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 2;
    *(v3 + 40) = v1;
    v11[0] = v2;
    v11[1] = &cmark_strbuf__initbuf;
    v12 = 0;
    for (i = cmark_iter_next(v3); i != 1; i = cmark_iter_next(v3))
    {
      if (i == 2)
      {
        v5 = *(v3 + 24);
        if (*(v5 + 100) == 49153)
        {
          v6 = *(v5 + 24);
          if (v6)
          {
            if (*(v6 + 100) == 49153)
            {
              cmark_strbuf_clear(v11);
              v7 = (v5 + 128);
              cmark_strbuf_put(v11, *(v5 + 128), *(v5 + 136));
              v8 = *(v5 + 24);
              if (v8)
              {
                do
                {
                  if (*(v8 + 100) != 49153)
                  {
                    break;
                  }

                  cmark_iter_next(v3);
                  cmark_strbuf_put(v11, *(v8 + 128), *(v8 + 136));
                  *(v5 + 92) = *(v8 + 92);
                  v9 = *(v8 + 24);
                  cmark_node_free(v8);
                  v8 = v9;
                }

                while (v9);
              }

              if (*(v5 + 140))
              {
                (*(*v3 + 16))(*v7);
              }

              *v7 = 0;
              *(v5 + 136) = 0;
              v10 = HIDWORD(v12);
              *(v5 + 128) = cmark_strbuf_detach(v11);
              *(v5 + 136) = v10 | 0x100000000;
            }
          }
        }
      }
    }

    cmark_strbuf_free(v11);
    return (*(*v3 + 16))(v3);
  }

  return result;
}

void *cmark_node_own(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v3 = (**result)(1, 48);
    *v3 = v2;
    *(v3 + 8) = v1;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 2;
    *(v3 + 40) = v1;
    for (i = cmark_iter_next(v3); i != 1; i = cmark_iter_next(v3))
    {
      if (i == 2)
      {
        v5 = *(v3 + 24);
        v6 = *(v5 + 100);
        if (v6 <= 0xC003)
        {
          if (v6 != 32774 && v6 != 49153)
          {
            continue;
          }
        }

        else if (v6 - 49156 >= 2)
        {
          if (v6 != 49158 && v6 != 49161)
          {
            continue;
          }

          if (!*(v5 + 140))
          {
            v7 = (**v3)(*(v5 + 136) + 1, 1);
            v8 = v7;
            v9 = *(v5 + 136);
            if (v9 >= 1)
            {
              memcpy(v7, *(v5 + 128), v9);
              LODWORD(v9) = *(v5 + 136);
            }

            v8[v9] = 0;
            *(v5 + 128) = v8;
            *(v5 + 140) = 1;
          }

          v10 = (v5 + 156);
          if (*(v5 + 156))
          {
            continue;
          }

          v11 = (**v3)(*(v5 + 152) + 1, 1);
          v12 = v11;
          v13 = *(v5 + 152);
          if (v13 >= 1)
          {
            memcpy(v11, *(v5 + 144), v13);
            LODWORD(v13) = *(v5 + 152);
          }

          v12[v13] = 0;
          *(v5 + 144) = v12;
          goto LABEL_25;
        }

        v10 = (v5 + 140);
        if (!*(v5 + 140))
        {
          v15 = (**v3)(*(v5 + 136) + 1, 1);
          v16 = v15;
          v17 = *(v5 + 136);
          if (v17 >= 1)
          {
            memcpy(v15, *(v5 + 128), v17);
            LODWORD(v17) = *(v5 + 136);
          }

          v16[v17] = 0;
          *(v5 + 128) = v16;
LABEL_25:
          *v10 = 1;
        }
      }
    }

    v18 = *(*v3 + 16);

    return v18(v3);
  }

  return result;
}

void cmark_arena_push()
{
  v0 = A;
  if (A)
  {
    *(A + 16) = 1;
    A = alloc_arena_chunk(0x2800uLL, v0);
  }
}

void *alloc_arena_chunk(size_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A00400E795F94uLL);
  if (!v4 || (v5 = v4, *v4 = a1, v6 = malloc_type_calloc(1uLL, a1, 0xA2FB558CuLL), (v5[3] = v6) == 0))
  {
    abort();
  }

  v5[4] = a2;
  return v5;
}

uint64_t cmark_arena_pop()
{
  v0 = A;
  if (!A)
  {
    return 0;
  }

  while (!*(v0 + 16))
  {
    free(*(v0 + 24));
    v1 = *(v0 + 32);
    free(v0);
    A = v1;
    v0 = v1;
    if (!v1)
    {
      return 1;
    }
  }

  *(v0 + 16) = 0;
  return 1;
}

void cmark_arena_reset()
{
  v0 = A;
  if (A)
  {
    do
    {
      free(*(v0 + 24));
      v1 = *(v0 + 32);
      free(v0);
      A = v1;
      v0 = v1;
    }

    while (v1);
  }
}

void *arena_calloc(uint64_t a1, uint64_t a2)
{
  v4 = A;
  if (!A)
  {
    v4 = alloc_arena_chunk(0x400000uLL, 0);
    A = v4;
  }

  v5 = a2 * a1 + 15;
  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  v7 = *v4;
  if ((v5 & 0xFFFFFFFFFFFFFFF8) <= *v4)
  {
    v10 = v4[1];
    if (v6 > v7 - v10)
    {
      v4 = alloc_arena_chunk(v7 + (v7 >> 1), v4);
      A = v4;
      v10 = v4[1];
    }

    v9 = (v4[3] + v10);
    v4[1] = v10 + v6;
    *v9 = v6 - 8;
  }

  else
  {
    v8 = alloc_arena_chunk(v5 & 0xFFFFFFFFFFFFFFF8, v4[4]);
    *(A + 32) = v8;
    v9 = v8[3];
  }

  return v9 + 1;
}

void *arena_realloc(void *a1, uint64_t a2)
{
  if (!A)
  {
    A = alloc_arena_chunk(0x400000uLL, 0);
  }

  result = arena_calloc(1, a2);
  if (a1)
  {
    v5 = *(a1 - 1);

    return memcpy(result, a1, v5);
  }

  return result;
}

void cmark_gfm_core_extensions_ensure_registered()
{
  if ((cmark_gfm_core_extensions_ensure_registered_registered & 1) == 0)
  {
    cmark_register_plugin(core_extensions_registration);
    cmark_gfm_core_extensions_ensure_registered_registered = 1;
  }
}

uint64_t core_extensions_registration(void **a1)
{
  table_extension = create_table_extension();
  cmark_plugin_register_syntax_extension(a1, table_extension);
  strikethrough_extension = create_strikethrough_extension();
  cmark_plugin_register_syntax_extension(a1, strikethrough_extension);
  autolink_extension = create_autolink_extension();
  cmark_plugin_register_syntax_extension(a1, autolink_extension);
  tagfilter_extension = create_tagfilter_extension();
  cmark_plugin_register_syntax_extension(a1, tagfilter_extension);
  tasklist_extension = create_tasklist_extension();
  cmark_plugin_register_syntax_extension(a1, tasklist_extension);
  return 1;
}

void *create_table_extension()
{
  v0 = cmark_syntax_extension_new("table");
  cmark_syntax_extension_set_match_block_func(v0, matches);
  cmark_syntax_extension_set_open_block_func(v0, try_opening_table_block);
  cmark_syntax_extension_set_get_type_string_func(v0, get_type_string_0);
  cmark_syntax_extension_set_can_contain_func(v0, can_contain_0);
  cmark_syntax_extension_set_contains_inlines_func(v0, contains_inlines);
  cmark_syntax_extension_set_commonmark_render_func(v0, commonmark_render_0);
  cmark_syntax_extension_set_plaintext_render_func(v0, commonmark_render_0);
  cmark_syntax_extension_set_latex_render_func(v0, latex_render_0);
  cmark_syntax_extension_set_xml_attr_func(v0, xml_attr);
  cmark_syntax_extension_set_man_render_func(v0, man_render_0);
  cmark_syntax_extension_set_html_render_func(v0, html_render_0);
  cmark_syntax_extension_set_opaque_alloc_func(v0, opaque_alloc);
  cmark_syntax_extension_set_opaque_free_func(v0, opaque_free);
  cmark_syntax_extension_set_commonmark_escape_func(v0, escape);
  CMARK_NODE_TABLE = cmark_syntax_extension_add_node(0);
  CMARK_NODE_TABLE_ROW = cmark_syntax_extension_add_node(0);
  CMARK_NODE_TABLE_CELL = cmark_syntax_extension_add_node(0);
  return v0;
}

BOOL matches(uint64_t a1, uint64_t (***a2)(uint64_t, uint64_t), uint64_t a3, int a4, uint64_t a5)
{
  if (cmark_node_get_type(a5) != CMARK_NODE_TABLE)
  {
    return 0;
  }

  cmark_arena_push();
  v8 = a3 + cmark_parser_get_first_nonspace(a2);
  first_nonspace = cmark_parser_get_first_nonspace(a2);
  v10 = row_from_string(a2, v8, a4 - first_nonspace);
  if (v10)
  {
    v11 = v10;
    v12 = *v10 != 0;
    v13 = *a2;
    cmark_llist_free_full(v13, *(v10 + 1), free_table_cell);
    (v13[2])(v11);
  }

  else
  {
    v12 = 0;
  }

  cmark_arena_pop();
  return v12;
}

uint64_t try_opening_table_block(uint64_t a1, int a2, uint64_t (***a3)(uint64_t, uint64_t), uint64_t a4, char *a5, int a6)
{
  type = cmark_node_get_type(a4);
  if (!a2 && type == 32776)
  {
    first_nonspace = cmark_parser_get_first_nonspace(a3);
    if (_ext_scan_at(_scan_table_start, a5, a6, first_nonspace))
    {
      v14 = &a5[cmark_parser_get_first_nonspace(a3)];
      v15 = cmark_parser_get_first_nonspace(a3);
      v16 = row_from_string(a3, v14, a6 - v15);
      if (v16)
      {
        v17 = v16;
        cmark_arena_push();
        string_content = cmark_node_get_string_content(a4);
        v19 = strlen(string_content);
        v20 = row_from_string(a3, string_content, v19);
        if (v20)
        {
          v21 = v20;
          if (*v20 == *v17)
          {
            if (!cmark_arena_pop())
            {
LABEL_11:
              if (cmark_node_set_type(a4, CMARK_NODE_TABLE))
              {
                __s = a5;
                v26 = *(v21 + 1);
                if (v26)
                {
                  v27 = cmark_node_new_with_mem(0x8008u, *a3);
                  v28 = unescape_pipes(*a3, string_content, v26);
                  cmark_strbuf_trim(v28);
                  cmark_node_set_string_content(v27, v28[1]);
                  cmark_strbuf_free(v28);
                  ((*a3)[2])(v28);
                  if (!cmark_node_insert_before(a4, v27))
                  {
                    ((*a3)[2])(v27);
                  }
                }

                cmark_node_set_syntax_extension(a4, a1);
                v29 = (**a3)(1, 16);
                *(a4 + 128) = v29;
                if (CMARK_NODE_TABLE == *(a4 + 100))
                {
                  *v29 = *v21;
                }

                v30 = (**a3)(*v17, 1);
                v31 = *(v17 + 1);
                if (v31)
                {
                  v32 = 0;
                  do
                  {
                    v33 = *v31[1];
                    v34 = *(v33 + 8);
                    v35 = *v34;
                    v36 = v34[*(v33 + 20) - 1];
                    if (v35 == 58 || v36 == 58)
                    {
                      if (v36 == 58 && v35 == 58)
                      {
                        v38 = 99;
                      }

                      else
                      {
                        v38 = 108;
                      }

                      if (v35 == 58)
                      {
                        v39 = v38;
                      }

                      else
                      {
                        v39 = 114;
                      }

                      *(v30 + v32) = v39;
                    }

                    ++v32;
                    v31 = *v31;
                  }

                  while (v31);
                }

                if (CMARK_NODE_TABLE == *(a4 + 100))
                {
                  *(*(a4 + 128) + 8) = v30;
                }

                v40 = cmark_parser_add_child(a3, a4, CMARK_NODE_TABLE_ROW, *(a4 + 84));
                cmark_node_set_syntax_extension(v40, a1);
                v41 = *(a4 + 84);
                v42 = strlen(string_content);
                v43 = *(a4 + 80);
                *(v40 + 88) = v43;
                *(v40 + 92) = v41 + v42 - 2;
                *(v40 + 80) = v43;
                v44 = (**a3)(1, 1);
                *(v40 + 128) = v44;
                *v44 = 1;
                for (i = *(v21 + 1); i; i = *i)
                {
                  v46 = i[1];
                  v47 = cmark_parser_add_child(a3, v40, CMARK_NODE_TABLE_CELL, (v46[2] + *(a4 + 84)));
                  v48 = *(a4 + 80);
                  v49 = *(a4 + 84);
                  v47[20] = v48;
                  v50 = v46[4];
                  v51 = v46[3] + v49;
                  v47[22] = v48;
                  v47[23] = v51;
                  v47[24] = v50;
                  cmark_node_set_string_content(v47, *(*v46 + 8));
                  cmark_node_set_syntax_extension(v47, a1);
                }

                v52 = strlen(__s);
                offset = cmark_parser_get_offset(a3);
                cmark_parser_advance_offset(a3, __s, ~offset + v52, 0);
              }

              v54 = *a3;
              cmark_llist_free_full(*a3, *(v21 + 1), free_table_cell);
              (v54[2])(v21);
              v55 = *a3;
              cmark_llist_free_full(v55, *(v17 + 1), free_table_cell);
              (v55[2])(v17);
              return a4;
            }

            v22 = &a5[cmark_parser_get_first_nonspace(a3)];
            v23 = cmark_parser_get_first_nonspace(a3);
            v17 = row_from_string(a3, v22, a6 - v23);
            v24 = strlen(string_content);
            v25 = row_from_string(a3, string_content, v24);
            v21 = v25;
            if (v17 && v25)
            {
              if (*v25 == *v17)
              {
                goto LABEL_11;
              }
            }

            else if (!v17)
            {
              goto LABEL_58;
            }

            v74 = *a3;
            cmark_llist_free_full(*a3, *(v17 + 1), free_table_cell);
            (v74[2])(v17);
LABEL_58:
            if (v21)
            {
              v75 = *a3;
              cmark_llist_free_full(v75, *(v21 + 1), free_table_cell);
              (v75[2])(v21);
            }

            return a4;
          }

          v72 = *a3;
          cmark_llist_free_full(*a3, *(v17 + 1), free_table_cell);
          (v72[2])(v17);
        }

        else
        {
          v21 = v17;
        }

        v73 = *a3;
        cmark_llist_free_full(v73, *(v21 + 1), free_table_cell);
        (v73[2])(v21);
        cmark_arena_pop();
      }
    }

    return a4;
  }

  v56 = 0;
  if (!a2 && type == CMARK_NODE_TABLE)
  {
    if (cmark_parser_is_blank(a3))
    {
      return 0;
    }

    v56 = cmark_parser_add_child(a3, a4, CMARK_NODE_TABLE_ROW, *(a4 + 84));
    cmark_node_set_syntax_extension(v56, a1);
    *(v56 + 92) = *(a4 + 92);
    *(v56 + 128) = (**a3)(1, 1);
    v57 = &a5[cmark_parser_get_first_nonspace(a3)];
    v58 = cmark_parser_get_first_nonspace(a3);
    v59 = row_from_string(a3, v57, a6 - v58);
    if (!v59)
    {
      cmark_node_free(v56);
      return 0;
    }

    v60 = v59;
    if (CMARK_NODE_TABLE == *(a4 + 100))
    {
      v77 = v59;
      __sa = a5;
      v61 = 0;
      v62 = **(a4 + 128);
      v63 = *(v59 + 1);
      if (v63 && **(a4 + 128))
      {
        v61 = 0;
        do
        {
          v64 = v63[1];
          v65 = cmark_parser_add_child(a3, v56, CMARK_NODE_TABLE_CELL, (v64[2] + *(a4 + 84)));
          v66 = v64[4];
          *(v65 + 92) = v64[3] + *(a4 + 84);
          *(v65 + 96) = v66;
          cmark_node_set_string_content(v65, *(*v64 + 8));
          cmark_node_set_syntax_extension(v65, a1);
          ++v61;
          v63 = *v63;
        }

        while (v63 && v61 < v62);
      }

      v68 = v62 - v61;
      v67 = v62 <= v61;
      v60 = v77;
      a5 = __sa;
      if (!v67)
      {
        do
        {
          v69 = cmark_parser_add_child(a3, v56, CMARK_NODE_TABLE_CELL, 0);
          cmark_node_set_syntax_extension(v69, a1);
          --v68;
        }

        while (v68);
      }
    }

    v70 = *a3;
    cmark_llist_free_full(*a3, *(v60 + 1), free_table_cell);
    (v70[2])(v60);
    v71 = cmark_parser_get_offset(a3);
    cmark_parser_advance_offset(a3, a5, ~v71 + a6, 0);
  }

  return v56;
}

const char *get_type_string_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 100);
  if (CMARK_NODE_TABLE == v2)
  {
    return "table";
  }

  if (CMARK_NODE_TABLE_ROW == v2)
  {
    if (**(a2 + 128))
    {
      return "table_header";
    }

    else
    {
      return "table_row";
    }
  }

  else if (CMARK_NODE_TABLE_CELL == v2)
  {
    return "table_cell";
  }

  else
  {
    return "<unknown>";
  }
}