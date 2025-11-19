@interface HMDCameraMediaConfigGenerator
+ (id)logCategory;
- (BOOL)_loadAVCAudioStreamConfig:(id)a3 protocolParameters:(id)a4;
- (BOOL)_loadAVCVideoStreamConfig:(id)a3 protocolParameters:(id)a4;
- (BOOL)_loadConfig:(id)a3 cipherCuite:(id)a4;
- (BOOL)extractReselectedConfigFromVideoTier:(id)a3 videoStreamConfig:(id *)a4;
- (BOOL)extractSelectedConfigFromProtocolParameters:(id)a3 videoStreamConfig:(id *)a4 audioStreamConfig:(id *)a5;
- (void)_loadConfig:(id)a3 sendSrtpParameters:(id)a4 receiveSrtpParameters:(id)a5;
- (void)_loadMiscConfig:(id)a3;
@end

@implementation HMDCameraMediaConfigGenerator

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_73448 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_73448, &__block_literal_global_73449);
  }

  v3 = logCategory__hmf_once_v9_73450;

  return v3;
}

void __44__HMDCameraMediaConfigGenerator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_73450;
  logCategory__hmf_once_v9_73450 = v1;
}

- (void)_loadMiscConfig:(id)a3
{
  v3 = a3;
  [v3 setRtcpEnabled:1];
  [v3 setRtcpTimeOutEnabled:1];
  [v3 setRtcpTimeOutInterval:30.0];
  [v3 setRtpTimeOutEnabled:1];
  [v3 setRtpTimeOutInterval:30.0];
  [v3 setRateAdaptationEnabled:1];
}

- (BOOL)_loadConfig:(id)a3 cipherCuite:(id)a4
{
  v5 = a3;
  v6 = [a4 srtpCryptoSuite];
  v7 = (&unk_22A5878E0 + 8 * v6);
  if (v6 >= 3)
  {
    v7 = &kIPCameraUnknownParameter;
  }

  v8 = *v7;
  if (*v7 != -1)
  {
    [v5 setSRTPCipherSuite:*v7];
    [v5 setSRTCPCipherSuite:v8];
  }

  return v8 != -1;
}

- (void)_loadConfig:(id)a3 sendSrtpParameters:(id)a4 receiveSrtpParameters:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v8 srtpMasterKey];
  v11 = [v10 mutableCopy];

  v12 = [v8 srtpMasterSalt];

  [v11 appendData:v12];
  [v9 setSendMasterKey:v11];
  v13 = [v7 srtpMasterKey];
  v15 = [v13 mutableCopy];

  v14 = [v7 srtpMasterSalt];

  [v15 appendData:v14];
  [v9 setReceiveMasterKey:v15];
}

- (BOOL)extractReselectedConfigFromVideoTier:(id)a3 videoStreamConfig:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(HMDVideoStreamConfig);
  v7 = [v5 videoResolution];
  v8 = [v7 resolutionType];
  if ((v8 - 1) >= 0x1D)
  {
    v9 = &kIPCameraUnknownParameter;
  }

  else
  {
    v9 = (&unk_22A5877F8 + 8 * v8 - 8);
  }

  v10 = *v9;

  if (v10 == -1)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to translate image resolution", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }

  else
  {
    v11 = [(AVCMediaStreamConfig *)v6 video];
    [v11 setVideoResolution:v10];

    v12 = [v5 framerate];
    v13 = [v12 unsignedIntegerValue];
    v14 = [(AVCMediaStreamConfig *)v6 video];
    [v14 setFramerate:v13];

    v15 = [v5 maxBitRate];
    v16 = [v15 unsignedIntegerValue];
    v17 = [(AVCMediaStreamConfig *)v6 video];
    [v17 setRxMaxBitrate:v16];

    v18 = [v5 minBitRate];
    v19 = [v18 unsignedIntegerValue];
    v20 = [(AVCMediaStreamConfig *)v6 video];
    [v20 setRxMinBitrate:v19];

    v21 = v6;
    *a4 = v6;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v10 != -1;
}

- (BOOL)_loadAVCVideoStreamConfig:(id)a3 protocolParameters:(id)a4
{
  v105 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 selectedStreamConfigurationWrite];
  v9 = [v8 videoParameters];
  v10 = [v9 codec];
  v11 = [v10 codecType];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v7 selectedStreamConfigurationWrite];
      v16 = [v15 videoParameters];
      v17 = [v16 codec];
      v101 = 138543618;
      v102 = v14;
      v103 = 2048;
      v104 = [v17 decodedNumber];
      v18 = "%{public}@Failed to translate to video codec type from %lu";
LABEL_4:
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, v18, &v101, 0x16u);

