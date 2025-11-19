@interface IDSQuickRelayAllocateMessage
- (IDSQuickRelayAllocateMessage)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)init:(id)a3;
- (id)messageBody;
- (id)requiredKeys;
- (unint64_t)_recipientDataSize;
- (unint64_t)requestLength;
- (void)setTestOptions:(id)a3;
@end

@implementation IDSQuickRelayAllocateMessage

- (id)init:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IDSQuickRelayAllocateMessage;
  v5 = [(IDSQuickRelayAllocateMessage *)&v9 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = +[NSUUID UUID];
    }

    v6 = [v4 UUIDString];
    [(IDSQuickRelayAllocateMessage *)v5 setRequestIDStr:v6];

    v10[0] = 0xAAAAAAAAAAAAAAAALL;
    v10[1] = 0xAAAAAAAAAAAAAAAALL;
    [v4 getUUIDBytes:v10];
    v7 = [[NSData alloc] initWithBytes:v10 length:16];
    [(IDSQuickRelayAllocateMessage *)v5 setRequestID:v7];

    [(IDSQuickRelayAllocateMessage *)v5 setTopic:kIDSQuickRelayPushTopic];
    [(IDSQuickRelayAllocateMessage *)v5 setWantsDeliveryStatus:&__kCFBooleanFalse];
    [(IDSQuickRelayAllocateMessage *)v5 setHighPriority:1];
  }

  return v5;
}

- (IDSQuickRelayAllocateMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_404;
  }

  v715.receiver = self;
  v715.super_class = IDSQuickRelayAllocateMessage;
  self = [(IDSQuickRelayAllocateMessage *)&v715 init];

  if (!self)
  {
    goto LABEL_404;
  }

  v5 = kIDSQRAllocateKey_RequestID;
  v6 = [v4 objectForKey:kIDSQRAllocateKey_RequestID];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [v4 objectForKey:v5];
  v9 = v8;
  if (isKindOfClass)
  {
    requestID = self->_requestID;
    self->_requestID = v8;
LABEL_5:

    goto LABEL_12;
  }

  if (v9)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v4 objectForKey:v5];
      v13 = objc_opt_class();
      v14 = [v4 objectForKey:v5];
      v15 = objc_opt_class();
      *buf = 138412802;
      v717 = v12;
      v718 = 2112;
      v719 = v13;
      v720 = 2112;
      v721 = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        requestID = [v4 objectForKey:v5];
        v16 = objc_opt_class();
        v17 = [v4 objectForKey:v5];
        v629 = v16;
        v672 = objc_opt_class();
        v586 = requestID;
        _IDSLogV();

        goto LABEL_5;
      }
    }
  }

LABEL_12:
  v18 = self->_requestID;
  if (v18)
  {
    if ([(NSData *)v18 bytes])
    {
      v19 = [[NSUUID alloc] initWithUUIDBytes:{-[NSData bytes](self->_requestID, "bytes")}];
      v20 = [v19 UUIDString];
    }

    else
    {
      v20 = 0;
    }

    [(IDSQuickRelayAllocateMessage *)self setRequestIDStr:v20, v586, v629, v672];
  }

  v21 = kIDSQRAllocateKey_AllocateType;
  v22 = [v4 objectForKey:{kIDSQRAllocateKey_AllocateType, v586, v629, v672}];
  objc_opt_class();
  v23 = objc_opt_isKindOfClass();

  v24 = [v4 objectForKey:v21];
  v25 = v24;
  if (v23)
  {
    allocateType = self->_allocateType;
    self->_allocateType = v24;
LABEL_19:

    goto LABEL_26;
  }

  if (v25)
  {
    v27 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = [v4 objectForKey:v21];
      v29 = objc_opt_class();
      v30 = [v4 objectForKey:v21];
      v31 = objc_opt_class();
      *buf = 138412802;
      v717 = v28;
      v718 = 2112;
      v719 = v29;
      v720 = 2112;
      v721 = v31;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        allocateType = [v4 objectForKey:v21];
        v32 = objc_opt_class();
        v33 = [v4 objectForKey:v21];
        v630 = v32;
        v673 = objc_opt_class();
        v587 = allocateType;
        _IDSLogV();

        goto LABEL_19;
      }
    }
  }

LABEL_26:
  v34 = kIDSQRAllocateKey_IDSSessionID;
  v35 = [v4 objectForKey:{kIDSQRAllocateKey_IDSSessionID, v587, v630, v673}];
  objc_opt_class();
  v36 = objc_opt_isKindOfClass();

  v37 = [v4 objectForKey:v34];
  v38 = v37;
  if (v36)
  {
    IDSSessionID = self->_IDSSessionID;
    self->_IDSSessionID = v37;
LABEL_28:

    goto LABEL_35;
  }

  if (v38)
  {
    v40 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v41 = [v4 objectForKey:v34];
      v42 = objc_opt_class();
      v43 = [v4 objectForKey:v34];
      v44 = objc_opt_class();
      *buf = 138412802;
      v717 = v41;
      v718 = 2112;
      v719 = v42;
      v720 = 2112;
      v721 = v44;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        IDSSessionID = [v4 objectForKey:v34];
        v45 = objc_opt_class();
        v46 = [v4 objectForKey:v34];
        v631 = v45;
        v674 = objc_opt_class();
        v588 = IDSSessionID;
        _IDSLogV();

        goto LABEL_28;
      }
    }
  }

LABEL_35:
  v47 = kIDSQRAllocateKey_SenderURI;
  v48 = [v4 objectForKey:{kIDSQRAllocateKey_SenderURI, v588, v631, v674}];
  objc_opt_class();
  v49 = objc_opt_isKindOfClass();

  v50 = [v4 objectForKey:v47];
  v51 = v50;
  if (v49)
  {
    senderURI = self->_senderURI;
    self->_senderURI = v50;
LABEL_37:

    goto LABEL_44;
  }

  if (v51)
  {
    v53 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      v54 = [v4 objectForKey:v47];
      v55 = objc_opt_class();
      v56 = [v4 objectForKey:v47];
      v57 = objc_opt_class();
      *buf = 138412802;
      v717 = v54;
      v718 = 2112;
      v719 = v55;
      v720 = 2112;
      v721 = v57;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        senderURI = [v4 objectForKey:v47];
        v58 = objc_opt_class();
        v59 = [v4 objectForKey:v47];
        v632 = v58;
        v675 = objc_opt_class();
        v589 = senderURI;
        _IDSLogV();

        goto LABEL_37;
      }
    }
  }

LABEL_44:
  v60 = kIDSQRAllocateKey_Recipients;
  v61 = [v4 objectForKey:{kIDSQRAllocateKey_Recipients, v589, v632, v675}];
  objc_opt_class();
  v62 = objc_opt_isKindOfClass();

  v63 = [v4 objectForKey:v60];
  v64 = v63;
  if (v62)
  {
    recipients = self->_recipients;
    self->_recipients = v63;
LABEL_46:

    goto LABEL_53;
  }

  if (v64)
  {
    v66 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      v67 = [v4 objectForKey:v60];
      v68 = objc_opt_class();
      v69 = [v4 objectForKey:v60];
      v70 = objc_opt_class();
      *buf = 138412802;
      v717 = v67;
      v718 = 2112;
      v719 = v68;
      v720 = 2112;
      v721 = v70;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        recipients = [v4 objectForKey:v60];
        v71 = objc_opt_class();
        v72 = [v4 objectForKey:v60];
        v633 = v71;
        v676 = objc_opt_class();
        v590 = recipients;
        _IDSLogV();

        goto LABEL_46;
      }
    }
  }

LABEL_53:
  v73 = kIDSQRAllocateKey_ActiveRelayIP;
  v74 = [v4 objectForKey:{kIDSQRAllocateKey_ActiveRelayIP, v590, v633, v676}];
  objc_opt_class();
  v75 = objc_opt_isKindOfClass();

  v76 = [v4 objectForKey:v73];
  v77 = v76;
  if (v75)
  {
    activeRelayIP = self->_activeRelayIP;
    self->_activeRelayIP = v76;
LABEL_55:

    goto LABEL_62;
  }

  if (v77)
  {
    v79 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      v80 = [v4 objectForKey:v73];
      v81 = objc_opt_class();
      v82 = [v4 objectForKey:v73];
      v83 = objc_opt_class();
      *buf = 138412802;
      v717 = v80;
      v718 = 2112;
      v719 = v81;
      v720 = 2112;
      v721 = v83;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        activeRelayIP = [v4 objectForKey:v73];
        v84 = objc_opt_class();
        v85 = [v4 objectForKey:v73];
        v634 = v84;
        v677 = objc_opt_class();
        v591 = activeRelayIP;
        _IDSLogV();

        goto LABEL_55;
      }
    }
  }

LABEL_62:
  v86 = kIDSQRAllocateKey_ActiveRelaySessionToken;
  v87 = [v4 objectForKey:{kIDSQRAllocateKey_ActiveRelaySessionToken, v591, v634, v677}];
  objc_opt_class();
  v88 = objc_opt_isKindOfClass();

  v89 = [v4 objectForKey:v86];
  v90 = v89;
  if (v88)
  {
    activeRelaySessionToken = self->_activeRelaySessionToken;
    self->_activeRelaySessionToken = v89;
LABEL_64:

    goto LABEL_71;
  }

  if (v90)
  {
    v92 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
    {
      v93 = [v4 objectForKey:v86];
      v94 = objc_opt_class();
      v95 = [v4 objectForKey:v86];
      v96 = objc_opt_class();
      *buf = 138412802;
      v717 = v93;
      v718 = 2112;
      v719 = v94;
      v720 = 2112;
      v721 = v96;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        activeRelaySessionToken = [v4 objectForKey:v86];
        v97 = objc_opt_class();
        v98 = [v4 objectForKey:v86];
        v635 = v97;
        v678 = objc_opt_class();
        v592 = activeRelaySessionToken;
        _IDSLogV();

        goto LABEL_64;
      }
    }
  }

