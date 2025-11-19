@interface MDQueryStringCreateForRanking
@end

@implementation MDQueryStringCreateForRanking

uint64_t ____MDQueryStringCreateForRanking_block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) == 4)
  {
    v3 = *(a2 + 16);
    if (!v3)
    {
      *(a2 + 48) = 16;
      goto LABEL_14;
    }

    v4 = *v3;
    if (!*v3 || !*(v3 + 72) || *(v3 + 24) > 8u || (*v4 != 42 || (v4[1] != 42 || v4[2]) && v4[1]) && ((v6 = *(a1 + 40)) == 0 || strcmp(*v3, v6)))
    {
      *(a2 + 48) = 16;
      db_free_qp(v3);
      *(a2 + 16) = 0;
LABEL_14:
      *a2 = 0;
      *(a2 + 8) = 0;
      goto LABEL_15;
    }

    v9 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (v9)
    {
      free(v4);
      v10 = strdup(*(a1 + 40));
      v3 = *(a2 + 16);
      *v3 = v10;
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      remove_outside_stars((v3 + 72));
      v11 = *(a1 + 48);
      if ((v11 & 0x100) == 0)
      {
LABEL_20:
        if ((v11 & 0x400) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_29;
      }
    }

    else if ((v11 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    *(*(a2 + 16) + 32) |= 0x44uLL;
    if ((v11 & 0x400) == 0)
    {
LABEL_21:
      if ((v11 & 0x200) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }

LABEL_29:
    remove_outside_stars((*(a2 + 16) + 72));
    add_trailing_star((*(a2 + 16) + 72));
    v11 = *(a1 + 48);
    if ((v11 & 0x200) == 0)
    {
LABEL_22:
      if ((v11 & 2) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_30:
    *(*(a2 + 16) + 32) = *(*(a2 + 16) + 32) & 0xFFFFFFFFFFFFFFBBLL | 0x40;
    if ((v11 & 2) == 0)
    {
LABEL_24:
      v12 = *(a2 + 16);
      *(v12 + 32) = *(v12 + 32) & 0xFFFFFFFFFF7FFFFFLL | (16 * v11) & 0x800000;
      if ((v11 & 0x40000) != 0)
      {
        remove_outside_stars((v12 + 72));
      }

      else
      {
        if ((v11 & 0x20000) == 0)
        {
          goto LABEL_15;
        }

        remove_leading_star((v12 + 72));
        add_trailing_star((*(a2 + 16) + 72));
      }

      *(*(a2 + 16) + 32) &= 0xFFFFFFFFFFFFFFBBLL;
      goto LABEL_15;
    }

LABEL_23:
    *(*(a2 + 16) + 32) &= 0xFFFFFFFFFEFFFFBBLL;
    goto LABEL_24;
  }

LABEL_15:
  v7 = *MEMORY[0x1E69E9840];
  return a2;
}

void *____MDQueryStringCreateForRanking_block_invoke_2(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v12 = *MEMORY[0x1E69E9840];
  if (a2 && a3 && a4)
  {
    v7 = *(a3 + 48);
    if (v7 == 32 || v7 == 16)
    {
      *a2 = a3;
      a2[1] = 0;
      db_free_query_node(a2);
      v5 = a4;
    }

    else
    {
      v11 = *(a4 + 48);
      if (v11 == 32 || v11 == 16)
      {
        *a2 = 0;
        a2[1] = a4;
        db_free_query_node(a2);
      }

      else
      {
        *a2 = a3;
        a2[1] = a4;
        v5 = a2;
      }
    }
  }

  else
  {
    if (a3)
    {
      db_free_query_node(a3);
    }

    if (a4)
    {
      db_free_query_node(a4);
    }

    free(a2);
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

@end