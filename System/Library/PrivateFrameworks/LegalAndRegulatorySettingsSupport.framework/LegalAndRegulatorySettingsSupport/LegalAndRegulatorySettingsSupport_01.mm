BOOL can_contain_0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 100);
  if (CMARK_NODE_TABLE == v3)
  {
    return CMARK_NODE_TABLE_ROW == a3;
  }

  else if (CMARK_NODE_TABLE_ROW == v3)
  {
    return CMARK_NODE_TABLE_CELL == a3;
  }

  else
  {
    if (CMARK_NODE_TABLE_CELL != v3)
    {
      return 0;
    }

    if (a3 - 49153) < 0xA && ((0x3C9u >> (a3 - 1)))
    {
      return 1;
    }

    return a3 == 49157 || CMARK_NODE_STRIKETHROUGH == a3 || a3 == 49163;
  }
}

void commonmark_render_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a3 + 100);
  if (CMARK_NODE_TABLE == v5)
  {
    v6 = *(a2 + 64);
LABEL_3:

    v6(a2);
    return;
  }

  if (CMARK_NODE_TABLE_ROW == v5)
  {
    if (a4 != 2)
    {
      return;
    }

    (*(a2 + 56))(a2);
    v8 = "|";
    v9 = *(a2 + 72);
    goto LABEL_12;
  }

  if (CMARK_NODE_TABLE_CELL != v5)
  {
    commonmark_render_cold_1();
  }

  v9 = *(a2 + 72);
  if (a4 != 2)
  {
    v9(a2, a3, " |", 0, 0);
    v10 = *(a3 + 40);
    if (**(v10 + 128) != 1 || *(a3 + 24))
    {
      return;
    }

    v11 = *(v10 + 40);
    if (v11 && CMARK_NODE_TABLE == *(v11 + 100))
    {
      v12 = *(*(v11 + 128) + 8);
    }

    else
    {
      v12 = 0;
    }

    v13 = **(v11 + 128);
    (*(a2 + 56))(a2);
    (*(a2 + 72))(a2, a3, "|", 0, 0);
    if (!v13)
    {
LABEL_34:
      v6 = *(a2 + 56);
      goto LABEL_3;
    }

    while (1)
    {
      v15 = *v12++;
      v14 = v15;
      if (v15 > 107)
      {
        if (v14 == 114)
        {
          v16 = " --: |";
          goto LABEL_32;
        }

        if (v14 == 108)
        {
          v16 = " :-- |";
          goto LABEL_32;
        }
      }

      else
      {
        if (!v14)
        {
          v16 = " --- |";
          goto LABEL_32;
        }

        if (v14 == 99)
        {
          v16 = " :-: |";
LABEL_32:
          (*(a2 + 72))(a2, a3, v16, 0, 0);
        }
      }

      if (!--v13)
      {
        goto LABEL_34;
      }
    }
  }

  v8 = " ";
LABEL_12:

  v9(a2, a3, v8, 0, 0);
}

void latex_render_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a3 + 100);
  if (CMARK_NODE_TABLE == v6)
  {
    if (a4 == 2)
    {
      v7 = *(*(a3 + 128) + 8);
      (*(a2 + 56))(a2);
      (*(a2 + 72))(a2, a3, "\\begin{table}", 0, 0);
      (*(a2 + 56))(a2);
      (*(a2 + 72))(a2, a3, "\\begin{tabular}{", 0, 0);
      v8 = *(a3 + 128);
      v9 = *v8;
      if (*v8)
      {
        do
        {
          v11 = *v7++;
          v10 = v11;
          v12 = "l";
          if (v11 > 107)
          {
            if (v10 == 108)
            {
              goto LABEL_11;
            }

            if (v10 == 114)
            {
              v12 = "r";
              goto LABEL_11;
            }
          }

          else
          {
            if (!v10)
            {
              goto LABEL_11;
            }

            if (v10 == 99)
            {
              v12 = "c";
LABEL_11:
              (*(a2 + 72))(a2, a3, v12, 0, 0);
            }
          }

          --v9;
        }

        while (v9);
      }

      (*(a2 + 72))(a2, a3, "}", 0, 0);
    }

    else
    {
      (*(a2 + 72))(a2, a3, "\\end{tabular}", 0, 0);
      (*(a2 + 56))(a2);
      (*(a2 + 72))(a2, a3, "\\end{table}", 0, 0);
    }

LABEL_18:
    v13 = *(a2 + 56);

    v13(a2);
    return;
  }

  if (CMARK_NODE_TABLE_ROW == v6)
  {
    if (a4 == 2)
    {
      return;
    }

    goto LABEL_18;
  }

  if (CMARK_NODE_TABLE_CELL != v6)
  {
    latex_render_cold_1();
  }

  if (a4 != 2)
  {
    v14 = *(a2 + 72);
    if (*(a3 + 24))
    {
      v15 = " & ";
    }

    else
    {
      v15 = " \\\";
    }

    v14(a2, a3, v15, 0, 0);
  }
}

const char *xml_attr(uint64_t a1, uint64_t a2)
{
  if (CMARK_NODE_TABLE_CELL != *(a2 + 100))
  {
    return 0;
  }

  v2 = *(a2 + 40);
  if (!v2 || CMARK_NODE_TABLE_ROW != *(v2 + 100) || !**(v2 + 128))
  {
    return 0;
  }

  v3 = *(v2 + 40);
  if (v3)
  {
    if (CMARK_NODE_TABLE == *(v3 + 100))
    {
      v3 = *(*(v3 + 128) + 8);
    }

    else
    {
      v3 = 0;
    }
  }

  v4 = *(v2 + 48);
  v5 = v4 == 0;
  for (i = 0; !v5 && v4 != a2; ++i)
  {
    v4 = *(v4 + 24);
    v5 = v4 == 0;
  }

  v8 = *(v3 + i);
  if (v8 == 114)
  {
    return " align=right";
  }

  if (v8 != 108)
  {
    if (v8 == 99)
    {
      return " align=center";
    }

    return 0;
  }

  return " align=left";
}

void man_render_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a3 + 100);
  if (CMARK_NODE_TABLE != v6)
  {
    if (CMARK_NODE_TABLE_ROW != v6)
    {
      if (CMARK_NODE_TABLE_CELL != v6)
      {
        man_render_cold_1();
      }

      if (a4 != 2 && *(a3 + 24))
      {
        v14 = *(a2 + 72);

        v14(a2, a3, "@", 0, 0);
      }

      return;
    }

    if (a4 == 2)
    {
      return;
    }

LABEL_19:
    v13 = *(a2 + 56);

    v13(a2);
    return;
  }

  if (a4 != 2)
  {
    (*(a2 + 72))(a2, a3, ".TE", 0, 0);
    goto LABEL_19;
  }

  v7 = *(*(a3 + 128) + 8);
  (*(a2 + 56))(a2);
  (*(a2 + 72))(a2, a3, ".TS", 0, 0);
  (*(a2 + 56))(a2);
  (*(a2 + 72))(a2, a3, "tab(@);", 0, 0);
  (*(a2 + 56))(a2);
  v8 = *(a3 + 128);
  v9 = *v8;
  if (*v8)
  {
    while (1)
    {
      v11 = *v7++;
      v10 = v11;
      if (v11 <= 107)
      {
        if (v10 && v10 != 99)
        {
          goto LABEL_13;
        }

        v12 = "c";
        goto LABEL_12;
      }

      if (v10 == 108)
      {
        break;
      }

      if (v10 == 114)
      {
        v12 = "r";
LABEL_12:
        (*(a2 + 72))(a2, a3, v12, 0, 0);
      }

LABEL_13:
      if (!--v9)
      {
        (*(a2 + 72))(a2, a3, ".", 0, 0);
        goto LABEL_19;
      }
    }

    v12 = "l";
    goto LABEL_12;
  }
}

_DWORD *html_render_0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int16 a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = *(a3 + 100);
  if (CMARK_NODE_TABLE == v9)
  {
    if (a4 == 2)
    {
      v10 = *(v8 + 20);
      if (v10 && *(*(v8 + 8) + v10 - 1) != 10)
      {
        cmark_strbuf_putc(*a2, 10);
      }

      cmark_strbuf_puts(v8, "<table");
      if ((a5 & 2) != 0)
      {
        start_line = cmark_node_get_start_line(a3);
        start_column = cmark_node_get_start_column(a3);
        end_line = cmark_node_get_end_line(a3);
        end_column = cmark_node_get_end_column(a3);
        snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", start_line, start_column, end_line, end_column);
        cmark_strbuf_puts(v8, __str);
      }

      result = cmark_strbuf_putc(v8, 62);
      v16 = *(a2 + 32) & 0xFE;
LABEL_9:
      *(a2 + 32) = v16;
      return result;
    }

    if (*(a2 + 32))
    {
      v19 = *(v8 + 20);
      if (v19 && *(*(v8 + 8) + v19 - 1) != 10)
      {
        cmark_strbuf_putc(*a2, 10);
      }

      cmark_strbuf_puts(v8, "</tbody>");
      v20 = *(v8 + 20);
      if (v20 && *(*(v8 + 8) + v20 - 1) != 10)
      {
        cmark_strbuf_putc(v8, 10);
      }
    }

    *(a2 + 32) &= ~1u;
    v21 = *(v8 + 20);
    if (v21 && *(*(v8 + 8) + v21 - 1) != 10)
    {
      cmark_strbuf_putc(v8, 10);
    }

    result = cmark_strbuf_puts(v8, "</table>");
    v22 = *(v8 + 20);
    if (v22 && *(*(v8 + 8) + v22 - 1) != 10)
    {

      return cmark_strbuf_putc(v8, 10);
    }

    return result;
  }

  if (CMARK_NODE_TABLE_ROW != v9)
  {
    if (CMARK_NODE_TABLE_CELL != v9)
    {
      html_render_cold_1();
    }

    v23 = *(*(a3 + 40) + 40);
    if (v23 && CMARK_NODE_TABLE == *(v23 + 100))
    {
      v24 = *(*(v23 + 128) + 8);
    }

    else
    {
      v24 = 0;
    }

    if (a4 != 2)
    {
      if ((*(a2 + 32) & 2) != 0)
      {
        v33 = "</th>";
      }

      else
      {
        v33 = "</td>";
      }

      return cmark_strbuf_puts(v8, v33);
    }

    v25 = *(v8 + 20);
    if (v25 && *(*(v8 + 8) + v25 - 1) != 10)
    {
      cmark_strbuf_putc(*a2, 10);
    }

    if ((*(a2 + 32) & 2) != 0)
    {
      v26 = "<th";
    }

    else
    {
      v26 = "<td";
    }

    cmark_strbuf_puts(v8, v26);
    v27 = 0;
    v28 = *(*(a3 + 40) + 48);
    if (v28 && v28 != a3)
    {
      v27 = 0;
      do
      {
        v28 = *(v28 + 24);
        ++v27;
        if (v28)
        {
          v29 = v28 == a3;
        }

        else
        {
          v29 = 1;
        }
      }

      while (!v29);
    }

    v30 = *(v24 + v27);
    switch(v30)
    {
      case 'r':
        v31 = "right";
        break;
      case 'l':
        v31 = "left";
        break;
      case 'c':
        v31 = "center";
        break;
      default:
LABEL_81:
        if ((a5 & 2) != 0)
        {
          v35 = cmark_node_get_start_line(a3);
          v36 = cmark_node_get_start_column(a3);
          v37 = cmark_node_get_end_line(a3);
          v38 = cmark_node_get_end_column(a3);
          snprintf(__str, 0x64uLL, " data-sourcepos=%d:%d-%d:%d", v35, v36, v37, v38);
          cmark_strbuf_puts(v8, __str);
        }

        return cmark_strbuf_putc(v8, 62);
    }

    html_table_add_align(v8, v31, a5);
    goto LABEL_81;
  }

  v17 = *(v8 + 20);
  if (a4 == 2)
  {
    if (v17 && *(*(v8 + 8) + v17 - 1) != 10)
    {
      cmark_strbuf_putc(*a2, 10);
    }

    if (**(a3 + 128) == 1)
    {
      *(a2 + 32) |= 2u;
      cmark_strbuf_puts(v8, "<thead>");
      v18 = *(v8 + 20);
      if (v18 && *(*(v8 + 8) + v18 - 1) != 10)
      {
        cmark_strbuf_putc(v8, 10);
      }
    }

    else if ((*(a2 + 32) & 1) == 0)
    {
      cmark_strbuf_puts(v8, "<tbody>");
      v34 = *(v8 + 20);
      if (v34 && *(*(v8 + 8) + v34 - 1) != 10)
      {
        cmark_strbuf_putc(v8, 10);
      }

      *(a2 + 32) |= 1u;
    }

    cmark_strbuf_puts(v8, "<tr");
    goto LABEL_81;
  }

  if (v17 && *(*(v8 + 8) + v17 - 1) != 10)
  {
    cmark_strbuf_putc(*a2, 10);
  }

  result = cmark_strbuf_puts(v8, "</tr>");
  if (**(a3 + 128) == 1)
  {
    v32 = *(v8 + 20);
    if (v32 && *(*(v8 + 8) + v32 - 1) != 10)
    {
      cmark_strbuf_putc(v8, 10);
    }

    result = cmark_strbuf_puts(v8, "</thead>");
    v16 = *(a2 + 32) & 0xFD;
    goto LABEL_9;
  }

  return result;
}

void opaque_alloc(uint64_t a1, uint64_t (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = *(a3 + 100);
  if (CMARK_NODE_TABLE == v3)
  {
    v4 = 16;
  }

  else if (CMARK_NODE_TABLE_ROW == v3)
  {
    v4 = 1;
  }

  else
  {
    if (CMARK_NODE_TABLE_CELL != v3)
    {
      return;
    }

    v4 = 24;
  }

  *(a3 + 128) = (*a2)(1, v4);
}

void opaque_free(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 100);
  if (CMARK_NODE_TABLE == v3)
  {
    v4 = *(a3 + 128);
    v5 = (a2 + 16);
    (*(a2 + 16))(*(v4 + 8));
  }

  else
  {
    if (CMARK_NODE_TABLE_ROW != v3)
    {
      return;
    }

    v4 = *(a3 + 128);
    v5 = (a2 + 16);
  }

  v6 = *v5;

  v6(v4);
}

uint64_t cmark_gfm_extensions_get_table_columns(uint64_t a1)
{
  if (CMARK_NODE_TABLE == *(a1 + 100))
  {
    return **(a1 + 128);
  }

  else
  {
    return 0;
  }
}