LABEL_71:
  v99 = kIDSQRAllocateKey_ExistingRelayIP;
  v100 = [v4 objectForKey:{kIDSQRAllocateKey_ExistingRelayIP, v592, v635, v678}];
  objc_opt_class();
  v101 = objc_opt_isKindOfClass();

  v102 = [v4 objectForKey:v99];
  v103 = v102;
  if (v101)
  {
    existingRelayIP = self->_existingRelayIP;
    self->_existingRelayIP = v102;
LABEL_73:

    goto LABEL_80;
  }

  if (v103)
  {
    v105 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
    {
      v106 = [v4 objectForKey:v99];
      v107 = objc_opt_class();
      v108 = [v4 objectForKey:v99];
      v109 = objc_opt_class();
      *buf = 138412802;
      v717 = v106;
      v718 = 2112;
      v719 = v107;
      v720 = 2112;
      v721 = v109;
      _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        existingRelayIP = [v4 objectForKey:v99];
        v110 = objc_opt_class();
        v111 = [v4 objectForKey:v99];
        v636 = v110;
        v679 = objc_opt_class();
        v593 = existingRelayIP;
        _IDSLogV();

        goto LABEL_73;
      }
    }
  }

LABEL_80:
  v112 = kIDSQRAllocateKey_ExistingRelaySessionToken;
  v113 = [v4 objectForKey:{kIDSQRAllocateKey_ExistingRelaySessionToken, v593, v636, v679}];
  objc_opt_class();
  v114 = objc_opt_isKindOfClass();

  v115 = [v4 objectForKey:v112];
  v116 = v115;
  if (v114)
  {
    existingRelaySessionToken = self->_existingRelaySessionToken;
    self->_existingRelaySessionToken = v115;
LABEL_82:

    goto LABEL_89;
  }

  if (v116)
  {
    v118 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
    {
      v119 = [v4 objectForKey:v112];
      v120 = objc_opt_class();
      v121 = [v4 objectForKey:v112];
      v122 = objc_opt_class();
      *buf = 138412802;
      v717 = v119;
      v718 = 2112;
      v719 = v120;
      v720 = 2112;
      v721 = v122;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        existingRelaySessionToken = [v4 objectForKey:v112];
        v123 = objc_opt_class();
        v124 = [v4 objectForKey:v112];
        v637 = v123;
        v680 = objc_opt_class();
        v594 = existingRelaySessionToken;
        _IDSLogV();

        goto LABEL_82;
      }
    }
  }

LABEL_89:
  v125 = kIDSQRAllocateKey_ExistingRelaySignature;
  v126 = [v4 objectForKey:{kIDSQRAllocateKey_ExistingRelaySignature, v594, v637, v680}];
  objc_opt_class();
  v127 = objc_opt_isKindOfClass();

  v128 = [v4 objectForKey:v125];
  v129 = v128;
  if (v127)
  {
    existingRelaySignature = self->_existingRelaySignature;
    self->_existingRelaySignature = v128;
LABEL_91:

    goto LABEL_98;
  }

  if (v129)
  {
    v131 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
    {
      v132 = [v4 objectForKey:v125];
      v133 = objc_opt_class();
      v134 = [v4 objectForKey:v125];
      v135 = objc_opt_class();
      *buf = 138412802;
      v717 = v132;
      v718 = 2112;
      v719 = v133;
      v720 = 2112;
      v721 = v135;
      _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        existingRelaySignature = [v4 objectForKey:v125];
        v136 = objc_opt_class();
        v137 = [v4 objectForKey:v125];
        v638 = v136;
        v681 = objc_opt_class();
        v595 = existingRelaySignature;
        _IDSLogV();

        goto LABEL_91;
      }
    }
  }

LABEL_98:
  v138 = kIDSQRAllocateKey_SenderExternalAddress;
  v139 = [v4 objectForKey:{kIDSQRAllocateKey_SenderExternalAddress, v595, v638, v681}];
  objc_opt_class();
  v140 = objc_opt_isKindOfClass();

  v141 = [v4 objectForKey:v138];
  v142 = v141;
  if (v140)
  {
    senderExternalIP = self->_senderExternalIP;
    self->_senderExternalIP = v141;
LABEL_100:

    goto LABEL_107;
  }

  if (v142)
  {
    v144 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
    {
      v145 = [v4 objectForKey:v138];
      v146 = objc_opt_class();
      v147 = [v4 objectForKey:v138];
      v148 = objc_opt_class();
      *buf = 138412802;
      v717 = v145;
      v718 = 2112;
      v719 = v146;
      v720 = 2112;
      v721 = v148;
      _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        senderExternalIP = [v4 objectForKey:v138];
        v149 = objc_opt_class();
        v150 = [v4 objectForKey:v138];
        v639 = v149;
        v682 = objc_opt_class();
        v596 = senderExternalIP;
        _IDSLogV();

        goto LABEL_100;
      }
    }
  }

LABEL_107:
  v151 = kIDSQRAllocateKey_AppID;
  v152 = [v4 objectForKey:{kIDSQRAllocateKey_AppID, v596, v639, v682}];
  objc_opt_class();
  v153 = objc_opt_isKindOfClass();

  v154 = [v4 objectForKey:v151];
  v155 = v154;
  if (v153)
  {
    appID = self->_appID;
    self->_appID = v154;
LABEL_109:

    goto LABEL_116;
  }

  if (v155)
  {
    v157 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
    {
      v158 = [v4 objectForKey:v151];
      v159 = objc_opt_class();
      v160 = [v4 objectForKey:v151];
      v161 = objc_opt_class();
      *buf = 138412802;
      v717 = v158;
      v718 = 2112;
      v719 = v159;
      v720 = 2112;
      v721 = v161;
      _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        appID = [v4 objectForKey:v151];
        v162 = objc_opt_class();
        v163 = [v4 objectForKey:v151];
        v640 = v162;
        v683 = objc_opt_class();
        v597 = appID;
        _IDSLogV();

        goto LABEL_109;
      }
    }
  }

LABEL_116:
  v164 = kIDSQRAllocateKey_ReportingDataBlob;
  v165 = [v4 objectForKey:{kIDSQRAllocateKey_ReportingDataBlob, v597, v640, v683}];
  v166 = [v165 base64EncodedStringWithOptions:0];
  objc_opt_class();
  v167 = objc_opt_isKindOfClass();

  v168 = [v4 objectForKey:v164];
  v169 = [v168 base64EncodedStringWithOptions:0];
  v170 = v169;
  if (v167)
  {
    reportingDataBlob = self->_reportingDataBlob;
    self->_reportingDataBlob = v169;
LABEL_118:

    goto LABEL_125;
  }

  if (v170)
  {
    v172 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
    {
      v173 = [v4 objectForKey:v164];
      v174 = [v173 base64EncodedStringWithOptions:0];
      v175 = objc_opt_class();
      v176 = [v4 objectForKey:v164];
      v177 = [v176 base64EncodedStringWithOptions:0];
      v178 = objc_opt_class();
      *buf = 138412802;
      v717 = v174;
      v718 = 2112;
      v719 = v175;
      v720 = 2112;
      v721 = v178;
      _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        v168 = [v4 objectForKey:v164];
        reportingDataBlob = [v168 base64EncodedStringWithOptions:0];
        v179 = objc_opt_class();
        v180 = [v4 objectForKey:v164];
        v181 = [v180 base64EncodedStringWithOptions:0];
        v641 = v179;
        v684 = objc_opt_class();
        v598 = reportingDataBlob;
        _IDSLogV();

        goto LABEL_118;
      }
    }
  }

LABEL_125:
  v182 = kIDSQRAllocateKey_RelayAddress;
  v183 = [v4 objectForKey:{kIDSQRAllocateKey_RelayAddress, v598, v641, v684}];
  objc_opt_class();
  v184 = objc_opt_isKindOfClass();

  v185 = [v4 objectForKey:v182];
  v186 = v185;
  if (v184)
  {
    relayIP = self->_relayIP;
    self->_relayIP = v185;
LABEL_127:

    goto LABEL_134;
  }

  if (v186)
  {
    v188 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
    {
      v189 = [v4 objectForKey:v182];
      v190 = objc_opt_class();
      v191 = [v4 objectForKey:v182];
      v192 = objc_opt_class();
      *buf = 138412802;
      v717 = v189;
      v718 = 2112;
      v719 = v190;
      v720 = 2112;
      v721 = v192;
      _os_log_impl(&_mh_execute_header, v188, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        relayIP = [v4 objectForKey:v182];
        v193 = objc_opt_class();
        v194 = [v4 objectForKey:v182];
        v642 = v193;
        v685 = objc_opt_class();
        v599 = relayIP;
        _IDSLogV();

        goto LABEL_127;
      }
    }
  }

LABEL_134:
  v195 = kIDSQRAllocateKey_RelayAddressIPv6;
  v196 = [v4 objectForKey:{kIDSQRAllocateKey_RelayAddressIPv6, v599, v642, v685}];
  objc_opt_class();
  v197 = objc_opt_isKindOfClass();

  v198 = [v4 objectForKey:v195];
  v199 = v198;
  if (v197)
  {
    relayIPv6 = self->_relayIPv6;
    self->_relayIPv6 = v198;
LABEL_136:

    goto LABEL_143;
  }

  if (v199)
  {
    v201 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v201, OS_LOG_TYPE_DEBUG))
    {
      v202 = [v4 objectForKey:v195];
      v203 = objc_opt_class();
      v204 = [v4 objectForKey:v195];
      v205 = objc_opt_class();
      *buf = 138412802;
      v717 = v202;
      v718 = 2112;
      v719 = v203;
      v720 = 2112;
      v721 = v205;
      _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        relayIPv6 = [v4 objectForKey:v195];
        v206 = objc_opt_class();
        v207 = [v4 objectForKey:v195];
        v643 = v206;
        v686 = objc_opt_class();
        v600 = relayIPv6;
        _IDSLogV();

        goto LABEL_136;
      }
    }
  }

