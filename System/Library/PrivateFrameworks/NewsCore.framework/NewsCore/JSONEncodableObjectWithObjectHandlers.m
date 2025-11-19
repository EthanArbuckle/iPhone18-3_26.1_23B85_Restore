@interface JSONEncodableObjectWithObjectHandlers
@end

@implementation JSONEncodableObjectWithObjectHandlers

id ___fc_JSONEncodableObjectWithObjectHandlers_block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = (*(*(a1 + 32) + 16))();
  v6 = _fc_JSONEncodableObjectWithObjectHandlers(v5, *(a1 + 40), *(a1 + 32), *(a1 + 48), *(a1 + 56), 1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = _fc_JSONEncodableObjectWithObjectHandlers(v4, *(a1 + 40), *(a1 + 32), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  v9 = v8;

  return v9;
}

id ___fc_JSONEncodableObjectWithObjectHandlers_block_invoke_6(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = (*(a1[5] + 16))();
  v9 = _fc_JSONEncodableObjectWithObjectHandlers(v8, a1[6], a1[7], a1[5], a1[8], 1);
  v10 = (*(v7 + 16))(v7, v9, v6);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = (*(a1[4] + 16))();
  }

  v13 = v12;

  return v13;
}

id ___fc_JSONEncodableObjectWithObjectHandlers_block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = (*(*(a1 + 32) + 16))();
  v6 = _fc_JSONEncodableObjectWithObjectHandlers(v5, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 32), 1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = _fc_JSONEncodableObjectWithObjectHandlers(v4, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 32), *(a1 + 64));
  }

  v9 = v8;

  return v9;
}

@end