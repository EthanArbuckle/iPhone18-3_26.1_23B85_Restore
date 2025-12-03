@interface CWFChannel
+ (CWFChannel)channelWithNumber:(unint64_t)number band:(unsigned int)band width:(int)width;
- (BOOL)is6GHzPSC;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToChannel:(id)channel;
- (BOOL)overlapsWithUWB;
- (CWFChannel)initWithCoder:(id)coder;
- (CWFChannel)initWithExternalForm:(id)form;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)copyWithZone:(_NSZone *)zone;
- (id)externalForm;
- (int)width;
- (unsigned)band;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFChannel

- (int)width
{
  flags = self->_flags;
  if ((flags & 0x800) != 0)
  {
    return 160;
  }

  if ((flags & 4) != 0)
  {
    v3 = 40;
  }

  else
  {
    v3 = ((flags << 30) >> 31) & 0x14;
  }

  if ((flags & 0x400) != 0)
  {
    return 80;
  }

  else
  {
    return v3;
  }
}

- (unsigned)band
{
  flags = self->_flags;
  if ((flags & 0x10) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = ((flags << 18) >> 31) & 3;
  }

  if ((flags & 8) != 0)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = sub_1E0BC9FD8([(CWFChannel *)self band]);
  v5 = [v3 stringWithFormat:@"%@%ld/%d", v4, -[CWFChannel channel](self, "channel"), -[CWFChannel width](self, "width")];

  return v5;
}

- (BOOL)is6GHzPSC
{
  if ((~self->_flags & 0x2002) != 0)
  {
    return 0;
  }

  v2 = 0;
  channel = self->_channel;
  do
  {
    v4 = dword_1E0D81928[v2];
    result = v4 == channel;
    if (v2 > 0xD)
    {
      break;
    }

    ++v2;
  }

  while (v4 != channel);
  return result;
}

- (BOOL)overlapsWithUWB
{
  is6GHz = [(CWFChannel *)self is6GHz];
  if (is6GHz)
  {
    LOBYTE(is6GHz) = [(CWFChannel *)self channel]> 0x5E || [(CWFChannel *)self channel]< 0xEA;
  }

  return is6GHz;
}

+ (CWFChannel)channelWithNumber:(unint64_t)number band:(unsigned int)band width:(int)width
{
  v8 = objc_alloc_init(CWFChannel);
  [(CWFChannel *)v8 setChannel:number];
  if (band - 1 > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = dword_1E0D81964[band - 1];
  }

  v10 = v9 | 0x400;
  v11 = v9 | 0x800;
  if (width != 160)
  {
    v11 = v9;
  }

  if (width != 80)
  {
    v10 = v11;
  }

  v12 = v9 | 2;
  if (width == 40)
  {
    v9 |= 4u;
  }

  if (width == 20)
  {
    v9 = v12;
  }

  if (width <= 79)
  {
    v13 = v9;
  }

  else
  {
    v13 = v10;
  }

  [(CWFChannel *)v8 setFlags:v13];

  return v8;
}

- (CWFChannel)initWithExternalForm:(id)form
{
  formCopy = form;
  v5 = [(CWFChannel *)self init];
  if (!v5)
  {
    v6 = 0;
    v8 = 0;
LABEL_9:

    v5 = 0;
    goto LABEL_7;
  }

  v6 = [formCopy objectForKeyedSubscript:@"ChannelNumber"];
  v7 = [formCopy objectForKeyedSubscript:@"ChannelFlags"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    goto LABEL_9;
  }

  -[CWFChannel setChannel:](v5, "setChannel:", [v6 unsignedIntegerValue]);
  -[CWFChannel setFlags:](v5, "setFlags:", [v8 unsignedIntValue]);
LABEL_7:

  return v5;
}

- (id)externalForm
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"ChannelNumber";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFChannel channel](self, "channel")}];
  v9[0] = v3;
  v8[1] = @"ChannelFlags";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CWFChannel flags](self, "flags")}];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = sub_1E0BC9FD8([(CWFChannel *)self band]);
  v5 = [v3 stringWithFormat:@"%@%ld/%d (0x%x)", v4, -[CWFChannel channel](self, "channel"), -[CWFChannel width](self, "width"), -[CWFChannel flags](self, "flags")];

  return v5;
}

- (BOOL)isEqualToChannel:(id)channel
{
  channelCopy = channel;
  channel = self->_channel;
  if (channel == [channelCopy channel])
  {
    flags = self->_flags;
    v7 = flags == [channelCopy flags];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFChannel *)self isEqualToChannel:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFChannel allocWithZone:?]];
  [(CWFChannel *)v4 setChannel:self->_channel];
  [(CWFChannel *)v4 setFlags:self->_flags];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  channel = self->_channel;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:channel];
  [coderCopy encodeObject:v6 forKey:@"_channel"];

  [coderCopy encodeInt:self->_flags forKey:@"_flags"];
}

- (CWFChannel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CWFChannel;
  v5 = [(CWFChannel *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    v5->_channel = [v6 unsignedIntegerValue];

    v5->_flags = [coderCopy decodeIntForKey:@"_flags"];
  }

  return v5;
}

- (id)JSONCompatibleKeyValueMap
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CWFChannel channel](self, "channel")}];
  [dictionary setObject:v4 forKeyedSubscript:@"channel"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CWFChannel flags](self, "flags")}];
  [dictionary setObject:v5 forKeyedSubscript:@"flags"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFChannel isDFS](self, "isDFS")}];
  [dictionary setObject:v6 forKeyedSubscript:@"dfs"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFChannel extAbove](self, "extAbove")}];
  [dictionary setObject:v7 forKeyedSubscript:@"ext_above"];

  array = [MEMORY[0x1E695DF70] array];
  if (([(CWFChannel *)self flags]& 2) != 0)
  {
    [array addObject:&unk_1F5BBD540];
  }

  if (([(CWFChannel *)self flags]& 4) != 0)
  {
    [array addObject:&unk_1F5BBD558];
  }

  if (([(CWFChannel *)self flags]& 0x400) != 0)
  {
    [array addObject:&unk_1F5BBD570];
  }

  if (([(CWFChannel *)self flags]& 0x800) != 0)
  {
    [array addObject:&unk_1F5BBD588];
  }

  [dictionary setObject:array forKeyedSubscript:@"widths"];
  if (([(CWFChannel *)self flags]& 0x2000) != 0)
  {
    v9 = &unk_1F5BBD5A0;
  }

  else if (([(CWFChannel *)self flags]& 0x10) != 0)
  {
    v9 = &unk_1F5BBD5B8;
  }

  else
  {
    if (([(CWFChannel *)self flags]& 8) == 0)
    {
      goto LABEL_16;
    }

    v9 = &unk_1F5BBD5D0;
  }

  [dictionary setObject:v9 forKeyedSubscript:@"band"];
LABEL_16:
  v10 = sub_1E0BCEC64(dictionary, 0, 1u);
  if (v10)
  {
    v11 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end