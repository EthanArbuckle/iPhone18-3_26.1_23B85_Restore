@interface SignificantActivityFcosOutput
- (SignificantActivityFcosOutput)initWithHomeSSD_class_prob0:(id)a3 HomeSSD_box0_offset0:(id)a4 HomeSSD_box1_offset0:(id)a5 HomeSSD_object_roll0:(id)a6 HomeSSD_object_yaw0:(id)a7 HomeSSD_class_prob1:(id)a8 HomeSSD_box0_offset1:(id)a9 HomeSSD_box1_offset1:(id)a10 HomeSSD_object_roll1:(id)a11 HomeSSD_object_yaw1:(id)a12 HomeSSD_class_prob2:(id)a13 HomeSSD_box0_offset2:(id)a14 HomeSSD_box1_offset2:(id)a15 HomeSSD_object_roll2:(id)a16 HomeSSD_object_yaw2:(id)a17 HomeSSD_class_prob3:(id)a18 HomeSSD_box0_offset3:(id)a19 HomeSSD_box1_offset3:(id)a20 HomeSSD_object_roll3:(id)a21 HomeSSD_object_yaw3:(id)a22 HomeSSD_class_prob4:(id)a23 HomeSSD_box0_offset4:(id)a24 HomeSSD_box1_offset4:(id)a25 HomeSSD_object_roll4:(id)a26 HomeSSD_object_yaw4:(id)a27;
- (id)featureValueForName:(id)a3;
@end

@implementation SignificantActivityFcosOutput

- (SignificantActivityFcosOutput)initWithHomeSSD_class_prob0:(id)a3 HomeSSD_box0_offset0:(id)a4 HomeSSD_box1_offset0:(id)a5 HomeSSD_object_roll0:(id)a6 HomeSSD_object_yaw0:(id)a7 HomeSSD_class_prob1:(id)a8 HomeSSD_box0_offset1:(id)a9 HomeSSD_box1_offset1:(id)a10 HomeSSD_object_roll1:(id)a11 HomeSSD_object_yaw1:(id)a12 HomeSSD_class_prob2:(id)a13 HomeSSD_box0_offset2:(id)a14 HomeSSD_box1_offset2:(id)a15 HomeSSD_object_roll2:(id)a16 HomeSSD_object_yaw2:(id)a17 HomeSSD_class_prob3:(id)a18 HomeSSD_box0_offset3:(id)a19 HomeSSD_box1_offset3:(id)a20 HomeSSD_object_roll3:(id)a21 HomeSSD_object_yaw3:(id)a22 HomeSSD_class_prob4:(id)a23 HomeSSD_box0_offset4:(id)a24 HomeSSD_box1_offset4:(id)a25 HomeSSD_object_roll4:(id)a26 HomeSSD_object_yaw4:(id)a27
{
  v62 = a3;
  v41 = a4;
  v61 = a4;
  v60 = a5;
  v59 = a6;
  v58 = a7;
  v57 = a8;
  v56 = a9;
  v55 = a10;
  v54 = a11;
  v53 = a12;
  v52 = a13;
  v51 = a14;
  v50 = a15;
  v49 = a16;
  v48 = a17;
  v32 = a18;
  v33 = a19;
  v34 = a20;
  v35 = a21;
  v47 = a22;
  v46 = a23;
  v45 = a24;
  v44 = a25;
  v43 = a26;
  v36 = a27;
  v63.receiver = self;
  v63.super_class = SignificantActivityFcosOutput;
  v37 = [(SignificantActivityFcosOutput *)&v63 init];
  v38 = v37;
  if (v37)
  {
    objc_storeStrong(&v37->_HomeSSD_class_prob0, a3);
    objc_storeStrong(&v38->_HomeSSD_box0_offset0, v41);
    objc_storeStrong(&v38->_HomeSSD_box1_offset0, a5);
    objc_storeStrong(&v38->_HomeSSD_object_roll0, a6);
    objc_storeStrong(&v38->_HomeSSD_object_yaw0, a7);
    objc_storeStrong(&v38->_HomeSSD_class_prob1, a8);
    objc_storeStrong(&v38->_HomeSSD_box0_offset1, a9);
    objc_storeStrong(&v38->_HomeSSD_box1_offset1, a10);
    objc_storeStrong(&v38->_HomeSSD_object_roll1, a11);
    objc_storeStrong(&v38->_HomeSSD_object_yaw1, a12);
    objc_storeStrong(&v38->_HomeSSD_class_prob2, a13);
    objc_storeStrong(&v38->_HomeSSD_box0_offset2, a14);
    objc_storeStrong(&v38->_HomeSSD_box1_offset2, a15);
    objc_storeStrong(&v38->_HomeSSD_object_roll2, a16);
    objc_storeStrong(&v38->_HomeSSD_object_yaw2, a17);
    objc_storeStrong(&v38->_HomeSSD_class_prob3, a18);
    objc_storeStrong(&v38->_HomeSSD_box0_offset3, a19);
    objc_storeStrong(&v38->_HomeSSD_box1_offset3, a20);
    objc_storeStrong(&v38->_HomeSSD_object_roll3, a21);
    objc_storeStrong(&v38->_HomeSSD_object_yaw3, a22);
    objc_storeStrong(&v38->_HomeSSD_class_prob4, a23);
    objc_storeStrong(&v38->_HomeSSD_box0_offset4, a24);
    objc_storeStrong(&v38->_HomeSSD_box1_offset4, a25);
    objc_storeStrong(&v38->_HomeSSD_object_roll4, a26);
    objc_storeStrong(&v38->_HomeSSD_object_yaw4, a27);
  }

  return v38;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"HomeSSD_class_prob0"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_class_prob0];
LABEL_51:
    v7 = v6;
    v8 = [v5 featureValueWithMultiArray:v6];

    goto LABEL_52;
  }

  if ([v4 isEqualToString:@"HomeSSD_box0_offset0"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_box0_offset0];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_box1_offset0"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_box1_offset0];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_object_roll0"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_object_roll0];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_object_yaw0"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_object_yaw0];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_class_prob1"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_class_prob1];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_box0_offset1"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_box0_offset1];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_box1_offset1"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_box1_offset1];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_object_roll1"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_object_roll1];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_object_yaw1"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_object_yaw1];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_class_prob2"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_class_prob2];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_box0_offset2"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_box0_offset2];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_box1_offset2"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_box1_offset2];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_object_roll2"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_object_roll2];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_object_yaw2"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_object_yaw2];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_class_prob3"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_class_prob3];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_box0_offset3"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_box0_offset3];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_box1_offset3"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_box1_offset3];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_object_roll3"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_object_roll3];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_object_yaw3"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_object_yaw3];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_class_prob4"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_class_prob4];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_box0_offset4"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_box0_offset4];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_box1_offset4"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_box1_offset4];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_object_roll4"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_object_roll4];
    goto LABEL_51;
  }

  if ([v4 isEqualToString:@"HomeSSD_object_yaw4"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(SignificantActivityFcosOutput *)self HomeSSD_object_yaw4];
    goto LABEL_51;
  }

  v8 = 0;
LABEL_52:

  return v8;
}

@end