@interface ULModelMO
+ (id)createFromDO:(const void *)o withServiceMO:(id)mO loiMO:(id)loiMO inManagedObjectContext:(id)context;
- (optional<ULModelDO>)convertToDO;
@end

@implementation ULModelMO

+ (id)createFromDO:(const void *)o withServiceMO:(id)mO loiMO:(id)loiMO inManagedObjectContext:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  mOCopy = mO;
  loiMOCopy = loiMO;
  v11 = [[ULModelMO alloc] initWithContext:context];
  [(ULModelMO *)v11 setService:mOCopy];
  [(ULModelMO *)v11 setLoi:loiMOCopy];
  v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o];
  uUIDString = [v12 UUIDString];
  [(ULModelMO *)v11 setModelUUID:uUIDString];

  [(ULModelMO *)v11 setGenerationTimestamp:*(o + 2)];
  [(ULModelMO *)v11 setModelType:*(o + 6)];
  v14 = o + 32;
  v15 = *(o + 60);
  v16 = *(o + 6);
  if (v15 == 2)
  {
    if (v16 == 5)
    {
      (*(*v14 + 72))(v14);
      operator new[]();
    }

    v20 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType == CLMicroLocationProto::ModelType::VMK";
      _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Mismatch between milo model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v21 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v21))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType == CLMicroLocationProto::ModelType::VMK";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Mismatch between milo model and modelType", "{msg%{public}.0s:Mismatch between milo model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v19 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType == CLMicroLocationProto::ModelType::VMK";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Mismatch between milo model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }
  }

  else if (v15)
  {
    if (v16 == 4)
    {
      if (v15 == 1)
      {
        (*(*v14 + 72))(v14);
        operator new[]();
      }

      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v22 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType == CLMicroLocationProto::ModelType::HOME_SLAM";
      _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Mismatch between homeSlam model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v24 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v24))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType == CLMicroLocationProto::ModelType::HOME_SLAM";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Mismatch between homeSlam model and modelType", "{msg%{public}.0s:Mismatch between homeSlam model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v19 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType == CLMicroLocationProto::ModelType::HOME_SLAM";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Mismatch between homeSlam model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }
  }

  else
  {
    if (v16 != 4)
    {
      (*(*v14 + 72))(v14);
      operator new[]();
    }

    v17 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType != CLMicroLocationProto::ModelType::HOME_SLAM";
      _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Mismatch between milo model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v18 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_signpost_enabled(v18))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType != CLMicroLocationProto::ModelType::HOME_SLAM";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Mismatch between milo model and modelType", "{msg%{public}.0s:Mismatch between milo model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v19 = _CLLogObjectForCategory_MicroLocation_Default();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "modelEntry.fModelType != CLMicroLocationProto::ModelType::HOME_SLAM";
      _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Mismatch between milo model and modelType, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }
  }

  result = abort_report_np();
  __break(1u);
  return result;
}

