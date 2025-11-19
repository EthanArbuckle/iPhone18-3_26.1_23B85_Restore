@interface NRCompanionLinkPreferences
- (BOOL)isEqual:(id)a3;
- (id)copyShortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initInternalWithServiceClass:(unsigned __int8)a3 highThroughout:(BOOL)a4 includeP2P:(BOOL)a5;
@end

@implementation NRCompanionLinkPreferences

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = *(&self->super._linkType + 1);
    if (v7 == [(NRCompanionLinkPreferences *)v6 highThroughput]&& (v8 = *(&self->super._linkType + 2), v8 == [(NRCompanionLinkPreferences *)v6 includeP2P]))
    {
      v9 = *(&self->super._linkType + 3);
      v10 = v9 == [(NRCompanionLinkPreferences *)v6 serviceClass];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyShortDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = *&self->_highThroughput;
  v5 = *(&self->super._linkType + 3);
  if (v5 >= 6)
  {
    v7 = v3;
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown(%u)", v5];
    v3 = v7;
  }

  else
  {
    v6 = off_27996BB58[*(&self->super._linkType + 3)];
  }

  v8 = "";
  if (*(&self->super._linkType + 1))
  {
    v9 = " ht";
  }

  else
  {
    v9 = "";
  }

  if (*(&self->super._linkType + 2))
  {
    v8 = " p2p";
  }

  v10 = [v3 initWithFormat:@"[%llu %@%s%s", v4, v6, v9, v8];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NRCompanionLinkPreferences;
  v4 = [(NRLinkPreferences *)&v7 copyWithZone:a3];
  v5 = [(NRCompanionLinkPreferences *)self serviceClass];
  if (v4)
  {
    v4[11] = v5;
    v4[9] = [(NRCompanionLinkPreferences *)self highThroughput];
    v4[10] = [(NRCompanionLinkPreferences *)self includeP2P];
  }

  else
  {
    [(NRCompanionLinkPreferences *)self highThroughput];
    [(NRCompanionLinkPreferences *)self includeP2P];
  }

  return v4;
}

- (id)initInternalWithServiceClass:(unsigned __int8)a3 highThroughout:(BOOL)a4 includeP2P:(BOOL)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = NRCompanionLinkPreferences;
  result = [(NRCompanionLinkPreferences *)&v22 init];
  if (!result)
  {
    v10 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v11 = v10;
      v12 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (!v12)
      {
        goto LABEL_7;
      }
    }

    v13 = nrCopyLogObj_461();
    _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v14, v15, v16, v17, v18, "");

LABEL_7:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v19 = *__error();
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "[NRCompanionLinkPreferences initInternalWithServiceClass:highThroughout:includeP2P:]";
    v21 = nrCopyLogObj_461();
    _NRLogAbortWithPack(v21);
  }

  *(result + 2) = atomic_fetch_add_explicit(&initInternalWithServiceClass_highThroughout_includeP2P__sNRLinkID, 1uLL, memory_order_relaxed);
  *(result + 11) = a3;
  *(result + 9) = a4;
  *(result + 10) = a5;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end