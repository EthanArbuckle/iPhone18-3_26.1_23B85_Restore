@interface HMBLocalSQLContextRowZone
- (HMBLocalSQLContextRowZone)init;
- (HMBLocalSQLContextRowZone)initWithZoneRow:(unint64_t)row;
- (HMBLocalSQLContextRowZone)initWithZoneRow:(unint64_t)row name:(id)name token:(id)token;
- (id)debugDescription;
- (id)description;
@end

@implementation HMBLocalSQLContextRowZone

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  zoneRow = [(HMBLocalSQLContextRowZone *)self zoneRow];
  identifier = [(HMBLocalSQLContextRowZone *)self identifier];
  name = [identifier name];
  v7 = [v3 stringWithFormat:@"<%lu.%@>", zoneRow, name];

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  zoneRow = [(HMBLocalSQLContextRowZone *)self zoneRow];
  identifier = [(HMBLocalSQLContextRowZone *)self identifier];
  name = [identifier name];
  v7 = [v3 stringWithFormat:@"<%lu: %@>", zoneRow, name];

  return v7;
}

- (HMBLocalSQLContextRowZone)initWithZoneRow:(unint64_t)row name:(id)name token:(id)token
{
  nameCopy = name;
  tokenCopy = token;
  v15.receiver = self;
  v15.super_class = HMBLocalSQLContextRowZone;
  v10 = [(HMBLocalSQLContextRowZone *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_zoneRow = row;
    v12 = [[HMBLocalZoneIDRow alloc] initWithName:nameCopy token:tokenCopy];
    identifier = v11->_identifier;
    v11->_identifier = v12;
  }

  return v11;
}

- (HMBLocalSQLContextRowZone)initWithZoneRow:(unint64_t)row
{
  v5.receiver = self;
  v5.super_class = HMBLocalSQLContextRowZone;
  result = [(HMBLocalSQLContextRowZone *)&v5 init];
  if (result)
  {
    result->_zoneRow = row;
  }

  return result;
}

- (HMBLocalSQLContextRowZone)init
{
  v3.receiver = self;
  v3.super_class = HMBLocalSQLContextRowZone;
  return [(HMBLocalSQLContextRowZone *)&v3 init];
}

@end