@interface IDSSemiActiveLinkQualityMonitorHandle
- (IDSSemiActiveLinkQualityMonitorHandle)init;
- (id)syntheticPacketSender;
- (signed)readQualityBytesFromPacketReturingDeduplicationID:(void *)a3 packetEnd:(void *)a4;
- (void)prependQualityBytesToPacketIfNeeded:(void *)a3 packetHeadroomStart:(void *)a4 deduplicationID:(signed __int16)a5;
- (void)setSyntheticPacketSender:(id)a3;
@end

@implementation IDSSemiActiveLinkQualityMonitorHandle

- (id)syntheticPacketSender
{
  if (*(self + OBJC_IVAR___IDSSemiActiveLinkQualityMonitorHandle_monitor))
  {
    v2 = self;

    v3 = IDSSemiActiveLinkQualityMonitor.syntheticPacketSender.getter();
    v5 = v4;

    if (v3)
    {
      v6[4] = v3;
      v6[5] = v5;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_1A7D63274;
      v6[3] = &unk_1F1AB28D8;
      v3 = _Block_copy(v6);
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)setSyntheticPacketSender:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = sub_1A7D640E8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(&self->super.isa + OBJC_IVAR___IDSSemiActiveLinkQualityMonitorHandle_monitor);
  if (v7)
  {
    v11 = self;

    os_unfair_lock_lock((v7 + 16));
    v8 = *(v7 + 24);
    if (v8)
    {
      sub_1A7B15088(v8);
    }

    if (v4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      *(v9 + 24) = v5;
      v10 = sub_1A7D64160;
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    *(v7 + 24) = v10;
    *(v7 + 32) = v9;
    os_unfair_lock_unlock((v7 + 16));
  }

  else
  {
    __break(1u);
  }
}

- (signed)readQualityBytesFromPacketReturingDeduplicationID:(void *)a3 packetEnd:(void *)a4
{
  if (*(&self->super.isa + OBJC_IVAR___IDSSemiActiveLinkQualityMonitorHandle_monitor))
  {
    v6 = self;

    v7 = IDSSemiActiveLinkQualityMonitor.readQualityBytesFromPacketReturningDeduplicationID(_:packetEnd:time:)(a3, a4, 0, 1);

    if ((v7 & 0x10000) != 0)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7;
    }

    LOWORD(self) = v8;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)prependQualityBytesToPacketIfNeeded:(void *)a3 packetHeadroomStart:(void *)a4 deduplicationID:(signed __int16)a5
{
  if (*(self + OBJC_IVAR___IDSSemiActiveLinkQualityMonitorHandle_monitor))
  {
    v7 = a5 < 0;
    v8 = a5 & ~(a5 >> 31);
    v9 = self;

    v10 = IDSSemiActiveLinkQualityMonitor.prependQualityBytesToPacketIfNeeded(_:packetHeadroomStart:deduplicationID:time:)(a3, a4, v8 | (v7 << 16), 0, 1);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (IDSSemiActiveLinkQualityMonitorHandle)init
{
  *(&self->super.isa + OBJC_IVAR___IDSSemiActiveLinkQualityMonitorHandle_monitor) = 0;
  v3.receiver = self;
  v3.super_class = IDSSemiActiveLinkQualityMonitorHandle;
  return [(IDSSemiActiveLinkQualityMonitorHandle *)&v3 init];
}

@end