LABEL_5:
    }
  }

  else
  {
    v22 = [v6 video];
    [v22 setTxCodecType:0];

    v23 = [v6 video];
    [v23 setRxCodecType:0];

    v24 = [v7 selectedStreamConfigurationWrite];
    v25 = [v24 videoParameters];
    v26 = [v25 rtpParameters];
    v27 = [v26 payloadType];
    [v6 setTxPayloadType:{objc_msgSend(v27, "unsignedIntegerValue")}];

    v28 = [v7 selectedStreamConfigurationWrite];
    v29 = [v28 videoParameters];
    v30 = [v29 rtpParameters];
    v31 = [v30 payloadType];
    [v6 setRxPayloadType:{objc_msgSend(v31, "unsignedIntegerValue")}];

    [v6 setDirection:2];
    v32 = [v7 selectedStreamConfigurationWrite];
    v33 = [v32 videoParameters];
    v34 = [v33 videoAttributes];
    v35 = [v34 videoResolution];
    v36 = [v35 resolutionType];
    if ((v36 - 1) >= 0x1D)
    {
      v37 = &kIPCameraUnknownParameter;
    }

    else
    {
      v37 = (&unk_22A5877F8 + 8 * v36 - 8);
    }

    v38 = *v37;

    if (v38 == -1)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }

      v14 = HMFGetLogIdentifier();
      v101 = 138543362;
      v102 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to translate image resolution", &v101, 0xCu);
      goto LABEL_5;
    }

    v39 = [v6 video];
    [v39 setVideoResolution:v38];

    v40 = [v7 selectedStreamConfigurationWrite];
    v41 = [v40 videoParameters];
    v42 = [v41 videoAttributes];
    v43 = [v42 framerate];
    v44 = [v43 unsignedIntegerValue];
    v45 = [v6 video];
    [v45 setFramerate:v44];

    v46 = [v7 selectedStreamConfigurationWrite];
    v47 = [v46 videoParameters];
    v48 = [v47 rtpParameters];
    v49 = [v48 maximumBitrate];
    v50 = [v49 unsignedIntegerValue];
    v51 = [v6 video];
    [v51 setRxMaxBitrate:v50];

    v52 = [v7 selectedStreamConfigurationWrite];
    v53 = [v52 videoParameters];
    v54 = [v53 rtpParameters];
    v55 = [v54 minimumBitrate];
    v56 = [v55 unsignedIntegerValue];
    v57 = [v6 video];
    [v57 setRxMinBitrate:v56];

    v58 = [v7 selectedStreamConfigurationWrite];
    v59 = [v58 videoParameters];
    v60 = [v59 rtpParameters];
    v61 = [v60 rtcpInterval];
    [v61 floatValue];
    [v6 setRtcpSendInterval:v62];

    v63 = [v7 setupEndPointWrite];
    v64 = [v63 address];
    v65 = [v64 ipAddress];
    v66 = [v6 localAddress];
    [v66 setIp:v65];

    v67 = [v7 setupEndPointWrite];
    v68 = [v67 address];
    v69 = [v68 videoRTPPort];
    v70 = [v69 unsignedShortValue];
    v71 = [v6 localAddress];
    [v71 setPort:v70];

    v72 = [v7 setupEndPointWrite];
    v73 = [v72 address];
    v74 = [v73 isIPv6Address];
    v75 = [v6 localAddress];
    [v75 setIsIPv6:v74];

    v76 = [v7 setupEndPointRead];
    v77 = [v76 address];
    v78 = [v77 ipAddress];
    v79 = [v6 remoteAddress];
    [v79 setIp:v78];

    v80 = [v7 setupEndPointRead];
    v81 = [v80 address];
    v82 = [v81 videoRTPPort];
    v83 = [v82 unsignedShortValue];
    v84 = [v6 remoteAddress];
    [v84 setPort:v83];

    v85 = [v7 setupEndPointRead];
    v86 = [v85 address];
    v87 = [v86 isIPv6Address];
    v88 = [v6 remoteAddress];
    [v88 setIsIPv6:v87];

    v89 = [v7 setupEndPointRead];
    v90 = [v89 address];
    v91 = [v90 videoRTPPort];
    [v6 setRtcpRemotePort:{objc_msgSend(v91, "unsignedShortValue")}];

    v92 = [v7 setupEndPointRead];
    v93 = [v92 videoSrtpParameters];
    v94 = [v93 srtpCryptoSuite];
    LOBYTE(v88) = [(HMDCameraMediaConfigGenerator *)self _loadConfig:v6 cipherCuite:v94];

    if (v88)
    {
      v95 = [v7 setupEndPointWrite];
      v96 = [v95 videoSrtpParameters];
      v97 = [v7 setupEndPointRead];
      v98 = [v97 videoSrtpParameters];
      [(HMDCameraMediaConfigGenerator *)self _loadConfig:v6 sendSrtpParameters:v96 receiveSrtpParameters:v98];

      [(HMDCameraMediaConfigGenerator *)self _loadMiscConfig:v6];
      v99 = [v7 setupEndPointRead];
      v100 = [v99 videoSSRC];
      [v6 setRemoteSSRC:{objc_msgSend(v100, "unsignedIntegerValue")}];

      v19 = 1;
      goto LABEL_7;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v7 setupEndPointRead];
      v16 = [v15 videoSrtpParameters];
      v17 = [v16 srtpCryptoSuite];
      v101 = 138543618;
      v102 = v14;
      v103 = 2048;
      v104 = [v17 decodedNumber];
      v18 = "%{public}@Failed to translate to crypto suite for video from %lu";
      goto LABEL_4;
    }
  }

