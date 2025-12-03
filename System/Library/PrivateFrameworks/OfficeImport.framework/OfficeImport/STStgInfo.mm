@interface STStgInfo
- ($DF246ECBFA7C13B1931CDA33BA2B4196)getCLSID;
- (STStgInfo)init;
- (STStgInfo)initWithStgInfo:(const _StgInfo *)info;
@end

@implementation STStgInfo

- (STStgInfo)init
{
  v7.receiver = self;
  v7.super_class = STStgInfo;
  v2 = [(STStgInfo *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCACA8]);
    m_pstrName = v2->m_pstrName;
    v2->m_pstrName = v3;

    *&v2->m_type = 0;
    v2->m_size = 0;
    *&v2->m_creationTime = 0u;
    *&v2->m_accessMode = 0u;
    *&v2->m_clsid.m_data4[4] = 0;
    v5 = v2;
  }

  return v2;
}

- (STStgInfo)initWithStgInfo:(const _StgInfo *)info
{
  v11.receiver = self;
  v11.super_class = STStgInfo;
  v4 = [(STStgInfo *)&v11 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:info->var0 length:_ChWcslen(info->var0)];
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;

    *(v4 + 4) = info->var1 != 1;
    var3 = info->var3;
    var4 = info->var4;
    *(v4 + 5) = info->var2;
    *(v4 + 6) = var3;
    *(v4 + 4) = var4;
    *(v4 + 5) = info->var5;
    *(v4 + 12) = STStgModeFromStgMode(info->var6);
    *(v4 + 52) = info->var7;
    v9 = v4;
  }

  return v4;
}

- ($DF246ECBFA7C13B1931CDA33BA2B4196)getCLSID
{
  v2 = *self->m_clsid.m_data4;
  v3 = *&self->m_clsid.m_data1;
  *result.var3 = v2;
  result.var0 = v3;
  result.var1 = WORD2(v3);
  result.var2 = HIWORD(v3);
  return result;
}

@end