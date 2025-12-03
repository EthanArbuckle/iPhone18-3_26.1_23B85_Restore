@interface HAPThreadNetworkMetadata
+ (id)shortDescription;
- (HAPThreadNetworkMetadata)initWithActiveOperationalDataSet:(id)set;
- (HAPThreadNetworkMetadata)initWithName:(id)name channel:(unsigned __int8)channel PANID:(id)d extendedPANID:(id)iD masterKey:(id)key passPhrase:(id)phrase PSKc:(id)kc activeOperationalDataSet:(id)self0;
- (id)attributeDescriptions;
- (id)shortDescription;
@end

@implementation HAPThreadNetworkMetadata

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HAPThreadNetworkMetadata *)self name];
  v5 = [v3 initWithName:@"Name" value:name];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HAPThreadNetworkMetadata channel](self, "channel")}];
  v8 = [v6 initWithName:@"Channel" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  pANID = [(HAPThreadNetworkMetadata *)self PANID];
  v11 = [v9 initWithName:@"PAN ID" value:pANID];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  extendedPANID = [(HAPThreadNetworkMetadata *)self extendedPANID];
  v14 = [v12 initWithName:@"extended PAN ID" value:extendedPANID];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HAPThreadNetworkMetadata)initWithActiveOperationalDataSet:(id)set
{
  setCopy = set;
  v16.receiver = self;
  v16.super_class = HAPThreadNetworkMetadata;
  v5 = [(HAPThreadNetworkMetadata *)&v16 init];
  v6 = v5;
  if (v5)
  {
    name = v5->_name;
    v5->_name = 0;

    v6->_channel = -1;
    PANID = v6->_PANID;
    v6->_PANID = 0;

    extendedPANID = v6->_extendedPANID;
    v6->_extendedPANID = 0;

    masterKey = v6->_masterKey;
    v6->_masterKey = 0;

    passPhrase = v6->_passPhrase;
    v6->_passPhrase = 0;

    PSKc = v6->_PSKc;
    v6->_PSKc = 0;

    v13 = [setCopy copy];
    activeOperationalDataSet = v6->_activeOperationalDataSet;
    v6->_activeOperationalDataSet = v13;
  }

  return v6;
}

- (HAPThreadNetworkMetadata)initWithName:(id)name channel:(unsigned __int8)channel PANID:(id)d extendedPANID:(id)iD masterKey:(id)key passPhrase:(id)phrase PSKc:(id)kc activeOperationalDataSet:(id)self0
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  keyCopy = key;
  phraseCopy = phrase;
  kcCopy = kc;
  setCopy = set;
  v39.receiver = self;
  v39.super_class = HAPThreadNetworkMetadata;
  v23 = [(HAPThreadNetworkMetadata *)&v39 init];
  if (v23)
  {
    v24 = [nameCopy copy];
    name = v23->_name;
    v23->_name = v24;

    v23->_channel = channel;
    v26 = [dCopy copy];
    PANID = v23->_PANID;
    v23->_PANID = v26;

    v28 = [iDCopy copy];
    extendedPANID = v23->_extendedPANID;
    v23->_extendedPANID = v28;

    v30 = [keyCopy copy];
    masterKey = v23->_masterKey;
    v23->_masterKey = v30;

    v32 = [phraseCopy copy];
    passPhrase = v23->_passPhrase;
    v23->_passPhrase = v32;

    v34 = [kcCopy copy];
    PSKc = v23->_PSKc;
    v23->_PSKc = v34;

    v36 = [setCopy copy];
    activeOperationalDataSet = v23->_activeOperationalDataSet;
    v23->_activeOperationalDataSet = v36;
  }

  return v23;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end