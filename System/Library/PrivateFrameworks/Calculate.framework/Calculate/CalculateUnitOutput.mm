@interface CalculateUnitOutput
- (CalculateUnitOutput)initWithLocale:(id)locale;
- (unint64_t)resolvedUnitFormatForUnitID:(int)d string:(id)string;
- (void)dealloc;
@end

@implementation CalculateUnitOutput

- (void)dealloc
{
  lengths = self->_lengths;
  if (lengths)
  {
    free(lengths);
  }

  v4.receiver = self;
  v4.super_class = CalculateUnitOutput;
  [(CalculateUnitOutput *)&v4 dealloc];
}

- (unint64_t)resolvedUnitFormatForUnitID:(int)d string:(id)string
{
  stringCopy = string;
  if (d < 0 || self->_count <= d)
  {
    v15 = 4;
    goto LABEL_18;
  }

  dCopy = d;
  v8 = [(UnitsInfo *)self->_unitsInfo objectAtIndexedSubscript:d];
  v9 = [stringCopy length];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__CalculateUnitOutput_resolvedUnitFormatForUnitID_string___block_invoke;
  aBlock[3] = &unk_1E815C288;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __58__CalculateUnitOutput_resolvedUnitFormatForUnitID_string___block_invoke_2;
  v32 = &unk_1E815C2B0;
  v11 = v10;
  v33 = v11;
  v12 = _Block_copy(&v29);
  if (v9 != 3)
  {
    goto LABEL_6;
  }

  typeInfo = [v8 typeInfo];
  isCurrency = [typeInfo isCurrency];

  if (!isCurrency || (v15 = 2, (*(v11 + 2))(v11, v8, 2, 0), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 compare:stringCopy options:1], v16, v17))
  {
LABEL_6:
    lengths = self->_lengths;
    var1 = lengths[dCopy].var1;
    if (!var1)
    {
      var1 = v12[2](v12, v8, 2);
      lengths = self->_lengths;
      lengths[dCopy].var1 = var1;
    }

    var2 = lengths[dCopy].var2;
    if (!var2)
    {
      var2 = v12[2](v12, v8, 3);
      lengths = self->_lengths;
      lengths[dCopy].var2 = var2;
    }

    v21 = v9 + 3;
    if (v21 < var1 || v21 > var2)
    {
      if (v21 < var1)
      {
        v26 = dCopy;
        var0 = lengths[v26].var0;
        if (!var0)
        {
          var0 = v12[2](v12, v8, 1);
          self->_lengths[v26].var0 = var0;
        }

        if (v21 <= var0)
        {
          v15 = 1;
        }

        else if (var0 + (var1 - var0) * 0.5 >= v21)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        goto LABEL_16;
      }

      var3 = lengths[dCopy].var3;
      if (!var3)
      {
        var3 = v12[2](v12, v8, 4);
        self->_lengths[dCopy].var3 = var3;
      }

      if (v21 > var3)
      {
        if (var3 == var2)
        {
          v15 = 3;
        }

        else
        {
          v15 = 4;
        }

        goto LABEL_16;
      }

      v22 = var2 + (var3 - var2) * 0.5 < v21;
      v23 = 3;
      v24 = 4;
    }

    else
    {
      v22 = var1 + (var2 - var1) * 0.5 < v21;
      v23 = 2;
      v24 = 3;
    }

    if (v22)
    {
      v15 = v24;
    }

    else
    {
      v15 = v23;
    }
  }

LABEL_16:

LABEL_18:
  return v15;
}

id __58__CalculateUnitOutput_resolvedUnitFormatForUnitID_string___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 typeInfo];
  v9 = [v8 name];
  v10 = [&unk_1F419A730 objectForKeyedSubscript:v9];
  v11 = [v10 intValue];

  v12 = *(*(a1 + 32) + 24);
  v13 = [v7 name];

  v14 = [CalculateUnit localizedNameForValue:v12 locale:a4 retainingFormat:a3 unitFormat:v11 unitType:v13 name:1.0];

  return v14;
}

uint64_t __58__CalculateUnitOutput_resolvedUnitFormatForUnitID_string___block_invoke_2(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 length];
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (CalculateUnitOutput)initWithLocale:(id)locale
{
  localeCopy = locale;
  v12.receiver = self;
  v12.super_class = CalculateUnitOutput;
  v6 = [(CalculateUnitOutput *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, locale);
    v8 = +[UnitsInfo converterUnits];
    unitsInfo = v7->_unitsInfo;
    v7->_unitsInfo = v8;

    unitCount = [(UnitsInfo *)v7->_unitsInfo unitCount];
    v7->_count = unitCount;
    v7->_lengths = malloc_type_calloc(unitCount, 0x10uLL, 0x1000040451B5BE8uLL);
  }

  return v7;
}

@end