LABEL_143:
  v208 = kIDSQRAllocateKey_RelayPort;
  v209 = [v4 objectForKey:{kIDSQRAllocateKey_RelayPort, v600, v643, v686}];
  objc_opt_class();
  v210 = objc_opt_isKindOfClass();

  v211 = [v4 objectForKey:v208];
  v212 = v211;
  if (v210)
  {
    relayPort = self->_relayPort;
    self->_relayPort = v211;
LABEL_145:

    goto LABEL_152;
  }

  if (v212)
  {
    v214 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v214, OS_LOG_TYPE_DEBUG))
    {
      v215 = [v4 objectForKey:v208];
      v216 = objc_opt_class();
      v217 = [v4 objectForKey:v208];
      v218 = objc_opt_class();
      *buf = 138412802;
      v717 = v215;
      v718 = 2112;
      v719 = v216;
      v720 = 2112;
      v721 = v218;
      _os_log_impl(&_mh_execute_header, v214, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        relayPort = [v4 objectForKey:v208];
        v219 = objc_opt_class();
        v220 = [v4 objectForKey:v208];
        v644 = v219;
        v687 = objc_opt_class();
        v601 = relayPort;
        _IDSLogV();

        goto LABEL_145;
      }
    }
  }

LABEL_152:
  v221 = kIDSQRAllocateKey_RelaySessionToken;
  v222 = [v4 objectForKey:{kIDSQRAllocateKey_RelaySessionToken, v601, v644, v687}];
  objc_opt_class();
  v223 = objc_opt_isKindOfClass();

  v224 = [v4 objectForKey:v221];
  v225 = v224;
  if (v223)
  {
    relaySessionToken = self->_relaySessionToken;
    self->_relaySessionToken = v224;
LABEL_154:

    goto LABEL_161;
  }

  if (v225)
  {
    v227 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v227, OS_LOG_TYPE_DEBUG))
    {
      v228 = [v4 objectForKey:v221];
      v229 = objc_opt_class();
      v230 = [v4 objectForKey:v221];
      v231 = objc_opt_class();
      *buf = 138412802;
      v717 = v228;
      v718 = 2112;
      v719 = v229;
      v720 = 2112;
      v721 = v231;
      _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        relaySessionToken = [v4 objectForKey:v221];
        v232 = objc_opt_class();
        v233 = [v4 objectForKey:v221];
        v645 = v232;
        v688 = objc_opt_class();
        v602 = relaySessionToken;
        _IDSLogV();

        goto LABEL_154;
      }
    }
  }

LABEL_161:
  v234 = kIDSQRAllocateKey_RelaySessionKey;
  v235 = [v4 objectForKey:{kIDSQRAllocateKey_RelaySessionKey, v602, v645, v688}];
  objc_opt_class();
  v236 = objc_opt_isKindOfClass();

  v237 = [v4 objectForKey:v234];
  v238 = v237;
  if (v236)
  {
    relaySessionKey = self->_relaySessionKey;
    self->_relaySessionKey = v237;
LABEL_163:

    goto LABEL_170;
  }

  if (v238)
  {
    v240 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v240, OS_LOG_TYPE_DEBUG))
    {
      v241 = [v4 objectForKey:v234];
      v242 = objc_opt_class();
      v243 = [v4 objectForKey:v234];
      v244 = objc_opt_class();
      *buf = 138412802;
      v717 = v241;
      v718 = 2112;
      v719 = v242;
      v720 = 2112;
      v721 = v244;
      _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        relaySessionKey = [v4 objectForKey:v234];
        v245 = objc_opt_class();
        v246 = [v4 objectForKey:v234];
        v646 = v245;
        v689 = objc_opt_class();
        v603 = relaySessionKey;
        _IDSLogV();

        goto LABEL_163;
      }
    }
  }

LABEL_170:
  v247 = kIDSQRAllocateKey_RelaySessionID;
  v248 = [v4 objectForKey:{kIDSQRAllocateKey_RelaySessionID, v603, v646, v689}];
  objc_opt_class();
  v249 = objc_opt_isKindOfClass();

  v250 = [v4 objectForKey:v247];
  v251 = v250;
  if (v249)
  {
    relaySessionID = self->_relaySessionID;
    self->_relaySessionID = v250;
LABEL_172:

    goto LABEL_179;
  }

  if (v251)
  {
    v253 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v253, OS_LOG_TYPE_DEBUG))
    {
      v254 = [v4 objectForKey:v247];
      v255 = objc_opt_class();
      v256 = [v4 objectForKey:v247];
      v257 = objc_opt_class();
      *buf = 138412802;
      v717 = v254;
      v718 = 2112;
      v719 = v255;
      v720 = 2112;
      v721 = v257;
      _os_log_impl(&_mh_execute_header, v253, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        relaySessionID = [v4 objectForKey:v247];
        v258 = objc_opt_class();
        v259 = [v4 objectForKey:v247];
        v647 = v258;
        v690 = objc_opt_class();
        v604 = relaySessionID;
        _IDSLogV();

        goto LABEL_172;
      }
    }
  }

LABEL_179:
  v260 = kIDSQRAllocateKey_RelayExpiryTimestamp;
  v261 = [v4 objectForKey:{kIDSQRAllocateKey_RelayExpiryTimestamp, v604, v647, v690}];
  objc_opt_class();
  v262 = objc_opt_isKindOfClass();

  v263 = [v4 objectForKey:v260];
  v264 = v263;
  if (v262)
  {
    relayExpiryTimeStamp = self->_relayExpiryTimeStamp;
    self->_relayExpiryTimeStamp = v263;
LABEL_181:

    goto LABEL_188;
  }

  if (v264)
  {
    v266 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v266, OS_LOG_TYPE_DEBUG))
    {
      v267 = [v4 objectForKey:v260];
      v268 = objc_opt_class();
      v269 = [v4 objectForKey:v260];
      v270 = objc_opt_class();
      *buf = 138412802;
      v717 = v267;
      v718 = 2112;
      v719 = v268;
      v720 = 2112;
      v721 = v270;
      _os_log_impl(&_mh_execute_header, v266, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        relayExpiryTimeStamp = [v4 objectForKey:v260];
        v271 = objc_opt_class();
        v272 = [v4 objectForKey:v260];
        v648 = v271;
        v691 = objc_opt_class();
        v605 = relayExpiryTimeStamp;
        _IDSLogV();

        goto LABEL_181;
      }
    }
  }

LABEL_188:
  v273 = kIDSQRAllocateKey_InferredExternalAddress;
  v274 = [v4 objectForKey:{kIDSQRAllocateKey_InferredExternalAddress, v605, v648, v691}];
  objc_opt_class();
  v275 = objc_opt_isKindOfClass();

  v276 = [v4 objectForKey:v273];
  v277 = v276;
  if (v275)
  {
    inferredExternalIP = self->_inferredExternalIP;
    self->_inferredExternalIP = v276;
LABEL_190:

    goto LABEL_197;
  }

  if (v277)
  {
    v279 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v279, OS_LOG_TYPE_DEBUG))
    {
      v280 = [v4 objectForKey:v273];
      v281 = objc_opt_class();
      v282 = [v4 objectForKey:v273];
      v283 = objc_opt_class();
      *buf = 138412802;
      v717 = v280;
      v718 = 2112;
      v719 = v281;
      v720 = 2112;
      v721 = v283;
      _os_log_impl(&_mh_execute_header, v279, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        inferredExternalIP = [v4 objectForKey:v273];
        v284 = objc_opt_class();
        v285 = [v4 objectForKey:v273];
        v649 = v284;
        v692 = objc_opt_class();
        v606 = inferredExternalIP;
        _IDSLogV();

        goto LABEL_190;
      }
    }
  }

LABEL_197:
  v286 = kIDSQRAllocateKey_Provider;
  v287 = [v4 objectForKey:{kIDSQRAllocateKey_Provider, v606, v649, v692}];
  objc_opt_class();
  v288 = objc_opt_isKindOfClass();

  v289 = [v4 objectForKey:v286];
  v290 = v289;
  if (v288)
  {
    provider = self->_provider;
    self->_provider = v289;
LABEL_199:

    goto LABEL_206;
  }

  if (v290)
  {
    v292 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v292, OS_LOG_TYPE_DEBUG))
    {
      v293 = [v4 objectForKey:v286];
      v294 = objc_opt_class();
      v295 = [v4 objectForKey:v286];
      v296 = objc_opt_class();
      *buf = 138412802;
      v717 = v293;
      v718 = 2112;
      v719 = v294;
      v720 = 2112;
      v721 = v296;
      _os_log_impl(&_mh_execute_header, v292, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        provider = [v4 objectForKey:v286];
        v297 = objc_opt_class();
        v298 = [v4 objectForKey:v286];
        v650 = v297;
        v693 = objc_opt_class();
        v607 = provider;
        _IDSLogV();

        goto LABEL_199;
      }
    }
  }

LABEL_206:
  v299 = kIDSQRAllocateKey_GroupID;
  v300 = [v4 objectForKey:{kIDSQRAllocateKey_GroupID, v607, v650, v693}];
  objc_opt_class();
  v301 = objc_opt_isKindOfClass();

  v302 = [v4 objectForKey:v299];
  v303 = v302;
  if (v301)
  {
    groupID = self->_groupID;
    self->_groupID = v302;
LABEL_208:

    goto LABEL_215;
  }

  if (v303)
  {
    v305 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v305, OS_LOG_TYPE_DEBUG))
    {
      v306 = [v4 objectForKey:v299];
      v307 = objc_opt_class();
      v308 = [v4 objectForKey:v299];
      v309 = objc_opt_class();
      *buf = 138412802;
      v717 = v306;
      v718 = 2112;
      v719 = v307;
      v720 = 2112;
      v721 = v309;
      _os_log_impl(&_mh_execute_header, v305, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        groupID = [v4 objectForKey:v299];
        v310 = objc_opt_class();
        v311 = [v4 objectForKey:v299];
        v651 = v310;
        v694 = objc_opt_class();
        v608 = groupID;
        _IDSLogV();

        goto LABEL_208;
      }
    }
  }

