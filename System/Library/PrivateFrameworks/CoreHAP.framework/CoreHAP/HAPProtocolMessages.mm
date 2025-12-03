@interface HAPProtocolMessages
+ (BOOL)_parseEmptyResponse:(id)response expectedTID:(unsigned __int8)d withHeader:(BOOL)header;
+ (BOOL)parseAuthChallengeResponse:(id)response expectedTID:(unsigned __int8)d outChallengeResponse:(id *)challengeResponse outMFICert:(id *)cert withHeader:(BOOL)header;
+ (BOOL)parseTokenResponse:(id)response expectedTID:(unsigned __int8)d withHeader:(BOOL)header outToken:(id *)token outUUID:(id *)iD;
+ (id)constructAuthChallengeRequest:(id)request nonce:(id)nonce outTID:(char *)d;
+ (id)constructInfoRequest:(id)request serviceUUID:(id)d outTID:(char *)iD;
+ (id)constructRequestHeaderFor:(unint64_t)for instanceID:(id)d outTID:(char *)iD;
+ (id)constructTokenUpdateRequest:(id)request token:(id)token outTID:(char *)d;
+ (id)logCategory;
+ (id)parseInfoResponse:(id)response expectedTID:(unsigned __int8)d withHeader:(BOOL)header;
@end

@implementation HAPProtocolMessages

+ (id)logCategory
{
  if (logCategory__hmf_once_t31 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31, &__block_literal_global_24881);
  }

  v3 = logCategory__hmf_once_v32;

  return v3;
}

uint64_t __34__HAPProtocolMessages_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v32 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)parseAuthChallengeResponse:(id)response expectedTID:(unsigned __int8)d outChallengeResponse:(id *)challengeResponse outMFICert:(id *)cert withHeader:(BOOL)header
{
  headerCopy = header;
  dCopy = d;
  v49 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v13 = responseCopy;
  if (headerCopy)
  {
    LOBYTE(v40) = 0;
    LOBYTE(v39) = 0;
    v42 = 0;
    LOWORD(v41) = [responseCopy length];
    v14 = _extractResponseHeaderFields(v13, &v40, &v39, &v42);

    if (v14)
    {
      if (v39 != dCopy)
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543874;
          v44 = v18;
          v45 = 1024;
          v46 = v39;
          v47 = 1024;
          v48 = dCopy;
          v19 = "%{public}@Unexpected TID: 0x%02x expected: 0x%02x";
          v20 = v17;
          v21 = 24;
          goto LABEL_12;
        }

        goto LABEL_13;
      }

      if (v42)
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543618;
          v44 = v18;
          v45 = 1024;
          v46 = v42;
          v19 = "%{public}@Unexpected Status: 0x%02x";
          v20 = v17;
          v21 = 18;
LABEL_12:
          _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
        }

LABEL_13:

        objc_autoreleasePoolPop(v15);
        v24 = 0;
LABEL_30:

        goto LABEL_31;
      }

      if ([v14 length] > 1)
      {
        [v14 getBytes:&v41 length:2];
        v13 = [v14 subdataWithRange:{2, objc_msgSend(v14, "length") - 2}];

        goto LABEL_16;
      }

      v15 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v17 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v18;
      v19 = "%{public}@Insufficient body length";
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v17 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v18;
      v19 = "%{public}@Failed parsing headers";
    }

    v20 = v17;
    v21 = 12;
    goto LABEL_12;
  }