- (optional<ULModelDO>)convertToDO
{
  v69 = *MEMORY[0x277D85DE8];
  modelUUID = [(ULModelMO *)self modelUUID];
  v6 = modelUUID;
  if (modelUUID)
  {
    [modelUUID boostUUID];
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
  }

  if (v68)
  {
    v7 = [(ULModelMO *)self loi];
    loiId = [v7 loiId];
    v9 = loiId;
    if (loiId)
    {
      [loiId boostUUID];
    }

    else
    {
      v63 = 0;
      v64 = 0;
      v65 = 0;
    }

    if ((v65 & 1) == 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULModelMO convertToDO];
      }

      v12 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_ERROR, "convertToDO: model's loiId has no value", buf, 2u);
      }

      v63 = 0;
      v64 = 0;
      if ((v65 & 1) == 0)
      {
        v65 = 1;
      }
    }

    [(ULModelMO *)self generationTimestamp];
    v14 = v13;
    LOBYTE(v48[0]) = 0;
    v50 = 0;
    service = [(ULModelMO *)self service];
    clientId = [service clientId];
    v17 = [clientId length] == 0;

    if (!v17)
    {
      service2 = [(ULModelMO *)self service];
      clientId2 = [service2 clientId];
      v20 = clientId2;
      if (clientId2)
      {
        [clientId2 stdString];
      }

      else
      {
        *buf = 0u;
        v52 = 0u;
      }

      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v48, buf);
      if (BYTE8(v52) == 1 && SBYTE7(v52) < 0)
      {
        operator delete(*buf);
      }
    }

    service3 = [(ULModelMO *)self service];
    serviceUUID = [service3 serviceUUID];
    v23 = [serviceUUID length] == 0;

    if (v23)
    {
      v28 = 0;
      v27 = 0;
    }

    else
    {
      service4 = [(ULModelMO *)self service];
      serviceUUID2 = [service4 serviceUUID];
      v26 = serviceUUID2;
      if (serviceUUID2)
      {
        [serviceUUID2 boostUUID];
        v27 = buf[0];
        v28 = v52;
      }

      else
      {
        v28 = 0;
        v27 = 0;
        memset(buf, 0, sizeof(buf));
        LOBYTE(v52) = 0;
      }

      v62[0] = *&buf[1];
      *(v62 + 7) = *&buf[8];
    }

    memset(v60, 0, sizeof(v60));
    v29 = CLMicroLocationProto::Model::Model(v60);
    v61 = 0;
    if ([(ULModelMO *)self modelType]== 4)
    {
      model = [(ULModelMO *)self model];
      v31 = model;
      bytes = [model bytes];
      model2 = [(ULModelMO *)self model];
      [model2 length];
      LODWORD(bytes) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(buf, bytes);

      if (bytes)
      {
        ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>::ULProtoMessageWrapper(&v57, buf);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__assign_alt[abi:ne200100]<1ul,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>>(v60, v60, &v57);
        CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(&v57);
        CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(buf);
LABEL_42:
        if ((v68 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v42 = v66;
        v43 = v67;
        std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v46, v48);
        v57 = v27;
        *v58 = v62[0];
        *&v58[7] = *(v62 + 7);
        v59 = v28;
        if ((v65 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        ULModelDO::ULModelDO(buf, v42, v43, v60, &v46, &v57, v63, v64, v14);
        std::__optional_destruct_base<ULModelDO,false>::__optional_destruct_base[abi:ne200100]<ULModelDO>(retstr, buf);
        if (v56 == 1 && v55 < 0)
        {
          operator delete(__p);
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v53);
        if (v47 == 1 && SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

LABEL_58:
        result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v60);
        if (v50 == 1 && v49 < 0)
        {
          operator delete(v48[0]);
        }

        goto LABEL_61;
      }

      CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(buf);
    }

    else if ([(ULModelMO *)self modelType]== 5)
    {
      CLMicroLocationProto::VMKModel::VMKModel(buf);
      model3 = [(ULModelMO *)self model];
      v35 = model3;
      bytes2 = [model3 bytes];
      model4 = [(ULModelMO *)self model];
      [model4 length];
      LODWORD(bytes2) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(buf, bytes2);

      if (bytes2)
      {
        ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>::ULProtoMessageWrapper(&v57, buf);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__assign_alt[abi:ne200100]<2ul,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>(v60, v60, &v57);
        CLMicroLocationProto::VMKModel::~VMKModel(&v57);
        CLMicroLocationProto::VMKModel::~VMKModel(buf);
        goto LABEL_42;
      }

      CLMicroLocationProto::VMKModel::~VMKModel(buf);
    }

    else
    {
      model5 = [(ULModelMO *)self model];
      v39 = model5;
      bytes3 = [model5 bytes];
      model6 = [(ULModelMO *)self model];
      [model6 length];
      LODWORD(bytes3) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(buf, bytes3);

      if (bytes3)
      {
        ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(&v57, buf);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>>::__assign_alt[abi:ne200100]<0ul,ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::Model>>(v60, v60, &v57);
        CLMicroLocationProto::Model::~Model(&v57);
        CLMicroLocationProto::Model::~Model(buf);
        goto LABEL_42;
      }

      CLMicroLocationProto::Model::~Model(buf);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULModelMO convertToDO];
    }

    v44 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v44, OS_LOG_TYPE_ERROR, "convertToDO: Failed to deserialize model protobuf from byte stream", buf, 2u);
    }

    retstr->var0.var0 = 0;
    *(&retstr[1].var0.var4 + 96) = 0;
    goto LABEL_58;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULModelMO convertToDO];
  }

  v10 = logObject_MicroLocation_Default;
  result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "convertToDO: model's modelUUID has no value", buf, 2u);
  }

  retstr->var0.var0 = 0;
  *(&retstr[1].var0.var4 + 96) = 0;
LABEL_61:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

@end