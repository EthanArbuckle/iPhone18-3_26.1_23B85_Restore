@interface DIConvertManager
- (BOOL)runWithError:(id *)error;
- (BOOL)validateFormatsWithDiskImage:(void *)image error:(id *)error;
- (DIBaseParams)outputParams;
- (DIConvertManager)initWithParams:(id)params;
- (void)convertUserDataWithDiskImage:(void *)image destination:(void *)destination;
- (void)dealloc;
@end

@implementation DIConvertManager

- (DIConvertManager)initWithParams:(id)params
{
  paramsCopy = params;
  v11.receiver = self;
  v11.super_class = DIConvertManager;
  v6 = [(DIConvertManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_convertParams, params);
    v8 = [NSProgress progressWithTotalUnitCount:100];
    progress = v7->_progress;
    v7->_progress = v8;
  }

  return v7;
}

- (DIBaseParams)outputParams
{
  convertParams = [(DIConvertManager *)self convertParams];
  if ([convertParams inPlaceConversion])
  {
    convertParams2 = [(DIConvertManager *)self convertParams];
  }

  else
  {
    convertParams3 = [(DIConvertManager *)self convertParams];
    convertParams2 = [convertParams3 outputParams];
  }

  return convertParams2;
}

- (BOOL)validateFormatsWithDiskImage:(void *)image error:(id *)error
{
  convertParams = [(DIConvertManager *)self convertParams];
  inPlaceConversion = [convertParams inPlaceConversion];

  if (!inPlaceConversion)
  {
    return 1;
  }

  convertParams2 = [(DIConvertManager *)self convertParams];
  outputFormat = [convertParams2 outputFormat];
  if ((outputFormat - 3) >= 4 && outputFormat != 8)
  {

    v16 = @"In-place conversion to this image format is not supported";
    goto LABEL_16;
  }

  if (!image)
  {
    goto LABEL_10;
  }

  v11 = *image;
  v12 = **image;
  v14 = *v11;
  if (!v13)
  {
    if (v15 && v15[152] != 1)
    {
      goto LABEL_11;
    }

LABEL_10:
    v16 = @"In-place conversion from this image format is not supported";
LABEL_16:

    return [DIError failWithPOSIXCode:22 description:v16 error:error];
  }

  if (!v15)
  {
LABEL_12:
    v17 = *v11;
    {
      v16 = @"Cannot convert in-place with a shadow file";
      goto LABEL_16;
    }

    return 1;
  }

LABEL_11:
  if (v15[153])
  {
    goto LABEL_12;
  }

  return [DIError failWithPOSIXCode:22 verboseInfo:@"Cannot convert this image in-place error:as it contains unordered UDIF runs", error];
}

- (void)convertUserDataWithDiskImage:(void *)image destination:(void *)destination
{
  v7 = *__error();
  if (sub_1000E044C())
  {
    v8 = sub_1000E03D8();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    *&buf[4] = 61;
    v14 = 2080;
    v15 = "[DIConvertManager convertUserDataWithDiskImage:destination:]";
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E03D8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 61;
      v14 = 2080;
      v15 = "[DIConvertManager convertUserDataWithDiskImage:destination:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Converting user data", buf, 0x12u);
    }
  }

  *__error() = v7;
  convertParams = [(DIConvertManager *)self convertParams];
  outputFormat = [convertParams outputFormat];
  if ((outputFormat - 3) < 4 || outputFormat == 8)
  {
  }

  else
  {

    (*(**image + 112))(buf);
    if (CFDictionaryGetCount(*buf))
    {
      (*(**destination + 120))(*destination, *buf);
    }

    sub_10000C8E0(buf);
  }
}

