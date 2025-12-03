@interface SignificantActivityFcosOutput
- (SignificantActivityFcosOutput)initWithHomeSSD_class_prob0:(id)d_class_prob0 HomeSSD_box0_offset0:(id)d_box0_offset0 HomeSSD_box1_offset0:(id)d_box1_offset0 HomeSSD_object_roll0:(id)d_object_roll0 HomeSSD_object_yaw0:(id)d_object_yaw0 HomeSSD_class_prob1:(id)d_class_prob1 HomeSSD_box0_offset1:(id)d_box0_offset1 HomeSSD_box1_offset1:(id)self0 HomeSSD_object_roll1:(id)self1 HomeSSD_object_yaw1:(id)self2 HomeSSD_class_prob2:(id)self3 HomeSSD_box0_offset2:(id)self4 HomeSSD_box1_offset2:(id)self5 HomeSSD_object_roll2:(id)self6 HomeSSD_object_yaw2:(id)self7 HomeSSD_class_prob3:(id)self8 HomeSSD_box0_offset3:(id)self9 HomeSSD_box1_offset3:(id)d_box1_offset3 HomeSSD_object_roll3:(id)d_object_roll3 HomeSSD_object_yaw3:(id)d_object_yaw3 HomeSSD_class_prob4:(id)d_class_prob4 HomeSSD_box0_offset4:(id)d_box0_offset4 HomeSSD_box1_offset4:(id)d_box1_offset4 HomeSSD_object_roll4:(id)d_object_roll4 HomeSSD_object_yaw4:(id)d_object_yaw4;
- (id)featureValueForName:(id)name;
@end

@implementation SignificantActivityFcosOutput