LABEL_215:
  v312 = kIDSQRAllocateKey_Reason;
  v313 = [v4 objectForKey:{kIDSQRAllocateKey_Reason, v608, v651, v694}];
  objc_opt_class();
  v314 = objc_opt_isKindOfClass();

  v315 = [v4 objectForKey:v312];
  v316 = v315;
  if (v314)
  {
    qrReason = self->_qrReason;
    self->_qrReason = v315;
LABEL_217:

    goto LABEL_224;
  }

  if (v316)
  {
    v318 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v318, OS_LOG_TYPE_DEBUG))
    {
      v319 = [v4 objectForKey:v312];
      v320 = objc_opt_class();
      v321 = [v4 objectForKey:v312];
      v322 = objc_opt_class();
      *buf = 138412802;
      v717 = v319;
      v718 = 2112;
      v719 = v320;
      v720 = 2112;
      v721 = v322;
      _os_log_impl(&_mh_execute_header, v318, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        qrReason = [v4 objectForKey:v312];
        v323 = objc_opt_class();
        v324 = [v4 objectForKey:v312];
        v652 = v323;
        v695 = objc_opt_class();
        v609 = qrReason;
        _IDSLogV();

        goto LABEL_217;
      }
    }
  }

LABEL_224:
  v325 = kIDSQRAllocateKey_QRError;
  v326 = [v4 objectForKey:{kIDSQRAllocateKey_QRError, v609, v652, v695}];
  objc_opt_class();
  v327 = objc_opt_isKindOfClass();

  v328 = [v4 objectForKey:v325];
  v329 = v328;
  if (v327)
  {
    qrError = self->_qrError;
    self->_qrError = v328;
LABEL_226:

    goto LABEL_233;
  }

  if (v329)
  {
    v331 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v331, OS_LOG_TYPE_DEBUG))
    {
      v332 = [v4 objectForKey:v325];
      v333 = objc_opt_class();
      v334 = [v4 objectForKey:v325];
      v335 = objc_opt_class();
      *buf = 138412802;
      v717 = v332;
      v718 = 2112;
      v719 = v333;
      v720 = 2112;
      v721 = v335;
      _os_log_impl(&_mh_execute_header, v331, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        qrError = [v4 objectForKey:v325];
        v336 = objc_opt_class();
        v337 = [v4 objectForKey:v325];
        v653 = v336;
        v696 = objc_opt_class();
        v610 = qrError;
        _IDSLogV();

        goto LABEL_226;
      }
    }
  }

LABEL_233:
  v338 = kIDSQRAllocateKey_PreviousAccessToken;
  v339 = [v4 objectForKey:{kIDSQRAllocateKey_PreviousAccessToken, v610, v653, v696}];
  objc_opt_class();
  v340 = objc_opt_isKindOfClass();

  v341 = [v4 objectForKey:v338];
  v342 = v341;
  if (v340)
  {
    previousAccessToken = self->_previousAccessToken;
    self->_previousAccessToken = v341;
LABEL_235:

    goto LABEL_242;
  }

  if (v342)
  {
    v344 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v344, OS_LOG_TYPE_DEBUG))
    {
      v345 = [v4 objectForKey:v338];
      v346 = objc_opt_class();
      v347 = [v4 objectForKey:v338];
      v348 = objc_opt_class();
      *buf = 138412802;
      v717 = v345;
      v718 = 2112;
      v719 = v346;
      v720 = 2112;
      v721 = v348;
      _os_log_impl(&_mh_execute_header, v344, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        previousAccessToken = [v4 objectForKey:v338];
        v349 = objc_opt_class();
        v350 = [v4 objectForKey:v338];
        v654 = v349;
        v697 = objc_opt_class();
        v611 = previousAccessToken;
        _IDSLogV();

        goto LABEL_235;
      }
    }
  }

LABEL_242:
  v351 = kIDSQRAllocateKey_PreviousRelayIP;
  v352 = [v4 objectForKey:{kIDSQRAllocateKey_PreviousRelayIP, v611, v654, v697}];
  objc_opt_class();
  v353 = objc_opt_isKindOfClass();

  v354 = [v4 objectForKey:v351];
  v355 = v354;
  if (v353)
  {
    previousRelayIP = self->_previousRelayIP;
    self->_previousRelayIP = v354;
LABEL_244:

    goto LABEL_251;
  }

  if (v355)
  {
    v357 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v357, OS_LOG_TYPE_DEBUG))
    {
      v358 = [v4 objectForKey:v351];
      v359 = objc_opt_class();
      v360 = [v4 objectForKey:v351];
      v361 = objc_opt_class();
      *buf = 138412802;
      v717 = v358;
      v718 = 2112;
      v719 = v359;
      v720 = 2112;
      v721 = v361;
      _os_log_impl(&_mh_execute_header, v357, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        previousRelayIP = [v4 objectForKey:v351];
        v362 = objc_opt_class();
        v363 = [v4 objectForKey:v351];
        v655 = v362;
        v698 = objc_opt_class();
        v612 = previousRelayIP;
        _IDSLogV();

        goto LABEL_244;
      }
    }
  }

LABEL_251:
  v364 = kIDSQRAllocateKey_TestOptions;
  v365 = [v4 objectForKey:{kIDSQRAllocateKey_TestOptions, v612, v655, v698}];
  objc_opt_class();
  v366 = objc_opt_isKindOfClass();

  v367 = [v4 objectForKey:v364];
  v368 = v367;
  if (v366)
  {
    testOptions = self->_testOptions;
    self->_testOptions = v367;
LABEL_253:

    goto LABEL_260;
  }

  if (v368)
  {
    v370 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v370, OS_LOG_TYPE_DEBUG))
    {
      v371 = [v4 objectForKey:v364];
      v372 = objc_opt_class();
      v373 = [v4 objectForKey:v364];
      v374 = objc_opt_class();
      *buf = 138412802;
      v717 = v371;
      v718 = 2112;
      v719 = v372;
      v720 = 2112;
      v721 = v374;
      _os_log_impl(&_mh_execute_header, v370, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        testOptions = [v4 objectForKey:v364];
        v375 = objc_opt_class();
        v376 = [v4 objectForKey:v364];
        v656 = v375;
        v699 = objc_opt_class();
        v613 = testOptions;
        _IDSLogV();

        goto LABEL_253;
      }
    }
  }

LABEL_260:
  v377 = kIDSQRAllocateKey_RelaySoftwareVersion;
  v378 = [v4 objectForKey:{kIDSQRAllocateKey_RelaySoftwareVersion, v613, v656, v699}];
  objc_opt_class();
  v379 = objc_opt_isKindOfClass();

  v380 = [v4 objectForKey:v377];
  v381 = v380;
  if (v379)
  {
    relaySoftwareVersion = self->_relaySoftwareVersion;
    self->_relaySoftwareVersion = v380;
LABEL_262:

    goto LABEL_269;
  }

  if (v381)
  {
    v383 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v383, OS_LOG_TYPE_DEBUG))
    {
      v384 = [v4 objectForKey:v377];
      v385 = objc_opt_class();
      v386 = [v4 objectForKey:v377];
      v387 = objc_opt_class();
      *buf = 138412802;
      v717 = v384;
      v718 = 2112;
      v719 = v385;
      v720 = 2112;
      v721 = v387;
      _os_log_impl(&_mh_execute_header, v383, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        relaySoftwareVersion = [v4 objectForKey:v377];
        v388 = objc_opt_class();
        v389 = [v4 objectForKey:v377];
        v657 = v388;
        v700 = objc_opt_class();
        v614 = relaySoftwareVersion;
        _IDSLogV();

        goto LABEL_262;
      }
    }
  }

LABEL_269:
  v390 = kIDSQRAllocateKey_RelayBuildVersion;
  v391 = [v4 objectForKey:{kIDSQRAllocateKey_RelayBuildVersion, v614, v657, v700}];
  objc_opt_class();
  v392 = objc_opt_isKindOfClass();

  v393 = [v4 objectForKey:v390];
  v394 = v393;
  if (v392)
  {
    relayBuildVersion = self->_relayBuildVersion;
    self->_relayBuildVersion = v393;
LABEL_271:

    goto LABEL_278;
  }

  if (v394)
  {
    v396 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v396, OS_LOG_TYPE_DEBUG))
    {
      v397 = [v4 objectForKey:v390];
      v398 = objc_opt_class();
      v399 = [v4 objectForKey:v390];
      v400 = objc_opt_class();
      *buf = 138412802;
      v717 = v397;
      v718 = 2112;
      v719 = v398;
      v720 = 2112;
      v721 = v400;
      _os_log_impl(&_mh_execute_header, v396, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        relayBuildVersion = [v4 objectForKey:v390];
        v401 = objc_opt_class();
        v402 = [v4 objectForKey:v390];
        v658 = v401;
        v701 = objc_opt_class();
        v615 = relayBuildVersion;
        _IDSLogV();

        goto LABEL_271;
      }
    }
  }