uint64_t cmark_gfm_extensions_get_table_alignments(uint64_t a1)
{
  if (CMARK_NODE_TABLE == *(a1 + 100))
  {
    return *(*(a1 + 128) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t cmark_gfm_extensions_set_table_columns(uint64_t result, __int16 a2)
{
  if (result)
  {
    if (CMARK_NODE_TABLE == *(result + 100))
    {
      **(result + 128) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_gfm_extensions_set_table_alignments(uint64_t a1, unsigned int a2, const void *a3)
{
  v5 = a2;
  v6 = (**a1)(1, a2);
  memcpy(v6, a3, v5);
  if (CMARK_NODE_TABLE != *(a1 + 100))
  {
    return 0;
  }

  *(*(a1 + 128) + 8) = v6;
  return 1;
}

uint64_t cmark_gfm_extensions_get_table_row_is_header(uint64_t result)
{
  if (result)
  {
    if (CMARK_NODE_TABLE_ROW == *(result + 100))
    {
      return **(result + 128);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t cmark_gfm_extensions_set_table_row_is_header(uint64_t result, int a2)
{
  if (result)
  {
    if (CMARK_NODE_TABLE_ROW == *(result + 100))
    {
      **(result + 128) = a2 != 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int16 *row_from_string(uint64_t (***a1)(uint64_t, uint64_t), uint64_t a2, int a3)
{
  v6 = (**a1)(1, 16);
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = _ext_scan_at(_scan_table_cell_end, a2, a3, 0);
  while (v7 < a3)
  {
    v8 = _ext_scan_at(_scan_table_cell, a2, a3, v7);
    v9 = v8 + v7;
    v10 = _ext_scan_at(_scan_table_cell_end, a2, a3, v8 + v7);
    if (!(v8 | v10))
    {
      goto LABEL_10;
    }

    v11 = v10;
    v12 = unescape_pipes(*a1, (a2 + v7), v8);
    cmark_strbuf_trim(v12);
    v13 = (**a1)(1, 24);
    *v13 = v12;
    *(v13 + 8) = v7;
    *(v13 + 12) = v9 - 1;
    if (v7 >= 1)
    {
      v14 = v7;
      do
      {
        if (*(a2 - 1 + v14) == 124)
        {
          break;
        }

        ++*(v13 + 16);
        v15 = __OFSUB__(v14--, 1);
        *(v13 + 8) = v14;
      }

      while (!((v14 < 0) ^ v15 | (v14 == 0)));
    }

    v16 = *v6;
    if (v16 == 0xFFFF)
    {
      v18 = 1;
      goto LABEL_15;
    }

    *v6 = v16 + 1;
    *(v6 + 1) = cmark_llist_append(*a1, *(v6 + 1), v13);
    v7 = v9 + v11;
    if (!v11)
    {
LABEL_10:
      v17 = _ext_scan_at(_scan_table_row_end, a2, a3, v7);
      v7 += v17;
      if (!v17 || v7 == a3)
      {
        break;
      }

      *(v6 + 1) = v7;
      cmark_llist_free_full(*a1, *(v6 + 1), free_table_cell);
      *(v6 + 1) = 0;
      *v6 = 0;
      v7 += _ext_scan_at(_scan_table_cell_end, a2, a3, v7);
    }
  }

  v18 = 0;
LABEL_15:
  if (v7 != a3 || ((*v6 != 0) & ~v18) == 0)
  {
    v19 = *a1;
    cmark_llist_free_full(v19, *(v6 + 1), free_table_cell);
    (v19[2])(v6);
    return 0;
  }

  return v6;
}

uint64_t *unescape_pipes(uint64_t (**a1)(uint64_t, uint64_t), const void *a2, int a3)
{
  v6 = (*a1)(1, 24);
  cmark_strbuf_init(a1, v6, a3 + 1);
  cmark_strbuf_put(v6, a2, a3);
  cmark_strbuf_putc(v6, 0);
  if (a3 < 1)
  {
    v11 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v6[1];
      v10 = *(v9 + v8);
      if (v10 == 92)
      {
        if (*(v9 + v8 + 1) == 124)
        {
          ++v8;
        }

        LOBYTE(v10) = *(v9 + v8);
      }

      v11 = v7 + 1;
      *(v9 + v7) = v10;
      ++v8;
      ++v7;
    }

    while (v8 < a3);
  }

  cmark_strbuf_truncate(v6, v11);
  return v6;
}

uint64_t free_table_cell(uint64_t a1, uint64_t *a2)
{
  cmark_strbuf_free(*a2);
  (*(a1 + 16))(*a2);
  v4 = *(a1 + 16);

  return v4(a2);
}

_DWORD *html_table_add_align(_DWORD *a1, char *a2, __int16 a3)
{
  if (a3 < 0)
  {
    v5 = " style=text-align: ";
  }

  else
  {
    v5 = " align=";
  }

  cmark_strbuf_puts(a1, v5);
  cmark_strbuf_puts(a1, a2);

  return cmark_strbuf_puts(a1, "");
}

uint64_t houdini_unescape_ent(_DWORD *a1, char *__s1, int a3)
{
  if (a3 < 3)
  {
    return 0;
  }

  v5 = a1;
  if (*__s1 != 35)
  {
    if (a3 >= 0x20)
    {
      v13 = 32;
    }

    else
    {
      v13 = a3;
    }

    v14 = 2;
    while (1)
    {
      v15 = __s1[v14];
      if (v15 == 32)
      {
        break;
      }

      if (v15 == 59)
      {
        v18 = 0;
        v19 = 2124;
        v20 = 1062;
        while (1)
        {
          v21 = &(&cmark_entities)[2 * v20];
          v22 = *v21;
          v23 = strncmp(__s1, *v21, v14);
          v24 = v23;
          if (!v23 && !v22[v14])
          {
            break;
          }

          if (v20 <= v18 || v23 > 0)
          {
            result = 0;
            v25 = v19 - v20;
            if (v19 <= v20 || v24 < 1)
            {
              return result;
            }

            v18 = v20 + 1;
            if ((v25 + 1) >= 3)
            {
              v20 += v25 / 2;
            }

            else
            {
              v20 += v25 / 2 + 1;
            }
          }

          else
          {
            v19 = v20 - 1;
            v20 = (__PAIR64__(v20 - (v20 - v18) / 2, v20 - v18 + 1) - 3) >> 32;
          }
        }

        cmark_strbuf_puts(v5, v21 + 8);
        return (v14 + 1);
      }

      if (v13 == ++v14)
      {
        return 0;
      }
    }

    return 0;
  }

  v6 = __s1[1];
  if ((v6 - 48) > 9)
  {
    if ((v6 | 0x20) != 0x78)
    {
      return 0;
    }

    v7 = 0;
    v16 = 2;
    while (1)
    {
      v17 = __s1[v16];
      if (!memchr("0123456789ABCDEFabcdef", v17, 0x17uLL))
      {
        break;
      }

      if ((16 * v7 + (v17 | 0x20u) % 0x27 - 9) >= 1114112)
      {
        v7 = 1114112;
      }

      else
      {
        v7 = 16 * v7 + (v17 | 0x20u) % 0x27 - 9;
      }

      if (a3 == ++v16)
      {
        LODWORD(v8) = a3;
        goto LABEL_42;
      }
    }

    LODWORD(v8) = v16;
LABEL_42:
    v11 = v8 - 2;
    v5 = a1;
  }

  else
  {
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = __s1[v8];
      if ((v9 - 48) > 9)
      {
        break;
      }

      v10 = v9 + 10 * v7 - 48;
      if (v10 >= 1114112)
      {
        v7 = 1114112;
      }

      else
      {
        v7 = v10;
      }

      if (a3 == ++v8)
      {
        LODWORD(v8) = a3;
        break;
      }
    }

    v11 = v8 - 1;
  }

  result = 0;
  if (v8 >= a3 || (v11 - 1) > 7)
  {
    return result;
  }

  if (__s1[v8] != 59)
  {
    return 0;
  }

  if (!v7 || v7 >= 1114112 || (v7 & 0xFFFFF800) == 0xD800)
  {
    v7 = 65533;
  }

  cmark_utf8proc_encode_char(v7, v5);
  return (v8 + 1);
}

uint64_t houdini_unescape_html(_DWORD *a1, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    return 1;
  }

  LODWORD(v6) = 0;
  v7 = a3;
  while (1)
  {
    v8 = v6;
    if (a3 <= v6 + 1)
    {
      v9 = v6 + 1;
    }

    else
    {
      v9 = a3;
    }

    v6 = v6;
    while (1)
    {
      v10 = *(a2 + v6);
      if (v10 == 38)
      {
        break;
      }

      if (++v6 >= v7)
      {
        goto LABEL_11;
      }
    }

    v9 = v6;
LABEL_11:
    if (v9 <= v8)
    {
      goto LABEL_14;
    }

    if (!v8)
    {
      break;
    }

LABEL_13:
    cmark_strbuf_put(a1, (a2 + v8), v9 - v8);
LABEL_14:
    if (v10 == 38)
    {
      v11 = v9 + 1;
      v12 = houdini_unescape_ent(a1, (a2 + v11), a3 - v11);
      if (!v12)
      {
        cmark_strbuf_putc(a1, 38);
      }

      LODWORD(v6) = v12 + v11;
      if (v12 + v11 < a3)
      {
        continue;
      }
    }

    return 1;
  }

  if (v10 == 38)
  {
    cmark_strbuf_grow(a1, a3);
    goto LABEL_13;
  }

  return 0;
}

_DWORD *houdini_unescape_html_f(_DWORD *a1, const void *a2, int a3)
{
  result = houdini_unescape_html(a1, a2, a3);
  if (!result)
  {

    return cmark_strbuf_put(a1, a2, a3);
  }

  return result;
}

uint64_t _scan_at(uint64_t (*a1)(uint64_t), uint64_t *a2, int a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(a2 + 2);
  if (v5 < a3)
  {
    return 0;
  }

  v7 = *(v3 + v5);
  *(v3 + v5) = 0;
  result = a1(v3 + a3);
  *(v3 + *(a2 + 2)) = v7;
  return result;
}

uint64_t _scan_scheme(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 < 0x41)
  {
    return 0;
  }

  if (v1 >= 0x5B && v1 - 97 > 0x19)
  {
    return 0;
  }

  v3 = a1[1];
  if (v3 > 0x2F)
  {
    if (v3 > 0x5A)
    {
      if (v3 - 123 < 0xFFFFFFE6)
      {
        return 0;
      }
    }

    else if (v3 - 58 < 7)
    {
      return 0;
    }

LABEL_17:
    v5 = a1 + 2;
    v6 = a1[2];
    if (v6 > 0x39)
    {
      if (v6 > 0x5A)
      {
        if (v6 - 97 > 0x19)
        {
          return 0;
        }
      }

      else
      {
        if (v6 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v6 <= 0x40)
        {
          return 0;
        }
      }
    }

    else if (v6 > 0x2C)
    {
      if (v6 == 47)
      {
        return 0;
      }
    }

    else if (v6 != 43)
    {
      return 0;
    }

    v5 = a1 + 3;
    v7 = a1[3];
    if (v7 > 0x39)
    {
      if (v7 > 0x5A)
      {
        if (v7 - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else
      {
        if (v7 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v7 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v7 > 0x2C)
    {
      if (v7 == 47)
      {
        return 0;
      }
    }

    else if (v7 != 43)
    {
      return 0;
    }

    v5 = a1 + 4;
    v8 = a1[4];
    if (v8 > 0x39)
    {
      if (v8 > 0x5A)
      {
        if (v8 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v8 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v8 > 0x2C)
    {
      if (v8 == 47)
      {
        return 0;
      }
    }

    else if (v8 != 43)
    {
      return 0;
    }

    v5 = a1 + 5;
    v9 = a1[5];
    if (v9 > 0x39)
    {
      if (v9 > 0x5A)
      {
        if (v9 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v9 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v9 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v9 > 0x2C)
    {
      if (v9 == 47)
      {
        return 0;
      }
    }

    else if (v9 != 43)
    {
      return 0;
    }

    v5 = a1 + 6;
    v10 = a1[6];
    if (v10 > 0x39)
    {
      if (v10 > 0x5A)
      {
        if (v10 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v10 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v10 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v10 > 0x2C)
    {
      if (v10 == 47)
      {
        return 0;
      }
    }

    else if (v10 != 43)
    {
      return 0;
    }

    v5 = a1 + 7;
    v11 = a1[7];
    if (v11 > 0x39)
    {
      if (v11 > 0x5A)
      {
        if (v11 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v11 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v11 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v11 > 0x2C)
    {
      if (v11 == 47)
      {
        return 0;
      }
    }

    else if (v11 != 43)
    {
      return 0;
    }

    v5 = a1 + 8;
    v12 = a1[8];
    if (v12 > 0x39)
    {
      if (v12 > 0x5A)
      {
        if (v12 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v12 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v12 > 0x2C)
    {
      if (v12 == 47)
      {
        return 0;
      }
    }

    else if (v12 != 43)
    {
      return 0;
    }

    v5 = a1 + 9;
    v13 = a1[9];
    if (v13 > 0x39)
    {
      if (v13 > 0x5A)
      {
        if (v13 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v13 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v13 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v13 > 0x2C)
    {
      if (v13 == 47)
      {
        return 0;
      }
    }

    else if (v13 != 43)
    {
      return 0;
    }

    v5 = a1 + 10;
    v14 = a1[10];
    if (v14 > 0x39)
    {
      if (v14 > 0x5A)
      {
        if (v14 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v14 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v14 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v14 > 0x2C)
    {
      if (v14 == 47)
      {
        return 0;
      }
    }

    else if (v14 != 43)
    {
      return 0;
    }

    v5 = a1 + 11;
    v15 = a1[11];
    if (v15 > 0x39)
    {
      if (v15 > 0x5A)
      {
        if (v15 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v15 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v15 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v15 > 0x2C)
    {
      if (v15 == 47)
      {
        return 0;
      }
    }

    else if (v15 != 43)
    {
      return 0;
    }

    v5 = a1 + 12;
    v16 = a1[12];
    if (v16 > 0x39)
    {
      if (v16 > 0x5A)
      {
        if (v16 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v16 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v16 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v16 > 0x2C)
    {
      if (v16 == 47)
      {
        return 0;
      }
    }

    else if (v16 != 43)
    {
      return 0;
    }

    v5 = a1 + 13;
    v17 = a1[13];
    if (v17 > 0x39)
    {
      if (v17 > 0x5A)
      {
        if (v17 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v17 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v17 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v17 > 0x2C)
    {
      if (v17 == 47)
      {
        return 0;
      }
    }

    else if (v17 != 43)
    {
      return 0;
    }

    v5 = a1 + 14;
    v18 = a1[14];
    if (v18 > 0x39)
    {
      if (v18 > 0x5A)
      {
        if (v18 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v18 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v18 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v18 > 0x2C)
    {
      if (v18 == 47)
      {
        return 0;
      }
    }

    else if (v18 != 43)
    {
      return 0;
    }

    v5 = a1 + 15;
    v19 = a1[15];
    if (v19 > 0x39)
    {
      if (v19 > 0x5A)
      {
        if (v19 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v19 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v19 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v19 > 0x2C)
    {
      if (v19 == 47)
      {
        return 0;
      }
    }

    else if (v19 != 43)
    {
      return 0;
    }

    v5 = a1 + 16;
    v20 = a1[16];
    if (v20 > 0x39)
    {
      if (v20 > 0x5A)
      {
        if (v20 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v20 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v20 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v20 > 0x2C)
    {
      if (v20 == 47)
      {
        return 0;
      }
    }

    else if (v20 != 43)
    {
      return 0;
    }

    v5 = a1 + 17;
    v21 = a1[17];
    if (v21 > 0x39)
    {
      if (v21 > 0x5A)
      {
        if (v21 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v21 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v21 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v21 > 0x2C)
    {
      if (v21 == 47)
      {
        return 0;
      }
    }

    else if (v21 != 43)
    {
      return 0;
    }

    v5 = a1 + 18;
    v22 = a1[18];
    if (v22 > 0x39)
    {
      if (v22 > 0x5A)
      {
        if (v22 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v22 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v22 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v22 > 0x2C)
    {
      if (v22 == 47)
      {
        return 0;
      }
    }

    else if (v22 != 43)
    {
      return 0;
    }

    v5 = a1 + 19;
    v23 = a1[19];
    if (v23 > 0x39)
    {
      if (v23 > 0x5A)
      {
        if (v23 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v23 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v23 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v23 > 0x2C)
    {
      if (v23 == 47)
      {
        return 0;
      }
    }

    else if (v23 != 43)
    {
      return 0;
    }

    v5 = a1 + 20;
    v24 = a1[20];
    if (v24 > 0x39)
    {
      if (v24 > 0x5A)
      {
        if (v24 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v24 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v24 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v24 > 0x2C)
    {
      if (v24 == 47)
      {
        return 0;
      }
    }

    else if (v24 != 43)
    {
      return 0;
    }

    v5 = a1 + 21;
    v25 = a1[21];
    if (v25 > 0x39)
    {
      if (v25 > 0x5A)
      {
        if (v25 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v25 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v25 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v25 > 0x2C)
    {
      if (v25 == 47)
      {
        return 0;
      }
    }

    else if (v25 != 43)
    {
      return 0;
    }

    v5 = a1 + 22;
    v26 = a1[22];
    if (v26 > 0x39)
    {
      if (v26 > 0x5A)
      {
        if (v26 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v26 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v26 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v26 > 0x2C)
    {
      if (v26 == 47)
      {
        return 0;
      }
    }

    else if (v26 != 43)
    {
      return 0;
    }

    v5 = a1 + 23;
    v27 = a1[23];
    if (v27 > 0x39)
    {
      if (v27 > 0x5A)
      {
        if (v27 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v27 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v27 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v27 > 0x2C)
    {
      if (v27 == 47)
      {
        return 0;
      }
    }

    else if (v27 != 43)
    {
      return 0;
    }

    v5 = a1 + 24;
    v28 = a1[24];
    if (v28 > 0x39)
    {
      if (v28 > 0x5A)
      {
        if (v28 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v28 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v28 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v28 > 0x2C)
    {
      if (v28 == 47)
      {
        return 0;
      }
    }

    else if (v28 != 43)
    {
      return 0;
    }

    v5 = a1 + 25;
    v29 = a1[25];
    if (v29 > 0x39)
    {
      if (v29 > 0x5A)
      {
        if (v29 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v29 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v29 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v29 > 0x2C)
    {
      if (v29 == 47)
      {
        return 0;
      }
    }

    else if (v29 != 43)
    {
      return 0;
    }

    v5 = a1 + 26;
    v30 = a1[26];
    if (v30 > 0x39)
    {
      if (v30 > 0x5A)
      {
        if (v30 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v30 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v30 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v30 > 0x2C)
    {
      if (v30 == 47)
      {
        return 0;
      }
    }

    else if (v30 != 43)
    {
      return 0;
    }

    v5 = a1 + 27;
    v31 = a1[27];
    if (v31 > 0x39)
    {
      if (v31 > 0x5A)
      {
        if (v31 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v31 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v31 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v31 > 0x2C)
    {
      if (v31 == 47)
      {
        return 0;
      }
    }

    else if (v31 != 43)
    {
      return 0;
    }

    v5 = a1 + 28;
    v32 = a1[28];
    if (v32 > 0x39)
    {
      if (v32 > 0x5A)
      {
        if (v32 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v32 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v32 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v32 > 0x2C)
    {
      if (v32 == 47)
      {
        return 0;
      }
    }

    else if (v32 != 43)
    {
      return 0;
    }

    v5 = a1 + 29;
    v33 = a1[29];
    if (v33 > 0x39)
    {
      if (v33 > 0x5A)
      {
        if (v33 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v33 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v33 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v33 > 0x2C)
    {
      if (v33 == 47)
      {
        return 0;
      }
    }

    else if (v33 != 43)
    {
      return 0;
    }

    v5 = a1 + 30;
    v34 = a1[30];
    if (v34 > 0x39)
    {
      if (v34 > 0x5A)
      {
        if (v34 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v34 == 58)
        {
          return (v5 - a1 + 1);
        }

        if (v34 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v34 > 0x2C)
    {
      if (v34 == 47)
      {
        return 0;
      }
    }

    else if (v34 != 43)
    {
      return 0;
    }

    v5 = a1 + 31;
    v35 = a1[31];
    if (v35 <= 0x39)
    {
      if (v35 > 0x2C)
      {
        if (v35 == 47)
        {
          return 0;
        }
      }

      else if (v35 != 43)
      {
        return 0;
      }

LABEL_347:
      v5 = a1 + 32;
      if (a1[32] == 58)
      {
        return (v5 - a1 + 1);
      }

      return 0;
    }

    if (v35 > 0x5A)
    {
      if (v35 - 123 < 0xFFFFFFE6)
      {
        return 0;
      }

      goto LABEL_347;
    }

    if (v35 != 58)
    {
      if (v35 < 0x41)
      {
        return 0;
      }

      goto LABEL_347;
    }

    return (v5 - a1 + 1);
  }

  if (v3 <= 0x2B)
  {
    if (v3 != 43)
    {
      return 0;
    }

    goto LABEL_17;
  }

  v4 = 0;
  if (v3 != 44 && v3 != 47)
  {
    goto LABEL_17;
  }

  return v4;
}

unsigned __int8 *_scan_autolink_uri(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 < 0x41)
  {
    return 0;
  }

  if (v1 >= 0x5B && v1 - 97 > 0x19)
  {
    return 0;
  }

  v3 = a1[1];
  if (v3 > 0x2F)
  {
    if (v3 > 0x5A)
    {
      if (v3 - 123 < 0xFFFFFFE6)
      {
        return 0;
      }
    }

    else if (v3 - 58 < 7)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v3 <= 0x2B)
  {
    if (v3 != 43)
    {
      return 0;
    }

    goto LABEL_17;
  }

  v4 = 0;
  if (v3 != 44 && v3 != 47)
  {
LABEL_17:
    v6 = a1 + 2;
    v5 = a1[2];
    if (v5 > 0x39)
    {
      if (v5 > 0x5A)
      {
        if (v5 - 97 > 0x19)
        {
          return 0;
        }
      }

      else
      {
        if (v5 == 58)
        {
          goto LABEL_348;
        }

        if (v5 <= 0x40)
        {
          return 0;
        }
      }
    }

    else if (v5 > 0x2C)
    {
      if (v5 == 47)
      {
        return 0;
      }
    }

    else if (v5 != 43)
    {
      return 0;
    }

    v6 = a1 + 3;
    v7 = a1[3];
    if (v7 > 0x39)
    {
      if (v7 > 0x5A)
      {
        if (v7 - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else
      {
        if (v7 == 58)
        {
          goto LABEL_348;
        }

        if (v7 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v7 > 0x2C)
    {
      if (v7 == 47)
      {
        return 0;
      }
    }

    else if (v7 != 43)
    {
      return 0;
    }

    v6 = a1 + 4;
    v8 = a1[4];
    if (v8 > 0x39)
    {
      if (v8 > 0x5A)
      {
        if (v8 - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == 58)
        {
          goto LABEL_348;
        }

        if (v8 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v8 > 0x2C)
    {
      if (v8 == 47)
      {
        return 0;
      }
    }

    else if (v8 != 43)
    {
      return 0;
    }

    v6 = a1 + 5;
    v9 = a1[5];
    if (v9 > 0x39)
    {
      if (v9 > 0x5A)
      {
        if (v9 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v9 == 58)
        {
          goto LABEL_348;
        }

        if (v9 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v9 > 0x2C)
    {
      if (v9 == 47)
      {
        return 0;
      }
    }

    else if (v9 != 43)
    {
      return 0;
    }

    v6 = a1 + 6;
    v10 = a1[6];
    if (v10 > 0x39)
    {
      if (v10 > 0x5A)
      {
        if (v10 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v10 == 58)
        {
          goto LABEL_348;
        }

        if (v10 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v10 > 0x2C)
    {
      if (v10 == 47)
      {
        return 0;
      }
    }

    else if (v10 != 43)
    {
      return 0;
    }

    v6 = a1 + 7;
    v11 = a1[7];
    if (v11 > 0x39)
    {
      if (v11 > 0x5A)
      {
        if (v11 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v11 == 58)
        {
          goto LABEL_348;
        }

        if (v11 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v11 > 0x2C)
    {
      if (v11 == 47)
      {
        return 0;
      }
    }

    else if (v11 != 43)
    {
      return 0;
    }

    v6 = a1 + 8;
    v12 = a1[8];
    if (v12 > 0x39)
    {
      if (v12 > 0x5A)
      {
        if (v12 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == 58)
        {
          goto LABEL_348;
        }

        if (v12 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v12 > 0x2C)
    {
      if (v12 == 47)
      {
        return 0;
      }
    }

    else if (v12 != 43)
    {
      return 0;
    }

    v6 = a1 + 9;
    v13 = a1[9];
    if (v13 > 0x39)
    {
      if (v13 > 0x5A)
      {
        if (v13 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v13 == 58)
        {
          goto LABEL_348;
        }

        if (v13 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v13 > 0x2C)
    {
      if (v13 == 47)
      {
        return 0;
      }
    }

    else if (v13 != 43)
    {
      return 0;
    }

    v6 = a1 + 10;
    v14 = a1[10];
    if (v14 > 0x39)
    {
      if (v14 > 0x5A)
      {
        if (v14 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v14 == 58)
        {
          goto LABEL_348;
        }

        if (v14 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v14 > 0x2C)
    {
      if (v14 == 47)
      {
        return 0;
      }
    }

    else if (v14 != 43)
    {
      return 0;
    }

    v6 = a1 + 11;
    v15 = a1[11];
    if (v15 > 0x39)
    {
      if (v15 > 0x5A)
      {
        if (v15 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v15 == 58)
        {
          goto LABEL_348;
        }

        if (v15 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v15 > 0x2C)
    {
      if (v15 == 47)
      {
        return 0;
      }
    }

    else if (v15 != 43)
    {
      return 0;
    }

    v6 = a1 + 12;
    v16 = a1[12];
    if (v16 > 0x39)
    {
      if (v16 > 0x5A)
      {
        if (v16 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v16 == 58)
        {
          goto LABEL_348;
        }

        if (v16 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v16 > 0x2C)
    {
      if (v16 == 47)
      {
        return 0;
      }
    }

    else if (v16 != 43)
    {
      return 0;
    }

    v6 = a1 + 13;
    v17 = a1[13];
    if (v17 > 0x39)
    {
      if (v17 > 0x5A)
      {
        if (v17 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v17 == 58)
        {
          goto LABEL_348;
        }

        if (v17 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v17 > 0x2C)
    {
      if (v17 == 47)
      {
        return 0;
      }
    }

    else if (v17 != 43)
    {
      return 0;
    }

    v6 = a1 + 14;
    v18 = a1[14];
    if (v18 > 0x39)
    {
      if (v18 > 0x5A)
      {
        if (v18 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v18 == 58)
        {
          goto LABEL_348;
        }

        if (v18 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v18 > 0x2C)
    {
      if (v18 == 47)
      {
        return 0;
      }
    }

    else if (v18 != 43)
    {
      return 0;
    }

    v6 = a1 + 15;
    v19 = a1[15];
    if (v19 > 0x39)
    {
      if (v19 > 0x5A)
      {
        if (v19 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v19 == 58)
        {
          goto LABEL_348;
        }

        if (v19 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v19 > 0x2C)
    {
      if (v19 == 47)
      {
        return 0;
      }
    }

    else if (v19 != 43)
    {
      return 0;
    }

    v6 = a1 + 16;
    v20 = a1[16];
    if (v20 > 0x39)
    {
      if (v20 > 0x5A)
      {
        if (v20 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v20 == 58)
        {
          goto LABEL_348;
        }

        if (v20 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v20 > 0x2C)
    {
      if (v20 == 47)
      {
        return 0;
      }
    }

    else if (v20 != 43)
    {
      return 0;
    }

    v6 = a1 + 17;
    v21 = a1[17];
    if (v21 > 0x39)
    {
      if (v21 > 0x5A)
      {
        if (v21 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v21 == 58)
        {
          goto LABEL_348;
        }

        if (v21 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v21 > 0x2C)
    {
      if (v21 == 47)
      {
        return 0;
      }
    }

    else if (v21 != 43)
    {
      return 0;
    }

    v6 = a1 + 18;
    v22 = a1[18];
    if (v22 > 0x39)
    {
      if (v22 > 0x5A)
      {
        if (v22 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v22 == 58)
        {
          goto LABEL_348;
        }

        if (v22 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v22 > 0x2C)
    {
      if (v22 == 47)
      {
        return 0;
      }
    }

    else if (v22 != 43)
    {
      return 0;
    }

    v6 = a1 + 19;
    v23 = a1[19];
    if (v23 > 0x39)
    {
      if (v23 > 0x5A)
      {
        if (v23 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v23 == 58)
        {
          goto LABEL_348;
        }

        if (v23 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v23 > 0x2C)
    {
      if (v23 == 47)
      {
        return 0;
      }
    }

    else if (v23 != 43)
    {
      return 0;
    }

    v6 = a1 + 20;
    v24 = a1[20];
    if (v24 > 0x39)
    {
      if (v24 > 0x5A)
      {
        if (v24 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v24 == 58)
        {
          goto LABEL_348;
        }

        if (v24 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v24 > 0x2C)
    {
      if (v24 == 47)
      {
        return 0;
      }
    }

    else if (v24 != 43)
    {
      return 0;
    }

    v6 = a1 + 21;
    v25 = a1[21];
    if (v25 > 0x39)
    {
      if (v25 > 0x5A)
      {
        if (v25 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v25 == 58)
        {
          goto LABEL_348;
        }

        if (v25 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v25 > 0x2C)
    {
      if (v25 == 47)
      {
        return 0;
      }
    }

    else if (v25 != 43)
    {
      return 0;
    }

    v6 = a1 + 22;
    v26 = a1[22];
    if (v26 > 0x39)
    {
      if (v26 > 0x5A)
      {
        if (v26 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v26 == 58)
        {
          goto LABEL_348;
        }

        if (v26 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v26 > 0x2C)
    {
      if (v26 == 47)
      {
        return 0;
      }
    }

    else if (v26 != 43)
    {
      return 0;
    }

    v6 = a1 + 23;
    v27 = a1[23];
    if (v27 > 0x39)
    {
      if (v27 > 0x5A)
      {
        if (v27 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v27 == 58)
        {
          goto LABEL_348;
        }

        if (v27 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v27 > 0x2C)
    {
      if (v27 == 47)
      {
        return 0;
      }
    }

    else if (v27 != 43)
    {
      return 0;
    }

    v6 = a1 + 24;
    v28 = a1[24];
    if (v28 > 0x39)
    {
      if (v28 > 0x5A)
      {
        if (v28 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v28 == 58)
        {
          goto LABEL_348;
        }

        if (v28 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v28 > 0x2C)
    {
      if (v28 == 47)
      {
        return 0;
      }
    }

    else if (v28 != 43)
    {
      return 0;
    }

    v6 = a1 + 25;
    v29 = a1[25];
    if (v29 > 0x39)
    {
      if (v29 > 0x5A)
      {
        if (v29 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v29 == 58)
        {
          goto LABEL_348;
        }

        if (v29 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v29 > 0x2C)
    {
      if (v29 == 47)
      {
        return 0;
      }
    }

    else if (v29 != 43)
    {
      return 0;
    }

    v6 = a1 + 26;
    v30 = a1[26];
    if (v30 > 0x39)
    {
      if (v30 > 0x5A)
      {
        if (v30 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v30 == 58)
        {
          goto LABEL_348;
        }

        if (v30 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v30 > 0x2C)
    {
      if (v30 == 47)
      {
        return 0;
      }
    }

    else if (v30 != 43)
    {
      return 0;
    }

    v6 = a1 + 27;
    v31 = a1[27];
    if (v31 > 0x39)
    {
      if (v31 > 0x5A)
      {
        if (v31 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v31 == 58)
        {
          goto LABEL_348;
        }

        if (v31 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v31 > 0x2C)
    {
      if (v31 == 47)
      {
        return 0;
      }
    }

    else if (v31 != 43)
    {
      return 0;
    }

    v6 = a1 + 28;
    v32 = a1[28];
    if (v32 > 0x39)
    {
      if (v32 > 0x5A)
      {
        if (v32 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v32 == 58)
        {
          goto LABEL_348;
        }

        if (v32 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v32 > 0x2C)
    {
      if (v32 == 47)
      {
        return 0;
      }
    }

    else if (v32 != 43)
    {
      return 0;
    }

    v6 = a1 + 29;
    v33 = a1[29];
    if (v33 > 0x39)
    {
      if (v33 > 0x5A)
      {
        if (v33 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v33 == 58)
        {
          goto LABEL_348;
        }

        if (v33 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v33 > 0x2C)
    {
      if (v33 == 47)
      {
        return 0;
      }
    }

    else if (v33 != 43)
    {
      return 0;
    }

    v6 = a1 + 30;
    v34 = a1[30];
    if (v34 > 0x39)
    {
      if (v34 > 0x5A)
      {
        if (v34 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v34 == 58)
        {
          goto LABEL_348;
        }

        if (v34 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v34 > 0x2C)
    {
      if (v34 == 47)
      {
        return 0;
      }
    }

    else if (v34 != 43)
    {
      return 0;
    }

    v6 = a1 + 31;
    v35 = a1[31];
    if (v35 > 0x39)
    {
      if (v35 > 0x5A)
      {
        if (v35 - 123 < 0xFFFFFFE6)
        {
          return 0;
        }
      }

      else
      {
        if (v35 == 58)
        {
          goto LABEL_348;
        }

        if (v35 < 0x41)
        {
          return 0;
        }
      }
    }

    else if (v35 > 0x2C)
    {
      if (v35 == 47)
      {
        return 0;
      }
    }

    else if (v35 != 43)
    {
      return 0;
    }

    v6 = a1 + 32;
    if (a1[32] == 58)
    {
      while (1)
      {
        do
        {
LABEL_348:
          v4 = v6;
          v37 = *++v6;
          v36 = v37;
        }

        while (_scan_autolink_uri_yybm[v37] < 0);
        if (v36 > 0xEC)
        {
          break;
        }

        if (v36 <= 0xC1)
        {
          LODWORD(v4) = v4 - a1 + 2;
          if (v36 - 61 >= 2)
          {
            return 0;
          }

          else
          {
            return v4;
          }
        }

        if (v36 >= 0xE0)
        {
          if (v36 != 224)
          {
            goto LABEL_366;
          }

          v39 = v4[2];
          v38 = v4 + 2;
          if ((v39 & 0xE0) != 0xA0)
          {
            return 0;
          }

LABEL_369:
          v6 = v38;
        }

LABEL_370:
        v4 = 0;
        v46 = *++v6;
        if (v46 >= -64)
        {
          return v4;
        }
      }

      if (v36 > 0xF0)
      {
        if (v36 >= 0xF4)
        {
          if (v36 != 244)
          {
            return 0;
          }

          v43 = v4[2];
          v40 = v4 + 2;
          if (v43 >= -112)
          {
            return 0;
          }
        }

        else
        {
          v42 = v4[2];
          v40 = v4 + 2;
          if (v42 >= -64)
          {
            return 0;
          }
        }

LABEL_365:
        v6 = v40;
LABEL_366:
        v44 = *++v6;
        if (v44 >= -64)
        {
          return 0;
        }

        goto LABEL_370;
      }

      if (v36 != 237)
      {
        if (v36 == 240)
        {
          v41 = v4[2];
          v40 = v4 + 2;
          if ((v41 - 144) >= 0x30)
          {
            return 0;
          }

          goto LABEL_365;
        }

        goto LABEL_366;
      }

      v45 = v4[2];
      v38 = v4 + 2;
      if (v45 >= -96)
      {
        return 0;
      }

      goto LABEL_369;
    }

    return 0;
  }

  return v4;
}

uint64_t _scan_autolink_email(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x39)
  {
    if (v1 > 0x27)
    {
      v2 = 0;
      if (v1 < 0x2A || v1 == 44)
      {
        return v2;
      }
    }

    else if (v1 != 33 && v1 <= 0x22)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v1 > 0x3F)
  {
    if (v1 > 0x5A)
    {
      if (v1 - 94 > 0x20)
      {
        return 0;
      }
    }

    else if (v1 == 64)
    {
      return 0;
    }
  }

  else if ((~v1 & 0x3D) != 0)
  {
    return 0;
  }

LABEL_16:
  v4 = a1 + 1;
  v3 = a1[1];
  if (v3 > 0x2C)
  {
    if (v3 > 0x3E)
    {
      if (v3 >= 0x5B && v3 - 94 > 0x20)
      {
        return 0;
      }
    }

    else if (v3 >= 0x3A && v3 != 61)
    {
      return 0;
    }
  }

  else if (v3 > 0x22)
  {
    if (v3 >= 0x28)
    {
      v2 = 0;
      if (v3 < 0x2A || v3 == 44)
      {
        return v2;
      }
    }
  }

  else if (v3 != 33)
  {
    return 0;
  }

  while (_scan_autolink_email_yybm[v3] < 0)
  {
    v5 = *++v4;
    v3 = v5;
  }

  if (v3 - 63 > 1)
  {
    return 0;
  }

  do
  {
    while (1)
    {
      do
      {
        while (1)
        {
          do
          {
            while (1)
            {
              do
              {
                while (1)
                {
                  do
                  {
                    while (1)
                    {
                      do
                      {
                        while (1)
                        {
                          do
                          {
                            while (1)
                            {
                              do
                              {
                                while (1)
                                {
                                  do
                                  {
                                    while (1)
                                    {
                                      do
                                      {
                                        while (1)
                                        {
                                          do
                                          {
                                            while (1)
                                            {
                                              do
                                              {
                                                while (1)
                                                {
                                                  do
                                                  {
                                                    while (1)
                                                    {
                                                      do
                                                      {
                                                        while (1)
                                                        {
                                                          do
                                                          {
                                                            while (1)
                                                            {
                                                              do
                                                              {
                                                                while (1)
                                                                {
                                                                  while (1)
                                                                  {
                                                                    v6 = v4;
                                                                    v7 = v4[1];
                                                                    if (v7 > 0x40)
                                                                    {
                                                                      if (v7 >= 0x5B && v7 - 123 < 0xFFFFFFE6)
                                                                      {
                                                                        return 0;
                                                                      }
                                                                    }

                                                                    else if (v7 - 58 < 0xFFFFFFF6)
                                                                    {
                                                                      return 0;
                                                                    }

                                                                    v4 += 2;
                                                                    v9 = v6[2];
                                                                    if (v9 > 0x3D)
                                                                    {
                                                                      break;
                                                                    }

                                                                    if (v9 > 0x2E)
                                                                    {
                                                                      v2 = 0;
                                                                      if (v9 == 47 || v9 >= 0x3A)
                                                                      {
                                                                        return v2;
                                                                      }

                                                                      goto LABEL_57;
                                                                    }

                                                                    if (v9 < 0x2D)
                                                                    {
                                                                      return 0;
                                                                    }

                                                                    if (v9 != 46)
                                                                    {
                                                                      v10 = v6[3];
                                                                      if (v10 > 0x39)
                                                                      {
                                                                        if (v10 <= 0x5A)
                                                                        {
                                                                          if (v10 < 0x41)
                                                                          {
                                                                            return 0;
                                                                          }

                                                                          goto LABEL_74;
                                                                        }

                                                                        v13 = v10 - 97;
LABEL_73:
                                                                        if (v13 >= 0x1A)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        goto LABEL_74;
                                                                      }

                                                                      if (v10 != 45)
                                                                      {
                                                                        if (v10 < 0x30)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        goto LABEL_74;
                                                                      }

LABEL_61:
                                                                      v12 = v6[4];
                                                                      if (v12 <= 0x39)
                                                                      {
                                                                        if (v12 == 45)
                                                                        {
                                                                          goto LABEL_78;
                                                                        }

                                                                        if (v12 < 0x30)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        goto LABEL_91;
                                                                      }

                                                                      if (v12 <= 0x5A)
                                                                      {
                                                                        if (v12 < 0x41)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        goto LABEL_91;
                                                                      }

                                                                      v16 = v12 - 97;
LABEL_90:
                                                                      if (v16 >= 0x1A)
                                                                      {
                                                                        return 0;
                                                                      }

LABEL_91:
                                                                      v4 = v6 + 5;
                                                                      v17 = v6[5];
                                                                      if (v17 > 0x3D)
                                                                      {
                                                                        if (v17 > 0x5A)
                                                                        {
                                                                          v19 = v17 - 97;
                                                                          goto LABEL_107;
                                                                        }

                                                                        if (v17 == 62)
                                                                        {
                                                                          return (v4 - a1 + 1);
                                                                        }

                                                                        if (v17 < 0x41)
                                                                        {
                                                                          return 0;
                                                                        }

LABEL_108:
                                                                        v4 = v6 + 6;
                                                                        v20 = v6[6];
                                                                        if (v20 > 0x3D)
                                                                        {
                                                                          if (v20 <= 0x5A)
                                                                          {
                                                                            if (v20 == 62)
                                                                            {
                                                                              return (v4 - a1 + 1);
                                                                            }

                                                                            if (v20 < 0x41)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            goto LABEL_125;
                                                                          }

                                                                          v22 = v20 - 97;
LABEL_124:
                                                                          if (v22 >= 0x1A)
                                                                          {
                                                                            return 0;
                                                                          }

                                                                          goto LABEL_125;
                                                                        }

                                                                        if (v20 > 0x2E)
                                                                        {
                                                                          v2 = 0;
                                                                          if (v20 == 47 || v20 >= 0x3A)
                                                                          {
                                                                            return v2;
                                                                          }

                                                                          goto LABEL_125;
                                                                        }

                                                                        if (v20 < 0x2D)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        if (v20 != 46)
                                                                        {
LABEL_112:
                                                                          v21 = v6[7];
                                                                          if (v21 > 0x39)
                                                                          {
                                                                            if (v21 <= 0x5A)
                                                                            {
                                                                              if (v21 < 0x41)
                                                                              {
                                                                                return 0;
                                                                              }

                                                                              goto LABEL_142;
                                                                            }

                                                                            v25 = v21 - 97;
LABEL_141:
                                                                            if (v25 >= 0x1A)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            goto LABEL_142;
                                                                          }

                                                                          if (v21 != 45)
                                                                          {
                                                                            if (v21 < 0x30)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            goto LABEL_142;
                                                                          }

LABEL_129:
                                                                          v24 = v6[8];
                                                                          if (v24 <= 0x39)
                                                                          {
                                                                            if (v24 == 45)
                                                                            {
                                                                              goto LABEL_146;
                                                                            }

                                                                            if (v24 < 0x30)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            goto LABEL_159;
                                                                          }

                                                                          if (v24 <= 0x5A)
                                                                          {
                                                                            if (v24 < 0x41)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            goto LABEL_159;
                                                                          }

                                                                          v28 = v24 - 97;
LABEL_158:
                                                                          if (v28 >= 0x1A)
                                                                          {
                                                                            return 0;
                                                                          }

LABEL_159:
                                                                          v4 = v6 + 9;
                                                                          v29 = v6[9];
                                                                          if (v29 > 0x3D)
                                                                          {
                                                                            if (v29 > 0x5A)
                                                                            {
                                                                              v31 = v29 - 97;
                                                                              goto LABEL_175;
                                                                            }

                                                                            if (v29 == 62)
                                                                            {
                                                                              return (v4 - a1 + 1);
                                                                            }

                                                                            if (v29 < 0x41)
                                                                            {
                                                                              return 0;
                                                                            }

LABEL_176:
                                                                            v4 = v6 + 10;
                                                                            v32 = v6[10];
                                                                            if (v32 > 0x3D)
                                                                            {
                                                                              if (v32 <= 0x5A)
                                                                              {
                                                                                if (v32 == 62)
                                                                                {
                                                                                  return (v4 - a1 + 1);
                                                                                }

                                                                                if (v32 < 0x41)
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                goto LABEL_193;
                                                                              }

                                                                              v34 = v32 - 97;
LABEL_192:
                                                                              if (v34 >= 0x1A)
                                                                              {
                                                                                return 0;
                                                                              }

                                                                              goto LABEL_193;
                                                                            }

                                                                            if (v32 > 0x2E)
                                                                            {
                                                                              v2 = 0;
                                                                              if (v32 == 47 || v32 >= 0x3A)
                                                                              {
                                                                                return v2;
                                                                              }

                                                                              goto LABEL_193;
                                                                            }

                                                                            if (v32 < 0x2D)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            if (v32 != 46)
                                                                            {
LABEL_180:
                                                                              v33 = v6[11];
                                                                              if (v33 > 0x39)
                                                                              {
                                                                                if (v33 <= 0x5A)
                                                                                {
                                                                                  if (v33 < 0x41)
                                                                                  {
                                                                                    return 0;
                                                                                  }

                                                                                  goto LABEL_216;
                                                                                }

                                                                                v37 = v33 - 97;
LABEL_215:
                                                                                if (v37 >= 0x1A)
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                goto LABEL_216;
                                                                              }

                                                                              if (v33 != 45)
                                                                              {
                                                                                if (v33 < 0x30)
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                goto LABEL_216;
                                                                              }

LABEL_197:
                                                                              v36 = v6[12];
                                                                              if (v36 <= 0x39)
                                                                              {
                                                                                if (v36 == 45)
                                                                                {
                                                                                  goto LABEL_220;
                                                                                }

                                                                                if (v36 < 0x30)
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                goto LABEL_236;
                                                                              }

                                                                              if (v36 <= 0x5A)
                                                                              {
                                                                                if (v36 < 0x41)
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                goto LABEL_236;
                                                                              }

                                                                              v40 = v36 - 97;
LABEL_235:
                                                                              if (v40 >= 0x1A)
                                                                              {
                                                                                return 0;
                                                                              }

LABEL_236:
                                                                              v4 = v6 + 13;
                                                                              v41 = v6[13];
                                                                              if (v41 > 0x3D)
                                                                              {
                                                                                if (v41 > 0x5A)
                                                                                {
                                                                                  v43 = v41 - 97;
                                                                                  goto LABEL_255;
                                                                                }

                                                                                if (v41 == 62)
                                                                                {
                                                                                  return (v4 - a1 + 1);
                                                                                }

                                                                                if (v41 < 0x41)
                                                                                {
                                                                                  return 0;
                                                                                }

LABEL_256:
                                                                                v4 = v6 + 14;
                                                                                v44 = v6[14];
                                                                                if (v44 > 0x3D)
                                                                                {
                                                                                  if (v44 <= 0x5A)
                                                                                  {
                                                                                    if (v44 == 62)
                                                                                    {
                                                                                      return (v4 - a1 + 1);
                                                                                    }

                                                                                    if (v44 < 0x41)
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    goto LABEL_276;
                                                                                  }

                                                                                  v46 = v44 - 97;
LABEL_275:
                                                                                  if (v46 >= 0x1A)
                                                                                  {
                                                                                    return 0;
                                                                                  }

                                                                                  goto LABEL_276;
                                                                                }

                                                                                if (v44 > 0x2E)
                                                                                {
                                                                                  v2 = 0;
                                                                                  if (v44 == 47 || v44 >= 0x3A)
                                                                                  {
                                                                                    return v2;
                                                                                  }

                                                                                  goto LABEL_276;
                                                                                }

                                                                                if (v44 < 0x2D)
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                if (v44 != 46)
                                                                                {
LABEL_260:
                                                                                  v45 = v6[15];
                                                                                  if (v45 > 0x39)
                                                                                  {
                                                                                    if (v45 <= 0x5A)
                                                                                    {
                                                                                      if (v45 < 0x41)
                                                                                      {
                                                                                        return 0;
                                                                                      }

                                                                                      goto LABEL_297;
                                                                                    }

                                                                                    v49 = v45 - 97;
LABEL_296:
                                                                                    if (v49 >= 0x1A)
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    goto LABEL_297;
                                                                                  }

                                                                                  if (v45 != 45)
                                                                                  {
                                                                                    if (v45 < 0x30)
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    goto LABEL_297;
                                                                                  }

LABEL_280:
                                                                                  v48 = v6[16];
                                                                                  if (v48 <= 0x39)
                                                                                  {
                                                                                    if (v48 == 45)
                                                                                    {
                                                                                      goto LABEL_301;
                                                                                    }

                                                                                    if (v48 < 0x30)
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    goto LABEL_319;
                                                                                  }

                                                                                  if (v48 <= 0x5A)
                                                                                  {
                                                                                    if (v48 < 0x41)
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    goto LABEL_319;
                                                                                  }

                                                                                  v52 = v48 - 97;
LABEL_318:
                                                                                  if (v52 >= 0x1A)
                                                                                  {
                                                                                    return 0;
                                                                                  }

LABEL_319:
                                                                                  v4 = v6 + 17;
                                                                                  v53 = v6[17];
                                                                                  if (v53 > 0x3D)
                                                                                  {
                                                                                    if (v53 > 0x5A)
                                                                                    {
                                                                                      v55 = v53 - 97;
                                                                                      goto LABEL_339;
                                                                                    }

                                                                                    if (v53 == 62)
                                                                                    {
                                                                                      return (v4 - a1 + 1);
                                                                                    }

                                                                                    if (v53 < 0x41)
                                                                                    {
                                                                                      return 0;
                                                                                    }

LABEL_340:
                                                                                    v4 = v6 + 18;
                                                                                    v56 = v6[18];
                                                                                    if (v56 > 0x3D)
                                                                                    {
                                                                                      if (v56 <= 0x5A)
                                                                                      {
                                                                                        if (v56 == 62)
                                                                                        {
                                                                                          return (v4 - a1 + 1);
                                                                                        }

                                                                                        if (v56 < 0x41)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        goto LABEL_361;
                                                                                      }

                                                                                      v58 = v56 - 97;
LABEL_360:
                                                                                      if (v58 >= 0x1A)
                                                                                      {
                                                                                        return 0;
                                                                                      }

                                                                                      goto LABEL_361;
                                                                                    }

                                                                                    if (v56 > 0x2E)
                                                                                    {
                                                                                      v2 = 0;
                                                                                      if (v56 == 47 || v56 >= 0x3A)
                                                                                      {
                                                                                        return v2;
                                                                                      }

                                                                                      goto LABEL_361;
                                                                                    }

                                                                                    if (v56 < 0x2D)
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    if (v56 != 46)
                                                                                    {
LABEL_344:
                                                                                      v57 = v6[19];
                                                                                      if (v57 > 0x39)
                                                                                      {
                                                                                        if (v57 <= 0x5A)
                                                                                        {
                                                                                          if (v57 < 0x41)
                                                                                          {
                                                                                            return 0;
                                                                                          }

                                                                                          goto LABEL_382;
                                                                                        }

                                                                                        v61 = v57 - 97;
LABEL_381:
                                                                                        if (v61 >= 0x1A)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        goto LABEL_382;
                                                                                      }

                                                                                      if (v57 != 45)
                                                                                      {
                                                                                        if (v57 < 0x30)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        goto LABEL_382;
                                                                                      }

LABEL_365:
                                                                                      v60 = v6[20];
                                                                                      if (v60 <= 0x39)
                                                                                      {
                                                                                        if (v60 == 45)
                                                                                        {
                                                                                          goto LABEL_386;
                                                                                        }

                                                                                        if (v60 < 0x30)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        goto LABEL_403;
                                                                                      }

                                                                                      if (v60 <= 0x5A)
                                                                                      {
                                                                                        if (v60 < 0x41)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        goto LABEL_403;
                                                                                      }

                                                                                      v64 = v60 - 97;
LABEL_402:
                                                                                      if (v64 >= 0x1A)
                                                                                      {
                                                                                        return 0;
                                                                                      }

LABEL_403:
                                                                                      v4 = v6 + 21;
                                                                                      v65 = v6[21];
                                                                                      if (v65 > 0x3D)
                                                                                      {
                                                                                        if (v65 > 0x5A)
                                                                                        {
                                                                                          v67 = v65 - 97;
                                                                                          goto LABEL_423;
                                                                                        }

                                                                                        if (v65 == 62)
                                                                                        {
                                                                                          return (v4 - a1 + 1);
                                                                                        }

                                                                                        if (v65 < 0x41)
                                                                                        {
                                                                                          return 0;
                                                                                        }

LABEL_424:
                                                                                        v4 = v6 + 22;
                                                                                        v68 = v6[22];
                                                                                        if (v68 > 0x3D)
                                                                                        {
                                                                                          if (v68 <= 0x5A)
                                                                                          {
                                                                                            if (v68 == 62)
                                                                                            {
                                                                                              return (v4 - a1 + 1);
                                                                                            }

                                                                                            if (v68 < 0x41)
                                                                                            {
                                                                                              return 0;
                                                                                            }

                                                                                            goto LABEL_445;
                                                                                          }

                                                                                          v70 = v68 - 97;
LABEL_444:
                                                                                          if (v70 >= 0x1A)
                                                                                          {
                                                                                            return 0;
                                                                                          }

                                                                                          goto LABEL_445;
                                                                                        }

                                                                                        if (v68 > 0x2E)
                                                                                        {
                                                                                          v2 = 0;
                                                                                          if (v68 == 47 || v68 >= 0x3A)
                                                                                          {
                                                                                            return v2;
                                                                                          }

                                                                                          goto LABEL_445;
                                                                                        }

                                                                                        if (v68 < 0x2D)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        if (v68 != 46)
                                                                                        {
LABEL_428:
                                                                                          v69 = v6[23];
                                                                                          if (v69 > 0x39)
                                                                                          {
                                                                                            if (v69 <= 0x5A)
                                                                                            {
                                                                                              if (v69 < 0x41)
                                                                                              {
                                                                                                return 0;
                                                                                              }

                                                                                              goto LABEL_466;
                                                                                            }

                                                                                            v73 = v69 - 97;
LABEL_465:
                                                                                            if (v73 >= 0x1A)
                                                                                            {
                                                                                              return 0;
                                                                                            }

                                                                                            goto LABEL_466;
                                                                                          }

                                                                                          if (v69 != 45)
                                                                                          {
                                                                                            if (v69 < 0x30)
                                                                                            {
                                                                                              return 0;
                                                                                            }

                                                                                            goto LABEL_466;
                                                                                          }

LABEL_449:
                                                                                          v72 = v6[24];
                                                                                          if (v72 <= 0x39)
                                                                                          {
                                                                                            if (v72 == 45)
                                                                                            {
                                                                                              goto LABEL_470;
                                                                                            }

                                                                                            if (v72 < 0x30)
                                                                                            {
                                                                                              return 0;
                                                                                            }

                                                                                            goto LABEL_487;
                                                                                          }

                                                                                          if (v72 <= 0x5A)
                                                                                          {
                                                                                            if (v72 < 0x41)
                                                                                            {
                                                                                              return 0;
                                                                                            }

                                                                                            goto LABEL_487;
                                                                                          }

                                                                                          v76 = v72 - 97;
LABEL_486:
                                                                                          if (v76 >= 0x1A)
                                                                                          {
                                                                                            return 0;
                                                                                          }

LABEL_487:
                                                                                          v4 = v6 + 25;
                                                                                          v77 = v6[25];
                                                                                          if (v77 > 0x3D)
                                                                                          {
                                                                                            if (v77 > 0x5A)
                                                                                            {
                                                                                              v79 = v77 - 97;
                                                                                              goto LABEL_507;
                                                                                            }

                                                                                            if (v77 == 62)
                                                                                            {
                                                                                              return (v4 - a1 + 1);
                                                                                            }

                                                                                            if (v77 < 0x41)
                                                                                            {
                                                                                              return 0;
                                                                                            }

LABEL_508:
                                                                                            v4 = v6 + 26;
                                                                                            v80 = v6[26];
                                                                                            if (v80 > 0x3D)
                                                                                            {
                                                                                              if (v80 <= 0x5A)
                                                                                              {
                                                                                                if (v80 == 62)
                                                                                                {
                                                                                                  return (v4 - a1 + 1);
                                                                                                }

                                                                                                if (v80 < 0x41)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

                                                                                                goto LABEL_529;
                                                                                              }

                                                                                              v82 = v80 - 97;
LABEL_528:
                                                                                              if (v82 >= 0x1A)
                                                                                              {
                                                                                                return 0;
                                                                                              }

                                                                                              goto LABEL_529;
                                                                                            }

                                                                                            if (v80 > 0x2E)
                                                                                            {
                                                                                              v2 = 0;
                                                                                              if (v80 == 47 || v80 >= 0x3A)
                                                                                              {
                                                                                                return v2;
                                                                                              }

                                                                                              goto LABEL_529;
                                                                                            }

                                                                                            if (v80 < 0x2D)
                                                                                            {
                                                                                              return 0;
                                                                                            }

                                                                                            if (v80 != 46)
                                                                                            {
LABEL_512:
                                                                                              v81 = v6[27];
                                                                                              if (v81 > 0x39)
                                                                                              {
                                                                                                if (v81 <= 0x5A)
                                                                                                {
                                                                                                  if (v81 < 0x41)
                                                                                                  {
                                                                                                    return 0;
                                                                                                  }

                                                                                                  goto LABEL_550;
                                                                                                }

                                                                                                v85 = v81 - 97;
LABEL_549:
                                                                                                if (v85 >= 0x1A)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

                                                                                                goto LABEL_550;
                                                                                              }

                                                                                              if (v81 != 45)
                                                                                              {
                                                                                                if (v81 < 0x30)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

                                                                                                goto LABEL_550;
                                                                                              }

LABEL_533:
                                                                                              v84 = v6[28];
                                                                                              if (v84 <= 0x39)
                                                                                              {
                                                                                                if (v84 == 45)
                                                                                                {
                                                                                                  goto LABEL_554;
                                                                                                }

                                                                                                if (v84 < 0x30)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

                                                                                                goto LABEL_571;
                                                                                              }

                                                                                              if (v84 <= 0x5A)
                                                                                              {
                                                                                                if (v84 < 0x41)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

                                                                                                goto LABEL_571;
                                                                                              }

                                                                                              v88 = v84 - 97;
LABEL_570:
                                                                                              if (v88 >= 0x1A)
                                                                                              {
                                                                                                return 0;
                                                                                              }

LABEL_571:
                                                                                              v4 = v6 + 29;
                                                                                              v89 = v6[29];
                                                                                              if (v89 > 0x3D)
                                                                                              {
                                                                                                if (v89 > 0x5A)
                                                                                                {
                                                                                                  v91 = v89 - 97;
                                                                                                  goto LABEL_591;
                                                                                                }

                                                                                                if (v89 == 62)
                                                                                                {
                                                                                                  return (v4 - a1 + 1);
                                                                                                }

                                                                                                if (v89 < 0x41)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

LABEL_592:
                                                                                                v4 = v6 + 30;
                                                                                                v92 = v6[30];
                                                                                                if (v92 > 0x3D)
                                                                                                {
                                                                                                  if (v92 <= 0x5A)
                                                                                                  {
                                                                                                    if (v92 == 62)
                                                                                                    {
                                                                                                      return (v4 - a1 + 1);
                                                                                                    }

                                                                                                    if (v92 < 0x41)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

                                                                                                    goto LABEL_613;
                                                                                                  }

                                                                                                  v94 = v92 - 97;
LABEL_612:
                                                                                                  if (v94 >= 0x1A)
                                                                                                  {
                                                                                                    return 0;
                                                                                                  }

                                                                                                  goto LABEL_613;
                                                                                                }

                                                                                                if (v92 > 0x2E)
                                                                                                {
                                                                                                  v2 = 0;
                                                                                                  if (v92 == 47 || v92 >= 0x3A)
                                                                                                  {
                                                                                                    return v2;
                                                                                                  }

                                                                                                  goto LABEL_613;
                                                                                                }

                                                                                                if (v92 < 0x2D)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

                                                                                                if (v92 != 46)
                                                                                                {
LABEL_596:
                                                                                                  v93 = v6[31];
                                                                                                  if (v93 > 0x39)
                                                                                                  {
                                                                                                    if (v93 <= 0x5A)
                                                                                                    {
                                                                                                      if (v93 < 0x41)
                                                                                                      {
                                                                                                        return 0;
                                                                                                      }

                                                                                                      goto LABEL_634;
                                                                                                    }

                                                                                                    v97 = v93 - 97;
LABEL_633:
                                                                                                    if (v97 >= 0x1A)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

                                                                                                    goto LABEL_634;
                                                                                                  }

                                                                                                  if (v93 != 45)
                                                                                                  {
                                                                                                    if (v93 < 0x30)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

                                                                                                    goto LABEL_634;
                                                                                                  }

LABEL_617:
                                                                                                  v96 = v6[32];
                                                                                                  if (v96 <= 0x39)
                                                                                                  {
                                                                                                    if (v96 == 45)
                                                                                                    {
                                                                                                      goto LABEL_638;
                                                                                                    }

                                                                                                    if (v96 < 0x30)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

                                                                                                    goto LABEL_655;
                                                                                                  }

                                                                                                  if (v96 <= 0x5A)
                                                                                                  {
                                                                                                    if (v96 < 0x41)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

                                                                                                    goto LABEL_655;
                                                                                                  }

                                                                                                  v100 = v96 - 97;
LABEL_654:
                                                                                                  if (v100 >= 0x1A)
                                                                                                  {
                                                                                                    return 0;
                                                                                                  }

LABEL_655:
                                                                                                  v4 = v6 + 33;
                                                                                                  v101 = v6[33];
                                                                                                  if (v101 > 0x3D)
                                                                                                  {
                                                                                                    if (v101 > 0x5A)
                                                                                                    {
                                                                                                      v103 = v101 - 97;
                                                                                                      goto LABEL_675;
                                                                                                    }

                                                                                                    if (v101 == 62)
                                                                                                    {
                                                                                                      return (v4 - a1 + 1);
                                                                                                    }

                                                                                                    if (v101 < 0x41)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

LABEL_676:
                                                                                                    v4 = v6 + 34;
                                                                                                    v104 = v6[34];
                                                                                                    if (v104 > 0x3D)
                                                                                                    {
                                                                                                      if (v104 <= 0x5A)
                                                                                                      {
                                                                                                        if (v104 == 62)
                                                                                                        {
                                                                                                          return (v4 - a1 + 1);
                                                                                                        }

                                                                                                        if (v104 < 0x41)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

                                                                                                        goto LABEL_697;
                                                                                                      }

                                                                                                      v106 = v104 - 97;
LABEL_696:
                                                                                                      if (v106 >= 0x1A)
                                                                                                      {
                                                                                                        return 0;
                                                                                                      }

                                                                                                      goto LABEL_697;
                                                                                                    }

                                                                                                    if (v104 > 0x2E)
                                                                                                    {
                                                                                                      v2 = 0;
                                                                                                      if (v104 == 47 || v104 >= 0x3A)
                                                                                                      {
                                                                                                        return v2;
                                                                                                      }

                                                                                                      goto LABEL_697;
                                                                                                    }

                                                                                                    if (v104 < 0x2D)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

                                                                                                    if (v104 != 46)
                                                                                                    {
LABEL_680:
                                                                                                      v105 = v6[35];
                                                                                                      if (v105 > 0x39)
                                                                                                      {
                                                                                                        if (v105 <= 0x5A)
                                                                                                        {
                                                                                                          if (v105 < 0x41)
                                                                                                          {
                                                                                                            return 0;
                                                                                                          }

                                                                                                          goto LABEL_718;
                                                                                                        }

                                                                                                        v109 = v105 - 97;
LABEL_717:
                                                                                                        if (v109 >= 0x1A)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

                                                                                                        goto LABEL_718;
                                                                                                      }

                                                                                                      if (v105 != 45)
                                                                                                      {
                                                                                                        if (v105 < 0x30)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

                                                                                                        goto LABEL_718;
                                                                                                      }

LABEL_701:
                                                                                                      v108 = v6[36];
                                                                                                      if (v108 <= 0x39)
                                                                                                      {
                                                                                                        if (v108 == 45)
                                                                                                        {
                                                                                                          goto LABEL_722;
                                                                                                        }

                                                                                                        if (v108 < 0x30)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

                                                                                                        goto LABEL_739;
                                                                                                      }

                                                                                                      if (v108 <= 0x5A)
                                                                                                      {
                                                                                                        if (v108 < 0x41)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

                                                                                                        goto LABEL_739;
                                                                                                      }

                                                                                                      v112 = v108 - 97;
LABEL_738:
                                                                                                      if (v112 >= 0x1A)
                                                                                                      {
                                                                                                        return 0;
                                                                                                      }

LABEL_739:
                                                                                                      v4 = v6 + 37;
                                                                                                      v113 = v6[37];
                                                                                                      if (v113 > 0x3D)
                                                                                                      {
                                                                                                        if (v113 > 0x5A)
                                                                                                        {
                                                                                                          v115 = v113 - 97;
                                                                                                          goto LABEL_759;
                                                                                                        }

                                                                                                        if (v113 == 62)
                                                                                                        {
                                                                                                          return (v4 - a1 + 1);
                                                                                                        }

                                                                                                        if (v113 < 0x41)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

LABEL_760:
                                                                                                        v4 = v6 + 38;
                                                                                                        v116 = v6[38];
                                                                                                        if (v116 > 0x3D)
                                                                                                        {
                                                                                                          if (v116 <= 0x5A)
                                                                                                          {
                                                                                                            if (v116 == 62)
                                                                                                            {
                                                                                                              return (v4 - a1 + 1);
                                                                                                            }

                                                                                                            if (v116 < 0x41)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

                                                                                                            goto LABEL_781;
                                                                                                          }

                                                                                                          v118 = v116 - 97;
LABEL_780:
                                                                                                          if (v118 >= 0x1A)
                                                                                                          {
                                                                                                            return 0;
                                                                                                          }

                                                                                                          goto LABEL_781;
                                                                                                        }

                                                                                                        if (v116 > 0x2E)
                                                                                                        {
                                                                                                          v2 = 0;
                                                                                                          if (v116 == 47 || v116 >= 0x3A)
                                                                                                          {
                                                                                                            return v2;
                                                                                                          }

                                                                                                          goto LABEL_781;
                                                                                                        }

                                                                                                        if (v116 < 0x2D)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

                                                                                                        if (v116 != 46)
                                                                                                        {
LABEL_764:
                                                                                                          v117 = v6[39];
                                                                                                          if (v117 > 0x39)
                                                                                                          {
                                                                                                            if (v117 <= 0x5A)
                                                                                                            {
                                                                                                              if (v117 < 0x41)
                                                                                                              {
                                                                                                                return 0;
                                                                                                              }

                                                                                                              goto LABEL_802;
                                                                                                            }

                                                                                                            v121 = v117 - 97;
LABEL_801:
                                                                                                            if (v121 >= 0x1A)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

                                                                                                            goto LABEL_802;
                                                                                                          }

                                                                                                          if (v117 != 45)
                                                                                                          {
                                                                                                            if (v117 < 0x30)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

                                                                                                            goto LABEL_802;
                                                                                                          }

LABEL_785:
                                                                                                          v120 = v6[40];
                                                                                                          if (v120 <= 0x39)
                                                                                                          {
                                                                                                            if (v120 == 45)
                                                                                                            {
                                                                                                              goto LABEL_806;
                                                                                                            }

                                                                                                            if (v120 < 0x30)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

                                                                                                            goto LABEL_823;
                                                                                                          }

                                                                                                          if (v120 <= 0x5A)
                                                                                                          {
                                                                                                            if (v120 < 0x41)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

                                                                                                            goto LABEL_823;
                                                                                                          }

                                                                                                          v124 = v120 - 97;
LABEL_822:
                                                                                                          if (v124 >= 0x1A)
                                                                                                          {
                                                                                                            return 0;
                                                                                                          }

LABEL_823:
                                                                                                          v4 = v6 + 41;
                                                                                                          v125 = v6[41];
                                                                                                          if (v125 > 0x3D)
                                                                                                          {
                                                                                                            if (v125 > 0x5A)
                                                                                                            {
                                                                                                              v127 = v125 - 97;
                                                                                                              goto LABEL_843;
                                                                                                            }

                                                                                                            if (v125 == 62)
                                                                                                            {
                                                                                                              return (v4 - a1 + 1);
                                                                                                            }

                                                                                                            if (v125 < 0x41)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

LABEL_844:
                                                                                                            v4 = v6 + 42;
                                                                                                            v128 = v6[42];
                                                                                                            if (v128 > 0x3D)
                                                                                                            {
                                                                                                              if (v128 <= 0x5A)
                                                                                                              {
                                                                                                                if (v128 == 62)
                                                                                                                {
                                                                                                                  return (v4 - a1 + 1);
                                                                                                                }

                                                                                                                if (v128 < 0x41)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                goto LABEL_865;
                                                                                                              }

                                                                                                              v130 = v128 - 97;
LABEL_864:
                                                                                                              if (v130 >= 0x1A)
                                                                                                              {
                                                                                                                return 0;
                                                                                                              }

                                                                                                              goto LABEL_865;
                                                                                                            }

                                                                                                            if (v128 > 0x2E)
                                                                                                            {
                                                                                                              v2 = 0;
                                                                                                              if (v128 == 47 || v128 >= 0x3A)
                                                                                                              {
                                                                                                                return v2;
                                                                                                              }

                                                                                                              goto LABEL_865;
                                                                                                            }

                                                                                                            if (v128 < 0x2D)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

                                                                                                            if (v128 != 46)
                                                                                                            {
LABEL_848:
                                                                                                              v129 = v6[43];
                                                                                                              if (v129 > 0x39)
                                                                                                              {
                                                                                                                if (v129 <= 0x5A)
                                                                                                                {
                                                                                                                  if (v129 < 0x41)
                                                                                                                  {
                                                                                                                    return 0;
                                                                                                                  }

                                                                                                                  goto LABEL_886;
                                                                                                                }

                                                                                                                v133 = v129 - 97;
LABEL_885:
                                                                                                                if (v133 >= 0x1A)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                goto LABEL_886;
                                                                                                              }

                                                                                                              if (v129 != 45)
                                                                                                              {
                                                                                                                if (v129 < 0x30)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                goto LABEL_886;
                                                                                                              }

LABEL_869:
                                                                                                              v132 = v6[44];
                                                                                                              if (v132 <= 0x39)
                                                                                                              {
                                                                                                                if (v132 == 45)
                                                                                                                {
                                                                                                                  goto LABEL_890;
                                                                                                                }

                                                                                                                if (v132 < 0x30)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                goto LABEL_907;
                                                                                                              }

                                                                                                              if (v132 <= 0x5A)
                                                                                                              {
                                                                                                                if (v132 < 0x41)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                goto LABEL_907;
                                                                                                              }

                                                                                                              v136 = v132 - 97;
LABEL_906:
                                                                                                              if (v136 >= 0x1A)
                                                                                                              {
                                                                                                                return 0;
                                                                                                              }

LABEL_907:
                                                                                                              v4 = v6 + 45;
                                                                                                              v137 = v6[45];
                                                                                                              if (v137 > 0x3D)
                                                                                                              {
                                                                                                                if (v137 > 0x5A)
                                                                                                                {
                                                                                                                  v139 = v137 - 97;
                                                                                                                  goto LABEL_927;
                                                                                                                }

                                                                                                                if (v137 == 62)
                                                                                                                {
                                                                                                                  return (v4 - a1 + 1);
                                                                                                                }

                                                                                                                if (v137 < 0x41)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

LABEL_928:
                                                                                                                v4 = v6 + 46;
                                                                                                                v140 = v6[46];
                                                                                                                if (v140 > 0x3D)
                                                                                                                {
                                                                                                                  if (v140 <= 0x5A)
                                                                                                                  {
                                                                                                                    if (v140 == 62)
                                                                                                                    {
                                                                                                                      return (v4 - a1 + 1);
                                                                                                                    }

                                                                                                                    if (v140 < 0x41)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

                                                                                                                    goto LABEL_949;
                                                                                                                  }

                                                                                                                  v142 = v140 - 97;
LABEL_948:
                                                                                                                  if (v142 >= 0x1A)
                                                                                                                  {
                                                                                                                    return 0;
                                                                                                                  }

                                                                                                                  goto LABEL_949;
                                                                                                                }

                                                                                                                if (v140 > 0x2E)
                                                                                                                {
                                                                                                                  v2 = 0;
                                                                                                                  if (v140 == 47 || v140 >= 0x3A)
                                                                                                                  {
                                                                                                                    return v2;
                                                                                                                  }

                                                                                                                  goto LABEL_949;
                                                                                                                }

                                                                                                                if (v140 < 0x2D)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                if (v140 != 46)
                                                                                                                {
LABEL_932:
                                                                                                                  v141 = v6[47];
                                                                                                                  if (v141 > 0x39)
                                                                                                                  {
                                                                                                                    if (v141 <= 0x5A)
                                                                                                                    {
                                                                                                                      if (v141 < 0x41)
                                                                                                                      {
                                                                                                                        return 0;
                                                                                                                      }

                                                                                                                      goto LABEL_970;
                                                                                                                    }

                                                                                                                    v145 = v141 - 97;
LABEL_969:
                                                                                                                    if (v145 >= 0x1A)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

                                                                                                                    goto LABEL_970;
                                                                                                                  }

                                                                                                                  if (v141 != 45)
                                                                                                                  {
                                                                                                                    if (v141 < 0x30)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

                                                                                                                    goto LABEL_970;
                                                                                                                  }

LABEL_953:
                                                                                                                  v144 = v6[48];
                                                                                                                  if (v144 <= 0x39)
                                                                                                                  {
                                                                                                                    if (v144 == 45)
                                                                                                                    {
                                                                                                                      goto LABEL_974;
                                                                                                                    }

                                                                                                                    if (v144 < 0x30)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

                                                                                                                    goto LABEL_991;
                                                                                                                  }

                                                                                                                  if (v144 <= 0x5A)
                                                                                                                  {
                                                                                                                    if (v144 < 0x41)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

                                                                                                                    goto LABEL_991;
                                                                                                                  }

                                                                                                                  v148 = v144 - 97;
LABEL_990:
                                                                                                                  if (v148 >= 0x1A)
                                                                                                                  {
                                                                                                                    return 0;
                                                                                                                  }

LABEL_991:
                                                                                                                  v4 = v6 + 49;
                                                                                                                  v149 = v6[49];
                                                                                                                  if (v149 > 0x3D)
                                                                                                                  {
                                                                                                                    if (v149 > 0x5A)
                                                                                                                    {
                                                                                                                      v151 = v149 - 97;
                                                                                                                      goto LABEL_1011;
                                                                                                                    }

                                                                                                                    if (v149 == 62)
                                                                                                                    {
                                                                                                                      return (v4 - a1 + 1);
                                                                                                                    }

                                                                                                                    if (v149 < 0x41)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

LABEL_1012:
                                                                                                                    v4 = v6 + 50;
                                                                                                                    v152 = v6[50];
                                                                                                                    if (v152 > 0x3D)
                                                                                                                    {
                                                                                                                      if (v152 <= 0x5A)
                                                                                                                      {
                                                                                                                        if (v152 == 62)
                                                                                                                        {
                                                                                                                          return (v4 - a1 + 1);
                                                                                                                        }

                                                                                                                        if (v152 < 0x41)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

                                                                                                                        goto LABEL_1033;
                                                                                                                      }

                                                                                                                      v154 = v152 - 97;
LABEL_1032:
                                                                                                                      if (v154 >= 0x1A)
                                                                                                                      {
                                                                                                                        return 0;
                                                                                                                      }

                                                                                                                      goto LABEL_1033;
                                                                                                                    }

                                                                                                                    if (v152 > 0x2E)
                                                                                                                    {
                                                                                                                      v2 = 0;
                                                                                                                      if (v152 == 47 || v152 >= 0x3A)
                                                                                                                      {
                                                                                                                        return v2;
                                                                                                                      }

                                                                                                                      goto LABEL_1033;
                                                                                                                    }

                                                                                                                    if (v152 < 0x2D)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

                                                                                                                    if (v152 != 46)
                                                                                                                    {
LABEL_1016:
                                                                                                                      v153 = v6[51];
                                                                                                                      if (v153 > 0x39)
                                                                                                                      {
                                                                                                                        if (v153 <= 0x5A)
                                                                                                                        {
                                                                                                                          if (v153 < 0x41)
                                                                                                                          {
                                                                                                                            return 0;
                                                                                                                          }

                                                                                                                          goto LABEL_1054;
                                                                                                                        }

                                                                                                                        v157 = v153 - 97;
LABEL_1053:
                                                                                                                        if (v157 >= 0x1A)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

                                                                                                                        goto LABEL_1054;
                                                                                                                      }

                                                                                                                      if (v153 != 45)
                                                                                                                      {
                                                                                                                        if (v153 < 0x30)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

                                                                                                                        goto LABEL_1054;
                                                                                                                      }

LABEL_1037:
                                                                                                                      v156 = v6[52];
                                                                                                                      if (v156 <= 0x39)
                                                                                                                      {
                                                                                                                        if (v156 == 45)
                                                                                                                        {
                                                                                                                          goto LABEL_1058;
                                                                                                                        }

                                                                                                                        if (v156 < 0x30)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

                                                                                                                        goto LABEL_1075;
                                                                                                                      }

                                                                                                                      if (v156 <= 0x5A)
                                                                                                                      {
                                                                                                                        if (v156 < 0x41)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

                                                                                                                        goto LABEL_1075;
                                                                                                                      }

                                                                                                                      v160 = v156 - 97;
LABEL_1074:
                                                                                                                      if (v160 >= 0x1A)
                                                                                                                      {
                                                                                                                        return 0;
                                                                                                                      }

LABEL_1075:
                                                                                                                      v4 = v6 + 53;
                                                                                                                      v161 = v6[53];
                                                                                                                      if (v161 > 0x3D)
                                                                                                                      {
                                                                                                                        if (v161 > 0x5A)
                                                                                                                        {
                                                                                                                          v163 = v161 - 97;
                                                                                                                          goto LABEL_1095;
                                                                                                                        }

                                                                                                                        if (v161 == 62)
                                                                                                                        {
                                                                                                                          return (v4 - a1 + 1);
                                                                                                                        }

                                                                                                                        if (v161 < 0x41)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

LABEL_1096:
                                                                                                                        v4 = v6 + 54;
                                                                                                                        v164 = v6[54];
                                                                                                                        if (v164 > 0x3D)
                                                                                                                        {
                                                                                                                          if (v164 <= 0x5A)
                                                                                                                          {
                                                                                                                            if (v164 == 62)
                                                                                                                            {
                                                                                                                              return (v4 - a1 + 1);
                                                                                                                            }

                                                                                                                            if (v164 < 0x41)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

                                                                                                                            goto LABEL_1117;
                                                                                                                          }

                                                                                                                          v166 = v164 - 97;
LABEL_1116:
                                                                                                                          if (v166 >= 0x1A)
                                                                                                                          {
                                                                                                                            return 0;
                                                                                                                          }

                                                                                                                          goto LABEL_1117;
                                                                                                                        }

                                                                                                                        if (v164 > 0x2E)
                                                                                                                        {
                                                                                                                          v2 = 0;
                                                                                                                          if (v164 == 47 || v164 >= 0x3A)
                                                                                                                          {
                                                                                                                            return v2;
                                                                                                                          }

                                                                                                                          goto LABEL_1117;
                                                                                                                        }

                                                                                                                        if (v164 < 0x2D)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

                                                                                                                        if (v164 != 46)
                                                                                                                        {
LABEL_1100:
                                                                                                                          v165 = v6[55];
                                                                                                                          if (v165 > 0x39)
                                                                                                                          {
                                                                                                                            if (v165 <= 0x5A)
                                                                                                                            {
                                                                                                                              if (v165 < 0x41)
                                                                                                                              {
                                                                                                                                return 0;
                                                                                                                              }

                                                                                                                              goto LABEL_1138;
                                                                                                                            }

                                                                                                                            v169 = v165 - 97;
LABEL_1137:
                                                                                                                            if (v169 >= 0x1A)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

                                                                                                                            goto LABEL_1138;
                                                                                                                          }

                                                                                                                          if (v165 != 45)
                                                                                                                          {
                                                                                                                            if (v165 < 0x30)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

                                                                                                                            goto LABEL_1138;
                                                                                                                          }

LABEL_1121:
                                                                                                                          v168 = v6[56];
                                                                                                                          if (v168 <= 0x39)
                                                                                                                          {
                                                                                                                            if (v168 == 45)
                                                                                                                            {
                                                                                                                              goto LABEL_1142;
                                                                                                                            }

                                                                                                                            if (v168 < 0x30)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

                                                                                                                            goto LABEL_1159;
                                                                                                                          }

                                                                                                                          if (v168 <= 0x5A)
                                                                                                                          {
                                                                                                                            if (v168 < 0x41)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

                                                                                                                            goto LABEL_1159;
                                                                                                                          }

                                                                                                                          v172 = v168 - 97;
LABEL_1158:
                                                                                                                          if (v172 >= 0x1A)
                                                                                                                          {
                                                                                                                            return 0;
                                                                                                                          }

LABEL_1159:
                                                                                                                          v4 = v6 + 57;
                                                                                                                          v173 = v6[57];
                                                                                                                          if (v173 > 0x3D)
                                                                                                                          {
                                                                                                                            if (v173 > 0x5A)
                                                                                                                            {
                                                                                                                              v175 = v173 - 97;
                                                                                                                              goto LABEL_1179;
                                                                                                                            }

                                                                                                                            if (v173 == 62)
                                                                                                                            {
                                                                                                                              return (v4 - a1 + 1);
                                                                                                                            }

                                                                                                                            if (v173 < 0x41)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

LABEL_1180:
                                                                                                                            v4 = v6 + 58;
                                                                                                                            v176 = v6[58];
                                                                                                                            if (v176 > 0x3D)
                                                                                                                            {
                                                                                                                              if (v176 <= 0x5A)
                                                                                                                              {
                                                                                                                                if (v176 == 62)
                                                                                                                                {
                                                                                                                                  return (v4 - a1 + 1);
                                                                                                                                }

                                                                                                                                if (v176 < 0x41)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

                                                                                                                                goto LABEL_1201;
                                                                                                                              }

                                                                                                                              v178 = v176 - 97;
LABEL_1200:
                                                                                                                              if (v178 >= 0x1A)
                                                                                                                              {
                                                                                                                                return 0;
                                                                                                                              }

                                                                                                                              goto LABEL_1201;
                                                                                                                            }

                                                                                                                            if (v176 > 0x2E)
                                                                                                                            {
                                                                                                                              v2 = 0;
                                                                                                                              if (v176 == 47 || v176 >= 0x3A)
                                                                                                                              {
                                                                                                                                return v2;
                                                                                                                              }

                                                                                                                              goto LABEL_1201;
                                                                                                                            }

                                                                                                                            if (v176 < 0x2D)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

                                                                                                                            if (v176 != 46)
                                                                                                                            {
LABEL_1184:
                                                                                                                              v177 = v6[59];
                                                                                                                              if (v177 > 0x39)
                                                                                                                              {
                                                                                                                                if (v177 <= 0x5A)
                                                                                                                                {
                                                                                                                                  if (v177 < 0x41)
                                                                                                                                  {
                                                                                                                                    return 0;
                                                                                                                                  }

                                                                                                                                  goto LABEL_1222;
                                                                                                                                }

                                                                                                                                v181 = v177 - 97;
LABEL_1221:
                                                                                                                                if (v181 >= 0x1A)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

                                                                                                                                goto LABEL_1222;
                                                                                                                              }

                                                                                                                              if (v177 != 45)
                                                                                                                              {
                                                                                                                                if (v177 < 0x30)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

                                                                                                                                goto LABEL_1222;
                                                                                                                              }

LABEL_1205:
                                                                                                                              v180 = v6[60];
                                                                                                                              if (v180 <= 0x39)
                                                                                                                              {
                                                                                                                                if (v180 == 45)
                                                                                                                                {
                                                                                                                                  goto LABEL_1226;
                                                                                                                                }

                                                                                                                                if (v180 < 0x30)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

                                                                                                                                goto LABEL_1243;
                                                                                                                              }

                                                                                                                              if (v180 <= 0x5A)
                                                                                                                              {
                                                                                                                                if (v180 < 0x41)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

                                                                                                                                goto LABEL_1243;
                                                                                                                              }

                                                                                                                              v184 = v180 - 97;
LABEL_1242:
                                                                                                                              if (v184 >= 0x1A)
                                                                                                                              {
                                                                                                                                return 0;
                                                                                                                              }

LABEL_1243:
                                                                                                                              v4 = v6 + 61;
                                                                                                                              v185 = v6[61];
                                                                                                                              if (v185 > 0x3D)
                                                                                                                              {
                                                                                                                                if (v185 > 0x5A)
                                                                                                                                {
                                                                                                                                  v187 = v185 - 97;
                                                                                                                                  goto LABEL_1263;
                                                                                                                                }

                                                                                                                                if (v185 == 62)
                                                                                                                                {
                                                                                                                                  return (v4 - a1 + 1);
                                                                                                                                }

                                                                                                                                if (v185 < 0x41)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

LABEL_1264:
                                                                                                                                v4 = v6 + 62;
                                                                                                                                v188 = v6[62];
                                                                                                                                if (v188 > 0x3D)
                                                                                                                                {
                                                                                                                                  if (v188 <= 0x5A)
                                                                                                                                  {
                                                                                                                                    if (v188 == 62)
                                                                                                                                    {
                                                                                                                                      return (v4 - a1 + 1);
                                                                                                                                    }

                                                                                                                                    if (v188 < 0x41)
                                                                                                                                    {
                                                                                                                                      return 0;
                                                                                                                                    }

                                                                                                                                    goto LABEL_1284;
                                                                                                                                  }

                                                                                                                                  v190 = v188 - 97;
LABEL_1283:
                                                                                                                                  if (v190 >= 0x1A)
                                                                                                                                  {
                                                                                                                                    return 0;
                                                                                                                                  }

                                                                                                                                  goto LABEL_1284;
                                                                                                                                }

                                                                                                                                if (v188 > 0x2E)
                                                                                                                                {
                                                                                                                                  v2 = 0;
                                                                                                                                  if (v188 == 47 || v188 >= 0x3A)
                                                                                                                                  {
                                                                                                                                    return v2;
                                                                                                                                  }

                                                                                                                                  goto LABEL_1284;
                                                                                                                                }

                                                                                                                                if (v188 < 0x2D)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

                                                                                                                                if (v188 != 46)
                                                                                                                                {
LABEL_1268:
                                                                                                                                  v189 = v6[63];
                                                                                                                                  if (v189 > 0x40)
                                                                                                                                  {
                                                                                                                                    if (v189 >= 0x5B && v189 - 97 >= 0x1A)
                                                                                                                                    {
                                                                                                                                      return 0;
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else if (v189 - 48 >= 0xA)
                                                                                                                                  {
                                                                                                                                    return 0;
                                                                                                                                  }

                                                                                                                                  goto LABEL_1300;
                                                                                                                                }
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                if (v185 > 0x2E)
                                                                                                                                {
                                                                                                                                  v2 = 0;
                                                                                                                                  if (v185 == 47 || v185 >= 0x3A)
                                                                                                                                  {
                                                                                                                                    return v2;
                                                                                                                                  }

                                                                                                                                  goto LABEL_1264;
                                                                                                                                }

                                                                                                                                if (v185 < 0x2D)
                                                                                                                                {
                                                                                                                                  return 0;
                                                                                                                                }

                                                                                                                                if (v185 != 46)
                                                                                                                                {
                                                                                                                                  goto LABEL_1247;
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            if (v173 > 0x2E)
                                                                                                                            {
                                                                                                                              v2 = 0;
                                                                                                                              if (v173 == 47 || v173 >= 0x3A)
                                                                                                                              {
                                                                                                                                return v2;
                                                                                                                              }

                                                                                                                              goto LABEL_1180;
                                                                                                                            }

                                                                                                                            if (v173 < 0x2D)
                                                                                                                            {
                                                                                                                              return 0;
                                                                                                                            }

                                                                                                                            if (v173 != 46)
                                                                                                                            {
                                                                                                                              goto LABEL_1163;
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        if (v161 > 0x2E)
                                                                                                                        {
                                                                                                                          v2 = 0;
                                                                                                                          if (v161 == 47 || v161 >= 0x3A)
                                                                                                                          {
                                                                                                                            return v2;
                                                                                                                          }

                                                                                                                          goto LABEL_1096;
                                                                                                                        }

                                                                                                                        if (v161 < 0x2D)
                                                                                                                        {
                                                                                                                          return 0;
                                                                                                                        }

                                                                                                                        if (v161 != 46)
                                                                                                                        {
                                                                                                                          goto LABEL_1079;
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    if (v149 > 0x2E)
                                                                                                                    {
                                                                                                                      v2 = 0;
                                                                                                                      if (v149 == 47 || v149 >= 0x3A)
                                                                                                                      {
                                                                                                                        return v2;
                                                                                                                      }

                                                                                                                      goto LABEL_1012;
                                                                                                                    }

                                                                                                                    if (v149 < 0x2D)
                                                                                                                    {
                                                                                                                      return 0;
                                                                                                                    }

                                                                                                                    if (v149 != 46)
                                                                                                                    {
                                                                                                                      goto LABEL_995;
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                if (v137 > 0x2E)
                                                                                                                {
                                                                                                                  v2 = 0;
                                                                                                                  if (v137 == 47 || v137 >= 0x3A)
                                                                                                                  {
                                                                                                                    return v2;
                                                                                                                  }

                                                                                                                  goto LABEL_928;
                                                                                                                }

                                                                                                                if (v137 < 0x2D)
                                                                                                                {
                                                                                                                  return 0;
                                                                                                                }

                                                                                                                if (v137 != 46)
                                                                                                                {
                                                                                                                  goto LABEL_911;
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            if (v125 > 0x2E)
                                                                                                            {
                                                                                                              v2 = 0;
                                                                                                              if (v125 == 47 || v125 >= 0x3A)
                                                                                                              {
                                                                                                                return v2;
                                                                                                              }

                                                                                                              goto LABEL_844;
                                                                                                            }

                                                                                                            if (v125 < 0x2D)
                                                                                                            {
                                                                                                              return 0;
                                                                                                            }

                                                                                                            if (v125 != 46)
                                                                                                            {
                                                                                                              goto LABEL_827;
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        if (v113 > 0x2E)
                                                                                                        {
                                                                                                          v2 = 0;
                                                                                                          if (v113 == 47 || v113 >= 0x3A)
                                                                                                          {
                                                                                                            return v2;
                                                                                                          }

                                                                                                          goto LABEL_760;
                                                                                                        }

                                                                                                        if (v113 < 0x2D)
                                                                                                        {
                                                                                                          return 0;
                                                                                                        }

                                                                                                        if (v113 != 46)
                                                                                                        {
                                                                                                          goto LABEL_743;
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    if (v101 > 0x2E)
                                                                                                    {
                                                                                                      v2 = 0;
                                                                                                      if (v101 == 47 || v101 >= 0x3A)
                                                                                                      {
                                                                                                        return v2;
                                                                                                      }

                                                                                                      goto LABEL_676;
                                                                                                    }

                                                                                                    if (v101 < 0x2D)
                                                                                                    {
                                                                                                      return 0;
                                                                                                    }

                                                                                                    if (v101 != 46)
                                                                                                    {
                                                                                                      goto LABEL_659;
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                if (v89 > 0x2E)
                                                                                                {
                                                                                                  v2 = 0;
                                                                                                  if (v89 == 47 || v89 >= 0x3A)
                                                                                                  {
                                                                                                    return v2;
                                                                                                  }

                                                                                                  goto LABEL_592;
                                                                                                }

                                                                                                if (v89 < 0x2D)
                                                                                                {
                                                                                                  return 0;
                                                                                                }

                                                                                                if (v89 != 46)
                                                                                                {
                                                                                                  goto LABEL_575;
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            if (v77 > 0x2E)
                                                                                            {
                                                                                              v2 = 0;
                                                                                              if (v77 == 47 || v77 >= 0x3A)
                                                                                              {
                                                                                                return v2;
                                                                                              }

                                                                                              goto LABEL_508;
                                                                                            }

                                                                                            if (v77 < 0x2D)
                                                                                            {
                                                                                              return 0;
                                                                                            }

                                                                                            if (v77 != 46)
                                                                                            {
                                                                                              goto LABEL_491;
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        if (v65 > 0x2E)
                                                                                        {
                                                                                          v2 = 0;
                                                                                          if (v65 == 47 || v65 >= 0x3A)
                                                                                          {
                                                                                            return v2;
                                                                                          }

                                                                                          goto LABEL_424;
                                                                                        }

                                                                                        if (v65 < 0x2D)
                                                                                        {
                                                                                          return 0;
                                                                                        }

                                                                                        if (v65 != 46)
                                                                                        {
                                                                                          goto LABEL_407;
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    if (v53 > 0x2E)
                                                                                    {
                                                                                      v2 = 0;
                                                                                      if (v53 == 47 || v53 >= 0x3A)
                                                                                      {
                                                                                        return v2;
                                                                                      }

                                                                                      goto LABEL_340;
                                                                                    }

                                                                                    if (v53 < 0x2D)
                                                                                    {
                                                                                      return 0;
                                                                                    }

                                                                                    if (v53 != 46)
                                                                                    {
                                                                                      goto LABEL_323;
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                if (v41 > 0x2E)
                                                                                {
                                                                                  v2 = 0;
                                                                                  if (v41 == 47 || v41 >= 0x3A)
                                                                                  {
                                                                                    return v2;
                                                                                  }

                                                                                  goto LABEL_256;
                                                                                }

                                                                                if (v41 < 0x2D)
                                                                                {
                                                                                  return 0;
                                                                                }

                                                                                if (v41 != 46)
                                                                                {
                                                                                  goto LABEL_240;
                                                                                }
                                                                              }
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            if (v29 > 0x2E)
                                                                            {
                                                                              v2 = 0;
                                                                              if (v29 == 47 || v29 >= 0x3A)
                                                                              {
                                                                                return v2;
                                                                              }

                                                                              goto LABEL_176;
                                                                            }

                                                                            if (v29 < 0x2D)
                                                                            {
                                                                              return 0;
                                                                            }

                                                                            if (v29 != 46)
                                                                            {
                                                                              goto LABEL_163;
                                                                            }
                                                                          }
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        if (v17 > 0x2E)
                                                                        {
                                                                          v2 = 0;
                                                                          if (v17 == 47 || v17 >= 0x3A)
                                                                          {
                                                                            return v2;
                                                                          }

                                                                          goto LABEL_108;
                                                                        }

                                                                        if (v17 < 0x2D)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        if (v17 != 46)
                                                                        {
                                                                          goto LABEL_95;
                                                                        }
                                                                      }
                                                                    }
                                                                  }

                                                                  if (v9 > 0x5A)
                                                                  {
                                                                    if (v9 - 97 >= 0x1A)
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    if (v9 == 62)
                                                                    {
                                                                      return (v4 - a1 + 1);
                                                                    }

                                                                    if (v9 < 0x41)
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

LABEL_57:
                                                                  v4 = v6 + 3;
                                                                  v11 = v6[3];
                                                                  if (v11 > 0x3D)
                                                                  {
                                                                    break;
                                                                  }

                                                                  if (v11 > 0x2E)
                                                                  {
                                                                    v2 = 0;
                                                                    if (v11 == 47 || v11 >= 0x3A)
                                                                    {
                                                                      return v2;
                                                                    }

                                                                    goto LABEL_74;
                                                                  }

                                                                  if (v11 < 0x2D)
                                                                  {
                                                                    return 0;
                                                                  }

                                                                  if (v11 != 46)
                                                                  {
                                                                    goto LABEL_61;
                                                                  }
                                                                }

                                                                if (v11 > 0x5A)
                                                                {
                                                                  v13 = v11 - 97;
                                                                  goto LABEL_73;
                                                                }

                                                                if (v11 == 62)
                                                                {
                                                                  return (v4 - a1 + 1);
                                                                }

                                                                if (v11 < 0x41)
                                                                {
                                                                  return 0;
                                                                }

LABEL_74:
                                                                v4 = v6 + 4;
                                                                v14 = v6[4];
                                                                if (v14 > 0x3D)
                                                                {
                                                                  if (v14 <= 0x5A)
                                                                  {
                                                                    if (v14 == 62)
                                                                    {
                                                                      return (v4 - a1 + 1);
                                                                    }

                                                                    if (v14 < 0x41)
                                                                    {
                                                                      return 0;
                                                                    }

                                                                    goto LABEL_91;
                                                                  }

                                                                  v16 = v14 - 97;
                                                                  goto LABEL_90;
                                                                }

                                                                if (v14 > 0x2E)
                                                                {
                                                                  v2 = 0;
                                                                  if (v14 == 47 || v14 >= 0x3A)
                                                                  {
                                                                    return v2;
                                                                  }

                                                                  goto LABEL_91;
                                                                }

                                                                if (v14 < 0x2D)
                                                                {
                                                                  return 0;
                                                                }
                                                              }

                                                              while (v14 == 46);
LABEL_78:
                                                              v15 = v6[5];
                                                              if (v15 > 0x39)
                                                              {
                                                                if (v15 <= 0x5A)
                                                                {
                                                                  if (v15 < 0x41)
                                                                  {
                                                                    return 0;
                                                                  }

                                                                  goto LABEL_108;
                                                                }

                                                                v19 = v15 - 97;
LABEL_107:
                                                                if (v19 >= 0x1A)
                                                                {
                                                                  return 0;
                                                                }

                                                                goto LABEL_108;
                                                              }

                                                              if (v15 != 45)
                                                              {
                                                                if (v15 < 0x30)
                                                                {
                                                                  return 0;
                                                                }

                                                                goto LABEL_108;
                                                              }

LABEL_95:
                                                              v18 = v6[6];
                                                              if (v18 > 0x39)
                                                              {
                                                                if (v18 <= 0x5A)
                                                                {
                                                                  if (v18 < 0x41)
                                                                  {
                                                                    return 0;
                                                                  }

                                                                  goto LABEL_125;
                                                                }

                                                                v22 = v18 - 97;
                                                                goto LABEL_124;
                                                              }

                                                              if (v18 == 45)
                                                              {
                                                                goto LABEL_112;
                                                              }

                                                              if (v18 < 0x30)
                                                              {
                                                                return 0;
                                                              }

LABEL_125:
                                                              v4 = v6 + 7;
                                                              v23 = v6[7];
                                                              if (v23 > 0x3D)
                                                              {
                                                                break;
                                                              }

                                                              if (v23 > 0x2E)
                                                              {
                                                                v2 = 0;
                                                                if (v23 == 47 || v23 >= 0x3A)
                                                                {
                                                                  return v2;
                                                                }

                                                                goto LABEL_142;
                                                              }

                                                              if (v23 < 0x2D)
                                                              {
                                                                return 0;
                                                              }

                                                              if (v23 != 46)
                                                              {
                                                                goto LABEL_129;
                                                              }
                                                            }

                                                            if (v23 > 0x5A)
                                                            {
                                                              v25 = v23 - 97;
                                                              goto LABEL_141;
                                                            }

                                                            if (v23 == 62)
                                                            {
                                                              return (v4 - a1 + 1);
                                                            }

                                                            if (v23 < 0x41)
                                                            {
                                                              return 0;
                                                            }

LABEL_142:
                                                            v4 = v6 + 8;
                                                            v26 = v6[8];
                                                            if (v26 > 0x3D)
                                                            {
                                                              if (v26 <= 0x5A)
                                                              {
                                                                if (v26 == 62)
                                                                {
                                                                  return (v4 - a1 + 1);
                                                                }

                                                                if (v26 < 0x41)
                                                                {
                                                                  return 0;
                                                                }

                                                                goto LABEL_159;
                                                              }

                                                              v28 = v26 - 97;
                                                              goto LABEL_158;
                                                            }

                                                            if (v26 > 0x2E)
                                                            {
                                                              v2 = 0;
                                                              if (v26 == 47 || v26 >= 0x3A)
                                                              {
                                                                return v2;
                                                              }

                                                              goto LABEL_159;
                                                            }

                                                            if (v26 < 0x2D)
                                                            {
                                                              return 0;
                                                            }
                                                          }

                                                          while (v26 == 46);
LABEL_146:
                                                          v27 = v6[9];
                                                          if (v27 > 0x39)
                                                          {
                                                            if (v27 <= 0x5A)
                                                            {
                                                              if (v27 < 0x41)
                                                              {
                                                                return 0;
                                                              }

                                                              goto LABEL_176;
                                                            }

                                                            v31 = v27 - 97;
LABEL_175:
                                                            if (v31 >= 0x1A)
                                                            {
                                                              return 0;
                                                            }

                                                            goto LABEL_176;
                                                          }

                                                          if (v27 != 45)
                                                          {
                                                            if (v27 < 0x30)
                                                            {
                                                              return 0;
                                                            }

                                                            goto LABEL_176;
                                                          }

LABEL_163:
                                                          v30 = v6[10];
                                                          if (v30 > 0x39)
                                                          {
                                                            if (v30 <= 0x5A)
                                                            {
                                                              if (v30 < 0x41)
                                                              {
                                                                return 0;
                                                              }

                                                              goto LABEL_193;
                                                            }

                                                            v34 = v30 - 97;
                                                            goto LABEL_192;
                                                          }

                                                          if (v30 == 45)
                                                          {
                                                            goto LABEL_180;
                                                          }

                                                          if (v30 < 0x30)
                                                          {
                                                            return 0;
                                                          }

LABEL_193:
                                                          v4 = v6 + 11;
                                                          v35 = v6[11];
                                                          if (v35 > 0x3D)
                                                          {
                                                            break;
                                                          }

                                                          if (v35 > 0x2E)
                                                          {
                                                            v2 = 0;
                                                            if (v35 == 47 || v35 >= 0x3A)
                                                            {
                                                              return v2;
                                                            }

                                                            goto LABEL_216;
                                                          }

                                                          if (v35 < 0x2D)
                                                          {
                                                            return 0;
                                                          }

                                                          if (v35 != 46)
                                                          {
                                                            goto LABEL_197;
                                                          }
                                                        }

                                                        if (v35 > 0x5A)
                                                        {
                                                          v37 = v35 - 97;
                                                          goto LABEL_215;
                                                        }

                                                        if (v35 == 62)
                                                        {
                                                          return (v4 - a1 + 1);
                                                        }

                                                        if (v35 < 0x41)
                                                        {
                                                          return 0;
                                                        }

LABEL_216:
                                                        v4 = v6 + 12;
                                                        v38 = v6[12];
                                                        if (v38 > 0x3D)
                                                        {
                                                          if (v38 <= 0x5A)
                                                          {
                                                            if (v38 == 62)
                                                            {
                                                              return (v4 - a1 + 1);
                                                            }

                                                            if (v38 < 0x41)
                                                            {
                                                              return 0;
                                                            }

                                                            goto LABEL_236;
                                                          }

                                                          v40 = v38 - 97;
                                                          goto LABEL_235;
                                                        }

                                                        if (v38 > 0x2E)
                                                        {
                                                          v2 = 0;
                                                          if (v38 == 47 || v38 >= 0x3A)
                                                          {
                                                            return v2;
                                                          }

                                                          goto LABEL_236;
                                                        }

                                                        if (v38 < 0x2D)
                                                        {
                                                          return 0;
                                                        }
                                                      }

                                                      while (v38 == 46);
LABEL_220:
                                                      v39 = v6[13];
                                                      if (v39 > 0x39)
                                                      {
                                                        if (v39 <= 0x5A)
                                                        {
                                                          if (v39 < 0x41)
                                                          {
                                                            return 0;
                                                          }

                                                          goto LABEL_256;
                                                        }

                                                        v43 = v39 - 97;
LABEL_255:
                                                        if (v43 >= 0x1A)
                                                        {
                                                          return 0;
                                                        }

                                                        goto LABEL_256;
                                                      }

                                                      if (v39 != 45)
                                                      {
                                                        if (v39 < 0x30)
                                                        {
                                                          return 0;
                                                        }

                                                        goto LABEL_256;
                                                      }

LABEL_240:
                                                      v42 = v6[14];
                                                      if (v42 > 0x39)
                                                      {
                                                        if (v42 <= 0x5A)
                                                        {
                                                          if (v42 < 0x41)
                                                          {
                                                            return 0;
                                                          }

                                                          goto LABEL_276;
                                                        }

                                                        v46 = v42 - 97;
                                                        goto LABEL_275;
                                                      }

                                                      if (v42 == 45)
                                                      {
                                                        goto LABEL_260;
                                                      }

                                                      if (v42 < 0x30)
                                                      {
                                                        return 0;
                                                      }

LABEL_276:
                                                      v4 = v6 + 15;
                                                      v47 = v6[15];
                                                      if (v47 > 0x3D)
                                                      {
                                                        break;
                                                      }

                                                      if (v47 > 0x2E)
                                                      {
                                                        v2 = 0;
                                                        if (v47 == 47 || v47 >= 0x3A)
                                                        {
                                                          return v2;
                                                        }

                                                        goto LABEL_297;
                                                      }

                                                      if (v47 < 0x2D)
                                                      {
                                                        return 0;
                                                      }

                                                      if (v47 != 46)
                                                      {
                                                        goto LABEL_280;
                                                      }
                                                    }

                                                    if (v47 > 0x5A)
                                                    {
                                                      v49 = v47 - 97;
                                                      goto LABEL_296;
                                                    }

                                                    if (v47 == 62)
                                                    {
                                                      return (v4 - a1 + 1);
                                                    }

                                                    if (v47 < 0x41)
                                                    {
                                                      return 0;
                                                    }

LABEL_297:
                                                    v4 = v6 + 16;
                                                    v50 = v6[16];
                                                    if (v50 > 0x3D)
                                                    {
                                                      if (v50 <= 0x5A)
                                                      {
                                                        if (v50 == 62)
                                                        {
                                                          return (v4 - a1 + 1);
                                                        }

                                                        if (v50 < 0x41)
                                                        {
                                                          return 0;
                                                        }

                                                        goto LABEL_319;
                                                      }

                                                      v52 = v50 - 97;
                                                      goto LABEL_318;
                                                    }

                                                    if (v50 > 0x2E)
                                                    {
                                                      v2 = 0;
                                                      if (v50 == 47 || v50 >= 0x3A)
                                                      {
                                                        return v2;
                                                      }

                                                      goto LABEL_319;
                                                    }

                                                    if (v50 < 0x2D)
                                                    {
                                                      return 0;
                                                    }
                                                  }

                                                  while (v50 == 46);
LABEL_301:
                                                  v51 = v6[17];
                                                  if (v51 > 0x39)
                                                  {
                                                    if (v51 <= 0x5A)
                                                    {
                                                      if (v51 < 0x41)
                                                      {
                                                        return 0;
                                                      }

                                                      goto LABEL_340;
                                                    }

                                                    v55 = v51 - 97;
LABEL_339:
                                                    if (v55 >= 0x1A)
                                                    {
                                                      return 0;
                                                    }

                                                    goto LABEL_340;
                                                  }

                                                  if (v51 != 45)
                                                  {
                                                    if (v51 < 0x30)
                                                    {
                                                      return 0;
                                                    }

                                                    goto LABEL_340;
                                                  }

LABEL_323:
                                                  v54 = v6[18];
                                                  if (v54 > 0x39)
                                                  {
                                                    if (v54 <= 0x5A)
                                                    {
                                                      if (v54 < 0x41)
                                                      {
                                                        return 0;
                                                      }

                                                      goto LABEL_361;
                                                    }

                                                    v58 = v54 - 97;
                                                    goto LABEL_360;
                                                  }

                                                  if (v54 == 45)
                                                  {
                                                    goto LABEL_344;
                                                  }

                                                  if (v54 < 0x30)
                                                  {
                                                    return 0;
                                                  }

LABEL_361:
                                                  v4 = v6 + 19;
                                                  v59 = v6[19];
                                                  if (v59 > 0x3D)
                                                  {
                                                    break;
                                                  }

                                                  if (v59 > 0x2E)
                                                  {
                                                    v2 = 0;
                                                    if (v59 == 47 || v59 >= 0x3A)
                                                    {
                                                      return v2;
                                                    }

                                                    goto LABEL_382;
                                                  }

                                                  if (v59 < 0x2D)
                                                  {
                                                    return 0;
                                                  }

                                                  if (v59 != 46)
                                                  {
                                                    goto LABEL_365;
                                                  }
                                                }

                                                if (v59 > 0x5A)
                                                {
                                                  v61 = v59 - 97;
                                                  goto LABEL_381;
                                                }

                                                if (v59 == 62)
                                                {
                                                  return (v4 - a1 + 1);
                                                }

                                                if (v59 < 0x41)
                                                {
                                                  return 0;
                                                }

LABEL_382:
                                                v4 = v6 + 20;
                                                v62 = v6[20];
                                                if (v62 > 0x3D)
                                                {
                                                  if (v62 <= 0x5A)
                                                  {
                                                    if (v62 == 62)
                                                    {
                                                      return (v4 - a1 + 1);
                                                    }

                                                    if (v62 < 0x41)
                                                    {
                                                      return 0;
                                                    }

                                                    goto LABEL_403;
                                                  }

                                                  v64 = v62 - 97;
                                                  goto LABEL_402;
                                                }

                                                if (v62 > 0x2E)
                                                {
                                                  v2 = 0;
                                                  if (v62 == 47 || v62 >= 0x3A)
                                                  {
                                                    return v2;
                                                  }

                                                  goto LABEL_403;
                                                }

                                                if (v62 < 0x2D)
                                                {
                                                  return 0;
                                                }
                                              }

                                              while (v62 == 46);
LABEL_386:
                                              v63 = v6[21];
                                              if (v63 > 0x39)
                                              {
                                                if (v63 <= 0x5A)
                                                {
                                                  if (v63 < 0x41)
                                                  {
                                                    return 0;
                                                  }

                                                  goto LABEL_424;
                                                }

                                                v67 = v63 - 97;
LABEL_423:
                                                if (v67 >= 0x1A)
                                                {
                                                  return 0;
                                                }

                                                goto LABEL_424;
                                              }

                                              if (v63 != 45)
                                              {
                                                if (v63 < 0x30)
                                                {
                                                  return 0;
                                                }

                                                goto LABEL_424;
                                              }

LABEL_407:
                                              v66 = v6[22];
                                              if (v66 > 0x39)
                                              {
                                                if (v66 <= 0x5A)
                                                {
                                                  if (v66 < 0x41)
                                                  {
                                                    return 0;
                                                  }

                                                  goto LABEL_445;
                                                }

                                                v70 = v66 - 97;
                                                goto LABEL_444;
                                              }

                                              if (v66 == 45)
                                              {
                                                goto LABEL_428;
                                              }

                                              if (v66 < 0x30)
                                              {
                                                return 0;
                                              }

LABEL_445:
                                              v4 = v6 + 23;
                                              v71 = v6[23];
                                              if (v71 > 0x3D)
                                              {
                                                break;
                                              }

                                              if (v71 > 0x2E)
                                              {
                                                v2 = 0;
                                                if (v71 == 47 || v71 >= 0x3A)
                                                {
                                                  return v2;
                                                }

                                                goto LABEL_466;
                                              }

                                              if (v71 < 0x2D)
                                              {
                                                return 0;
                                              }

                                              if (v71 != 46)
                                              {
                                                goto LABEL_449;
                                              }
                                            }

                                            if (v71 > 0x5A)
                                            {
                                              v73 = v71 - 97;
                                              goto LABEL_465;
                                            }

                                            if (v71 == 62)
                                            {
                                              return (v4 - a1 + 1);
                                            }

                                            if (v71 < 0x41)
                                            {
                                              return 0;
                                            }

LABEL_466:
                                            v4 = v6 + 24;
                                            v74 = v6[24];
                                            if (v74 > 0x3D)
                                            {
                                              if (v74 <= 0x5A)
                                              {
                                                if (v74 == 62)
                                                {
                                                  return (v4 - a1 + 1);
                                                }

                                                if (v74 < 0x41)
                                                {
                                                  return 0;
                                                }

                                                goto LABEL_487;
                                              }

                                              v76 = v74 - 97;
                                              goto LABEL_486;
                                            }

                                            if (v74 > 0x2E)
                                            {
                                              v2 = 0;
                                              if (v74 == 47 || v74 >= 0x3A)
                                              {
                                                return v2;
                                              }

                                              goto LABEL_487;
                                            }

                                            if (v74 < 0x2D)
                                            {
                                              return 0;
                                            }
                                          }

                                          while (v74 == 46);
LABEL_470:
                                          v75 = v6[25];
                                          if (v75 > 0x39)
                                          {
                                            if (v75 <= 0x5A)
                                            {
                                              if (v75 < 0x41)
                                              {
                                                return 0;
                                              }

                                              goto LABEL_508;
                                            }

                                            v79 = v75 - 97;
LABEL_507:
                                            if (v79 >= 0x1A)
                                            {
                                              return 0;
                                            }

                                            goto LABEL_508;
                                          }

                                          if (v75 != 45)
                                          {
                                            if (v75 < 0x30)
                                            {
                                              return 0;
                                            }

                                            goto LABEL_508;
                                          }

LABEL_491:
                                          v78 = v6[26];
                                          if (v78 > 0x39)
                                          {
                                            if (v78 <= 0x5A)
                                            {
                                              if (v78 < 0x41)
                                              {
                                                return 0;
                                              }

                                              goto LABEL_529;
                                            }

                                            v82 = v78 - 97;
                                            goto LABEL_528;
                                          }

                                          if (v78 == 45)
                                          {
                                            goto LABEL_512;
                                          }

                                          if (v78 < 0x30)
                                          {
                                            return 0;
                                          }

LABEL_529:
                                          v4 = v6 + 27;
                                          v83 = v6[27];
                                          if (v83 > 0x3D)
                                          {
                                            break;
                                          }

                                          if (v83 > 0x2E)
                                          {
                                            v2 = 0;
                                            if (v83 == 47 || v83 >= 0x3A)
                                            {
                                              return v2;
                                            }

                                            goto LABEL_550;
                                          }

                                          if (v83 < 0x2D)
                                          {
                                            return 0;
                                          }

                                          if (v83 != 46)
                                          {
                                            goto LABEL_533;
                                          }
                                        }

                                        if (v83 > 0x5A)
                                        {
                                          v85 = v83 - 97;
                                          goto LABEL_549;
                                        }

                                        if (v83 == 62)
                                        {
                                          return (v4 - a1 + 1);
                                        }

                                        if (v83 < 0x41)
                                        {
                                          return 0;
                                        }

LABEL_550:
                                        v4 = v6 + 28;
                                        v86 = v6[28];
                                        if (v86 > 0x3D)
                                        {
                                          if (v86 <= 0x5A)
                                          {
                                            if (v86 == 62)
                                            {
                                              return (v4 - a1 + 1);
                                            }

                                            if (v86 < 0x41)
                                            {
                                              return 0;
                                            }

                                            goto LABEL_571;
                                          }

                                          v88 = v86 - 97;
                                          goto LABEL_570;
                                        }

                                        if (v86 > 0x2E)
                                        {
                                          v2 = 0;
                                          if (v86 == 47 || v86 >= 0x3A)
                                          {
                                            return v2;
                                          }

                                          goto LABEL_571;
                                        }

                                        if (v86 < 0x2D)
                                        {
                                          return 0;
                                        }
                                      }

                                      while (v86 == 46);
LABEL_554:
                                      v87 = v6[29];
                                      if (v87 > 0x39)
                                      {
                                        if (v87 <= 0x5A)
                                        {
                                          if (v87 < 0x41)
                                          {
                                            return 0;
                                          }

                                          goto LABEL_592;
                                        }

                                        v91 = v87 - 97;
LABEL_591:
                                        if (v91 >= 0x1A)
                                        {
                                          return 0;
                                        }

                                        goto LABEL_592;
                                      }

                                      if (v87 != 45)
                                      {
                                        if (v87 < 0x30)
                                        {
                                          return 0;
                                        }

                                        goto LABEL_592;
                                      }

LABEL_575:
                                      v90 = v6[30];
                                      if (v90 > 0x39)
                                      {
                                        if (v90 <= 0x5A)
                                        {
                                          if (v90 < 0x41)
                                          {
                                            return 0;
                                          }

                                          goto LABEL_613;
                                        }

                                        v94 = v90 - 97;
                                        goto LABEL_612;
                                      }

                                      if (v90 == 45)
                                      {
                                        goto LABEL_596;
                                      }

                                      if (v90 < 0x30)
                                      {
                                        return 0;
                                      }

LABEL_613:
                                      v4 = v6 + 31;
                                      v95 = v6[31];
                                      if (v95 > 0x3D)
                                      {
                                        break;
                                      }

                                      if (v95 > 0x2E)
                                      {
                                        v2 = 0;
                                        if (v95 == 47 || v95 >= 0x3A)
                                        {
                                          return v2;
                                        }

                                        goto LABEL_634;
                                      }

                                      if (v95 < 0x2D)
                                      {
                                        return 0;
                                      }

                                      if (v95 != 46)
                                      {
                                        goto LABEL_617;
                                      }
                                    }

                                    if (v95 > 0x5A)
                                    {
                                      v97 = v95 - 97;
                                      goto LABEL_633;
                                    }

                                    if (v95 == 62)
                                    {
                                      return (v4 - a1 + 1);
                                    }

                                    if (v95 < 0x41)
                                    {
                                      return 0;
                                    }

LABEL_634:
                                    v4 = v6 + 32;
                                    v98 = v6[32];
                                    if (v98 > 0x3D)
                                    {
                                      if (v98 <= 0x5A)
                                      {
                                        if (v98 == 62)
                                        {
                                          return (v4 - a1 + 1);
                                        }

                                        if (v98 < 0x41)
                                        {
                                          return 0;
                                        }

                                        goto LABEL_655;
                                      }

                                      v100 = v98 - 97;
                                      goto LABEL_654;
                                    }

                                    if (v98 > 0x2E)
                                    {
                                      v2 = 0;
                                      if (v98 == 47 || v98 >= 0x3A)
                                      {
                                        return v2;
                                      }

                                      goto LABEL_655;
                                    }

                                    if (v98 < 0x2D)
                                    {
                                      return 0;
                                    }
                                  }

                                  while (v98 == 46);
LABEL_638:
                                  v99 = v6[33];
                                  if (v99 > 0x39)
                                  {
                                    if (v99 <= 0x5A)
                                    {
                                      if (v99 < 0x41)
                                      {
                                        return 0;
                                      }

                                      goto LABEL_676;
                                    }

                                    v103 = v99 - 97;
LABEL_675:
                                    if (v103 >= 0x1A)
                                    {
                                      return 0;
                                    }

                                    goto LABEL_676;
                                  }

                                  if (v99 != 45)
                                  {
                                    if (v99 < 0x30)
                                    {
                                      return 0;
                                    }

                                    goto LABEL_676;
                                  }

LABEL_659:
                                  v102 = v6[34];
                                  if (v102 > 0x39)
                                  {
                                    if (v102 <= 0x5A)
                                    {
                                      if (v102 < 0x41)
                                      {
                                        return 0;
                                      }

                                      goto LABEL_697;
                                    }

                                    v106 = v102 - 97;
                                    goto LABEL_696;
                                  }

                                  if (v102 == 45)
                                  {
                                    goto LABEL_680;
                                  }

                                  if (v102 < 0x30)
                                  {
                                    return 0;
                                  }

LABEL_697:
                                  v4 = v6 + 35;
                                  v107 = v6[35];
                                  if (v107 > 0x3D)
                                  {
                                    break;
                                  }

                                  if (v107 > 0x2E)
                                  {
                                    v2 = 0;
                                    if (v107 == 47 || v107 >= 0x3A)
                                    {
                                      return v2;
                                    }

                                    goto LABEL_718;
                                  }

                                  if (v107 < 0x2D)
                                  {
                                    return 0;
                                  }

                                  if (v107 != 46)
                                  {
                                    goto LABEL_701;
                                  }
                                }

                                if (v107 > 0x5A)
                                {
                                  v109 = v107 - 97;
                                  goto LABEL_717;
                                }

                                if (v107 == 62)
                                {
                                  return (v4 - a1 + 1);
                                }

                                if (v107 < 0x41)
                                {
                                  return 0;
                                }

LABEL_718:
                                v4 = v6 + 36;
                                v110 = v6[36];
                                if (v110 > 0x3D)
                                {
                                  if (v110 <= 0x5A)
                                  {
                                    if (v110 == 62)
                                    {
                                      return (v4 - a1 + 1);
                                    }

                                    if (v110 < 0x41)
                                    {
                                      return 0;
                                    }

                                    goto LABEL_739;
                                  }

                                  v112 = v110 - 97;
                                  goto LABEL_738;
                                }

                                if (v110 > 0x2E)
                                {
                                  v2 = 0;
                                  if (v110 == 47 || v110 >= 0x3A)
                                  {
                                    return v2;
                                  }

                                  goto LABEL_739;
                                }

                                if (v110 < 0x2D)
                                {
                                  return 0;
                                }
                              }

                              while (v110 == 46);
LABEL_722:
                              v111 = v6[37];
                              if (v111 > 0x39)
                              {
                                if (v111 <= 0x5A)
                                {
                                  if (v111 < 0x41)
                                  {
                                    return 0;
                                  }

                                  goto LABEL_760;
                                }

                                v115 = v111 - 97;
LABEL_759:
                                if (v115 >= 0x1A)
                                {
                                  return 0;
                                }

                                goto LABEL_760;
                              }

                              if (v111 != 45)
                              {
                                if (v111 < 0x30)
                                {
                                  return 0;
                                }

                                goto LABEL_760;
                              }

LABEL_743:
                              v114 = v6[38];
                              if (v114 > 0x39)
                              {
                                if (v114 <= 0x5A)
                                {
                                  if (v114 < 0x41)
                                  {
                                    return 0;
                                  }

                                  goto LABEL_781;
                                }

                                v118 = v114 - 97;
                                goto LABEL_780;
                              }

                              if (v114 == 45)
                              {
                                goto LABEL_764;
                              }

                              if (v114 < 0x30)
                              {
                                return 0;
                              }

LABEL_781:
                              v4 = v6 + 39;
                              v119 = v6[39];
                              if (v119 > 0x3D)
                              {
                                break;
                              }

                              if (v119 > 0x2E)
                              {
                                v2 = 0;
                                if (v119 == 47 || v119 >= 0x3A)
                                {
                                  return v2;
                                }

                                goto LABEL_802;
                              }

                              if (v119 < 0x2D)
                              {
                                return 0;
                              }

                              if (v119 != 46)
                              {
                                goto LABEL_785;
                              }
                            }

                            if (v119 > 0x5A)
                            {
                              v121 = v119 - 97;
                              goto LABEL_801;
                            }

                            if (v119 == 62)
                            {
                              return (v4 - a1 + 1);
                            }

                            if (v119 < 0x41)
                            {
                              return 0;
                            }

LABEL_802:
                            v4 = v6 + 40;
                            v122 = v6[40];
                            if (v122 > 0x3D)
                            {
                              if (v122 <= 0x5A)
                              {
                                if (v122 == 62)
                                {
                                  return (v4 - a1 + 1);
                                }

                                if (v122 < 0x41)
                                {
                                  return 0;
                                }

                                goto LABEL_823;
                              }

                              v124 = v122 - 97;
                              goto LABEL_822;
                            }

                            if (v122 > 0x2E)
                            {
                              v2 = 0;
                              if (v122 == 47 || v122 >= 0x3A)
                              {
                                return v2;
                              }

                              goto LABEL_823;
                            }

                            if (v122 < 0x2D)
                            {
                              return 0;
                            }
                          }

                          while (v122 == 46);
LABEL_806:
                          v123 = v6[41];
                          if (v123 > 0x39)
                          {
                            if (v123 <= 0x5A)
                            {
                              if (v123 < 0x41)
                              {
                                return 0;
                              }

                              goto LABEL_844;
                            }

                            v127 = v123 - 97;
LABEL_843:
                            if (v127 >= 0x1A)
                            {
                              return 0;
                            }

                            goto LABEL_844;
                          }

                          if (v123 != 45)
                          {
                            if (v123 < 0x30)
                            {
                              return 0;
                            }

                            goto LABEL_844;
                          }

LABEL_827:
                          v126 = v6[42];
                          if (v126 > 0x39)
                          {
                            if (v126 <= 0x5A)
                            {
                              if (v126 < 0x41)
                              {
                                return 0;
                              }

                              goto LABEL_865;
                            }

                            v130 = v126 - 97;
                            goto LABEL_864;
                          }

                          if (v126 == 45)
                          {
                            goto LABEL_848;
                          }

                          if (v126 < 0x30)
                          {
                            return 0;
                          }

LABEL_865:
                          v4 = v6 + 43;
                          v131 = v6[43];
                          if (v131 > 0x3D)
                          {
                            break;
                          }

                          if (v131 > 0x2E)
                          {
                            v2 = 0;
                            if (v131 == 47 || v131 >= 0x3A)
                            {
                              return v2;
                            }

                            goto LABEL_886;
                          }

                          if (v131 < 0x2D)
                          {
                            return 0;
                          }

                          if (v131 != 46)
                          {
                            goto LABEL_869;
                          }
                        }

                        if (v131 > 0x5A)
                        {
                          v133 = v131 - 97;
                          goto LABEL_885;
                        }

                        if (v131 == 62)
                        {
                          return (v4 - a1 + 1);
                        }

                        if (v131 < 0x41)
                        {
                          return 0;
                        }

LABEL_886:
                        v4 = v6 + 44;
                        v134 = v6[44];
                        if (v134 > 0x3D)
                        {
                          if (v134 <= 0x5A)
                          {
                            if (v134 == 62)
                            {
                              return (v4 - a1 + 1);
                            }

                            if (v134 < 0x41)
                            {
                              return 0;
                            }

                            goto LABEL_907;
                          }

                          v136 = v134 - 97;
                          goto LABEL_906;
                        }

                        if (v134 > 0x2E)
                        {
                          v2 = 0;
                          if (v134 == 47 || v134 >= 0x3A)
                          {
                            return v2;
                          }

                          goto LABEL_907;
                        }

                        if (v134 < 0x2D)
                        {
                          return 0;
                        }
                      }

                      while (v134 == 46);
LABEL_890:
                      v135 = v6[45];
                      if (v135 > 0x39)
                      {
                        if (v135 <= 0x5A)
                        {
                          if (v135 < 0x41)
                          {
                            return 0;
                          }

                          goto LABEL_928;
                        }

                        v139 = v135 - 97;
LABEL_927:
                        if (v139 >= 0x1A)
                        {
                          return 0;
                        }

                        goto LABEL_928;
                      }

                      if (v135 != 45)
                      {
                        if (v135 < 0x30)
                        {
                          return 0;
                        }

                        goto LABEL_928;
                      }

LABEL_911:
                      v138 = v6[46];
                      if (v138 > 0x39)
                      {
                        if (v138 <= 0x5A)
                        {
                          if (v138 < 0x41)
                          {
                            return 0;
                          }

                          goto LABEL_949;
                        }

                        v142 = v138 - 97;
                        goto LABEL_948;
                      }

                      if (v138 == 45)
                      {
                        goto LABEL_932;
                      }

                      if (v138 < 0x30)
                      {
                        return 0;
                      }

LABEL_949:
                      v4 = v6 + 47;
                      v143 = v6[47];
                      if (v143 > 0x3D)
                      {
                        break;
                      }

                      if (v143 > 0x2E)
                      {
                        v2 = 0;
                        if (v143 == 47 || v143 >= 0x3A)
                        {
                          return v2;
                        }

                        goto LABEL_970;
                      }

                      if (v143 < 0x2D)
                      {
                        return 0;
                      }

                      if (v143 != 46)
                      {
                        goto LABEL_953;
                      }
                    }

                    if (v143 > 0x5A)
                    {
                      v145 = v143 - 97;
                      goto LABEL_969;
                    }

                    if (v143 == 62)
                    {
                      return (v4 - a1 + 1);
                    }

                    if (v143 < 0x41)
                    {
                      return 0;
                    }

LABEL_970:
                    v4 = v6 + 48;
                    v146 = v6[48];
                    if (v146 > 0x3D)
                    {
                      if (v146 <= 0x5A)
                      {
                        if (v146 == 62)
                        {
                          return (v4 - a1 + 1);
                        }

                        if (v146 < 0x41)
                        {
                          return 0;
                        }

                        goto LABEL_991;
                      }

                      v148 = v146 - 97;
                      goto LABEL_990;
                    }

                    if (v146 > 0x2E)
                    {
                      v2 = 0;
                      if (v146 == 47 || v146 >= 0x3A)
                      {
                        return v2;
                      }

                      goto LABEL_991;
                    }

                    if (v146 < 0x2D)
                    {
                      return 0;
                    }
                  }

                  while (v146 == 46);
LABEL_974:
                  v147 = v6[49];
                  if (v147 > 0x39)
                  {
                    if (v147 <= 0x5A)
                    {
                      if (v147 < 0x41)
                      {
                        return 0;
                      }

                      goto LABEL_1012;
                    }

                    v151 = v147 - 97;
LABEL_1011:
                    if (v151 >= 0x1A)
                    {
                      return 0;
                    }

                    goto LABEL_1012;
                  }

                  if (v147 != 45)
                  {
                    if (v147 < 0x30)
                    {
                      return 0;
                    }

                    goto LABEL_1012;
                  }

LABEL_995:
                  v150 = v6[50];
                  if (v150 > 0x39)
                  {
                    if (v150 <= 0x5A)
                    {
                      if (v150 < 0x41)
                      {
                        return 0;
                      }

                      goto LABEL_1033;
                    }

                    v154 = v150 - 97;
                    goto LABEL_1032;
                  }

                  if (v150 == 45)
                  {
                    goto LABEL_1016;
                  }

                  if (v150 < 0x30)
                  {
                    return 0;
                  }

LABEL_1033:
                  v4 = v6 + 51;
                  v155 = v6[51];
                  if (v155 > 0x3D)
                  {
                    break;
                  }

                  if (v155 > 0x2E)
                  {
                    v2 = 0;
                    if (v155 == 47 || v155 >= 0x3A)
                    {
                      return v2;
                    }

                    goto LABEL_1054;
                  }

                  if (v155 < 0x2D)
                  {
                    return 0;
                  }

                  if (v155 != 46)
                  {
                    goto LABEL_1037;
                  }
                }

                if (v155 > 0x5A)
                {
                  v157 = v155 - 97;
                  goto LABEL_1053;
                }

                if (v155 == 62)
                {
                  return (v4 - a1 + 1);
                }

                if (v155 < 0x41)
                {
                  return 0;
                }

LABEL_1054:
                v4 = v6 + 52;
                v158 = v6[52];
                if (v158 > 0x3D)
                {
                  if (v158 <= 0x5A)
                  {
                    if (v158 == 62)
                    {
                      return (v4 - a1 + 1);
                    }

                    if (v158 < 0x41)
                    {
                      return 0;
                    }

                    goto LABEL_1075;
                  }

                  v160 = v158 - 97;
                  goto LABEL_1074;
                }

                if (v158 > 0x2E)
                {
                  v2 = 0;
                  if (v158 == 47 || v158 >= 0x3A)
                  {
                    return v2;
                  }

                  goto LABEL_1075;
                }

                if (v158 < 0x2D)
                {
                  return 0;
                }
              }

              while (v158 == 46);
LABEL_1058:
              v159 = v6[53];
              if (v159 > 0x39)
              {
                if (v159 <= 0x5A)
                {
                  if (v159 < 0x41)
                  {
                    return 0;
                  }

                  goto LABEL_1096;
                }

                v163 = v159 - 97;
LABEL_1095:
                if (v163 >= 0x1A)
                {
                  return 0;
                }

                goto LABEL_1096;
              }

              if (v159 != 45)
              {
                if (v159 < 0x30)
                {
                  return 0;
                }

                goto LABEL_1096;
              }

LABEL_1079:
              v162 = v6[54];
              if (v162 > 0x39)
              {
                if (v162 <= 0x5A)
                {
                  if (v162 < 0x41)
                  {
                    return 0;
                  }

                  goto LABEL_1117;
                }

                v166 = v162 - 97;
                goto LABEL_1116;
              }

              if (v162 == 45)
              {
                goto LABEL_1100;
              }

              if (v162 < 0x30)
              {
                return 0;
              }

LABEL_1117:
              v4 = v6 + 55;
              v167 = v6[55];
              if (v167 > 0x3D)
              {
                break;
              }

              if (v167 > 0x2E)
              {
                v2 = 0;
                if (v167 == 47 || v167 >= 0x3A)
                {
                  return v2;
                }

                goto LABEL_1138;
              }

              if (v167 < 0x2D)
              {
                return 0;
              }

              if (v167 != 46)
              {
                goto LABEL_1121;
              }
            }

            if (v167 > 0x5A)
            {
              v169 = v167 - 97;
              goto LABEL_1137;
            }

            if (v167 == 62)
            {
              return (v4 - a1 + 1);
            }

            if (v167 < 0x41)
            {
              return 0;
            }

LABEL_1138:
            v4 = v6 + 56;
            v170 = v6[56];
            if (v170 > 0x3D)
            {
              if (v170 <= 0x5A)
              {
                if (v170 == 62)
                {
                  return (v4 - a1 + 1);
                }

                if (v170 < 0x41)
                {
                  return 0;
                }

                goto LABEL_1159;
              }

              v172 = v170 - 97;
              goto LABEL_1158;
            }

            if (v170 > 0x2E)
            {
              v2 = 0;
              if (v170 == 47 || v170 >= 0x3A)
              {
                return v2;
              }

              goto LABEL_1159;
            }

            if (v170 < 0x2D)
            {
              return 0;
            }
          }

          while (v170 == 46);
LABEL_1142:
          v171 = v6[57];
          if (v171 > 0x39)
          {
            if (v171 <= 0x5A)
            {
              if (v171 < 0x41)
              {
                return 0;
              }

              goto LABEL_1180;
            }

            v175 = v171 - 97;
LABEL_1179:
            if (v175 >= 0x1A)
            {
              return 0;
            }

            goto LABEL_1180;
          }

          if (v171 != 45)
          {
            if (v171 < 0x30)
            {
              return 0;
            }

            goto LABEL_1180;
          }

LABEL_1163:
          v174 = v6[58];
          if (v174 > 0x39)
          {
            if (v174 <= 0x5A)
            {
              if (v174 < 0x41)
              {
                return 0;
              }

              goto LABEL_1201;
            }

            v178 = v174 - 97;
            goto LABEL_1200;
          }

          if (v174 == 45)
          {
            goto LABEL_1184;
          }

          if (v174 < 0x30)
          {
            return 0;
          }

LABEL_1201:
          v4 = v6 + 59;
          v179 = v6[59];
          if (v179 > 0x3D)
          {
            break;
          }

          if (v179 > 0x2E)
          {
            v2 = 0;
            if (v179 == 47 || v179 >= 0x3A)
            {
              return v2;
            }

            goto LABEL_1222;
          }

          if (v179 < 0x2D)
          {
            return 0;
          }

          if (v179 != 46)
          {
            goto LABEL_1205;
          }
        }

        if (v179 > 0x5A)
        {
          v181 = v179 - 97;
          goto LABEL_1221;
        }

        if (v179 == 62)
        {
          return (v4 - a1 + 1);
        }

        if (v179 < 0x41)
        {
          return 0;
        }

LABEL_1222:
        v4 = v6 + 60;
        v182 = v6[60];
        if (v182 > 0x3D)
        {
          if (v182 <= 0x5A)
          {
            if (v182 == 62)
            {
              return (v4 - a1 + 1);
            }

            if (v182 < 0x41)
            {
              return 0;
            }

            goto LABEL_1243;
          }

          v184 = v182 - 97;
          goto LABEL_1242;
        }

        if (v182 > 0x2E)
        {
          v2 = 0;
          if (v182 == 47 || v182 >= 0x3A)
          {
            return v2;
          }

          goto LABEL_1243;
        }

        if (v182 < 0x2D)
        {
          return 0;
        }
      }

      while (v182 == 46);
LABEL_1226:
      v183 = v6[61];
      if (v183 > 0x39)
      {
        if (v183 <= 0x5A)
        {
          if (v183 < 0x41)
          {
            return 0;
          }

          goto LABEL_1264;
        }

        v187 = v183 - 97;
LABEL_1263:
        if (v187 >= 0x1A)
        {
          return 0;
        }

        goto LABEL_1264;
      }

      if (v183 != 45)
      {
        if (v183 < 0x30)
        {
          return 0;
        }

        goto LABEL_1264;
      }

LABEL_1247:
      v186 = v6[62];
      if (v186 > 0x39)
      {
        if (v186 <= 0x5A)
        {
          if (v186 < 0x41)
          {
            return 0;
          }

          goto LABEL_1284;
        }

        v190 = v186 - 97;
        goto LABEL_1283;
      }

      if (v186 == 45)
      {
        goto LABEL_1268;
      }

      if (v186 < 0x30)
      {
        return 0;
      }

LABEL_1284:
      v4 = v6 + 63;
      v191 = v6[63];
      if (v191 > 0x3D)
      {
        break;
      }

      if (v191 > 0x2E)
      {
        v2 = 0;
        if (v191 == 47 || v191 > 0x39)
        {
          return v2;
        }

        goto LABEL_1300;
      }

      v2 = 0;
      if (v191 != 46)
      {
        return v2;
      }
    }

    if (v191 > 0x5A)
    {
      if (v191 - 123 < 0xFFFFFFE6)
      {
        return 0;
      }
    }

    else
    {
      if (v191 == 62)
      {
        return (v4 - a1 + 1);
      }

      if (v191 < 0x41)
      {
        return 0;
      }
    }

LABEL_1300:
    v4 = v6 + 64;
  }

  while (v6[64] == 46);
  if (v6[64] != 62)
  {
    return 0;
  }

  return (v4 - a1 + 1);
}

uint64_t _scan_html_tag(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0x3E)
  {
    if (v1 > 0x5A)
    {
      if (v1 - 97 >= 0x1A)
      {
        return 0;
      }
    }

    else
    {
      if (v1 == 63)
      {
        i = a1 + 1;
        v18 = a1[1];
        if (!a1[1])
        {
          return v18;
        }

        if ((v18 & 0x80) != 0 && (v18 - 194) > 0x32)
        {
          return 0;
        }

        while (1)
        {
          if (_scan_html_tag_yybm[v18 + 256] < 0)
          {
            goto LABEL_45;
          }

          if (v18 > 0xEC)
          {
            if (v18 <= 0xF0)
            {
              if (v18 == 237)
              {
LABEL_65:
                v23 = *++i;
                if (v23 >= -96)
                {
                  return 0;
                }

                goto LABEL_80;
              }

              if (v18 != 240)
              {
                goto LABEL_79;
              }

LABEL_72:
              v24 = *++i;
              if ((v24 - 144) >= 0x30)
              {
                return 0;
              }

              goto LABEL_79;
            }

LABEL_74:
            if (v18 >= 0xF4)
            {
              if (v18 != 244)
              {
                return 0;
              }

              v26 = *++i;
              if (v26 >= -112)
              {
                return 0;
              }
            }

            else
            {
              v25 = *++i;
              if (v25 >= -64)
              {
                return 0;
              }
            }

            goto LABEL_79;
          }

          if (v18 > 0xC1)
          {
            break;
          }

          if ((v18 - 64) < 0xFFFFFFC1)
          {
            return 0;
          }

          v21 = *++i;
          v18 = v21;
          if (v21 > 0xE0)
          {
            if (v18 <= 0xEF)
            {
              if (v18 == 237)
              {
                goto LABEL_65;
              }

LABEL_79:
              v27 = *++i;
              if (v27 >= -64)
              {
                return 0;
              }

LABEL_80:
              v28 = *++i;
              if (v28 >= -64)
              {
                return 0;
              }

              goto LABEL_45;
            }

            if (v18 == 240)
            {
              goto LABEL_72;
            }

            goto LABEL_74;
          }

          if (v18 > 0x3E)
          {
            if ((v18 & 0x80) == 0)
            {
              goto LABEL_45;
            }

            if (v18 < 0xC2)
            {
              return 0;
            }

            if (v18 != 224)
            {
              goto LABEL_80;
            }

LABEL_61:
            v22 = *++i;
            if ((v22 & 0xE0) != 0xA0)
            {
              return 0;
            }

            goto LABEL_80;
          }

          if (!v18)
          {
            return v18;
          }

          if (v18 == 62)
          {
            return (i - a1 + 1);
          }

LABEL_45:
          v20 = *++i;
          LODWORD(v18) = v20;
        }

        if (v18 < 0xE0)
        {
          goto LABEL_80;
        }

        if (v18 != 224)
        {
          goto LABEL_79;
        }

        goto LABEL_61;
      }

      if (v1 <= 0x40)
      {
        return 0;
      }
    }

    i = a1 + 1;
    v44 = a1[1];
    if (v44 > 0x2E)
    {
      if (v44 > 0x40)
      {
        if (v44 >= 0x5B && v44 - 97 >= 0x1A)
        {
          return 0;
        }
      }

      else if (v44 >= 0x3A && v44 != 62)
      {
        return 0;
      }
    }

    else if (v44 > 0x1F)
    {
      if (v44 != 45 && v44 != 32)
      {
        return 0;
      }
    }

    else if (v44 - 9 >= 5)
    {
      return 0;
    }

    while ((_scan_html_tag_yybm[v44] & 1) == 0)
    {
      if (v44 > 0x3D)
      {
        if (v44 > 0x5A)
        {
          if (v44 - 97 >= 0x1A)
          {
            return 0;
          }
        }

        else
        {
          if (v44 == 62)
          {
            return (i - a1 + 1);
          }

          if (v44 < 0x41)
          {
            return 0;
          }
        }
      }

      else if (v44 > 0x2E)
      {
        if (v44 == 47)
        {
          goto LABEL_346;
        }

        if (v44 >= 0x3A)
        {
          return 0;
        }
      }

      else if (v44 != 45)
      {
        return 0;
      }

      v45 = *++i;
      v44 = v45;
    }

    while (1)
    {
      do
      {
LABEL_280:
        v81 = *++i;
        v49 = v81;
      }

      while ((_scan_html_tag_yybm[v81] & 1) != 0);
      if (v49 <= 0x3E)
      {
        if (v49 > 0x39)
        {
          if (v49 != 58)
          {
            if (v49 != 62)
            {
              return 0;
            }

            return (i - a1 + 1);
          }

          goto LABEL_161;
        }

        v50 = v49 == 47;
        goto LABEL_344;
      }

      if (v49 <= 0x5E)
      {
        if (v49 - 65 >= 0x1A)
        {
          return 0;
        }

        goto LABEL_161;
      }

LABEL_185:
      v18 = 0;
      if (v49 == 96 || v49 >= 0x7B)
      {
        return v18;
      }

      while (1)
      {
        do
        {
LABEL_161:
          v46 = i;
          v48 = *++i;
          v47 = v48;
        }

        while ((_scan_html_tag_yybm[v48] & 4) != 0);
        if (v47 > 0x2C)
        {
          break;
        }

        if (v47 > 0xD)
        {
          if (v47 != 32)
          {
            return 0;
          }
        }

        else if (v47 < 9)
        {
          return 0;
        }

        for (i = v46 + 2; ; ++i)
        {
          v49 = *i;
          if (v49 > 0x3C)
          {
            break;
          }

          if (v49 > 0x20)
          {
            v50 = v49 == 47;
            if (v49 > 0x2F)
            {
              v18 = 0;
              if (v49 != 58)
              {
                return v18;
              }

              goto LABEL_161;
            }

LABEL_344:
            if (!v50)
            {
              return 0;
            }

            goto LABEL_346;
          }

          if (v49 < 9)
          {
            return 0;
          }

          if (v49 >= 0xE)
          {
            v18 = 0;
            if (v49 != 32)
            {
              return v18;
            }
          }
        }

        if (v49 > 0x5A)
        {
          if (v49 <= 0x5F)
          {
            v18 = 0;
            if (v49 != 95)
            {
              return v18;
            }

            goto LABEL_161;
          }

          goto LABEL_185;
        }

        if (v49 == 61)
        {
          goto LABEL_190;
        }

        if (v49 < 0x3F)
        {
          return (i - a1 + 1);
        }

        v18 = 0;
        if (v49 < 0x41)
        {
          return v18;
        }
      }

      if (v47 <= 0x3C)
      {
        if (v47 < 0x30)
        {
          goto LABEL_346;
        }

        return 0;
      }

      if (v47 != 61)
      {
        if (v47 >= 0x3F)
        {
          return 0;
        }

        return (i - a1 + 1);
      }

LABEL_190:
      ++i;
      while (1)
      {
        v51 = *i;
        if ((_scan_html_tag_yybm[*i] & 0x10) != 0)
        {
          break;
        }

        if (v51 > 0xE0)
        {
          v65 = i - 1;
LABEL_262:
          if (v51 <= 0xEF)
          {
            if (v51 == 237)
            {
              i = v65 + 2;
              if (v65[2] >= -96)
              {
                return 0;
              }

              goto LABEL_256;
            }

            goto LABEL_278;
          }

          if (v51 == 240)
          {
            i = v65 + 2;
            if (v65[2] - 144 >= 0x30)
            {
              return 0;
            }

            goto LABEL_278;
          }

          if (v51 < 0xF4)
          {
            i = v65 + 2;
            if (v65[2] >= -64)
            {
              return 0;
            }

LABEL_278:
            v80 = *++i;
            if (v80 >= -64)
            {
              return 0;
            }

            goto LABEL_256;
          }

          if (v51 == 244)
          {
            i = v65 + 2;
            if (v65[2] < -112)
            {
              goto LABEL_278;
            }
          }

          return 0;
        }

        if (v51 > 0x22)
        {
          if (v51 > 0x27)
          {
            if (v51 < 0xC2)
            {
              return 0;
            }

            if (v51 != 224)
            {
              goto LABEL_256;
            }

            v65 = i - 1;
LABEL_255:
            i = v65 + 2;
            if ((v65[2] & 0xE0) != 0xA0)
            {
              return 0;
            }

            goto LABEL_256;
          }

          do
          {
LABEL_223:
            v53 = i;
            v67 = *++i;
            v66 = v67;
          }

          while ((_scan_html_tag_yybm[v67] & 0x40) != 0);
          if (v66 > 0xEC)
          {
            if (v66 > 0xF0)
            {
              if (v66 >= 0xF4)
              {
                if (v66 != 244)
                {
                  return 0;
                }

                v73 = v53[2];
                v70 = v53 + 2;
                if (v73 >= -112)
                {
                  return 0;
                }
              }

              else
              {
                v72 = v53[2];
                v70 = v53 + 2;
                if (v72 >= -64)
                {
                  return 0;
                }
              }
            }

            else
            {
              if (v66 == 237)
              {
                v75 = v53[2];
                v68 = v53 + 2;
                if (v75 >= -96)
                {
                  return 0;
                }

                goto LABEL_244;
              }

              if (v66 != 240)
              {
                goto LABEL_241;
              }

              v71 = v53[2];
              v70 = v53 + 2;
              if ((v71 - 144) >= 0x30)
              {
                return 0;
              }
            }

            i = v70;
          }

          else
          {
            if (v66 <= 0xC1)
            {
              if (v66 - 1 >= 0x27)
              {
                return 0;
              }

              goto LABEL_253;
            }

            if (v66 < 0xE0)
            {
              goto LABEL_245;
            }

            if (v66 == 224)
            {
              v69 = v53[2];
              v68 = v53 + 2;
              if ((v69 & 0xE0) != 0xA0)
              {
                return 0;
              }

LABEL_244:
              i = v68;
LABEL_245:
              v18 = 0;
              v76 = *++i;
              if (v76 >= -64)
              {
                return v18;
              }

              goto LABEL_223;
            }
          }

LABEL_241:
          v74 = *++i;
          if (v74 >= -64)
          {
            return 0;
          }

          goto LABEL_245;
        }

        if (!*i)
        {
          return 0;
        }

        ++i;
        if (v51 >= 0x21)
        {
          v52 = i - 1;
          while (1)
          {
            do
            {
              v53 = v52;
              v55 = *++v52;
              v54 = v55;
            }

            while ((_scan_html_tag_yybm[v55] & 0x20) != 0);
            if (v54 > 0xEC)
            {
              break;
            }

            if (v54 <= 0xC1)
            {
              if (v54 - 1 >= 0x22)
              {
                return 0;
              }

LABEL_253:
              v77 = v53[2];
              i = v53 + 2;
              if ((_scan_html_tag_yybm[v53[2]] & 1) == 0)
              {
                if (v77 == 47)
                {
                  goto LABEL_346;
                }

                if (v77 == 62)
                {
                  return (i - a1 + 1);
                }

                return 0;
              }

              goto LABEL_280;
            }

            if (v54 >= 0xE0)
            {
              if (v54 != 224)
              {
                goto LABEL_215;
              }

              v57 = v53[2];
              v56 = v53 + 2;
              if ((v57 & 0xE0) != 0xA0)
              {
                return 0;
              }

LABEL_218:
              v52 = v56;
            }

LABEL_219:
            v18 = 0;
            v64 = *++v52;
            if (v64 >= -64)
            {
              return v18;
            }
          }

          if (v54 > 0xF0)
          {
            if (v54 >= 0xF4)
            {
              if (v54 != 244)
              {
                return 0;
              }

              v61 = v53[2];
              v58 = v53 + 2;
              if (v61 >= -112)
              {
                return 0;
              }
            }

            else
            {
              v60 = v53[2];
              v58 = v53 + 2;
              if (v60 >= -64)
              {
                return 0;
              }
            }

LABEL_214:
            v52 = v58;
LABEL_215:
            v62 = *++v52;
            if (v62 >= -64)
            {
              return 0;
            }

            goto LABEL_219;
          }

          if (v54 != 237)
          {
            if (v54 == 240)
            {
              v59 = v53[2];
              v58 = v53 + 2;
              if ((v59 - 144) >= 0x30)
              {
                return 0;
              }

              goto LABEL_214;
            }

            goto LABEL_215;
          }

          v63 = v53[2];
          v56 = v53 + 2;
          if (v63 >= -96)
          {
            return 0;
          }

          goto LABEL_218;
        }
      }

      while (1)
      {
        do
        {
          v79 = *++i;
          v51 = v79;
        }

        while ((_scan_html_tag_yybm[v79] & 0x10) != 0);
        v65 = i - 1;
        if (v51 > 0xE0)
        {
          goto LABEL_262;
        }

        if (v51 <= 0x3D)
        {
          break;
        }

        if (v51 == 62)
        {
          return (i - a1 + 1);
        }

        if (v51 < 0xC2)
        {
          return 0;
        }

        if (v51 == 224)
        {
          goto LABEL_255;
        }

LABEL_256:
        v78 = *++i;
        if (v78 > -65)
        {
          return 0;
        }
      }

      v18 = 0;
      if (v51 - 1 >= 0x20)
      {
        return v18;
      }
    }
  }

  if (v1 > 0x21)
  {
    if (v1 == 47)
    {
      v29 = a1[1];
      if (v29 >= 0x41 && (v29 < 0x5B || v29 - 97 <= 0x19))
      {
        i = a1 + 2;
        do
        {
          v31 = *i++;
          v30 = v31;
        }

        while ((_scan_html_tag_yybm[v31 + 256] & 0x40) != 0);
        if (v30 > 0x1F)
        {
          if (v30 != 32)
          {
            if (v30 != 62)
            {
              return 0;
            }

            LODWORD(i) = i - 1;
            return (i - a1 + 1);
          }
        }

        else if (v30 - 9 >= 5)
        {
          return 0;
        }

        while (1)
        {
          v91 = *i;
          if (v91 > 0x1F)
          {
            if (v91 != 32)
            {
              goto LABEL_347;
            }
          }

          else if (v91 - 9 > 4)
          {
            return 0;
          }

          ++i;
        }
      }
    }

    return 0;
  }

  if (v1 != 33)
  {
    return 0;
  }

  i = a1 + 1;
  v2 = a1[1];
  if ((_scan_html_tag_yybm[v2 + 256] & 0x20) != 0)
  {
    do
    {
      v6 = *++i;
      v5 = v6;
    }

    while ((_scan_html_tag_yybm[v6 + 256] & 0x20) != 0);
    if (v5 < 9 || v5 >= 0xE && v5 != 32)
    {
      return 0;
    }

    while (1)
    {
      do
      {
        v7 = i;
        v9 = *++i;
        v8 = v9;
      }

      while ((_scan_html_tag_yybm[v9] & 2) != 0);
      if (v8 > 0xEC)
      {
        if (v8 > 0xF0)
        {
          if (v8 >= 0xF4)
          {
            if (v8 != 244)
            {
              return 0;
            }

            v15 = v7[2];
            v12 = v7 + 2;
            if (v15 >= -112)
            {
              return 0;
            }
          }

          else
          {
            v14 = v7[2];
            v12 = v7 + 2;
            if (v14 >= -64)
            {
              return 0;
            }
          }

LABEL_32:
          i = v12;
LABEL_33:
          v16 = *++i;
          if (v16 >= -64)
          {
            return 0;
          }

          goto LABEL_37;
        }

        if (v8 != 237)
        {
          if (v8 == 240)
          {
            v13 = v7[2];
            v12 = v7 + 2;
            if ((v13 - 144) >= 0x30)
            {
              return 0;
            }

            goto LABEL_32;
          }

          goto LABEL_33;
        }

        v17 = v7[2];
        v10 = v7 + 2;
        if (v17 >= -96)
        {
          return 0;
        }
      }

      else
      {
        if (v8 <= 0xC1)
        {
          if (v8 - 1 >= 0x3E)
          {
            return 0;
          }

          return (i - a1 + 1);
        }

        if (v8 < 0xE0)
        {
          goto LABEL_37;
        }

        if (v8 != 224)
        {
          goto LABEL_33;
        }

        v11 = v7[2];
        v10 = v7 + 2;
        if ((v11 & 0xE0) != 0xA0)
        {
          return 0;
        }
      }

      i = v10;
LABEL_37:
      v18 = 0;
      v19 = *++i;
      if (v19 >= -64)
      {
        return v18;
      }
    }
  }

  if (v2 != 45)
  {
    if ((v2 - 65) < 0x1B && (a1[2] & 0xDF) == 0x43 && (a1[3] & 0xDF) == 0x44 && (a1[4] & 0xDF) == 0x41 && (a1[5] & 0xDF) == 0x54 && (a1[6] & 0xDF) == 0x41)
    {
      i = a1 + 7;
      if (a1[7] == 91)
      {
        while (1)
        {
          do
          {
            v82 = i;
            v83 = *++i;
            LODWORD(v18) = v83;
          }

          while (_scan_html_tag_yybm[v83] < 0);
          if (v18 > 0xEC)
          {
LABEL_306:
            if (v18 > 0xF0)
            {
              goto LABEL_324;
            }

            if (v18 == 237)
            {
              goto LABEL_317;
            }

            if (v18 != 240)
            {
              goto LABEL_329;
            }

            goto LABEL_309;
          }

          if (v18 > 0xC1)
          {
            goto LABEL_311;
          }

          if ((v18 - 94) < 0xFFFFFFA3)
          {
            return 0;
          }

          i = v82 + 2;
          LODWORD(v18) = v82[2];
          if ((_scan_html_tag_yybm[v82[2]] & 0x80000000) == 0)
          {
            if (v18 > 0xEC)
            {
              goto LABEL_306;
            }

            if (v18 > 0xC1)
            {
LABEL_311:
              if (v18 >= 0xE0)
              {
                if (v18 == 224)
                {
                  goto LABEL_313;
                }

                goto LABEL_329;
              }

LABEL_330:
              v18 = 0;
              v90 = *++i;
              if (v90 >= -64)
              {
                return v18;
              }
            }

            else
            {
              if ((v18 - 1) >= 0x5D)
              {
                return 0;
              }

              v18 = v82[3];
              i = v82 + 3;
              if (v82[3] > 0xE0u)
              {
                if (v18 <= 0xEF)
                {
                  if (v18 == 237)
                  {
LABEL_317:
                    v86 = *++i;
                    if (v86 >= -96)
                    {
                      return 0;
                    }

                    goto LABEL_330;
                  }

                  goto LABEL_329;
                }

                if (v18 != 240)
                {
LABEL_324:
                  if (v18 >= 0xF4)
                  {
                    if (v18 != 244)
                    {
                      return 0;
                    }

                    v88 = *++i;
                    if (v88 >= -112)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v87 = *++i;
                    if (v87 >= -64)
                    {
                      return 0;
                    }
                  }

                  goto LABEL_329;
                }

LABEL_309:
                v84 = *++i;
                if ((v84 - 144) >= 0x30)
                {
                  return 0;
                }

LABEL_329:
                v89 = *++i;
                if (v89 >= -64)
                {
                  return 0;
                }

                goto LABEL_330;
              }

              if (v18 > 0x3E)
              {
                if ((v18 & 0x80) != 0)
                {
                  if (v18 < 0xC2)
                  {
                    return 0;
                  }

                  if (v18 == 224)
                  {
LABEL_313:
                    v85 = *++i;
                    if ((v85 & 0xE0) != 0xA0)
                    {
                      return 0;
                    }

                    goto LABEL_330;
                  }

                  goto LABEL_330;
                }
              }

              else
              {
                if (!v82[3])
                {
                  return v18;
                }

                if (v18 == 62)
                {
                  return (i - a1 + 1);
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  if (a1[2] != 45)
  {
    return 0;
  }

  i = a1 + 3;
  v4 = a1[3];
  if (v4 == 45)
  {
    i = a1 + 4;
    v4 = a1[4];
    if (v4 == 45)
    {
      goto LABEL_346;
    }
  }

  if (v4 == 62)
  {
    return 0;
  }

  while (1)
  {
    if ((_scan_html_tag_yybm[v4] & 8) != 0)
    {
      goto LABEL_93;
    }

    if (v4 > 0xEC)
    {
      if (v4 <= 0xF0)
      {
        if (v4 == 237)
        {
          goto LABEL_120;
        }

        if (v4 == 240)
        {
          goto LABEL_106;
        }

        goto LABEL_126;
      }

      v38 = v4 == 244;
      if (v4 >= 0xF4)
      {
        goto LABEL_123;
      }

LABEL_114:
      v39 = *++i;
      if (v39 >= -64)
      {
        return 0;
      }

      goto LABEL_126;
    }

    if (v4 > 0xC1)
    {
      v35 = v4 == 224;
      if (v4 < 0xE0)
      {
        goto LABEL_127;
      }

      goto LABEL_109;
    }

    if (v4 - 1 >= 0x2D)
    {
      return 0;
    }

    v34 = *++i;
    v33 = v34;
    if ((_scan_html_tag_yybm[v34] & 8) != 0)
    {
      goto LABEL_93;
    }

    if (v33 <= 0xEC)
    {
      break;
    }

    if (v33 > 0xF0)
    {
      v38 = v33 == 244;
      if (v33 >= 0xF4)
      {
LABEL_123:
        if (!v38)
        {
          return 0;
        }

        v41 = *++i;
        if (v41 >= -112)
        {
          return 0;
        }

        goto LABEL_126;
      }

      goto LABEL_114;
    }

    if (v33 == 237)
    {
LABEL_120:
      v40 = *++i;
      if (v40 >= -96)
      {
        return 0;
      }

      goto LABEL_127;
    }

    if (v33 == 240)
    {
LABEL_106:
      v36 = *++i;
      if ((v36 - 144) >= 0x30)
      {
        return 0;
      }
    }

LABEL_126:
    v42 = *++i;
    if (v42 >= -64)
    {
      return 0;
    }

LABEL_127:
    v43 = *++i;
    if (v43 >= -64)
    {
      return 0;
    }

LABEL_93:
    v32 = *++i;
    v4 = v32;
  }

  if (v33 > 0xC1)
  {
    v35 = v33 == 224;
    if (v33 < 0xE0)
    {
      goto LABEL_127;
    }

LABEL_109:
    if (v35)
    {
      v37 = *++i;
      if ((v37 & 0xE0) != 0xA0)
      {
        return 0;
      }

      goto LABEL_127;
    }

    goto LABEL_126;
  }

  if (v33 - 1 >= 0x2D)
  {
    return 0;
  }

LABEL_346:
  v92 = i[1];
  LODWORD(i) = i + 1;
  v91 = v92;
LABEL_347:
  if (v91 != 62)
  {
    return 0;
  }

  return (i - a1 + 1);
}