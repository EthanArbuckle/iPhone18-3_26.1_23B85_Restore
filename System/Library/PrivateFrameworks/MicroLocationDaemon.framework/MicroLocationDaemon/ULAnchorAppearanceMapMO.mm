@interface ULAnchorAppearanceMapMO
+ (id)createFromDO:(const void *)o withLoiMO:(id)mO inManagedObjectContext:(id)context;
- (optional<ULAnchorAppearanceMapDO>)convertToDO;
@end

@implementation ULAnchorAppearanceMapMO

+ (id)createFromDO:(const void *)o withLoiMO:(id)mO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  v8 = [[ULAnchorAppearanceMapMO alloc] initWithContext:context];
  [(ULAnchorAppearanceMapMO *)v8 setLoi:mOCopy];
  [(ULAnchorAppearanceMapMO *)v8 setTimestamp:*o];
  CLMicroLocationProto::AnchorAppearanceConfiguration::ByteSize((o + 24));
  operator new[]();
}

- (optional<ULAnchorAppearanceMapDO>)convertToDO
{
  v22 = *MEMORY[0x277D85DE8];
  [(ULAnchorAppearanceMapMO *)self timestamp];
  v17 = v4;
  v5 = [(ULAnchorAppearanceMapMO *)self loi];
  loiId = [v5 loiId];
  v7 = loiId;
  if (loiId)
  {
    [loiId boostUUID];
  }

  else
  {
    v20 = 0uLL;
    v21 = 0;
  }

  if ((v21 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULAnchorAppearanceMapMO convertToDO];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "convertToDO: anchorAppearanceMap's loiId has no value", buf, 2u);
    }

    v20 = 0uLL;
    if ((v21 & 1) == 0)
    {
      v21 = 1;
    }
  }

  anchorAppearance = [(ULAnchorAppearanceMapMO *)self anchorAppearance];
  v10 = anchorAppearance;
  bytes = [anchorAppearance bytes];
  anchorAppearance2 = [(ULAnchorAppearanceMapMO *)self anchorAppearance];
  [anchorAppearance2 length];
  LOBYTE(bytes) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v16, bytes);

  if (bytes)
  {
    if ((v21 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    ULAnchorAppearanceMapDO::ULAnchorAppearanceMapDO(buf, &v17, &v20, v16);
    ULAnchorAppearanceMapDO::ULAnchorAppearanceMapDO(retstr, buf);
    LOBYTE(retstr[1].var0.var3.var4[0]) = 1;
    CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(&v19);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULAnchorAppearanceMapMO convertToDO];
    }

    v13 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_ERROR, "convertToDO: Failed to deserialize anchorAppearance protobuf from byte stream", buf, 2u);
    }

    retstr->var0.var0 = 0;
    LOBYTE(retstr[1].var0.var3.var4[0]) = 0;
  }

  CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

@end