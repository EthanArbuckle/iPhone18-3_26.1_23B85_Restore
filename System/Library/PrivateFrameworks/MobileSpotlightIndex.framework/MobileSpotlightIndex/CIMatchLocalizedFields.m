@interface CIMatchLocalizedFields
@end

@implementation CIMatchLocalizedFields

void *___CIMatchLocalizedFields_block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = result;
    do
    {
      if (*v5)
      {
        v13 = __si_assert_copy_extra_332();
        v14 = v13;
        v15 = "";
        if (v13)
        {
          v15 = v13;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "CIQuery.c", 1241, "0", v15);
        free(v14);
        if (__valid_fs(-1))
        {
          v16 = 2989;
        }

        else
        {
          v16 = 3072;
        }

        *v16 = -559038737;
        abort();
      }

      v7 = *(v6[4] + 8);
      v8 = *(v7 + 24);
      v9 = *(v6[5] + 8);
      if (v8 >= *(v9 + 24))
      {
        if (v8)
        {
          v11 = 2 * v8;
        }

        else
        {
          v11 = 64;
        }

        *(v9 + 24) = v11;
        result = malloc_type_realloc(*(*(v6[6] + 8) + 24), 4 * *(*(v6[5] + 8) + 24), 0x100004052888210uLL);
        *(*(v6[6] + 8) + 24) = result;
        v10 = *(*(v6[6] + 8) + 24);
        if (!v10)
        {
          v17 = __si_assert_copy_extra_332();
          v18 = v17;
          v19 = "";
          if (v17)
          {
            v19 = v17;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "CIQuery.c", 1246, "fields", v19);
          free(v18);
          if (__valid_fs(-1))
          {
            v20 = 2989;
          }

          else
          {
            v20 = 3072;
          }

          *v20 = -559038737;
          abort();
        }

        v7 = *(v6[4] + 8);
        v8 = *(v7 + 24);
      }

      else
      {
        v10 = *(*(v6[6] + 8) + 24);
      }

      v12 = *(v5 + 8);
      *(v7 + 24) = v8 + 1;
      *(v10 + 4 * v8) = v12;
      if (*v5 < 2u)
      {
        break;
      }

      v5 = a4 + 12 * (*v5 >> 1);
    }

    while (a4);
  }

  return result;
}

@end