LABEL_16:
  if (v13)
  {
    [v13 bytes];
    [v13 length];
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v25 = TLV8GetOrCopyCoalesced();
    if (v25)
    {
      v26 = v25;
      v27 = 0;
    }

    else
    {
      v28 = [MEMORY[0x277CBEA90] dataWithBytes:v41 length:v40];
      if (v39)
      {
        free(v39);
        v39 = 0;
      }

      if (challengeResponse)
      {
        v29 = v28;
        *challengeResponse = v28;
      }

      v30 = TLV8GetOrCopyCoalesced();
      if (!v30)
      {
        v27 = [MEMORY[0x277CBEA90] dataWithBytes:v41 length:v40];

        if (v39)
        {
          free(v39);
          v39 = 0;
        }

        if (cert)
        {
          v37 = v27;
          *cert = v27;
        }

        v24 = 1;
        goto LABEL_29;
      }

      v26 = v30;
      v27 = v28;
    }

    v31 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v34;
      v45 = 1024;
      v46 = v26;
      _os_log_impl(&dword_22AADC000, v33, OS_LOG_TYPE_DEBUG, "%{public}@Auth challenge response failed status: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v31);
    v24 = 0;
LABEL_29:

    v14 = v13;
    goto LABEL_30;
  }

  v24 = 0;
LABEL_31:
  v35 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)constructAuthChallengeRequest:(id)request nonce:(id)nonce outTID:(char *)d
{
  v34 = *MEMORY[0x277D85DE8];
  nonceCopy = nonce;
  v8 = [HAPProtocolMessages constructRequestHeaderFor:19 instanceID:request outTID:d];
  if (nonceCopy)
  {
    v12 = [nonceCopy length] + 2;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    TLV8BufferInit();
    [nonceCopy bytes];
    [nonceCopy length];
    if (TLV8BufferAppend())
    {
      TLV8BufferFree();
      v9 = 0;
      goto LABEL_6;
    }

    [v8 appendBytes:&v12 length:2];
    [v8 appendBytes:v13 length:?];
    TLV8BufferFree();
  }

  v9 = [v8 copy];
LABEL_6:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)parseInfoResponse:(id)response expectedTID:(unsigned __int8)d withHeader:(BOOL)header
{
  headerCopy = header;
  dCopy = d;
  v40 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v35 = 0;
  v34 = 0;
  v9 = [responseCopy length];
  v33 = v9;
  if (!headerCopy)
  {
    v18 = v9;
LABEL_8:
    if ([responseCopy length] == v18)
    {
      [responseCopy bytes];
      [responseCopy length];
      v19 = TLV8GetOrCopyCoalesced();
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = -6743;
      }
    }

    else
    {
      v20 = -6742;
    }

    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v30;
      v38 = 1024;
      *v39 = v20;
      _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Acc Info Response failed status: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v27);
    goto LABEL_29;
  }

  v10 = _extractResponseHeaderFields(responseCopy, &v35 + 1, &v35, &v34);

  if (v10)
  {
    if (v35 != dCopy)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v26;
        v38 = 1024;
        *v39 = v35;
        *&v39[4] = 1024;
        *&v39[6] = dCopy;
        _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unexpected TID: 0x%02x expected: 0x%02x", buf, 0x18u);
      }

      goto LABEL_28;
    }

    if (v34)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v14;
        v38 = 1024;
        *v39 = v34;
        v15 = "%{public}@Unexpected Status: 0x%02x";
        v16 = v13;
        v17 = 18;
LABEL_26:
        _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);

        goto LABEL_27;
      }

      goto LABEL_27;
    }

    if ([v10 length] < 2)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v14;
        v15 = "%{public}@Insufficient body length";
        v16 = v13;
        v17 = 12;
        goto LABEL_26;
      }

LABEL_27:

LABEL_28:
      objc_autoreleasePoolPop(v11);

      goto LABEL_29;
    }

    [v10 getBytes:&v33 length:2];
    responseCopy = [v10 subdataWithRange:{2, objc_msgSend(v10, "length") - 2}];

    v18 = v33;
    goto LABEL_8;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v24;
    _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed parsing headers", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v21);
LABEL_29:
  v31 = *MEMORY[0x277D85DE8];

  return 0;
}

+ (BOOL)_parseEmptyResponse:(id)response expectedTID:(unsigned __int8)d withHeader:(BOOL)header
{
  headerCopy = header;
  dCopy = d;
  v31 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v9 = responseCopy;
  v24 = 0;
  v23 = 0;
  if (headerCopy)
  {
    v10 = _extractResponseHeaderFields(responseCopy, &v24 + 1, &v24, &v23);
    if (!v10)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v18;
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed parsing headers", buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_14;
    }

    v11 = v10;
    if (v24 != dCopy)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543874;
        v26 = v20;
        v27 = 1024;
        v28 = v24;
        v29 = 1024;
        v30 = dCopy;
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpected TID: 0x%02x expected: 0x%02x", buf, 0x18u);
      }

      goto LABEL_14;
    }

    if (v23)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v15;
        v27 = 1024;
        v28 = v23;
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpected Status: 0x%02x", buf, 0x12u);
      }

LABEL_14:

      objc_autoreleasePoolPop(v12);
      v16 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = 1;
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (BOOL)parseTokenResponse:(id)response expectedTID:(unsigned __int8)d withHeader:(BOOL)header outToken:(id *)token outUUID:(id *)iD
{
  headerCopy = header;
  dCopy = d;
  v40 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v35 = 0;
  v34 = 0;
  v11 = [responseCopy length];
  v33 = v11;
  if (!headerCopy)
  {
    v20 = v11;
LABEL_8:
    if ([responseCopy length] == v20)
    {
      [responseCopy bytes];
      [responseCopy length];
      v21 = TLV8GetOrCopyCoalesced();
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = -6743;
      }
    }

    else
    {
      v22 = -6742;
    }

    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v26;
      v38 = 2048;
      *v39 = v22;
      _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Auth response failed status: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    goto LABEL_22;
  }

  v12 = _extractResponseHeaderFields(responseCopy, &v35 + 1, &v35, &v34);

  if (v12)
  {
    if (v35 != dCopy)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v16;
        v38 = 1024;
        *v39 = v35;
        *&v39[4] = 1024;
        *&v39[6] = dCopy;
        v17 = "%{public}@Unexpected TID: 0x%02x expected: 0x%02x";
        v18 = v15;
        v19 = 24;
        goto LABEL_20;
      }

