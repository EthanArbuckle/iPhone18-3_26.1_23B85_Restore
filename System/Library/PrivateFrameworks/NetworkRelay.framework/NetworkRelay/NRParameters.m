@interface NRParameters
- (NRParameters)init;
- (NRParameters)initWithParameters:(id)a3;
- (id)copyParameters;
- (id)description;
- (void)setServiceClass:(unsigned __int8)a3;
@end

@implementation NRParameters

- (id)copyParameters
{
  if (self)
  {
    parameters = self->_parameters;
  }

  JUMPOUT(0x25F873CE0);
}

- (void)setServiceClass:(unsigned __int8)a3
{
  self->_serviceClass = a3;
  parameters = self->_parameters;
  if ((a3 - 1) > 4)
  {
    v4 = nw_service_class_best_effort;
  }

  else
  {
    v4 = dword_25B9FC460[(a3 - 1)];
  }

  nw_parameters_set_service_class(parameters, v4);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self)
  {
    parameters = self->_parameters;
  }

  else
  {
    parameters = 0;
  }

  v5 = [v3 initWithFormat:@"NRParameters<%@>", parameters];

  return v5;
}

- (NRParameters)initWithParameters:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NRParameters;
  v5 = [(NRParameters *)&v24 init];
  if (!v5)
  {
    v10 = nrCopyLogObj_2805();
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

    v13 = nrCopyLogObj_2805();
    _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: [super init] failed", v14, v15, v16, v17, v18, "");

LABEL_7:
    v19 = _os_log_pack_size();
    MEMORY[0x28223BE20](v19, v20);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "[NRParameters initWithParameters:]";
    v23 = nrCopyLogObj_2805();
    _NRLogAbortWithPack(v23);
  }

  v6 = v5;
  parameters = v5->_parameters;
  v5->_parameters = v4;

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NRParameters)init
{
  v3 = MEMORY[0x25F873D00](self, a2);
  v4 = [(NRParameters *)self initWithParameters:v3];

  return v4;
}

@end