LABEL_278:
  v403 = kIDSQRAllocateKey_RelayHighPriorityPort;
  v404 = [v4 objectForKey:{kIDSQRAllocateKey_RelayHighPriorityPort, v615, v658, v701}];
  objc_opt_class();
  v405 = objc_opt_isKindOfClass();

  v406 = [v4 objectForKey:v403];
  v407 = v406;
  if (v405)
  {
    relayHighPriorityPort = self->_relayHighPriorityPort;
    self->_relayHighPriorityPort = v406;
LABEL_280:

    goto LABEL_287;
  }

  if (v407)
  {
    v409 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v409, OS_LOG_TYPE_DEBUG))
    {
      v410 = [v4 objectForKey:v403];
      v411 = objc_opt_class();
      v412 = [v4 objectForKey:v403];
      v413 = objc_opt_class();
      *buf = 138412802;
      v717 = v410;
      v718 = 2112;
      v719 = v411;
      v720 = 2112;
      v721 = v413;
      _os_log_impl(&_mh_execute_header, v409, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        relayHighPriorityPort = [v4 objectForKey:v403];
        v414 = objc_opt_class();
        v415 = [v4 objectForKey:v403];
        v659 = v414;
        v702 = objc_opt_class();
        v616 = relayHighPriorityPort;
        _IDSLogV();

        goto LABEL_280;
      }
    }
  }

LABEL_287:
  v416 = kIDSQRAllocateKey_RelayIPPreference;
  v417 = [v4 objectForKey:{kIDSQRAllocateKey_RelayIPPreference, v616, v659, v702}];
  objc_opt_class();
  v418 = objc_opt_isKindOfClass();

  v419 = [v4 objectForKey:v416];
  v420 = v419;
  if (v418)
  {
    ipPreference = self->_ipPreference;
    self->_ipPreference = v419;
LABEL_289:

    goto LABEL_296;
  }

  if (v420)
  {
    v422 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v422, OS_LOG_TYPE_DEBUG))
    {
      v423 = [v4 objectForKey:v416];
      v424 = objc_opt_class();
      v425 = [v4 objectForKey:v416];
      v426 = objc_opt_class();
      *buf = 138412802;
      v717 = v423;
      v718 = 2112;
      v719 = v424;
      v720 = 2112;
      v721 = v426;
      _os_log_impl(&_mh_execute_header, v422, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        ipPreference = [v4 objectForKey:v416];
        v427 = objc_opt_class();
        v428 = [v4 objectForKey:v416];
        v660 = v427;
        v703 = objc_opt_class();
        v617 = ipPreference;
        _IDSLogV();

        goto LABEL_289;
      }
    }
  }

LABEL_296:
  v429 = IDSSessionInvitationRetryCountKey;
  v430 = [v4 objectForKey:{IDSSessionInvitationRetryCountKey, v617, v660, v703}];
  objc_opt_class();
  v431 = objc_opt_isKindOfClass();

  v432 = [v4 objectForKey:v429];
  v433 = v432;
  if (v431)
  {
    invitationRetryCount = self->_invitationRetryCount;
    self->_invitationRetryCount = v432;
LABEL_298:

    goto LABEL_305;
  }

  if (v433)
  {
    v435 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v435, OS_LOG_TYPE_DEBUG))
    {
      v436 = [v4 objectForKey:v429];
      v437 = objc_opt_class();
      v438 = [v4 objectForKey:v429];
      v439 = objc_opt_class();
      *buf = 138412802;
      v717 = v436;
      v718 = 2112;
      v719 = v437;
      v720 = 2112;
      v721 = v439;
      _os_log_impl(&_mh_execute_header, v435, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        invitationRetryCount = [v4 objectForKey:v429];
        v440 = objc_opt_class();
        v441 = [v4 objectForKey:v429];
        v661 = v440;
        v704 = objc_opt_class();
        v618 = invitationRetryCount;
        _IDSLogV();

        goto LABEL_298;
      }
    }
  }

LABEL_305:
  v442 = kIDSQRAllocateKey_GroupMemberCount;
  v443 = [v4 objectForKey:{kIDSQRAllocateKey_GroupMemberCount, v618, v661, v704}];
  objc_opt_class();
  v444 = objc_opt_isKindOfClass();

  v445 = [v4 objectForKey:v442];
  v446 = v445;
  if (v444)
  {
    groupMemberCount = self->_groupMemberCount;
    self->_groupMemberCount = v445;
LABEL_307:

    goto LABEL_314;
  }

  if (v446)
  {
    v448 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v448, OS_LOG_TYPE_DEBUG))
    {
      v449 = [v4 objectForKey:v442];
      v450 = objc_opt_class();
      v451 = [v4 objectForKey:v442];
      v452 = objc_opt_class();
      *buf = 138412802;
      v717 = v449;
      v718 = 2112;
      v719 = v450;
      v720 = 2112;
      v721 = v452;
      _os_log_impl(&_mh_execute_header, v448, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        groupMemberCount = [v4 objectForKey:v442];
        v453 = objc_opt_class();
        v454 = [v4 objectForKey:v442];
        v662 = v453;
        v705 = objc_opt_class();
        v619 = groupMemberCount;
        _IDSLogV();

        goto LABEL_307;
      }
    }
  }

LABEL_314:
  v455 = kIDSQRAllocateKey_SelfAllocationCount;
  v456 = [v4 objectForKey:{kIDSQRAllocateKey_SelfAllocationCount, v619, v662, v705}];
  objc_opt_class();
  v457 = objc_opt_isKindOfClass();

  v458 = [v4 objectForKey:v455];
  v459 = v458;
  if (v457)
  {
    selfAllocationCount = self->_selfAllocationCount;
    self->_selfAllocationCount = v458;
LABEL_316:

    goto LABEL_323;
  }

  if (v459)
  {
    v461 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v461, OS_LOG_TYPE_DEBUG))
    {
      v462 = [v4 objectForKey:v455];
      v463 = objc_opt_class();
      v464 = [v4 objectForKey:v455];
      v465 = objc_opt_class();
      *buf = 138412802;
      v717 = v462;
      v718 = 2112;
      v719 = v463;
      v720 = 2112;
      v721 = v465;
      _os_log_impl(&_mh_execute_header, v461, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        selfAllocationCount = [v4 objectForKey:v455];
        v466 = objc_opt_class();
        v467 = [v4 objectForKey:v455];
        v663 = v466;
        v706 = objc_opt_class();
        v620 = selfAllocationCount;
        _IDSLogV();

        goto LABEL_316;
      }
    }
  }

LABEL_323:
  v468 = kIDSQRAllocateKey_PreferredRemoteInterface;
  v469 = [v4 objectForKey:{kIDSQRAllocateKey_PreferredRemoteInterface, v620, v663, v706}];
  objc_opt_class();
  v470 = objc_opt_isKindOfClass();

  v471 = [v4 objectForKey:v468];
  v472 = v471;
  if (v470)
  {
    infoAttribute = self->_infoAttribute;
    self->_infoAttribute = v471;
LABEL_325:

    goto LABEL_332;
  }

  if (v472)
  {
    v474 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v474, OS_LOG_TYPE_DEBUG))
    {
      v475 = [v4 objectForKey:v468];
      v476 = objc_opt_class();
      v477 = [v4 objectForKey:v468];
      v478 = objc_opt_class();
      *buf = 138412802;
      v717 = v475;
      v718 = 2112;
      v719 = v476;
      v720 = 2112;
      v721 = v478;
      _os_log_impl(&_mh_execute_header, v474, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        infoAttribute = [v4 objectForKey:v468];
        v479 = objc_opt_class();
        v480 = [v4 objectForKey:v468];
        v664 = v479;
        v707 = objc_opt_class();
        v621 = infoAttribute;
        _IDSLogV();

        goto LABEL_325;
      }
    }
  }

LABEL_332:
  v481 = kIDSQRAllocateKey_PSKTransportParameters;
  v482 = [v4 objectForKey:{kIDSQRAllocateKey_PSKTransportParameters, v621, v664, v707}];
  objc_opt_class();
  v483 = objc_opt_isKindOfClass();

  v484 = [v4 objectForKey:v481];
  v485 = v484;
  if (v483)
  {
    pskTransportParameters = self->_pskTransportParameters;
    self->_pskTransportParameters = v484;
LABEL_334:

    goto LABEL_341;
  }

  if (v485)
  {
    v487 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v487, OS_LOG_TYPE_DEBUG))
    {
      v488 = [v4 objectForKey:v481];
      v489 = objc_opt_class();
      v490 = [v4 objectForKey:v481];
      v491 = objc_opt_class();
      *buf = 138412802;
      v717 = v488;
      v718 = 2112;
      v719 = v489;
      v720 = 2112;
      v721 = v491;
      _os_log_impl(&_mh_execute_header, v487, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        pskTransportParameters = [v4 objectForKey:v481];
        v492 = objc_opt_class();
        v493 = [v4 objectForKey:v481];
        v665 = v492;
        v708 = objc_opt_class();
        v622 = pskTransportParameters;
        _IDSLogV();

        goto LABEL_334;
      }
    }
  }

LABEL_341:
  v494 = kIDSQRAllocateKey_PSKH3Settings;
  v495 = [v4 objectForKey:{kIDSQRAllocateKey_PSKH3Settings, v622, v665, v708}];
  objc_opt_class();
  v496 = objc_opt_isKindOfClass();

  v497 = [v4 objectForKey:v494];
  v498 = v497;
  if (v496)
  {
    pskH3Settings = self->_pskH3Settings;
    self->_pskH3Settings = v497;
LABEL_343:

    goto LABEL_350;
  }

  if (v498)
  {
    v500 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v500, OS_LOG_TYPE_DEBUG))
    {
      v501 = [v4 objectForKey:v494];
      v502 = objc_opt_class();
      v503 = [v4 objectForKey:v494];
      v504 = objc_opt_class();
      *buf = 138412802;
      v717 = v501;
      v718 = 2112;
      v719 = v502;
      v720 = 2112;
      v721 = v504;
      _os_log_impl(&_mh_execute_header, v500, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        pskH3Settings = [v4 objectForKey:v494];
        v505 = objc_opt_class();
        v506 = [v4 objectForKey:v494];
        v666 = v505;
        v709 = objc_opt_class();
        v623 = pskH3Settings;
        _IDSLogV();

        goto LABEL_343;
      }
    }
  }

