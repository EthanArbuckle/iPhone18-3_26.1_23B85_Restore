@interface MTLTelemetrySamplerState
- (MTLTelemetrySamplerState)initWithBaseSamplerState:(id)a3 device:(id)a4 descriptor:(id)a5;
- (void)dealloc;
- (void)setSamplerStatsWithDescriptor:(id)a3 telemetryStat:(MTLTelemetrySamplerStatRec *)a4;
@end

@implementation MTLTelemetrySamplerState

- (void)setSamplerStatsWithDescriptor:(id)a3 telemetryStat:(MTLTelemetrySamplerStatRec *)a4
{
  if (![a3 mipFilter])
  {
    goto LABEL_19;
  }

  count = a4->var1.count;
  if (!count)
  {
    a4->var1.max = 1;
LABEL_8:
    a4->var1.min = 1;
    goto LABEL_9;
  }

  if (!a4->var1.max)
  {
    a4->var1.max = 1;
  }

  if (a4->var1.min >= 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  ++a4->var1.total;
  a4->var1.count = count + 1;
  if ([a3 minFilter] == 1 || objc_msgSend(a3, "magFilter") == 1)
  {
    v7 = a4->var2.count;
    if (v7)
    {
      if (!a4->var2.max)
      {
        a4->var2.max = 1;
      }

      if (a4->var2.min < 2)
      {
        goto LABEL_18;
      }
    }

    else
    {
      a4->var2.max = 1;
    }

    a4->var2.min = 1;
LABEL_18:
    ++a4->var2.total;
    a4->var2.count = v7 + 1;
  }

LABEL_19:
  if (![a3 normalizedCoordinates])
  {
    goto LABEL_28;
  }

  v8 = a4->var3.count;
  if (v8)
  {
    if (!a4->var3.max)
    {
      a4->var3.max = 1;
    }

    if (a4->var3.min < 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    a4->var3.max = 1;
  }

  a4->var3.min = 1;
LABEL_27:
  ++a4->var3.total;
  a4->var3.count = v8 + 1;
LABEL_28:
  v9 = [a3 maxAnisotropy];
  if (!v9)
  {
    goto LABEL_37;
  }

  v10 = a4->var4.count;
  if (v10)
  {
    if (a4->var4.max < v9)
    {
      a4->var4.max = v9;
    }

    if (a4->var4.min <= v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    a4->var4.max = v9;
  }

  a4->var4.min = v9;
LABEL_36:
  a4->var4.total += v9;
  a4->var4.count = v10 + 1;
LABEL_37:
  [a3 lodMinClamp];
  var3 = a4->var5.var3;
  if (!var3)
  {
    a4->var5.var1 = v11;
LABEL_43:
    a4->var5.var0 = v11;
    goto LABEL_44;
  }

  if (v11 > a4->var5.var1)
  {
    a4->var5.var1 = v11;
  }

  if (v11 < a4->var5.var0)
  {
    goto LABEL_43;
  }

LABEL_44:
  a4->var5.var2 = v11 + a4->var5.var2;
  a4->var5.var3 = var3 + 1;
  [a3 lodMaxClamp];
  if (v13 == 3.4028e38)
  {
    goto LABEL_53;
  }

  [a3 lodMaxClamp];
  v15 = a4->var6.var3;
  if (v15)
  {
    if (v14 > a4->var6.var1)
    {
      a4->var6.var1 = v14;
    }

    if (v14 >= a4->var6.var0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    a4->var6.var1 = v14;
  }

  a4->var6.var0 = v14;
LABEL_52:
  a4->var6.var2 = v14 + a4->var6.var2;
  a4->var6.var3 = v15 + 1;
LABEL_53:
  v16 = [a3 lodAverage];
  if (v16)
  {
    v17 = a4->var7.count;
    if (v17)
    {
      if (a4->var7.max < v16)
      {
        a4->var7.max = v16;
      }

      if (a4->var7.min <= v16)
      {
        goto LABEL_61;
      }
    }

    else
    {
      a4->var7.max = v16;
    }

    a4->var7.min = v16;
LABEL_61:
    ++a4->var7.total;
    a4->var7.count = v17 + 1;
  }

  ++a4->var0;
}

- (MTLTelemetrySamplerState)initWithBaseSamplerState:(id)a3 device:(id)a4 descriptor:(id)a5
{
  v11.receiver = self;
  v11.super_class = MTLTelemetrySamplerState;
  v7 = [(MTLToolsObject *)&v11 initWithBaseObject:a3 parent:?];
  if (v7)
  {
    *(&v7->super.super._externalReferences + 4) = [a5 maxAnisotropy] > 1;
    if ([a4 enableTelemetry])
    {
      v8 = *(a4 + 91);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__MTLTelemetrySamplerState_initWithBaseSamplerState_device_descriptor___block_invoke;
      block[3] = &unk_2787B38D0;
      block[4] = a4;
      block[5] = v7;
      block[6] = a5;
      dispatch_sync(v8, block);
    }
  }

  return v7;
}

uint64_t __71__MTLTelemetrySamplerState_initWithBaseSamplerState_device_descriptor___block_invoke(uint64_t a1)
{
  ++**(*(a1 + 32) + 264);
  [*(a1 + 40) setSamplerStatsWithDescriptor:*(a1 + 48) telemetryStat:{*(*(a1 + 32) + 264) + 1280 * objc_msgSend(*(a1 + 48), "sAddressMode") + 160 * objc_msgSend(*(a1 + 48), "compareFunction") + 8}];
  [*(a1 + 40) setSamplerStatsWithDescriptor:*(a1 + 48) telemetryStat:{*(*(a1 + 32) + 264) + 1280 * objc_msgSend(*(a1 + 48), "tAddressMode") + 160 * objc_msgSend(*(a1 + 48), "compareFunction") + 8}];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(*(a1 + 32) + 264);
  v5 = v4 + 1280 * [v2 rAddressMode];
  v6 = v5 + 160 * [*(a1 + 48) compareFunction] + 8;

  return [v3 setSamplerStatsWithDescriptor:v2 telemetryStat:v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLTelemetrySamplerState;
  [(MTLToolsSamplerState *)&v3 dealloc];
}

@end