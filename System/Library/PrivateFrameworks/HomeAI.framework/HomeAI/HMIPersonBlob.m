@interface HMIPersonBlob
- (BOOL)isExpiredAtTimeStamp:(id *)a3;
- (CGRect)boundingBox;
- (HMIPersonBlob)initWithNewPersonEvent:(id)a3 timeStamp:(id *)a4;
- (float)similarityToPersonBlob:(id)a3;
- (id)shortDescription;
- (void)trackPersonBlob:(id)a3;
@end

@implementation HMIPersonBlob

- (HMIPersonBlob)initWithNewPersonEvent:(id)a3 timeStamp:(id *)a4
{
  v6 = a3;
  v27.receiver = self;
  v27.super_class = HMIPersonBlob;
  v7 = [(HMIPersonBlob *)&v27 init];
  v8 = v7;
  if (v7)
  {
    var3 = a4->var3;
    *(v7 + 40) = *&a4->var0;
    *(v7 + 7) = var3;
    v10 = [MEMORY[0x277CCAB58] indexSet];
    personIndices = v8->_personIndices;
    v8->_personIndices = v10;

    [v6 boundingBoxForTracker];
    v8->_boundingBox.origin.x = v12;
    v8->_boundingBox.origin.y = v13;
    v8->_boundingBox.size.width = v14;
    v8->_boundingBox.size.height = v15;
    v16 = [v6 face];
    v17 = [v16 faceRecognition];
    v18 = [v17 faceprint];
    faceprint = v8->_faceprint;
    v8->_faceprint = v18;

    v20 = [v6 torso];
    v21 = [v20 torsoRecognition];
    v22 = [v21 torsoprint];
    torsoprint = v8->_torsoprint;
    v8->_torsoprint = v22;

    v24 = [v6 sessionEntityUUID];
    v25 = v24;
    if (!v24)
    {
      v25 = [MEMORY[0x277CCAD78] UUID];
    }

    objc_storeStrong(&v8->_blobID, v25);
    if (!v24)
    {
    }
  }

  return v8;
}

- (void)trackPersonBlob:(id)a3
{
  v4 = [a3 blobID];
  [(HMIPersonBlob *)self setBlobID:v4];
}

- (float)similarityToPersonBlob:(id)a3
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMIPersonBlob *)self faceprint];
  v6 = 0.17;
  if (v5)
  {
    v7 = v5;
    v8 = [v4 faceprint];

    if (v8)
    {
      v9 = [(HMIPersonBlob *)self faceprint];
      v10 = [v9 data];
      v11 = [v4 faceprint];
      v12 = [v11 data];
      [HMIGreedyClustering faceDistanceFromDescriptor:v10 toDescriptor:v12];
      v6 = v13;
    }
  }

  v14 = [(HMIPersonBlob *)self torsoprint];
  v15 = 0.15;
  if (v14)
  {
    v16 = v14;
    v17 = [v4 torsoprint];

    if (v17)
    {
      v18 = [(HMIPersonBlob *)self torsoprint];
      v19 = [v18 data];
      v20 = [v4 torsoprint];
      v21 = [v20 data];
      [HMIGreedyClustering faceDistanceFromDescriptor:v19 toDescriptor:v21];
      v15 = v22;
    }
  }

  [(HMIPersonBlob *)self boundingBox];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [v4 boundingBox];
  v35 = HMICGRectGeneralizedIntersectionOverUnion(v24, v26, v28, v30, v31, v32, v33, v34);
  v36 = objc_autoreleasePoolPush();
  v37 = self;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v60 = HMFGetLogIdentifier();
    v61 = v36;
    if (v4)
    {
      [v4 timeStamp];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    [(HMIPersonBlob *)v37 timeStamp];
    v40 = CMTimeGetSeconds(&time);
    [v4 boundingBox];
    v45 = HMICGRectDescription(v41, v42, v43, v44);
    v59 = [v4 blobID];
    v58 = [v59 UUIDString];
    v46 = [v58 substringToIndex:3];
    [(HMIPersonBlob *)v37 boundingBox];
    v51 = HMICGRectDescription(v47, v48, v49, v50);
    v52 = [(HMIPersonBlob *)v37 blobID];
    v53 = [v52 UUIDString];
    v54 = [v53 substringToIndex:3];
    LODWORD(time.value) = 138546434;
    *(&time.value + 4) = v60;
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = Seconds;
    HIWORD(time.epoch) = 2048;
    v63 = v40;
    v64 = 2048;
    v65 = v6;
    v66 = 2048;
    v67 = 0x3FC5C28F60000000;
    v68 = 2048;
    v69 = v15;
    v70 = 2048;
    v71 = 0x3FC3333340000000;
    v72 = 2048;
    v73 = v35;
    v74 = 2048;
    v75 = 0xBFE0000000000000;
    v76 = 2112;
    v77 = v45;
    v78 = 2112;
    v79 = v46;
    v80 = 2112;
    v81 = v51;
    v82 = 2112;
    v83 = v54;
    _os_log_impl(&dword_22D12F000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Track(PTS:%.2f-%.2f), dF:%.2f(%.2f), dT:%.2f(%.2f), GIOU:%.2f(%.2f), %@(%@) vs %@(%@)", &time, 0x84u);

    v36 = v61;
  }

  objc_autoreleasePoolPop(v36);
  if (v6 >= 0.17)
  {
    v56 = 0.0;
    if (v35 > -0.5)
    {
      v56 = (v35 + 1.0) * 0.5;
    }

    if (v15 < 0.15)
    {
      v55 = ((v35 + 1.0) * 0.5) + 1.0;
    }

    else
    {
      v55 = v56;
    }
  }

  else
  {
    v55 = (1.0 - v6) + 2.0;
  }

  return v55;
}

- (BOOL)isExpiredAtTimeStamp:(id *)a3
{
  [(HMIPersonBlob *)self timeStamp];
  v5 = *a3;
  CMTimeSubtract(&time, &v5, &rhs);
  return CMTimeGetSeconds(&time) > 5.0;
}

- (id)shortDescription
{
  v21 = MEMORY[0x277CCACA8];
  [(HMIPersonBlob *)self timeStamp];
  Seconds = CMTimeGetSeconds(&time);
  v4 = [(HMIPersonBlob *)self blobID];
  v5 = [v4 UUIDString];
  v6 = [v5 substringToIndex:3];
  [(HMIPersonBlob *)self boundingBox];
  v11 = HMICGRectDescription(v7, v8, v9, v10);
  v12 = [(HMIPersonBlob *)self faceprint];
  v13 = @", ";
  if (!v12)
  {
    v20 = [(HMIPersonBlob *)self torsoprint];
    if (!v20)
    {
      v13 = &stru_284057FB8;
    }
  }

  v14 = [(HMIPersonBlob *)self faceprint];
  if (v14)
  {
    v15 = @"F";
  }

  else
  {
    v15 = &stru_284057FB8;
  }

  v16 = [(HMIPersonBlob *)self torsoprint];
  v17 = @"T";
  if (!v16)
  {
    v17 = &stru_284057FB8;
  }

  v18 = [v21 stringWithFormat:@"PersonBlob(PTS:%.2f): %@ (%@%@%@%@)", *&Seconds, v6, v11, v13, v15, v17];

  if (!v12)
  {
  }

  return v18;
}

- (CGRect)boundingBox
{
  objc_copyStruct(v6, &self->_boundingBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end