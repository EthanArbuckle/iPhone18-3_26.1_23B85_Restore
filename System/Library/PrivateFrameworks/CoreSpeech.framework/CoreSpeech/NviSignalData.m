@interface NviSignalData
+ (id)headerString;
- (NviSignalData)initWithCoder:(id)a3;
- (NviSignalData)initWithSignalType:(unint64_t)a3 timestamp:(unint64_t)a4;
- (id)description;
- (id)stringForLogging;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NviSignalData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [NviUtils strRepForNviSignalType:self->_sigType];
  v5 = [v3 stringWithFormat:@"{%@:ts=%lld}", v4, self->_sigGenTs];

  return v5;
}

- (id)stringForLogging
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = NviLogContextFacility;
  if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[NviSignalData stringForLogging]";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Abstract Impl. Returning nil", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  sigType = self->_sigType;
  v5 = a3;
  [v5 encodeInteger:sigType forKey:@"type"];
  [v5 encodeInt64:self->_sigGenTs forKey:@"ts"];
}

- (NviSignalData)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NviSignalData;
  v5 = [(NviSignalData *)&v7 init];
  if (v5)
  {
    v5->_sigType = [v4 decodeIntegerForKey:@"type"];
    v5->_sigGenTs = [v4 decodeInt64ForKey:@"ts"];
  }

  return v5;
}

- (NviSignalData)initWithSignalType:(unint64_t)a3 timestamp:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = NviSignalData;
  result = [(NviSignalData *)&v7 init];
  if (result)
  {
    result->_sigType = a3;
    result->_sigGenTs = a4;
  }

  return result;
}

+ (id)headerString
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = NviLogContextFacility;
  if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[NviSignalData headerString]";
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Abstract Impl. Returning nil", &v5, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

@end