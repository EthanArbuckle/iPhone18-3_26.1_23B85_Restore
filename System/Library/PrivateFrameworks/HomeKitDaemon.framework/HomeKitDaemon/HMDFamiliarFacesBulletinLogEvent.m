@interface HMDFamiliarFacesBulletinLogEvent
- (HMDFamiliarFacesBulletinLogEvent)initWithContainsFaceClassification:(BOOL)a3 numberOfKnownPersons:(int64_t)a4 numberOfUnknownPersons:(int64_t)a5 bulletinReason:(id)a6 doorbellPressed:(BOOL)a7 secondsFromDoorbellToFaceClassification:(double)a8;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDFamiliarFacesBulletinLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v19[7] = *MEMORY[0x277D85DE8];
  v18[0] = @"containsFaceClassification_BOOL";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDFamiliarFacesBulletinLogEvent containsFaceClassification](self, "containsFaceClassification")}];
  v19[0] = v3;
  v18[1] = @"containsFaceClassification_INT";
  v4 = [(HMDFamiliarFacesBulletinLogEvent *)self containsFaceClassification];
  v5 = &unk_283E71858;
  if (v4)
  {
    v5 = &unk_283E71840;
  }

  v19[1] = v5;
  v18[2] = @"numberOfKnownPersons";
  v6 = +[HMDLogEventHistograms lowVolumeHistogram];
  v7 = [v6 intervalIndexForValue:{-[HMDFamiliarFacesBulletinLogEvent numberOfKnownPersons](self, "numberOfKnownPersons")}];
  v19[2] = v7;
  v18[3] = @"numberOfUnknownPersons";
  v8 = +[HMDLogEventHistograms lowVolumeHistogram];
  v9 = [v8 intervalIndexForValue:{-[HMDFamiliarFacesBulletinLogEvent numberOfUnknownPersons](self, "numberOfUnknownPersons")}];
  v19[3] = v9;
  v18[4] = @"bulletinReason";
  v10 = [(HMDFamiliarFacesBulletinLogEvent *)self bulletinReason];
  v19[4] = v10;
  v18[5] = @"doorbellPressed";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDFamiliarFacesBulletinLogEvent doorbellPressed](self, "doorbellPressed")}];
  v19[5] = v11;
  v18[6] = @"secondsFromDoorbellToFaceClassification";
  v12 = +[HMDLogEventHistograms lowVolumeHistogram];
  [(HMDFamiliarFacesBulletinLogEvent *)self secondsFromDoorbellToFaceClassification];
  v14 = [v12 intervalIndexForValue:v13];
  v19[6] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:7];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDFamiliarFacesBulletinLogEvent)initWithContainsFaceClassification:(BOOL)a3 numberOfKnownPersons:(int64_t)a4 numberOfUnknownPersons:(int64_t)a5 bulletinReason:(id)a6 doorbellPressed:(BOOL)a7 secondsFromDoorbellToFaceClassification:(double)a8
{
  v14 = a6;
  v20.receiver = self;
  v20.super_class = HMDFamiliarFacesBulletinLogEvent;
  v15 = [(HMMLogEvent *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_containsFaceClassification = a3;
    v15->_numberOfKnownPersons = a4;
    v15->_numberOfUnknownPersons = a5;
    v17 = [v14 copy];
    bulletinReason = v16->_bulletinReason;
    v16->_bulletinReason = v17;

    v16->_doorbellPressed = a7;
    v16->_secondsFromDoorbellToFaceClassification = a8;
  }

  return v16;
}

@end