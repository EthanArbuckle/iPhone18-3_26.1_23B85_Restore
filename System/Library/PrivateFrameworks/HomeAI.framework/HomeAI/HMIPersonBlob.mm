@interface HMIPersonBlob
- (BOOL)isExpiredAtTimeStamp:(id *)stamp;
- (CGRect)boundingBox;
- (HMIPersonBlob)initWithNewPersonEvent:(id)event timeStamp:(id *)stamp;
- (float)similarityToPersonBlob:(id)blob;
- (id)shortDescription;
- (void)trackPersonBlob:(id)blob;
@end

@implementation HMIPersonBlob

- (HMIPersonBlob)initWithNewPersonEvent:(id)event timeStamp:(id *)stamp
{
  eventCopy = event;
  v27.receiver = self;
  v27.super_class = HMIPersonBlob;
  v7 = [(HMIPersonBlob *)&v27 init];
  v8 = v7;
  if (v7)
  {
    var3 = stamp->var3;
    *(v7 + 40) = *&stamp->var0;
    *(v7 + 7) = var3;
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    personIndices = v8->_personIndices;
    v8->_personIndices = indexSet;

    [eventCopy boundingBoxForTracker];
    v8->_boundingBox.origin.x = v12;
    v8->_boundingBox.origin.y = v13;
    v8->_boundingBox.size.width = v14;
    v8->_boundingBox.size.height = v15;
    face = [eventCopy face];
    faceRecognition = [face faceRecognition];
    faceprint = [faceRecognition faceprint];
    faceprint = v8->_faceprint;
    v8->_faceprint = faceprint;

    torso = [eventCopy torso];
    torsoRecognition = [torso torsoRecognition];
    torsoprint = [torsoRecognition torsoprint];
    torsoprint = v8->_torsoprint;
    v8->_torsoprint = torsoprint;

    sessionEntityUUID = [eventCopy sessionEntityUUID];
    uUID = sessionEntityUUID;
    if (!sessionEntityUUID)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    objc_storeStrong(&v8->_blobID, uUID);
    if (!sessionEntityUUID)
    {
    }
  }

  return v8;
}

- (void)trackPersonBlob:(id)blob
{
  blobID = [blob blobID];
  [(HMIPersonBlob *)self setBlobID:blobID];
}

- (float)similarityToPersonBlob:(id)blob
{
  v84 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  faceprint = [(HMIPersonBlob *)self faceprint];
  v6 = 0.17;
  if (faceprint)
  {
    v7 = faceprint;
    faceprint2 = [blobCopy faceprint];

    if (faceprint2)
    {
      faceprint3 = [(HMIPersonBlob *)self faceprint];
      data = [faceprint3 data];
      faceprint4 = [blobCopy faceprint];
      data2 = [faceprint4 data];
      [HMIGreedyClustering faceDistanceFromDescriptor:data toDescriptor:data2];
      v6 = v13;
    }
  }

  torsoprint = [(HMIPersonBlob *)self torsoprint];
  v15 = 0.15;
  if (torsoprint)
  {
    v16 = torsoprint;
    torsoprint2 = [blobCopy torsoprint];

    if (torsoprint2)
    {
      torsoprint3 = [(HMIPersonBlob *)self torsoprint];
      data3 = [torsoprint3 data];
      torsoprint4 = [blobCopy torsoprint];
      data4 = [torsoprint4 data];
      [HMIGreedyClustering faceDistanceFromDescriptor:data3 toDescriptor:data4];
      v15 = v22;
    }
  }

  [(HMIPersonBlob *)self boundingBox];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [blobCopy boundingBox];
  v35 = HMICGRectGeneralizedIntersectionOverUnion(v24, v26, v28, v30, v31, v32, v33, v34);
  v36 = objc_autoreleasePoolPush();
  selfCopy = self;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v60 = HMFGetLogIdentifier();
    v61 = v36;
    if (blobCopy)
    {
      [blobCopy timeStamp];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    [(HMIPersonBlob *)selfCopy timeStamp];
    v40 = CMTimeGetSeconds(&time);
    [blobCopy boundingBox];
    v45 = HMICGRectDescription(v41, v42, v43, v44);
    blobID = [blobCopy blobID];
    uUIDString = [blobID UUIDString];
    v46 = [uUIDString substringToIndex:3];
    [(HMIPersonBlob *)selfCopy boundingBox];
    v51 = HMICGRectDescription(v47, v48, v49, v50);
    blobID2 = [(HMIPersonBlob *)selfCopy blobID];
    uUIDString2 = [blobID2 UUIDString];
    v54 = [uUIDString2 substringToIndex:3];
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

- (BOOL)isExpiredAtTimeStamp:(id *)stamp
{
  [(HMIPersonBlob *)self timeStamp];
  v5 = *stamp;
  CMTimeSubtract(&time, &v5, &rhs);
  return CMTimeGetSeconds(&time) > 5.0;
}

- (id)shortDescription
{
  v21 = MEMORY[0x277CCACA8];
  [(HMIPersonBlob *)self timeStamp];
  Seconds = CMTimeGetSeconds(&time);
  blobID = [(HMIPersonBlob *)self blobID];
  uUIDString = [blobID UUIDString];
  v6 = [uUIDString substringToIndex:3];
  [(HMIPersonBlob *)self boundingBox];
  v11 = HMICGRectDescription(v7, v8, v9, v10);
  faceprint = [(HMIPersonBlob *)self faceprint];
  v13 = @", ";
  if (!faceprint)
  {
    torsoprint = [(HMIPersonBlob *)self torsoprint];
    if (!torsoprint)
    {
      v13 = &stru_284057FB8;
    }
  }

  faceprint2 = [(HMIPersonBlob *)self faceprint];
  if (faceprint2)
  {
    v15 = @"F";
  }

  else
  {
    v15 = &stru_284057FB8;
  }

  torsoprint2 = [(HMIPersonBlob *)self torsoprint];
  v17 = @"T";
  if (!torsoprint2)
  {
    v17 = &stru_284057FB8;
  }

  v18 = [v21 stringWithFormat:@"PersonBlob(PTS:%.2f): %@ (%@%@%@%@)", *&Seconds, v6, v11, v13, v15, v17];

  if (!faceprint)
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