- (BOOL)runWithError:(id *)error
{
  v47 = 0;
  convertParams = [(DIConvertManager *)self convertParams];
  diskImageParamsXPC = [convertParams diskImageParamsXPC];
  outputParams = [(DIConvertManager *)self outputParams];
  shadowChain = [outputParams shadowChain];
  shouldValidate = [shadowChain shouldValidate];
  if (diskImageParamsXPC)
  {
    [diskImageParamsXPC createDiskImageWithCache:0 shadowValidation:shouldValidate];
    v10 = *buf;
  }

  else
  {
    v10 = 0;
  }

  v47 = v10;
  *buf = 0;

  outputParams2 = [(DIConvertManager *)self outputParams];
  diskImageParamsXPC2 = [outputParams2 diskImageParamsXPC];
  v13 = [diskImageParamsXPC2 lockBackendsWithError:error];

  if (v13)
  {
    convertParams2 = [(DIConvertManager *)self convertParams];
    if ([convertParams2 inPlaceConversion])
    {
    }

    else
    {
      convertParams3 = [(DIConvertManager *)self convertParams];
      diskImageParamsXPC3 = [convertParams3 diskImageParamsXPC];
      v17 = [diskImageParamsXPC3 lockBackendsWithError:error];

      if ((v17 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v18 = *__error();
    if (sub_1000E044C())
    {
      v56[0] = 0;
      v19 = sub_1000E03D8();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      convertParams4 = [(DIConvertManager *)self convertParams];
      v21 = +[DIHelpers stringWithImageFormat:](DIHelpers, "stringWithImageFormat:", [convertParams4 outputFormat]);
      *buf = 68158210;
      *&buf[4] = 33;
      *v49 = 2080;
      *&v49[2] = "[DIConvertManager runWithError:]";
      *&v49[10] = 2114;
      *&v49[12] = v21;
      LODWORD(v41) = 28;
      v40 = buf;
      v22 = _os_log_send_and_compose_impl();

      if (v22)
      {
        fprintf(__stderrp, "%s\n", v22);
        free(v22);
      }
    }

    else
    {
      v23 = sub_1000E03D8();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        convertParams5 = [(DIConvertManager *)self convertParams];
        v25 = +[DIHelpers stringWithImageFormat:](DIHelpers, "stringWithImageFormat:", [convertParams5 outputFormat]);
        *buf = 0x2104100302;
        *v49 = 2080;
        *&v49[2] = "[DIConvertManager runWithError:]";
        *&v49[10] = 2114;
        *&v49[12] = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%.*s: Converting to %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v18;
    if ([(DIConvertManager *)self validateFormatsWithDiskImage:v47 error:error])
    {
      progress = [(DIConvertManager *)self progress];
      v56[0] = off_100202948;
      v56[1] = progress;
      v56[3] = v56;
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      v46 = 0;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10000FC78;
      v42[3] = &unk_1002026F8;
      v42[4] = &v43;
      [progress setCancellationHandler:v42];
      *buf = &v47;
      convertParams6 = [(DIConvertManager *)self convertParams];
      *v49 = [convertParams6 outputFormat];
      outputParams3 = [(DIConvertManager *)self outputParams];
      v29 = outputParams3;
      if (outputParams3)
      {
        [outputParams3 backend];
      }

      else
      {
        *&v49[8] = 0uLL;
      }

      v31 = [(DIConvertManager *)self convertParams:v40];
      blockSize = [v31 blockSize];
      convertParams7 = [(DIConvertManager *)self convertParams];
      maxRawUDIFRunSize = [convertParams7 maxRawUDIFRunSize];
      convertParams8 = [(DIConvertManager *)self convertParams];
      blockSize2 = [convertParams8 blockSize];
      convertParams9 = [(DIConvertManager *)self convertParams];
      conversionMethod = [convertParams9 conversionMethod];
      v54 = 0;
      sub_100010DFC(v55, v56);
      v55[4] = v44 + 3;

      convertParams10 = [(DIConvertManager *)self convertParams];
      useFormatMappingInfo = [convertParams10 useFormatMappingInfo];

      if (useFormatMappingInfo)
      {
        v54 |= 1u;
      }

      outputParams4 = [(DIConvertManager *)self outputParams];
      hasUnlockedBackend = [outputParams4 hasUnlockedBackend];

      if (hasUnlockedBackend)
      {
        v54 |= 2u;
      }

      sub_100126E34(buf);
    }
  }

LABEL_17:
  v30 = v47;
  v47 = 0;
  if (v30)
  {
    (*(*v30 + 16))(v30);
  }

  return 0;
}

- (void)dealloc
{
  outputParams = [(DIConvertManager *)self outputParams];
  v4 = outputParams;
  if (outputParams)
  {
    [outputParams backend];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  sub_10019A824(&v9, &lpsrc);
  if (v10)
  {
    sub_10000367C(v10);
  }

  if (lpsrc)
  {
    v5 = **lpsrc;
    if (v6)
    {
      v7 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v6 + 8))(v6);
      if (v7)
      {
        sub_10000367C(v7);
      }
    }
  }

  if (v12)
  {
    sub_10000367C(v12);
  }

  v8.receiver = self;
  v8.super_class = DIConvertManager;
  [(DIConvertManager *)&v8 dealloc];
}

@end