@interface DIConvertManager
- (BOOL)runWithError:(id *)a3;
- (BOOL)validateFormatsWithDiskImage:(void *)a3 error:(id *)a4;
- (DIBaseParams)outputParams;
- (DIConvertManager)initWithParams:(id)a3;
- (void)convertUserDataWithDiskImage:(void *)a3 destination:(void *)a4;
- (void)dealloc;
@end

@implementation DIConvertManager

- (DIConvertManager)initWithParams:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = DIConvertManager;
  v6 = [(DIConvertManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_convertParams, a3);
    v8 = [NSProgress progressWithTotalUnitCount:100];
    progress = v7->_progress;
    v7->_progress = v8;
  }

  return v7;
}

- (DIBaseParams)outputParams
{
  v3 = [(DIConvertManager *)self convertParams];
  if ([v3 inPlaceConversion])
  {
    v4 = [(DIConvertManager *)self convertParams];
  }

  else
  {
    v5 = [(DIConvertManager *)self convertParams];
    v4 = [v5 outputParams];
  }

  return v4;
}

- (BOOL)validateFormatsWithDiskImage:(void *)a3 error:(id *)a4
{
  v7 = [(DIConvertManager *)self convertParams];
  v8 = [v7 inPlaceConversion];

  if (!v8)
  {
    return 1;
  }

  v9 = [(DIConvertManager *)self convertParams];
  v10 = [v9 outputFormat];
  if ((v10 - 3) >= 4 && v10 != 8)
  {

    v16 = @"In-place conversion to this image format is not supported";
    goto LABEL_16;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  v11 = *a3;
  v12 = **a3;
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

    return [DIError failWithPOSIXCode:22 description:v16 error:a4];
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

  return [DIError failWithPOSIXCode:22 verboseInfo:@"Cannot convert this image in-place error:as it contains unordered UDIF runs", a4];
}

- (void)convertUserDataWithDiskImage:(void *)a3 destination:(void *)a4
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
  v11 = [(DIConvertManager *)self convertParams];
  v12 = [v11 outputFormat];
  if ((v12 - 3) < 4 || v12 == 8)
  {
  }

  else
  {

    (*(**a3 + 112))(buf);
    if (CFDictionaryGetCount(*buf))
    {
      (*(**a4 + 120))(*a4, *buf);
    }

    sub_10000C8E0(buf);
  }
}

- (BOOL)runWithError:(id *)a3
{
  v47 = 0;
  v5 = [(DIConvertManager *)self convertParams];
  v6 = [v5 diskImageParamsXPC];
  v7 = [(DIConvertManager *)self outputParams];
  v8 = [v7 shadowChain];
  v9 = [v8 shouldValidate];
  if (v6)
  {
    [v6 createDiskImageWithCache:0 shadowValidation:v9];
    v10 = *buf;
  }

  else
  {
    v10 = 0;
  }

  v47 = v10;
  *buf = 0;

  v11 = [(DIConvertManager *)self outputParams];
  v12 = [v11 diskImageParamsXPC];
  v13 = [v12 lockBackendsWithError:a3];

  if (v13)
  {
    v14 = [(DIConvertManager *)self convertParams];
    if ([v14 inPlaceConversion])
    {
    }

    else
    {
      v15 = [(DIConvertManager *)self convertParams];
      v16 = [v15 diskImageParamsXPC];
      v17 = [v16 lockBackendsWithError:a3];

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
      v20 = [(DIConvertManager *)self convertParams];
      v21 = +[DIHelpers stringWithImageFormat:](DIHelpers, "stringWithImageFormat:", [v20 outputFormat]);
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
        v24 = [(DIConvertManager *)self convertParams];
        v25 = +[DIHelpers stringWithImageFormat:](DIHelpers, "stringWithImageFormat:", [v24 outputFormat]);
        *buf = 0x2104100302;
        *v49 = 2080;
        *&v49[2] = "[DIConvertManager runWithError:]";
        *&v49[10] = 2114;
        *&v49[12] = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%.*s: Converting to %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v18;
    if ([(DIConvertManager *)self validateFormatsWithDiskImage:v47 error:a3])
    {
      v26 = [(DIConvertManager *)self progress];
      v56[0] = off_100202948;
      v56[1] = v26;
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
      [v26 setCancellationHandler:v42];
      *buf = &v47;
      v27 = [(DIConvertManager *)self convertParams];
      *v49 = [v27 outputFormat];
      v28 = [(DIConvertManager *)self outputParams];
      v29 = v28;
      if (v28)
      {
        [v28 backend];
      }

      else
      {
        *&v49[8] = 0uLL;
      }

      v31 = [(DIConvertManager *)self convertParams:v40];
      v50 = [v31 blockSize];
      v32 = [(DIConvertManager *)self convertParams];
      v51 = [v32 maxRawUDIFRunSize];
      v33 = [(DIConvertManager *)self convertParams];
      v52 = [v33 blockSize];
      v34 = [(DIConvertManager *)self convertParams];
      v53 = [v34 conversionMethod];
      v54 = 0;
      sub_100010DFC(v55, v56);
      v55[4] = v44 + 3;

      v35 = [(DIConvertManager *)self convertParams];
      v36 = [v35 useFormatMappingInfo];

      if (v36)
      {
        v54 |= 1u;
      }

      v37 = [(DIConvertManager *)self outputParams];
      v38 = [v37 hasUnlockedBackend];

      if (v38)
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
  v3 = [(DIConvertManager *)self outputParams];
  v4 = v3;
  if (v3)
  {
    [v3 backend];
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