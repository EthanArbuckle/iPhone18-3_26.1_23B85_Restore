@interface NSNumber(BRAdditions)
- (id)br_round:()BRAdditions;
- (uint64_t)br_isEqualToNumber:()BRAdditions;
- (uint64_t)br_roundedLongLongValue;
@end

@implementation NSNumber(BRAdditions)

- (uint64_t)br_roundedLongLongValue
{
  v2 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v2 setUsesSignificantDigits:1];
  [v2 setMaximumSignificantDigits:2];
  if ([self compare:&unk_1F23E68E0] == -1)
  {
    [v2 setMaximumSignificantDigits:1];
  }

  v3 = [v2 stringFromNumber:self];
  v4 = [v2 numberFromString:v3];
  v5 = v4;
  if (v4)
  {
    longLongValue = [v4 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (id)br_round:()BRAdditions
{
  if (a3)
  {
    [self doubleValue];
    if (((v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF)
    {
      [self doubleValue];
      v12 = v11;
      v13 = *[self objCType];
      v14 = (v13 & 0xFFFFFFFD) == 0x64 && *([self objCType] + 1) == 0;
      v15 = (((v13 - 99) >> 1) | ((v13 - 99) << 7));
      v16 = v15 > 8;
      v17 = (1 << v15) & 0x189;
      v19 = !v16 && v17 != 0 && *([self objCType] + 1) == 0;
      v20 = log10(fabs(v12));
      v21 = __exp10(a3 - floor(v20) + -1.0);
      v22 = floor(v12 * v21) / v21;
      if (v14)
      {
        v8 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
      }

      else
      {
        if (v19)
        {
          [MEMORY[0x1E696AD98] numberWithLongLong:v22];
        }

        else
        {
          [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v22];
        }
        v8 = ;
      }
    }

    else
    {
      v6 = brc_bread_crumbs("[NSNumber(BRAdditions) br_round:]", 49);
      v7 = brc_default_log(0, 0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(NSNumber(BRAdditions) *)self br_round:v6, v7];
      }

      v8 = &unk_1F23E68F8;
    }
  }

  else
  {
    v9 = brc_bread_crumbs("[NSNumber(BRAdditions) br_round:]", 44);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(NSNumber(BRAdditions) *)v9 br_round:v10];
    }

    v8 = 0;
  }

  return v8;
}

- (uint64_t)br_isEqualToNumber:()BRAdditions
{
  if (a3)
  {
    return [self isEqualToNumber:?];
  }

  else
  {
    return 0;
  }
}

- (void)br_round:()BRAdditions .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Expecting normal number. Got %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)br_round:()BRAdditions .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109378;
  v3[1] = 0;
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: significantDigits must be positive integer value. Got %u%@", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

@end