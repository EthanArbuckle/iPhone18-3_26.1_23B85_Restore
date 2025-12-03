@interface MTLTelemetrySamplerState
- (MTLTelemetrySamplerState)initWithBaseSamplerState:(id)state device:(id)device descriptor:(id)descriptor;
- (void)dealloc;
- (void)setSamplerStatsWithDescriptor:(id)descriptor telemetryStat:(MTLTelemetrySamplerStatRec *)stat;
@end

@implementation MTLTelemetrySamplerState

- (void)setSamplerStatsWithDescriptor:(id)descriptor telemetryStat:(MTLTelemetrySamplerStatRec *)stat
{
  if (![descriptor mipFilter])
  {
    goto LABEL_19;
  }

  count = stat->var1.count;
  if (!count)
  {
    stat->var1.max = 1;
LABEL_8:
    stat->var1.min = 1;
    goto LABEL_9;
  }

  if (!stat->var1.max)
  {
    stat->var1.max = 1;
  }

  if (stat->var1.min >= 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  ++stat->var1.total;
  stat->var1.count = count + 1;
  if ([descriptor minFilter] == 1 || objc_msgSend(descriptor, "magFilter") == 1)
  {
    v7 = stat->var2.count;
    if (v7)
    {
      if (!stat->var2.max)
      {
        stat->var2.max = 1;
      }

      if (stat->var2.min < 2)
      {
        goto LABEL_18;
      }
    }

    else
    {
      stat->var2.max = 1;
    }

    stat->var2.min = 1;
LABEL_18:
    ++stat->var2.total;
    stat->var2.count = v7 + 1;
  }

LABEL_19:
  if (![descriptor normalizedCoordinates])
  {
    goto LABEL_28;
  }

  v8 = stat->var3.count;
  if (v8)
  {
    if (!stat->var3.max)
    {
      stat->var3.max = 1;
    }

    if (stat->var3.min < 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    stat->var3.max = 1;
  }

  stat->var3.min = 1;
LABEL_27:
  ++stat->var3.total;
  stat->var3.count = v8 + 1;
LABEL_28:
  maxAnisotropy = [descriptor maxAnisotropy];
  if (!maxAnisotropy)
  {
    goto LABEL_37;
  }

  v10 = stat->var4.count;
  if (v10)
  {
    if (stat->var4.max < maxAnisotropy)
    {
      stat->var4.max = maxAnisotropy;
    }

    if (stat->var4.min <= maxAnisotropy)
    {
      goto LABEL_36;
    }
  }

  else
  {
    stat->var4.max = maxAnisotropy;
  }

  stat->var4.min = maxAnisotropy;
LABEL_36:
  stat->var4.total += maxAnisotropy;
  stat->var4.count = v10 + 1;
LABEL_37:
  [descriptor lodMinClamp];
  var3 = stat->var5.var3;
  if (!var3)
  {
    stat->var5.var1 = v11;
LABEL_43:
    stat->var5.var0 = v11;
    goto LABEL_44;
  }

  if (v11 > stat->var5.var1)
  {
    stat->var5.var1 = v11;
  }

  if (v11 < stat->var5.var0)
  {
    goto LABEL_43;
  }

LABEL_44:
  stat->var5.var2 = v11 + stat->var5.var2;
  stat->var5.var3 = var3 + 1;
  [descriptor lodMaxClamp];
  if (v13 == 3.4028e38)
  {
    goto LABEL_53;
  }

  [descriptor lodMaxClamp];
  v15 = stat->var6.var3;
  if (v15)
  {
    if (v14 > stat->var6.var1)
    {
      stat->var6.var1 = v14;
    }

    if (v14 >= stat->var6.var0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    stat->var6.var1 = v14;
  }

  stat->var6.var0 = v14;
LABEL_52:
  stat->var6.var2 = v14 + stat->var6.var2;
  stat->var6.var3 = v15 + 1;
LABEL_53:
  lodAverage = [descriptor lodAverage];
  if (lodAverage)
  {
    v17 = stat->var7.count;
    if (v17)
    {
      if (stat->var7.max < lodAverage)
      {
        stat->var7.max = lodAverage;
      }

      if (stat->var7.min <= lodAverage)
      {
        goto LABEL_61;
      }
    }

    else
    {
      stat->var7.max = lodAverage;
    }

    stat->var7.min = lodAverage;
LABEL_61:
    ++stat->var7.total;
    stat->var7.count = v17 + 1;
  }

  ++stat->var0;
}

- (MTLTelemetrySamplerState)initWithBaseSamplerState:(id)state device:(id)device descriptor:(id)descriptor
{
  v11.receiver = self;
  v11.super_class = MTLTelemetrySamplerState;
  v7 = [(MTLToolsObject *)&v11 initWithBaseObject:state parent:?];
  if (v7)
  {
    *(&v7->super.super._externalReferences + 4) = [descriptor maxAnisotropy] > 1;
    if ([device enableTelemetry])
    {
      v8 = *(device + 91);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__MTLTelemetrySamplerState_initWithBaseSamplerState_device_descriptor___block_invoke;
      block[3] = &unk_2787B38D0;
      block[4] = device;
      block[5] = v7;
      block[6] = descriptor;
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