LABEL_6:

  objc_autoreleasePoolPop(v12);
  v19 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_loadAVCAudioStreamConfig:(id)a3 protocolParameters:(id)a4
{
  v118 = *MEMORY[0x277D85DE8];
  v111 = a3;
  v5 = a4;
  v6 = [v5 selectedStreamConfigurationWrite];
  v7 = [v6 audioParameters];
  v8 = [v7 codecGroup];
  v9 = [v8 codec];
  v110 = v5;
  v10 = [v5 selectedStreamConfigurationWrite];
  v11 = [v10 audioParameters];
  v12 = [v11 codecParameters];
  v13 = [v12 audioSampleRates];
  v14 = [v13 objectAtIndexedSubscript:0];
  v15 = [v14 sampleRate];
  v16 = v15;
  if (v9 > 2)
  {
    switch(v9)
    {
      case 3:
        if (v15 == 1)
        {
          v17 = 0;
          v18 = 10;
          goto LABEL_23;
        }

        if (v15 == 2)
        {
          v17 = 0;
          v18 = 9;
          goto LABEL_23;
        }

        break;
      case 5:
        v17 = 0;
        v18 = 0;
        goto LABEL_23;
      case 6:
        v17 = 0;
        v18 = 1;
        goto LABEL_23;
    }
  }

  else
  {
    switch(v9)
    {
      case 0:
        v17 = 0;
        v18 = 2;
        goto LABEL_23;
      case 1:
        v17 = 0;
        v18 = 3;
        goto LABEL_23;
      case 2:
        if (v15 == 1)
        {
          v17 = 0;
          v18 = 4;
          goto LABEL_23;
        }

        if (v15 == 2)
        {
          v17 = 0;
          v18 = 5;
          goto LABEL_23;
        }

        break;
    }
  }

  v108 = v6;
  context = objc_autoreleasePoolPush();
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v106 = HMFGetLogIdentifier();
    *buf = 138543874;
    v113 = v106;
    v114 = 2048;
    v115 = v9;
    v116 = 2048;
    v117 = v16;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to translate the HMD audio codec type: %tu, sample rate: %tu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(context);
  v18 = -1;
  v17 = 1;
  v6 = v108;
LABEL_23:

  if (v17)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    v23 = v110;
    v22 = v111;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v110 selectedStreamConfigurationWrite];
      v26 = [v25 audioParameters];
      v27 = [v26 codecGroup];
      v28 = [v27 decodedNumber];
      *buf = 138543618;
      v113 = v24;
      v114 = 2048;
      v115 = v28;
      v29 = "%{public}@Failed to translate to audio codec type from %lu";
