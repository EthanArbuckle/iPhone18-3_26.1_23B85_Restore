uint64_t ccrng_generate_bridge(uint64_t (**a1)(void))
{
  result = (*a1)();
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t SPAKE2CtxSize()
{
  v0 = ccspake_cp_256();

  return MEMORY[0x282201960](v0);
}

uint64_t SPAKE2Alishaz0Size()
{
  v0 = ccspake_cp_256();

  return MEMORY[0x282201970](v0);
}

uint64_t keyIsCompactRepresentable(uint64_t a1, uint64_t *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = (24 * *a2 + 31) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20]();
  v6 = (v13 - v5);
  v7 = v4;
  [v7 length];
  [v7 bytes];

  if (ccec_x963_import_pub())
  {
    result = 0;
  }

  else
  {
    result = ccec_validate_pub();
    if (result)
    {
      v9 = *a2;
      MEMORY[0x28223BE20]();
      v10 = **v6;
      ccn_sub();
      v11 = **v6;
      result = ccn_cmp() >= 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}