LABEL_350:
  v507 = kIDSQRAllocateKey_ErrorCode;
  v508 = [v4 objectForKey:{kIDSQRAllocateKey_ErrorCode, v623, v666, v709}];
  objc_opt_class();
  v509 = objc_opt_isKindOfClass();

  v510 = [v4 objectForKey:v507];
  v511 = v510;
  if (v509)
  {
    errorCode = self->_errorCode;
    self->_errorCode = v510;
LABEL_352:

    goto LABEL_359;
  }

  if (v511)
  {
    v513 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v513, OS_LOG_TYPE_DEBUG))
    {
      v514 = [v4 objectForKey:v507];
      v515 = objc_opt_class();
      v516 = [v4 objectForKey:v507];
      v517 = objc_opt_class();
      *buf = 138412802;
      v717 = v514;
      v718 = 2112;
      v719 = v515;
      v720 = 2112;
      v721 = v517;
      _os_log_impl(&_mh_execute_header, v513, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        errorCode = [v4 objectForKey:v507];
        v518 = objc_opt_class();
        v519 = [v4 objectForKey:v507];
        v667 = v518;
        v710 = objc_opt_class();
        v624 = errorCode;
        _IDSLogV();

        goto LABEL_352;
      }
    }
  }

LABEL_359:
  v520 = kIDSQRAllocateKey_ErrorMessage;
  v521 = [v4 objectForKey:{kIDSQRAllocateKey_ErrorMessage, v624, v667, v710}];
  objc_opt_class();
  v522 = objc_opt_isKindOfClass();

  v523 = [v4 objectForKey:v520];
  v524 = v523;
  if (v522)
  {
    errorMessage = self->_errorMessage;
    self->_errorMessage = v523;
LABEL_361:

    goto LABEL_368;
  }

  if (v524)
  {
    v526 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v526, OS_LOG_TYPE_DEBUG))
    {
      v527 = [v4 objectForKey:v520];
      v528 = objc_opt_class();
      v529 = [v4 objectForKey:v520];
      v530 = objc_opt_class();
      *buf = 138412802;
      v717 = v527;
      v718 = 2112;
      v719 = v528;
      v720 = 2112;
      v721 = v530;
      _os_log_impl(&_mh_execute_header, v526, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        errorMessage = [v4 objectForKey:v520];
        v531 = objc_opt_class();
        v532 = [v4 objectForKey:v520];
        v668 = v531;
        v711 = objc_opt_class();
        v625 = errorMessage;
        _IDSLogV();

        goto LABEL_361;
      }
    }
  }

LABEL_368:
  v533 = kIDSQRAllocateKey_LinkSuggestion;
  v534 = [v4 objectForKey:{kIDSQRAllocateKey_LinkSuggestion, v625, v668, v711}];
  objc_opt_class();
  v535 = objc_opt_isKindOfClass();

  v536 = [v4 objectForKey:v533];
  v537 = v536;
  if (v535)
  {
    linkSuggestion = self->_linkSuggestion;
    self->_linkSuggestion = v536;
LABEL_370:

    goto LABEL_377;
  }

  if (v537)
  {
    v539 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v539, OS_LOG_TYPE_DEBUG))
    {
      v540 = [v4 objectForKey:v533];
      v541 = objc_opt_class();
      v542 = [v4 objectForKey:v533];
      v543 = objc_opt_class();
      *buf = 138412802;
      v717 = v540;
      v718 = 2112;
      v719 = v541;
      v720 = 2112;
      v721 = v543;
      _os_log_impl(&_mh_execute_header, v539, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        linkSuggestion = [v4 objectForKey:v533];
        v544 = objc_opt_class();
        v545 = [v4 objectForKey:v533];
        v669 = v544;
        v712 = objc_opt_class();
        v626 = linkSuggestion;
        _IDSLogV();

        goto LABEL_370;
      }
    }
  }

LABEL_377:
  v546 = kIDSQRAllocateKey_LinkScore;
  v547 = [v4 objectForKey:{kIDSQRAllocateKey_LinkScore, v626, v669, v712}];
  objc_opt_class();
  v548 = objc_opt_isKindOfClass();

  v549 = [v4 objectForKey:v546];
  v550 = v549;
  if (v548)
  {
    linkScore = self->_linkScore;
    self->_linkScore = v549;
LABEL_379:

    goto LABEL_386;
  }

  if (v550)
  {
    v552 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v552, OS_LOG_TYPE_DEBUG))
    {
      v553 = [v4 objectForKey:v546];
      v554 = objc_opt_class();
      v555 = [v4 objectForKey:v546];
      v556 = objc_opt_class();
      *buf = 138412802;
      v717 = v553;
      v718 = 2112;
      v719 = v554;
      v720 = 2112;
      v721 = v556;
      _os_log_impl(&_mh_execute_header, v552, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        linkScore = [v4 objectForKey:v546];
        v557 = objc_opt_class();
        v558 = [v4 objectForKey:v546];
        v670 = v557;
        v713 = objc_opt_class();
        v627 = linkScore;
        _IDSLogV();

        goto LABEL_379;
      }
    }
  }

LABEL_386:
  v559 = kIDSQRAllocateKey_QRExperiments;
  v560 = [v4 objectForKey:{kIDSQRAllocateKey_QRExperiments, v627, v670, v713}];
  objc_opt_class();
  v561 = objc_opt_isKindOfClass();

  v562 = [v4 objectForKey:v559];
  v563 = v562;
  if (v561)
  {
    qrExperiments = self->_qrExperiments;
    self->_qrExperiments = v562;
  }

  else
  {

    if (!v563)
    {
      goto LABEL_395;
    }

    v565 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v565, OS_LOG_TYPE_DEBUG))
    {
      v566 = [v4 objectForKey:v559];
      v567 = objc_opt_class();
      v568 = [v4 objectForKey:v559];
      v569 = objc_opt_class();
      *buf = 138412802;
      v717 = v566;
      v718 = 2112;
      v719 = v567;
      v720 = 2112;
      v721 = v569;
      _os_log_impl(&_mh_execute_header, v565, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      goto LABEL_395;
    }

    qrExperiments = [v4 objectForKey:v559];
    v570 = objc_opt_class();
    v571 = [v4 objectForKey:v559];
    v671 = v570;
    v714 = objc_opt_class();
    v628 = qrExperiments;
    _IDSLogV();
  }

LABEL_395:
  v572 = kIDSQRAllocateKey_IsInternal;
  v573 = [v4 objectForKey:{kIDSQRAllocateKey_IsInternal, v628, v671, v714}];
  objc_opt_class();
  v574 = objc_opt_isKindOfClass();

  v575 = [v4 objectForKey:v572];
  v576 = v575;
  if (v574)
  {
    isInternal = self->_isInternal;
    self->_isInternal = v575;
LABEL_397:

    goto LABEL_404;
  }

  if (v576)
  {
    v578 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v578, OS_LOG_TYPE_DEBUG))
    {
      v579 = [v4 objectForKey:v572];
      v580 = objc_opt_class();
      v581 = [v4 objectForKey:v572];
      v582 = objc_opt_class();
      *buf = 138412802;
      v717 = v579;
      v718 = 2112;
      v719 = v580;
      v720 = 2112;
      v721 = v582;
      _os_log_impl(&_mh_execute_header, v578, OS_LOG_TYPE_DEBUG, "Unexpected datatype. %@ should be of type %@, not %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLog())
      {
        isInternal = [v4 objectForKey:v572];
        objc_opt_class();
        v583 = [v4 objectForKey:v572];
        objc_opt_class();
        _IDSLogV();

        goto LABEL_397;
      }
    }
  }

