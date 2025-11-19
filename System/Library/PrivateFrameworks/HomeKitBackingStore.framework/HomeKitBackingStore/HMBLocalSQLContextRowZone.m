@interface HMBLocalSQLContextRowZone
- (HMBLocalSQLContextRowZone)init;
- (HMBLocalSQLContextRowZone)initWithZoneRow:(unint64_t)a3;
- (HMBLocalSQLContextRowZone)initWithZoneRow:(unint64_t)a3 name:(id)a4 token:(id)a5;
- (id)debugDescription;
- (id)description;
@end

@implementation HMBLocalSQLContextRowZone

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMBLocalSQLContextRowZone *)self zoneRow];
  v5 = [(HMBLocalSQLContextRowZone *)self identifier];
  v6 = [v5 name];
  v7 = [v3 stringWithFormat:@"<%lu.%@>", v4, v6];

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMBLocalSQLContextRowZone *)self zoneRow];
  v5 = [(HMBLocalSQLContextRowZone *)self identifier];
  v6 = [v5 name];
  v7 = [v3 stringWithFormat:@"<%lu: %@>", v4, v6];

  return v7;
}

- (HMBLocalSQLContextRowZone)initWithZoneRow:(unint64_t)a3 name:(id)a4 token:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = HMBLocalSQLContextRowZone;
  v10 = [(HMBLocalSQLContextRowZone *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_zoneRow = a3;
    v12 = [[HMBLocalZoneIDRow alloc] initWithName:v8 token:v9];
    identifier = v11->_identifier;
    v11->_identifier = v12;
  }

  return v11;
}

- (HMBLocalSQLContextRowZone)initWithZoneRow:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMBLocalSQLContextRowZone;
  result = [(HMBLocalSQLContextRowZone *)&v5 init];
  if (result)
  {
    result->_zoneRow = a3;
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