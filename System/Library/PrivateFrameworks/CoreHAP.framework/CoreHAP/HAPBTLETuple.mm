@interface HAPBTLETuple
+ (id)atvState2String:(unint64_t)a3;
+ (id)state2String:(BTStatus *)a3;
+ (void)bandwidthFromATVState:(unint64_t)a3 MinBandwidth:(float *)a4 MaxBandwidth:(float *)a5;
- (BTStatus)state;
- (id)description;
- (void)setState:(BTStatus *)a3;
@end

@implementation HAPBTLETuple

- (void)setState:(BTStatus *)a3
{
  *&self->_state.leRemote = *&a3->leRemote;
  v3 = *&a3->btKB;
  v4 = *&a3->btGC;
  v5 = *&a3->nonHIDConnections;
  *&self->_state.hk = *&a3->hk;
  *&self->_state.nonHIDConnections = v5;
  *&self->_state.btKB = v3;
  *&self->_state.btGC = v4;
  v6 = *&a3->oneSniffAttemptDevices;
  v7 = *&a3->sco;
  v8 = *&a3->remote;
  *&self->_state.isScanning = *&a3->isScanning;
  *&self->_state.sco = v7;
  *&self->_state.remote = v8;
  *&self->_state.oneSniffAttemptDevices = v6;
}

- (BTStatus)state
{
  v3 = *&self[1].leAcc;
  *&retstr->sco = *&self->isScanning;
  *&retstr->remote = v3;
  *&retstr->isScanning = self[1].a2dp;
  v4 = *&self->oneSniffAttemptDevices;
  *&retstr->btGC = *&self->nonHIDConnections;
  *&retstr->hk = v4;
  v5 = *&self->remote;
  *&retstr->nonHIDConnections = *&self->sco;
  *&retstr->oneSniffAttemptDevices = v5;
  v6 = *&self->hk;
  *&retstr->leRemote = *&self->btGC;
  *&retstr->btKB = v6;
  return self;
}

- (id)description
{
  if ([(HAPBTLETuple *)self atvState])
  {
    [HAPBTLETuple atvState2String:self->_atvState];
  }

  else
  {
    [HAPBTLETuple state2String:&self->_state];
  }
  v3 = ;

  return v3;
}

+ (id)state2String:(BTStatus *)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LE devices            : %zu \n", &stru_283E79C60, a3->lowEnergyConnections];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ classic devices       : %zu \n", v4, a3->connectedDevices];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ leRemote              : %zu \n", v5, a3->leRemote];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ leAcc                 : %zu \n", v6, a3->leAcc];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ btKb                  : %zu \n", v7, a3->btKB];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ a2dp                  : %zu \n", v8, a3->a2dp];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ btGC                  : %zu \n", v9, a3->btGC];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ eAcc                  : %zu \n", v10, a3->eAcc];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ HK                    : %zu \n", v11, a3->hk];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ non-HID               : %zu \n", v12, a3->nonHIDConnections];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ HID                   : %zu \n", v13, a3->connectedHIDDevices];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ oneSniffAttemptDevices: %zu \n", v14, a3->oneSniffAttemptDevices];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ twoSniffAttemptDevices: %zu \n", v15, a3->twoSniffAttemptDevices];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ sco                   : %zu \n", v16, a3->sco];

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ wiap                  : %zu \n", v17, a3->wiap];

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ remote                : %zu \n", v18, a3->remote];

  if (a3->isScanning)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ scanning              : %@ \n", v19, v20];

  if (a3->isDiscoverable)
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ discoverable          : %@ \n", v21, v22];

  if (a3->isConnectable)
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ connectable           : %@ \n", v23, v24];

  return v25;
}

+ (id)atvState2String:(unint64_t)a3
{
  v4 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%d ("), a3;
  if ([&unk_283EA9C08 count])
  {
    v5 = 0;
    do
    {
      if ((qword_22AC9DF78[v5] & a3) != 0)
      {
        v6 = MEMORY[0x277CCACA8];
        v7 = [&unk_283EA9C08 objectAtIndexedSubscript:v5];
        v8 = [v6 stringWithFormat:@"%@|%@", v4, v7];

        v4 = v8;
      }

      ++v5;
    }

    while ([&unk_283EA9C08 count] > v5);
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@"], v4);

  return v9;
}

+ (void)bandwidthFromATVState:(unint64_t)a3 MinBandwidth:(float *)a4 MaxBandwidth:(float *)a5
{
  v5 = 0;
  v25 = *MEMORY[0x277D85DE8];
  v6 = (a3 >> 1) & 2;
  if ((a3 & 2) != 0)
  {
    v6 = 1;
  }

  while ((btgcConfig[v5] & a3) == 0)
  {
    if (++v5 == 4)
    {
      v7 = 0;
      goto LABEL_7;
    }
  }

  v7 = v5 + 1;
LABEL_7:
  v8 = 0;
  v9 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF9FFFFFFFALL), 0x100000001);
  while ((leaConfig[v8] & a3) == 0)
  {
    if (++v8 == 3)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  v10 = v8 + 1;
LABEL_12:
  v11 = 0;
  while ((eaConfig[v11] & a3) == 0)
  {
    if (++v11 == 3)
    {
      v12 = 0;
      goto LABEL_17;
    }
  }

  v12 = v11 + 1;
LABEL_17:
  v13 = 0;
  while ((hkConfig_21606[v13] & a3) == 0)
  {
    if (++v13 == 3)
    {
      v14 = 0;
      goto LABEL_22;
    }
  }

  v14 = v13 + 1;
LABEL_22:
  v15 = 0;
  v20[0] = v6;
  v20[1] = v10;
  v16 = 0.0;
  v21 = v9;
  v22 = v7;
  v23 = v12;
  v17 = 0.0;
  v24 = v14;
  do
  {
    v18 = v20[v15];
    v16 = fminf(v16 + (*&maxFactors[v15] * v18), 100.0);
    v17 = fminf(v17 + (*&minFactors[v15++] * v18), 100.0);
  }

  while (v15 != 7);
  *a4 = v17;
  *a5 = v16;
  v19 = *MEMORY[0x277D85DE8];
}

@end