- (SignificantActivityFcosOutput)initWithHomeSSD_class_prob0:(id)d_class_prob0 HomeSSD_box0_offset0:(id)d_box0_offset0 HomeSSD_box1_offset0:(id)d_box1_offset0 HomeSSD_object_roll0:(id)d_object_roll0 HomeSSD_object_yaw0:(id)d_object_yaw0 HomeSSD_class_prob1:(id)d_class_prob1 HomeSSD_box0_offset1:(id)d_box0_offset1 HomeSSD_box1_offset1:(id)self0 HomeSSD_object_roll1:(id)self1 HomeSSD_object_yaw1:(id)self2 HomeSSD_class_prob2:(id)self3 HomeSSD_box0_offset2:(id)self4 HomeSSD_box1_offset2:(id)self5 HomeSSD_object_roll2:(id)self6 HomeSSD_object_yaw2:(id)self7 HomeSSD_class_prob3:(id)self8 HomeSSD_box0_offset3:(id)self9 HomeSSD_box1_offset3:(id)d_box1_offset3 HomeSSD_object_roll3:(id)d_object_roll3 HomeSSD_object_yaw3:(id)d_object_yaw3 HomeSSD_class_prob4:(id)d_class_prob4 HomeSSD_box0_offset4:(id)d_box0_offset4 HomeSSD_box1_offset4:(id)d_box1_offset4 HomeSSD_object_roll4:(id)d_object_roll4 HomeSSD_object_yaw4:(id)d_object_yaw4
{
  d_class_prob0Copy = d_class_prob0;
  d_box0_offset0Copy = d_box0_offset0;
  d_box0_offset0Copy2 = d_box0_offset0;
  d_box1_offset0Copy = d_box1_offset0;
  d_object_roll0Copy = d_object_roll0;
  d_object_yaw0Copy = d_object_yaw0;
  d_class_prob1Copy = d_class_prob1;
  d_box0_offset1Copy = d_box0_offset1;
  d_box1_offset1Copy = d_box1_offset1;
  d_object_roll1Copy = d_object_roll1;
  d_object_yaw1Copy = d_object_yaw1;
  d_class_prob2Copy = d_class_prob2;
  d_box0_offset2Copy = d_box0_offset2;
  d_box1_offset2Copy = d_box1_offset2;
  d_object_roll2Copy = d_object_roll2;
  d_object_yaw2Copy = d_object_yaw2;
  d_class_prob3Copy = d_class_prob3;
  d_box0_offset3Copy = d_box0_offset3;
  d_box1_offset3Copy = d_box1_offset3;
  d_object_roll3Copy = d_object_roll3;
  d_object_yaw3Copy = d_object_yaw3;
  d_class_prob4Copy = d_class_prob4;
  d_box0_offset4Copy = d_box0_offset4;
  d_box1_offset4Copy = d_box1_offset4;
  d_object_roll4Copy = d_object_roll4;
  d_object_yaw4Copy = d_object_yaw4;
  v63.receiver = self;
  v63.super_class = SignificantActivityFcosOutput;
  v37 = [(SignificantActivityFcosOutput *)&v63 init];
  v38 = v37;
  if (v37)
  {
    objc_storeStrong(&v37->_HomeSSD_class_prob0, d_class_prob0);
    objc_storeStrong(&v38->_HomeSSD_box0_offset0, d_box0_offset0Copy);
    objc_storeStrong(&v38->_HomeSSD_box1_offset0, d_box1_offset0);
    objc_storeStrong(&v38->_HomeSSD_object_roll0, d_object_roll0);
    objc_storeStrong(&v38->_HomeSSD_object_yaw0, d_object_yaw0);
    objc_storeStrong(&v38->_HomeSSD_class_prob1, d_class_prob1);
    objc_storeStrong(&v38->_HomeSSD_box0_offset1, d_box0_offset1);
    objc_storeStrong(&v38->_HomeSSD_box1_offset1, d_box1_offset1);
    objc_storeStrong(&v38->_HomeSSD_object_roll1, d_object_roll1);
    objc_storeStrong(&v38->_HomeSSD_object_yaw1, d_object_yaw1);
    objc_storeStrong(&v38->_HomeSSD_class_prob2, d_class_prob2);
    objc_storeStrong(&v38->_HomeSSD_box0_offset2, d_box0_offset2);
    objc_storeStrong(&v38->_HomeSSD_box1_offset2, d_box1_offset2);
    objc_storeStrong(&v38->_HomeSSD_object_roll2, d_object_roll2);
    objc_storeStrong(&v38->_HomeSSD_object_yaw2, d_object_yaw2);
    objc_storeStrong(&v38->_HomeSSD_class_prob3, d_class_prob3);
    objc_storeStrong(&v38->_HomeSSD_box0_offset3, d_box0_offset3);
    objc_storeStrong(&v38->_HomeSSD_box1_offset3, d_box1_offset3);
    objc_storeStrong(&v38->_HomeSSD_object_roll3, d_object_roll3);
    objc_storeStrong(&v38->_HomeSSD_object_yaw3, d_object_yaw3);
    objc_storeStrong(&v38->_HomeSSD_class_prob4, d_class_prob4);
    objc_storeStrong(&v38->_HomeSSD_box0_offset4, d_box0_offset4);
    objc_storeStrong(&v38->_HomeSSD_box1_offset4, d_box1_offset4);
    objc_storeStrong(&v38->_HomeSSD_object_roll4, d_object_roll4);
    objc_storeStrong(&v38->_HomeSSD_object_yaw4, d_object_yaw4);
  }

  return v38;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"HomeSSD_class_prob0"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_class_prob0];
LABEL_51:
    v7 = homeSSD_class_prob0;
    v8 = [v5 featureValueWithMultiArray:homeSSD_class_prob0];

    goto LABEL_52;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_box0_offset0"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_box0_offset0];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_box1_offset0"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_box1_offset0];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_object_roll0"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_object_roll0];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_object_yaw0"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_object_yaw0];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_class_prob1"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_class_prob1];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_box0_offset1"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_box0_offset1];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_box1_offset1"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_box1_offset1];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_object_roll1"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_object_roll1];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_object_yaw1"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_object_yaw1];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_class_prob2"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_class_prob2];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_box0_offset2"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_box0_offset2];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_box1_offset2"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_box1_offset2];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_object_roll2"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_object_roll2];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_object_yaw2"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_object_yaw2];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_class_prob3"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_class_prob3];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_box0_offset3"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_box0_offset3];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_box1_offset3"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_box1_offset3];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_object_roll3"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_object_roll3];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_object_yaw3"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_object_yaw3];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_class_prob4"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_class_prob4];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_box0_offset4"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_box0_offset4];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_box1_offset4"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_box1_offset4];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_object_roll4"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_object_roll4];
    goto LABEL_51;
  }

  if ([nameCopy isEqualToString:@"HomeSSD_object_yaw4"])
  {
    v5 = MEMORY[0x277CBFEF8];
    homeSSD_class_prob0 = [(SignificantActivityFcosOutput *)self HomeSSD_object_yaw4];
    goto LABEL_51;
  }

  v8 = 0;
LABEL_52:

  return v8;
}

@end