LABEL_404:
  v584 = self;

  return v584;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v52.receiver = self;
  v52.super_class = IDSQuickRelayAllocateMessage;
  v4 = [(IDSQuickRelayAllocateMessage *)&v52 copyWithZone:a3];
  v5 = [(IDSQuickRelayAllocateMessage *)self requestID];
  [v4 setRequestID:v5];

  v6 = [(IDSQuickRelayAllocateMessage *)self requestIDStr];
  [v4 setRequestIDStr:v6];

  v7 = [(IDSQuickRelayAllocateMessage *)self IDSSessionID];
  [v4 setIDSSessionID:v7];

  v8 = [(IDSQuickRelayAllocateMessage *)self senderURI];
  [v4 setSenderURI:v8];

  v9 = [(IDSQuickRelayAllocateMessage *)self recipients];
  [v4 setRecipients:v9];

  v10 = [(IDSQuickRelayAllocateMessage *)self activeRelayIP];
  [v4 setActiveRelayIP:v10];

  v11 = [(IDSQuickRelayAllocateMessage *)self activeRelaySessionToken];
  [v4 setActiveRelaySessionToken:v11];

  v12 = [(IDSQuickRelayAllocateMessage *)self conversationID];
  [v4 setConversationID:v12];

  v13 = [(IDSQuickRelayAllocateMessage *)self existingRelayIP];
  [v4 setExistingRelayIP:v13];

  v14 = [(IDSQuickRelayAllocateMessage *)self existingRelaySessionToken];
  [v4 setExistingRelaySessionToken:v14];

  v15 = [(IDSQuickRelayAllocateMessage *)self existingRelaySignature];
  [v4 setExistingRelaySignature:v15];

  v16 = [(IDSQuickRelayAllocateMessage *)self senderExternalIP];
  [v4 setSenderExternalIP:v16];

  v17 = [(IDSQuickRelayAllocateMessage *)self appID];
  [v4 setAppID:v17];

  v18 = [(IDSQuickRelayAllocateMessage *)self allocateProtocolVersion];
  [v4 setAllocateProtocolVersion:v18];

  v19 = [(IDSQuickRelayAllocateMessage *)self relayIP];
  [v4 setRelayIP:v19];

  v20 = [(IDSQuickRelayAllocateMessage *)self relayPort];
  [v4 setRelayPort:v20];

  v21 = [(IDSQuickRelayAllocateMessage *)self relayIPv6];
  [v4 setRelayIPv6:v21];

  v22 = [(IDSQuickRelayAllocateMessage *)self relaySessionToken];
  [v4 setRelaySessionToken:v22];

  v23 = [(IDSQuickRelayAllocateMessage *)self relaySessionKey];
  [v4 setRelaySessionKey:v23];

  v24 = [(IDSQuickRelayAllocateMessage *)self relaySessionID];
  [v4 setRelaySessionID:v24];

  v25 = [(IDSQuickRelayAllocateMessage *)self relayExpiryTimeStamp];
  [v4 setRelayExpiryTimeStamp:v25];

  v26 = [(IDSQuickRelayAllocateMessage *)self relaySoftwareVersion];
  [v4 setRelaySoftwareVersion:v26];

  v27 = [(IDSQuickRelayAllocateMessage *)self relayBuildVersion];
  [v4 setRelayBuildVersion:v27];

  v28 = [(IDSQuickRelayAllocateMessage *)self relayHighPriorityPort];
  [v4 setRelayHighPriorityPort:v28];

  v29 = [(IDSQuickRelayAllocateMessage *)self ipPreference];
  [v4 setIpPreference:v29];

  v30 = [(IDSQuickRelayAllocateMessage *)self inferredExternalIP];
  [v4 setInferredExternalIP:v30];

  v31 = [(IDSQuickRelayAllocateMessage *)self provider];
  [v4 setProvider:v31];

  v32 = [(IDSQuickRelayAllocateMessage *)self isSharedSession];
  [v4 setIsSharedSession:v32];

  v33 = [(IDSQuickRelayAllocateMessage *)self groupID];
  [v4 setGroupID:v33];

  v34 = [(IDSQuickRelayAllocateMessage *)self qrReason];
  [v4 setQrReason:v34];

  v35 = [(IDSQuickRelayAllocateMessage *)self qrError];
  [v4 setQrError:v35];

  v36 = [(IDSQuickRelayAllocateMessage *)self previousAccessToken];
  [v4 setPreviousAccessToken:v36];

  v37 = [(IDSQuickRelayAllocateMessage *)self previousRelayIP];
  [v4 setPreviousRelayIP:v37];

  v38 = [(IDSQuickRelayAllocateMessage *)self testOptions];
  [v4 setTestOptions:v38];

  v39 = [(IDSQuickRelayAllocateMessage *)self invitationRetryCount];
  [v4 setInvitationRetryCount:v39];

  v40 = [(IDSQuickRelayAllocateMessage *)self groupMemberCount];
  [v4 setGroupMemberCount:v40];

  v41 = [(IDSQuickRelayAllocateMessage *)self selfAllocationCount];
  [v4 setSelfAllocationCount:v41];

  v42 = [(IDSQuickRelayAllocateMessage *)self errorCode];
  [v4 setErrorCode:v42];

  v43 = [(IDSQuickRelayAllocateMessage *)self errorMessage];
  [v4 setErrorMessage:v43];

  v44 = [(IDSQuickRelayAllocateMessage *)self isNewUPlusOneSession];
  [v4 setIsNewUPlusOneSession:v44];

  v45 = [(IDSQuickRelayAllocateMessage *)self isLightweightParticipant];
  [v4 setIsLightweightParticipant:v45];

  v46 = [(IDSQuickRelayAllocateMessage *)self isInternal];
  [v4 setIsInternal:v46];

  v47 = [(IDSQuickRelayAllocateMessage *)self userAgent];
  [v4 setUserAgent:v47];

  v48 = [(IDSQuickRelayAllocateMessage *)self pskTransportParameters];
  [v4 setPskTransportParameters:v48];

  v49 = [(IDSQuickRelayAllocateMessage *)self pskH3Settings];
  [v4 setPskH3Settings:v49];

  v50 = [(IDSQuickRelayAllocateMessage *)self qrForceExperiment];
  [v4 setQrForceExperiment:v50];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:kIDSQRAllocateKey_RequestID];
  [v2 addObject:kIDSQRAllocateKey_IDSSessionID];
  [v2 addObject:kIDSQRAllocateKey_Recipients];
  [v2 addObject:kIDSQRAllocateKey_AllocateProtocolVersion];
  [v2 addObject:kIDSQRAllocateKey_SenderURI];
  [v2 addObject:kIDSQRAllocateKey_AppID];

  return v2;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[IMLockdownManager sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    v6 = [(IDSQuickRelayAllocateMessage *)self additionalInternalHeaders];
    [v3 addEntriesFromDictionary:v6];
  }

  v7 = [(IDSQuickRelayAllocateMessage *)self requestID];
  if (v7)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_RequestID, v7);
  }

  else
  {
    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092CCB4();
    }
  }

  v9 = [(IDSQuickRelayAllocateMessage *)self allocateType];
  if (v9)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_AllocateType, v9);
  }

  else
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092CD3C();
    }
  }

  v11 = [(IDSQuickRelayAllocateMessage *)self IDSSessionID];
  if (v11)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_IDSSessionID, v11);
  }

  else
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092CDC4();
    }
  }

  v13 = [(IDSQuickRelayAllocateMessage *)self recipients];
  if (v13)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_Recipients, v13);
  }

  else
  {
    v14 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092CE4C();
    }
  }

  v15 = [(IDSQuickRelayAllocateMessage *)self senderURI];
  if (v15)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_SenderURI, v15);
  }

  else
  {
    v16 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092CED4();
    }
  }

  v17 = [(IDSQuickRelayAllocateMessage *)self allocateProtocolVersion];
  if (v17)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_AllocateProtocolVersion, v17);
  }

  else
  {
    v18 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092CF5C();
    }
  }

  v19 = [(IDSQuickRelayAllocateMessage *)self appID];
  if (v19)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_AppID, v19);
  }

  else
  {
    v20 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092CFE4();
    }
  }

  v21 = [(IDSQuickRelayAllocateMessage *)self provider];
  if (v21)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_Provider, v21);
  }

  v22 = [(IDSQuickRelayAllocateMessage *)self infoAttribute];
  if (v22)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_PreferredRemoteInterface, v22);
  }

  v23 = [(IDSQuickRelayAllocateMessage *)self groupID];
  if (v23)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_GroupID, v23);
  }

  v24 = [(IDSQuickRelayAllocateMessage *)self qrReason];
  if (v24)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_Reason, v24);
  }

  v25 = [(IDSQuickRelayAllocateMessage *)self qrError];
  if (v25)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_QRError, v25);
  }

  v26 = [(IDSQuickRelayAllocateMessage *)self previousAccessToken];
  if (v26)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_PreviousAccessToken, v26);
  }

  v27 = [(IDSQuickRelayAllocateMessage *)self previousRelayIP];
  if (v27)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_PreviousRelayIP, v27);
  }

  v28 = [(IDSQuickRelayAllocateMessage *)self activeRelayIP];
  if (v28)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_ActiveRelayIP, v28);
  }

  v29 = [(IDSQuickRelayAllocateMessage *)self activeRelaySessionToken];
  if (v29)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_ActiveRelaySessionToken, v29);
  }

  v30 = [(IDSQuickRelayAllocateMessage *)self conversationID];
  if (v30)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_ConversationID, v30);
  }

  v31 = [(IDSQuickRelayAllocateMessage *)self existingRelayIP];
  if (v31)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_ExistingRelayIP, v31);
  }

  v32 = [(IDSQuickRelayAllocateMessage *)self existingRelaySessionToken];
  if (v32)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_ExistingRelaySessionToken, v32);
  }

  v33 = [(IDSQuickRelayAllocateMessage *)self existingRelaySignature];
  if (v33)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_ExistingRelaySignature, v33);
  }

  v34 = [(IDSQuickRelayAllocateMessage *)self senderExternalIP];
  if (v34)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_SenderExternalAddress, v34);
  }

  v35 = [(IDSQuickRelayAllocateMessage *)self testOptions];
  if (v35)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_TestOptions, v35);
  }

  v36 = [(IDSQuickRelayAllocateMessage *)self invitationRetryCount];
  if (v36)
  {
    CFDictionarySetValue(v3, IDSSessionInvitationRetryCountKey, v36);
  }

  v37 = [(IDSQuickRelayAllocateMessage *)self groupMemberCount];
  if (v37)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_GroupMemberCount, v37);
  }

  v38 = [(IDSQuickRelayAllocateMessage *)self selfAllocationCount];
  if (v38)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_SelfAllocationCount, v38);
  }

  v39 = [(IDSQuickRelayAllocateMessage *)self isNewUPlusOneSession];
  if (v39)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_IsNewUPlusOneSession, v39);
  }

  v40 = [(IDSQuickRelayAllocateMessage *)self isLightweightParticipant];
  if (v40)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_IsLightweightParticipant, v40);
  }

  v41 = [(IDSQuickRelayAllocateMessage *)self userAgent];
  if (v41)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_UserAgent, v41);
  }

  v42 = [(IDSQuickRelayAllocateMessage *)self qrForceExperiment];
  if (v42)
  {
    CFDictionarySetValue(v3, kIDSQRAllocateKey_QRForceExperiment, v42);
  }

  v43 = v3;
  return v3;
}

