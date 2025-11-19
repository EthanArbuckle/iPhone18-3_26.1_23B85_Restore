@interface CLIndoorAvailabilityTileParams
- (CLIndoorAvailabilityTileParams)init;
- (CLIndoorAvailabilityTileParams)initWithAvailabilityTile:(void *)a3;
- (optional<proto::params::LocalizerParameters>)localizerParams;
@end

@implementation CLIndoorAvailabilityTileParams

- (CLIndoorAvailabilityTileParams)init
{
  v3.receiver = self;
  v3.super_class = CLIndoorAvailabilityTileParams;
  return [(CLIndoorAvailabilityTileParams *)&v3 init];
}

- (CLIndoorAvailabilityTileParams)initWithAvailabilityTile:(void *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = CLIndoorAvailabilityTileParams;
  v4 = [(CLIndoorAvailabilityTileParams *)&v10 init];
  if (!v4)
  {
    goto LABEL_23;
  }

  *(v4 + 50) = sub_245A3935C(a3);
  *(v4 + 84) = sub_245A38A94(a3);
  *(v4 + 85) = sub_245A39368(a3);
  *(v4 + 86) = sub_245A38AA0(a3);
  *(v4 + 87) = sub_245A38AAC(a3);
  *(v4 + 88) = sub_245A39384(a3);
  v5 = sub_245A38C70(a3);
  v4[328] = v5;
  if (v5)
  {
    sub_245A82794(a3, &v11);
    v6 = v17;
    v4[329] = v17 & 1;
    if (v6)
    {
      *(v4 + 89) = v13;
      v4[330] = (v6 & 2) != 0;
      if ((v6 & 2) == 0)
      {
LABEL_5:
        v4[331] = (v6 & 4) != 0;
        if ((v6 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v4[330] = (v6 & 2) != 0;
      if ((v6 & 2) == 0)
      {
        goto LABEL_5;
      }
    }

    *(v4 + 90) = v14;
    v4[331] = (v6 & 4) != 0;
    if ((v6 & 4) == 0)
    {
LABEL_6:
      v4[332] = (v6 & 8) != 0;
      if ((v6 & 8) == 0)
      {
LABEL_8:
        sub_245A4A8DC(&v11);
        goto LABEL_10;
      }

LABEL_7:
      *(v4 + 92) = v16;
      goto LABEL_8;
    }

LABEL_17:
    *(v4 + 91) = v15;
    v4[332] = (v6 & 8) != 0;
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(v4 + 329) = 0;
LABEL_10:
  *(v4 + 93) = sub_245A38C64(a3);
  v4[333] = sub_245A39374(a3);
  *(v4 + 94) = sub_245A38C80(a3);
  *(v4 + 95) = sub_245A38B80(a3);
  *(v4 + 96) = sub_245A39390(a3);
  *(v4 + 97) = sub_245A38C8C(a3);
  *(v4 + 98) = sub_245A39474(a3);
  sub_245A391E0(a3, &v11);
  if (v4[8] == 1)
  {
    if (v11)
    {
      sub_245A37D20((v4 + 16), &v12);
      goto LABEL_21;
    }

    sub_245A38D60(v4 + 2);
    v7 = 0;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    sub_245A39558((v4 + 16), &v12);
    v7 = 1;
  }

  v4[8] = v7;
LABEL_21:
  if (v11 == 1)
  {
    sub_245A38D60(&v12);
  }

LABEL_23:
  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (optional<proto::params::LocalizerParameters>)localizerParams
{
  *v2 = 0;
  if (self->_optionalParams.m_initialized)
  {
    v3 = v2;
    self = sub_245A39558((v2 + 8), &self->_optionalParams.m_storage.dummy_.aligner_ + 7);
    *v3 = 1;
  }

  result.m_storage.dummy_.data[7] = a2;
  result.m_initialized = self;
  *result.m_storage.dummy_.data = *(&self + 1);
  *(&result.m_storage.dummy_.aligner_ + 2) = *(&self + 5);
  result.m_storage.dummy_.data[6] = HIBYTE(self);
  return result;
}

@end