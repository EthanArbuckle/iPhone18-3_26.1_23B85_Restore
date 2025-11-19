@interface NSURL(GKFriendRequestAddition)
+ (id)_gkGenerateFriendRequestURL:()GKFriendRequestAddition;
@end

@implementation NSURL(GKFriendRequestAddition)

+ (id)_gkGenerateFriendRequestURL:()GKFriendRequestAddition
{
  v50[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 friendSupportPageURL];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCACE0]);
    v6 = [v3 friendSupportPageURL];
    v7 = [v5 initWithString:v6];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CCACE0]);
  }

  v8 = [v3 initiator];
  v9 = [v8 displayName];

  if (v9)
  {
    v49[0] = @"fc";
    v10 = [v3 friendCode];
    v50[0] = v10;
    v49[1] = @"rqs";
    v11 = [v3 friendRequestState];
    v50[1] = v11;
    v49[2] = @"pn";
    v12 = [v3 initiator];
    v13 = [v12 displayName];
    v50[2] = v13;
    v49[3] = @"pid";
    v14 = [v3 initiator];
    v15 = [v14 internal];
    v16 = [v15 playerID];
    v50[3] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];

    v46 = v17;
    v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:0];
    v19 = [v18 compressedDataUsingAlgorithm:3 error:0];
    v20 = [v19 base64EncodedStringWithOptions:0];
    v47 = v7;
    v21 = objc_alloc(MEMORY[0x277CCAD18]);
    v22 = [v3 friendRequestVersion];
    v23 = [v21 initWithName:@"vn" value:v22];
    v48[0] = v23;
    v24 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"zd" value:v20];
    v48[1] = v24;
    v25 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"pid" value:@"UnknownID"];
    v48[2] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
    [v7 setQueryItems:v26];

    v27 = [v7 URL];
    v28 = [v27 absoluteString];
    v29 = [v28 length];

    if (v29 >> 3 >= 0x271)
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = MEMORY[0x277CCABB0];
      v44 = [v27 absoluteString];
      v32 = [v31 numberWithUnsignedInteger:{objc_msgSend(v44, "length")}];
      v33 = [v27 absoluteString];
      [v30 stringWithFormat:@"messages url is too long: %@ - %@", v32, v33];
      v34 = v45 = v18;
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKUtils+FriendRequest.m"];
      [v35 lastPathComponent];
      v36 = v20;
      v38 = v37 = v19;
      v39 = [v30 stringWithFormat:@"%@ (generatedURL.absoluteString.length < messagesMaxURLLength)\n[%s (%s:%d)]", v34, "+[NSURL(GKFriendRequestAddition) _gkGenerateFriendRequestURL:]", objc_msgSend(v38, "UTF8String"), 74];

      v19 = v37;
      v20 = v36;

      v7 = v47;
      v18 = v45;

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v39}];
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v40 = GKOSLoggers();
    }

    v41 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [NSURL(GKFriendRequestAddition) _gkGenerateFriendRequestURL:v41];
    }

    v27 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v27;
}

@end