- (unint64_t)_recipientDataSize
{
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v2 = self->_recipients;
  v3 = 0;
  v4 = [(NSArray *)v2 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (!v4)
  {
    goto LABEL_89;
  }

  v5 = *v50;
  v6 = kIDSQRAllocateKey_RecipientPushToken;
  v7 = kIDSQRAllocateKey_RecipientSessionToken;
  v8 = kIDSQRAllocateKey_RecipientURI;
  while (2)
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v50 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v10 = *(*(&v49 + 1) + 8 * i);
      v11 = [v6 length];
      v12 = __CFADD__(v3, v11);
      v13 = &v11[v3];
      if (v12)
      {
        v32 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v6 length];
          *buf = 134218240;
          v54 = v13;
          v55 = 2048;
          v56 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Add overflow, dataSize: %lu, kIDSQRAllocateKey_RecipientPushToken length: %lu", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          [v6 length];
          _IDSLogV();
        }

        goto LABEL_88;
      }

      v14 = [v7 length];
      v12 = __CFADD__(v13, v14);
      v15 = &v14[v13];
      if (v12)
      {
        v34 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v7 length];
          *buf = 134218240;
          v54 = v15;
          v55 = 2048;
          v56 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Add overflow, dataSize: %lu, kIDSQRAllocateKey_RecipientSessionToken length: %lu", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          [v7 length];
          _IDSLogV();
        }

        goto LABEL_88;
      }

      v16 = [v8 length];
      v12 = __CFADD__(v15, v16);
      v17 = &v16[v15];
      if (v12)
      {
        v36 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v8 length];
          *buf = 134218240;
          v54 = v17;
          v55 = 2048;
          v56 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Add overflow, dataSize: %lu, kIDSQRAllocateKey_RecipientURI length: %lu", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          [v8 length];
          _IDSLogV();
        }

        goto LABEL_88;
      }

      if (v10)
      {
        v18 = v6 == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = !v18;
      if (v18)
      {
        Value = 0;
      }

      else
      {
        Value = CFDictionaryGetValue(v10, v6);
      }

      v21 = [Value length];
      v12 = __CFADD__(v17, v21);
      v22 = &v21[v17];
      if (v12)
      {
        v38 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          if (v19)
          {
            v39 = CFDictionaryGetValue(v10, v6);
          }

          else
          {
            v39 = 0;
          }

          v44 = [v39 length];
          *buf = 134218240;
          v54 = v22;
          v55 = 2048;
          v56 = v44;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Add overflow, dataSize: %lu, recipient's kIDSQRAllocateKey_RecipientPushToken length: %lu", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          if (v19)
          {
            v45 = CFDictionaryGetValue(v10, v6);
          }

          else
          {
            v45 = 0;
          }

LABEL_87:
          [v45 length];
          _IDSLogV();
        }

LABEL_88:
        v3 = -1;
        goto LABEL_89;
      }

      if (v10)
      {
        v23 = v7 == 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = !v23;
      if (v23)
      {
        v25 = 0;
      }

      else
      {
        v25 = CFDictionaryGetValue(v10, v7);
      }

      v26 = [v25 length];
      v12 = __CFADD__(v22, v26);
      v27 = &v26[v22];
      if (v12)
      {
        v40 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          if (v24)
          {
            v41 = CFDictionaryGetValue(v10, v7);
          }

          else
          {
            v41 = 0;
          }

          v46 = [v41 length];
          *buf = 134218240;
          v54 = v27;
          v55 = 2048;
          v56 = v46;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Add overflow, dataSize: %lu, recipient's kIDSQRAllocateKey_RecipientSessionToken length: %lu", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          if (v24)
          {
            v45 = CFDictionaryGetValue(v10, v7);
          }

          else
          {
            v45 = 0;
          }

          goto LABEL_87;
        }

        goto LABEL_88;
      }

      if (v10)
      {
        v28 = v8 == 0;
      }

      else
      {
        v28 = 1;
      }

      v29 = !v28;
      if (v28)
      {
        v30 = 0;
      }

      else
      {
        v30 = CFDictionaryGetValue(v10, v8);
      }

      v31 = [v30 length];
      v12 = __CFADD__(v27, v31);
      v3 = v31 + v27;
      if (v12)
      {
        v42 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          if (v29)
          {
            v43 = CFDictionaryGetValue(v10, v8);
          }

          else
          {
            v43 = 0;
          }

          v47 = [v43 length];
          *buf = 134218240;
          v54 = v3;
          v55 = 2048;
          v56 = v47;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Add overflow, dataSize: %lu, recipient's kIDSQRAllocateKey_RecipientURI length: %lu", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          if (v29)
          {
            v45 = CFDictionaryGetValue(v10, v8);
          }

          else
          {
            v45 = 0;
          }

          goto LABEL_87;
        }

        goto LABEL_88;
      }
    }

    v4 = [(NSArray *)v2 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_89:

  return v3;
}

- (unint64_t)requestLength
{
  v3 = [(IDSQuickRelayAllocateMessage *)self _recipientDataSize];
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(NSData *)self->_IDSSessionID length];
  v6 = v5 + v4;
  if (__CFADD__(v5, v4))
  {
    return 0;
  }

  v8 = [(NSData *)self->_requestID length];
  v9 = [(NSNumber *)self->_allocateType integerValue];
  result = 0;
  v10 = v9 >> 63;
  v11 = __CFADD__(v8, v9);
  v12 = v8 + v9;
  if (v11)
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13 << 63 >> 63;
  if (v14 == v13 && (v14 & 0x8000000000000000) == 0)
  {
    v15 = v6 + v12;
    if (__CFADD__(v6, v12))
    {
      return 0;
    }

    v16 = [(NSString *)self->_appID length];
    v17 = v16 + 8;
    if (v16 >= 0xFFFFFFFFFFFFFFF8)
    {
      return 0;
    }

    v18 = v17 + v15;
    if (__CFADD__(v17, v15))
    {
      return 0;
    }

    v19 = [(NSData *)self->_activeRelayIP length];
    v20 = [(NSData *)self->_activeRelaySessionToken length];
    v21 = v19 + v20;
    if (__CFADD__(v19, v20))
    {
      return 0;
    }

    v22 = v21 + v18;
    if (__CFADD__(v21, v18))
    {
      return 0;
    }

    v23 = [(NSString *)self->_conversationID length];
    v24 = v23 + v22;
    if (__CFADD__(v23, v22))
    {
      return 0;
    }

    v25 = [(NSData *)self->_existingRelayIP length];
    v26 = [(NSData *)self->_existingRelaySessionToken length];
    v27 = v25 + v26;
    if (__CFADD__(v25, v26))
    {
      return 0;
    }

    v11 = __CFADD__(v27, v24);
    v28 = v27 + v24;
    if (v11)
    {
      return 0;
    }

    v29 = [(NSData *)self->_existingRelaySignature length];
    v30 = [(NSData *)self->_senderExternalIP length];
    v31 = v29 + v30;
    if (__CFADD__(v29, v30))
    {
      return 0;
    }

    v32 = v31 + v28;
    if (__CFADD__(v31, v28))
    {
      return 0;
    }

    v33 = [(NSString *)self->_senderURI length];
    v34 = v33 + 8;
    if (v33 >= 0xFFFFFFFFFFFFFFF8)
    {
      return 0;
    }

    v11 = __CFADD__(v34, v32);
    v35 = v34 + v32;
    if (v11)
    {
      return 0;
    }

    v36 = [(NSString *)self->_groupID length];
    v37 = v36 + 8;
    if (v36 >= 0xFFFFFFFFFFFFFFF8)
    {
      return 0;
    }

    v11 = __CFADD__(v37, v35);
    v38 = v37 + v35;
    if (v11)
    {
      return 0;
    }

    v39 = v38 + 16;
    if (v38 >= 0xFFFFFFFFFFFFFFF0)
    {
      return 0;
    }

    v40 = [(NSData *)self->_previousAccessToken length];
    v41 = [(NSData *)self->_previousRelayIP length];
    v42 = v40 + v41;
    if (__CFADD__(v40, v41))
    {
      return 0;
    }

    v11 = __CFADD__(v42, v39);
    v43 = v42 + v39;
    if (v11)
    {
      return 0;
    }

    v44 = [(NSString *)self->_testOptions length];
    v45 = [(NSNumber *)self->_invitationRetryCount integerValue];
    result = 0;
    v46 = v45 >> 63;
    v11 = __CFADD__(v44, v45);
    v47 = v44 + v45;
    if (v11)
    {
      v48 = v46 + 1;
    }

    else
    {
      v48 = v46;
    }

    v49 = v48 << 63 >> 63;
    if (v49 == v48 && (v49 & 0x8000000000000000) == 0)
    {
      v11 = __CFADD__(v47, v43);
      v50 = v47 + v43;
      if (!v11)
      {
        v51 = [(NSNumber *)self->_groupMemberCount integerValue];
        v52 = [(NSNumber *)self->_selfAllocationCount integerValue];
        v53 = v52 + v51;
        if ((((v52 + v51) >> 64) & 1) == 0)
        {
          v11 = __CFADD__(v53, v50);
          v54 = v53 + v50;
          if (v11)
          {
            return 0;
          }

          else
          {
            return v54;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

- (id)description
{
  if ([(NSData *)self->_IDSSessionID bytes])
  {
    v3 = [[NSUUID alloc] initWithUUIDBytes:{-[NSData bytes](self->_IDSSessionID, "bytes")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(NSData *)self->_relaySessionID bytes])
  {
    v4 = [[NSUUID alloc] initWithUUIDBytes:{-[NSData bytes](self->_relaySessionID, "bytes")}];
  }

  else
  {
    v4 = 0;
  }

  v11.receiver = self;
  v11.super_class = IDSQuickRelayAllocateMessage;
  v5 = [(IDSQuickRelayAllocateMessage *)&v11 description];
  requestIDStr = self->_requestIDStr;
  v7 = [v3 UUIDString];
  v8 = [v4 UUIDString];
  v9 = [NSString stringWithFormat:@"%@:requestID = %@, IDSSessionID = %@ relaySessionID = %@", v5, requestIDStr, v7, v8];

  return v9;
}

- (void)setTestOptions:(id)a3
{
  v4 = a3;
  testOptions = self->_testOptions;
  if (testOptions)
  {
    v6 = [(NSString *)testOptions stringByAppendingString:@" "];
    v7 = [v6 stringByAppendingString:v4];
    v8 = self->_testOptions;
    self->_testOptions = v7;
  }

  else
  {
    v9 = v4;
    v6 = self->_testOptions;
    self->_testOptions = v9;
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_testOptions;
    *buf = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "testOptions changed to: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

@end