LABEL_30:
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);

      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v22 = v111;
  v30 = [v111 audio];
  [v30 setCodecType:v18];

  v31 = [v111 audio];
  [v31 setOctetAligned:1];

  v32 = [v111 audio];
  [v32 setDtxEnabled:1];

  v23 = v110;
  v33 = [v110 selectedStreamConfigurationWrite];
  v34 = [v33 audioParameters];
  v35 = [v34 rtpParameters];
  v36 = [v35 payloadType];
  [v111 setTxPayloadType:{objc_msgSend(v36, "unsignedIntegerValue")}];

  v37 = [v110 selectedStreamConfigurationWrite];
  v38 = [v37 audioParameters];
  v39 = [v38 rtpParameters];
  v40 = [v39 payloadType];
  [v111 setRxPayloadType:{objc_msgSend(v40, "unsignedIntegerValue")}];

  [v111 setDirection:3];
  v41 = [v110 selectedStreamConfigurationWrite];
  v42 = [v41 audioParameters];
  v43 = [v42 rtpParameters];
  v44 = [v43 rtcpInterval];
  [v44 floatValue];
  [v111 setRtcpSendInterval:v45];

  v46 = [v110 setupEndPointWrite];
  v47 = [v46 address];
  v48 = [v47 ipAddress];
  v49 = [v111 localAddress];
  [v49 setIp:v48];

  v50 = [v110 setupEndPointWrite];
  v51 = [v50 address];
  v52 = [v51 audioRTPPort];
  v53 = [v52 unsignedShortValue];
  v54 = [v111 localAddress];
  [v54 setPort:v53];

  v55 = [v110 setupEndPointWrite];
  v56 = [v55 address];
  v57 = [v56 isIPv6Address];
  v58 = [v111 localAddress];
  [v58 setIsIPv6:v57];

  v59 = [v110 setupEndPointRead];
  v60 = [v59 address];
  v61 = [v60 ipAddress];
  v62 = [v111 remoteAddress];
  [v62 setIp:v61];

  v63 = [v110 setupEndPointRead];
  v64 = [v63 address];
  v65 = [v64 audioRTPPort];
  v66 = [v65 unsignedShortValue];
  v67 = [v111 remoteAddress];
  [v67 setPort:v66];

  v68 = [v110 setupEndPointRead];
  v69 = [v68 address];
  v70 = [v69 isIPv6Address];
  v71 = [v111 remoteAddress];
  [v71 setIsIPv6:v70];

  v72 = [v110 setupEndPointRead];
  v73 = [v72 address];
  v74 = [v73 audioRTPPort];
  [v111 setRtcpRemotePort:{objc_msgSend(v74, "unsignedShortValue")}];

  v75 = [v111 audio];
  [v75 setAudioStreamMode:3];

  v76 = [v110 selectedStreamConfigurationWrite];
  v77 = [v76 audioParameters];
  v78 = [v77 comfortNoiseEnabled];
  v79 = [v78 BOOLValue];
  v80 = [v111 audio];
  [v80 setCnEnabled:v79];

  v81 = [v110 selectedStreamConfigurationWrite];
  v82 = [v81 audioParameters];
  v83 = [v82 rtpParameters];
  v84 = [v83 comfortNoisePayloadType];
  v85 = [v84 unsignedIntegerValue];
  v86 = [v111 audio];
  [v86 setCnPayloadType:v85];

  v87 = [v110 selectedStreamConfigurationWrite];
  v88 = [v87 audioParameters];
  v89 = [v88 codecParameters];
  v90 = [v89 rtpPtime];
  v91 = [v90 unsignedIntegerValue];
  v92 = [v111 audio];
  [v92 setPtime:v91];

  v93 = [v110 setupEndPointRead];
  v94 = [v93 audioSrtpParameters];
  v95 = [v94 srtpCryptoSuite];
  LOBYTE(v90) = [(HMDCameraMediaConfigGenerator *)self _loadConfig:v111 cipherCuite:v95];

  if ((v90 & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v110 setupEndPointRead];
      v26 = [v25 audioSrtpParameters];
      v27 = [v26 srtpCryptoSuite];
      v103 = [v27 decodedNumber];
      *buf = 138543618;
      v113 = v24;
      v114 = 2048;
      v115 = v103;
      v29 = "%{public}@Failed to translate to crypto suite for audio from %lu";
      goto LABEL_30;
    }

LABEL_31:

    objc_autoreleasePoolPop(v20);
    v102 = 0;
    goto LABEL_32;
  }

  v96 = [v110 setupEndPointWrite];
  v97 = [v96 audioSrtpParameters];
  v98 = [v110 setupEndPointRead];
  v99 = [v98 audioSrtpParameters];
  [(HMDCameraMediaConfigGenerator *)self _loadConfig:v111 sendSrtpParameters:v97 receiveSrtpParameters:v99];

  [(HMDCameraMediaConfigGenerator *)self _loadMiscConfig:v111];
  v100 = [v110 setupEndPointRead];
  v101 = [v100 audioSSRC];
  [v111 setRemoteSSRC:{objc_msgSend(v101, "unsignedIntegerValue")}];

  v102 = 1;
LABEL_32:

  v104 = *MEMORY[0x277D85DE8];
  return v102;
}

- (BOOL)extractSelectedConfigFromProtocolParameters:(id)a3 videoStreamConfig:(id *)a4 audioStreamConfig:(id *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_alloc_init(HMDVideoStreamConfig);
  if ([(HMDCameraMediaConfigGenerator *)self _loadAVCVideoStreamConfig:v9 protocolParameters:v8])
  {
    v10 = objc_alloc_init(HMDAudioStreamConfig);
    v11 = [(HMDCameraMediaConfigGenerator *)self _loadAVCAudioStreamConfig:v10 protocolParameters:v8];
    if (v11)
    {
      if (a4)
      {
        v12 = v9;
        *a4 = v9;
      }

      if (a5)
      {
        v13 = v10;
        *a5 = v10;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v22 = 138543362;
        v23 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to load audio config from the protocol parameters", &v22, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to load video config from the protocol parameters", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

@end