LABEL_21:

      objc_autoreleasePoolPop(v13);
      goto LABEL_22;
    }

    if (v34)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v16;
        v38 = 1024;
        *v39 = v34;
        v17 = "%{public}@Unexpected Status: 0x%02x";
        v18 = v15;
        v19 = 18;
LABEL_20:
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);

        goto LABEL_21;
      }

      goto LABEL_21;
    }

    if ([v12 length] < 2)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v15 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v16;
      v17 = "%{public}@Insufficient body length";
      v18 = v15;
      v19 = 12;
      goto LABEL_20;
    }

    [v12 getBytes:&v33 length:2];
    responseCopy = [v12 subdataWithRange:{2, objc_msgSend(v12, "length") - 2}];

    v20 = v33;
    goto LABEL_8;
  }

  v27 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v30;
    _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed parsing headers", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
LABEL_22:
  result = 0;
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)constructRequestHeaderFor:(unint64_t)for instanceID:(id)d outTID:(char *)iD
{
  forCopy = for;
  v6 = MEMORY[0x277CBEB28];
  dCopy = d;
  v8 = [v6 dataWithCapacity:5];
  v15 = 0;
  [v8 appendBytes:&v15 length:1];
  [v8 appendBytes:&forCopy length:1];
  v9 = +[HAPBTLETransactionIdentifier randomTransactionIdentifier];
  unsignedCharValue = [v9 unsignedCharValue];

  v14 = unsignedCharValue;
  [v8 appendBytes:&v14 length:1];
  if (iD)
  {
    *iD = v14;
  }

  unsignedShortValue = [dCopy unsignedShortValue];

  v13 = unsignedShortValue;
  [v8 appendBytes:&v13 length:2];

  return v8;
}

+ (id)constructTokenUpdateRequest:(id)request token:(id)token outTID:(char *)d
{
  v63 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  tokenCopy = token;
  v8 = [tokenCopy length];
  v9 = v8 / 0xFFu;
  v10 = v8 % 0xFFu;
  if (v8 % 0xFFu)
  {
    LOBYTE(v9) = v9 + 1;
  }

  v11 = v9;
  v36 = v8 + 2 * v9;
  v33 = requestCopy;
  v32 = [HAPProtocolMessages constructRequestHeaderFor:17 instanceID:requestCopy outTID:d];
  [v32 appendBytes:&v36 length:2];
  TLV8BufferInit();
  if (v11)
  {
    v12 = 0;
    v13 = 255 * (v11 - 1);
    v14 = 255 * v11;
    while (1)
    {
      if (v10)
      {
        v15 = v13 == v12;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v16 = v10;
      }

      else
      {
        v16 = -1;
      }

      v17 = v16;
      [tokenCopy getBytes:v41 range:{v12, v16}];
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v21;
        v39 = 1024;
        v40 = v17;
        _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Adding token TLV length: %u", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = TLV8BufferAppend();
      if (v22)
      {
        break;
      }

      v12 += 255;
      if (v14 == v12)
      {
        goto LABEL_15;
      }
    }

    v25 = v22;
    TLV8BufferFree();
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v29;
      v39 = 1024;
      v40 = v25;
      _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to construct token update request status: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v26);
    v24 = 0;
    v23 = v32;
  }

  else
  {
LABEL_15:
    v23 = v32;
    [v32 appendBytes:v42 length:?];
    TLV8BufferFree();
    v24 = v32;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)constructInfoRequest:(id)request serviceUUID:(id)d outTID:(char *)iD
{
  v35 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  dCopy = d;
  v8 = [HAPProtocolMessages constructRequestHeaderFor:18 instanceID:request outTID:iD];
  v12 = 18;
  [v8 appendBytes:&v12 length:2];
  TLV8BufferInit();
  [dCopy getUUIDBytes:v13];

  if (TLV8BufferAppend())
  {
    TLV8BufferFree();
    v9 = 0;
  }

  else
  {
    [v8 appendBytes:v14 length:?];
    TLV8BufferFree();
    v9 = v8;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end