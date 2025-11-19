@interface NRMigrator
+ (id)migrationDataPreRestoreForConsentedDevices:(id)a3;
+ (id)sharedMigrator;
+ (void)ingestPostRestoreMigrationDataForConsentedDevices:(id)a3;
- (BOOL)migrationIsAvailable;
- (NSArray)devicesExpectedToBeMigratableAfterRestore;
- (NSArray)migratableDevices;
- (NSArray)migratableDevicesRequiringConsent;
- (id)UDIDUUID;
- (id)devicesFromMigrationConsentRequestData:(id)a3;
- (id)lastMigrationRequestPhoneName;
- (id)migrationConsentRequestData;
- (void)beginMigrationWithDevice:(id)a3 passcode:(id)a4 withBlock:(id)a5;
- (void)beginMigrationWithDevice:(id)a3 withCompletion:(id)a4;
- (void)isPhoneReadyToMigrateDevice:(id)a3 withCompletion:(id)a4;
@end

@implementation NRMigrator

+ (id)sharedMigrator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__NRMigrator_sharedMigrator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED6F0A58 != -1)
  {
    dispatch_once(&qword_1ED6F0A58, block);
  }

  v2 = qword_1ED6F0A50;

  return v2;
}

uint64_t __28__NRMigrator_sharedMigrator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED6F0A50;
  qword_1ED6F0A50 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)UDIDUUID
{
  if (a1)
  {
    v1 = MGCopyAnswer();
    v2 = [v1 dataUsingEncoding:4];
    v3 = [v2 NRSHA256];

    v4 = [v3 subdataWithRange:{0, 16}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)devicesFromMigrationConsentRequestData:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_DEFAULT, "devicesFromMigrationConsentRequestData called", buf, 2u);
    }
  }

  *buf = 0;
  v54 = buf;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__2;
  v57 = __Block_byref_object_dispose__2;
  v58 = 0;
  v7 = v43;
  if (v43)
  {
    v42 = [[NRPBCompressedData alloc] initWithData:v43];
    if ([(NRPBCompressedData *)v42 compressed])
    {
      v8 = malloc_type_malloc(0x2000uLL, 0x100004077774924uLL);
      if (!v8)
      {
LABEL_32:

        v7 = *(v54 + 5);
        goto LABEL_33;
      }

      v9 = [(NRPBCompressedData *)v42 possiblyCompressedData];
      v10 = v9;
      v11 = [v9 bytes];
      v12 = [(NRPBCompressedData *)v42 possiblyCompressedData];
      v13 = compression_decode_buffer(v8, 0x2000uLL, v11, [v12 length], 0, COMPRESSION_ZLIB);

      if (v13)
      {
        v41 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:v13];
      }

      else
      {
        v41 = 0;
      }

      free(v8);
    }

    else
    {
      v41 = [(NRPBCompressedData *)v42 possiblyCompressedData];
    }

    if (v41)
    {
      v40 = [[NRPBMigrationDevices alloc] initWithData:v41];
      if (!-[NRPBMigrationDevices hasPhoneUDIDHash](v40, "hasPhoneUDIDHash") || (-[NRPBMigrationDevices phoneUDIDHash](v40, "phoneUDIDHash"), v14 = objc_claimAutoreleasedReturnValue(), -[NRMigrator UDIDUUID](self), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v14 isEqual:v15], v15, v14, (v16 & 1) == 0))
      {
        v44 = objc_opt_new();
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v17 = [(NRPBMigrationDevices *)v40 devices];
        v18 = [v17 countByEnumeratingWithState:&v49 objects:v60 count:16];
        if (v18)
        {
          v19 = *v50;
          obj = v17;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v50 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v49 + 1) + 8 * i);
              v22 = [v21 iD];
              if (v22)
              {
                v23 = [v21 name];
                if (v23)
                {
                  v24 = [v21 advertisedName];
                  v25 = v24 == 0;

                  if (!v25)
                  {
                    v59[0] = 0;
                    v59[1] = 0;
                    v26 = [v21 iD];
                    [v26 getBytes:v59 length:16];

                    v27 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v59];
                    v28 = [v21 name];
                    v29 = [v21 advertisedName];
                    v30 = objc_opt_new();
                    v31 = [[NRMutableDeviceProperty alloc] initWithValue:v27];
                    [v30 setObject:v31 forKeyedSubscript:@"pairingID"];
                    v32 = [[NRMutableDeviceProperty alloc] initWithValue:v28];
                    [v30 setObject:v32 forKeyedSubscript:@"name"];
                    v33 = [[NRMutableDeviceProperty alloc] initWithValue:v29];
                    [v30 setObject:v33 forKeyedSubscript:@"advertisedName"];
                    [v44 setObject:v30 forKeyedSubscript:v27];
                  }
                }

                else
                {
                }
              }
            }

            v17 = obj;
            v18 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
          }

          while (v18);
        }

        v34 = [[NRPairedDeviceRegistry alloc] initWithBoost:0 disconnected:1];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __53__NRMigrator_devicesFromMigrationConsentRequestData___block_invoke;
        v47[3] = &unk_1E86DC378;
        v35 = v44;
        v48 = v35;
        [(NRRegistry *)v34 deasyncGrabRegistryWithWriteBlock:v47];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __53__NRMigrator_devicesFromMigrationConsentRequestData___block_invoke_2;
        v46[3] = &unk_1E86DC108;
        v46[4] = buf;
        [(NRPairedDeviceRegistry *)v34 threadIsBlockedWaitingOn_nanoregistryd_syncGrabLegacyRegistryWithBlock:v46];
        if (![*(v54 + 5) count])
        {
          v36 = *(v54 + 5);
          *(v54 + 5) = 0;
        }
      }
    }

    goto LABEL_32;
  }

LABEL_33:
  v37 = v7;
  _Block_object_dispose(buf, 8);

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

id __53__NRMigrator_devicesFromMigrationConsentRequestData___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [NRMutableDeviceCollection diffFrom:v2 to:*(a1 + 32)];

  return v3;
}

uint64_t __53__NRMigrator_devicesFromMigrationConsentRequestData___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 allValues];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (id)migrationConsentRequestData
{
  v94 = *MEMORY[0x1E69E9840];
  v2 = nr_framework_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_framework_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0ADF000, v4, OS_LOG_TYPE_DEFAULT, "migrationConsentRequestData called", buf, 2u);
    }
  }

  v5 = [(NRMigrator *)self devicesExpectedToBeMigratableAfterRestore];
  v6 = v5;
  if (self && (v86 = 0u, v87 = 0u, v84 = 0u, v85 = 0u, (v7 = [v5 countByEnumeratingWithState:&v84 objects:buf count:16]) != 0))
  {
    v8 = v7;
    v9 = 0;
    v10 = *v85;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v85 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v84 + 1) + 8 * i);
        v13 = nr_framework_log();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

        if (v14)
        {
          v15 = nr_framework_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v88 = 0;
            _os_log_impl(&dword_1E0ADF000, v15, OS_LOG_TYPE_DEFAULT, "NRDevice found", v88, 2u);
          }
        }

        if ([v12 canMigrate])
        {
          v16 = nr_framework_log();
          v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

          if (v17)
          {
            v18 = nr_framework_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *v88 = 0;
              _os_log_impl(&dword_1E0ADF000, v18, OS_LOG_TYPE_DEFAULT, "NRDevice supports migration", v88, 2u);
            }
          }

          v19 = objc_opt_new();
          *v88 = 0;
          v89 = 0;
          v20 = [v12 valueForProperty:@"pairingID"];
          [v20 getUUIDBytes:v88];

          v21 = [MEMORY[0x1E695DEF0] dataWithBytes:v88 length:16];
          [v19 setID:v21];

          v22 = [v12 valueForProperty:@"name"];
          [v19 setName:v22];

          v23 = [v12 valueForProperty:@"advertisedName"];
          [v19 setAdvertisedName:v23];

          if (!v9)
          {
            v24 = nr_framework_log();
            v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

            if (v25)
            {
              v26 = nr_framework_log();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *v83 = 0;
                _os_log_impl(&dword_1E0ADF000, v26, OS_LOG_TYPE_DEFAULT, "protobuf created", v83, 2u);
              }
            }

            v9 = objc_opt_new();
          }

          [v9 addDevices:v19];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v84 objects:buf count:16];
    }

    while (v8);
    if (v9)
    {
      v27 = [(NRMigrator *)self UDIDUUID];
      [v9 setPhoneUDIDHash:v27];
    }
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v32 = 0;
    goto LABEL_73;
  }

  v29 = 0;
  v30 = 0;
  *&v28 = 67109120;
  v78 = v28;
  v79 = v9;
  do
  {
    v82 = v30;
    v31 = v9;
    if (self)
    {
      v33 = nr_framework_log();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

      if (v34)
      {
        v35 = nr_framework_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [v31 data];
          v37 = [v36 length];
          *buf = v78;
          v91 = v37;
          _os_log_impl(&dword_1E0ADF000, v35, OS_LOG_TYPE_DEFAULT, "%d bytes of protobuf created", buf, 8u);
        }
      }

      v38 = objc_opt_new();
      v39 = [v31 data];
      v40 = [v39 bytes];

      v41 = [v31 data];
      v42 = [v41 length];

      v43 = malloc_type_malloc(v42, 0x100004077774924uLL);
      v44 = v43;
      if (v43 && (v45 = compression_encode_buffer(v43, v42, v40, v42, 0, COMPRESSION_ZLIB)) != 0)
      {
        v46 = v45;
        v47 = nr_framework_log();
        v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);

        if (v48)
        {
          v49 = nr_framework_log();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v78;
            v91 = v46;
            _os_log_impl(&dword_1E0ADF000, v49, OS_LOG_TYPE_DEFAULT, "data compressed! It is now only %d bytes", buf, 8u);
          }
        }

        [v38 setCompressed:{1, v78}];
        v50 = [MEMORY[0x1E695DEF0] dataWithBytes:v44 length:v46];
        [v38 setPossiblyCompressedData:v50];
      }

      else
      {
        v51 = nr_framework_log();
        v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);

        if (v52)
        {
          v53 = nr_framework_log();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E0ADF000, v53, OS_LOG_TYPE_DEFAULT, "data did not compress. Bummer.", buf, 2u);
          }
        }

        [v38 setCompressed:{0, v78}];
        v54 = [v31 data];
        [v38 setPossiblyCompressedData:v54];

        if (!v44)
        {
          goto LABEL_53;
        }
      }

      free(v44);
LABEL_53:
      v32 = [v38 data];

      goto LABEL_54;
    }

    v32 = 0;
LABEL_54:

    if ([v32 length] < 0x201)
    {
      break;
    }

    v80 = v32;
    v55 = v82;
    if (!self)
    {
      goto LABEL_70;
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v56 = [v31 devices];
    v57 = [v56 countByEnumeratingWithState:&v84 objects:buf count:16];
    if (!v57)
    {
      goto LABEL_69;
    }

    v58 = v57;
    v59 = *v85;
    do
    {
      v60 = 0;
      do
      {
        if (*v85 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v84 + 1) + 8 * v60);
        v62 = [v61 name];
        v63 = [v62 length];
        v64 = v62;
        if (v63 < 0x15)
        {
          goto LABEL_64;
        }

        v65 = v63 - v63 / 3;
        v66 = malloc_type_malloc(2 * v65, 0x68F83E02uLL);
        if (v66)
        {
          v67 = v66;
          [v62 getCharacters:v66 range:{0, v65}];
          v64 = [MEMORY[0x1E696AEC0] stringWithCharacters:v67 length:v65];

          free(v67);
LABEL_64:
          v68 = v64;
          v69 = v68;
          goto LABEL_65;
        }

        v69 = 0;
        v68 = v62;
LABEL_65:

        [v61 setName:v69];
        ++v60;
      }

      while (v58 != v60);
      v70 = [v56 countByEnumeratingWithState:&v84 objects:buf count:16];
      v58 = v70;
    }

    while (v70);
LABEL_69:

    v55 = v82;
LABEL_70:
    v30 = v55 + 1;
    v9 = v79;
    v32 = v80;
    v29 = v80;
  }

  while (v30 != 10);
LABEL_73:
  if ([v32 length] > 0x200)
  {
    v72 = nr_framework_log();
    v73 = os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);

    if (v73)
    {
      v74 = nr_framework_log();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v77 = [v32 length];
        *buf = 67109376;
        v91 = 512;
        v92 = 2048;
        v93 = v77;
        _os_log_error_impl(&dword_1E0ADF000, v74, OS_LOG_TYPE_ERROR, "migrationConsentRequestData called- could not squish protobuf data to %d bytes (it's %ld bytes). Not returning any data!", buf, 0x12u);
      }
    }

    v71 = 0;
  }

  else
  {
    v71 = v32;
  }

  v75 = *MEMORY[0x1E69E9840];

  return v71;
}

- (BOOL)migrationIsAvailable
{
  v2 = [(NRMigrator *)self migratableDevices];
  v3 = v2 != 0;

  return v3;
}

- (NSArray)devicesExpectedToBeMigratableAfterRestore
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getDevicesMatching:&__block_literal_global_642];

  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __55__NRMigrator_devicesExpectedToBeMigratableAfterRestore__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForProperty:@"isPaired"];
  if ([v3 BOOLValue])
  {
    v4 = [v2 canMigrate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)migratableDevicesRequiringConsent
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = [v3 getAllDevicesWithArchivedDevicesMatching:&__block_literal_global_644];

  v5 = [MEMORY[0x1E695DFA8] setWithArray:v4];
  v6 = MEMORY[0x1E695DFD8];
  v7 = [(NRMigrator *)self migratableDevices];
  v8 = [v6 setWithArray:v7];

  [v5 minusSet:v8];
  v9 = [v5 allObjects];
  if ([v9 count])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __47__NRMigrator_migratableDevicesRequiringConsent__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForProperty:@"isArchived"];
  if ([v3 BOOLValue])
  {
    v4 = [v2 valueForProperty:@"isAltAccount"];
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)migratableDevices
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getAllDevicesWithArchivedDevicesMatching:&__block_literal_global_648];

  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL __31__NRMigrator_migratableDevices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForProperty:@"isAltAccount"];
  if ([v3 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 valueForProperty:@"isArchived"];
    if ([v5 BOOLValue])
    {
      v6 = [v2 valueForProperty:@"migrationConsent"];
      if ([v6 BOOLValue])
      {
        v7 = [v2 valueForProperty:@"migrationConsentDate"];
        v8 = v7;
        if (v7)
        {
          [v7 timeIntervalSinceNow];
          v4 = v9 >= -86400.0 && v9 <= 0.0;
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)migrationDataPreRestoreForConsentedDevices:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v33 = [v3 count];
      _os_log_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_DEFAULT, "Generating pre-restore migration data blob for (%lu) devices", buf, 0xCu);
    }
  }

  v7 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v28 + 1) + 8 * i) pairingID];
        v14 = [v13 UUIDString];

        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v10);
  }

  v27 = 0;
  v15 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:&v27];
  v16 = v27;
  v17 = nr_framework_log();
  v18 = v17;
  if (v16)
  {
    v19 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      v20 = nr_framework_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v33 = v16;
        v34 = 2112;
        v35 = v7;
        _os_log_error_impl(&dword_1E0ADF000, v20, OS_LOG_TYPE_ERROR, "Failed to serialize with error (%@) device IDs: (%@)", buf, 0x16u);
      }
    }

    v21 = 0;
  }

  else
  {
    v22 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      v23 = nr_framework_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v15 length];
        *buf = 134217984;
        v33 = v24;
        _os_log_impl(&dword_1E0ADF000, v23, OS_LOG_TYPE_DEFAULT, "Generated pre-restore migration data blob of length (%lu bytes)", buf, 0xCu);
      }
    }

    v21 = v15;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (void)ingestPostRestoreMigrationDataForConsentedDevices:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v51 = [v3 length];
      _os_log_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_DEFAULT, "Ingesting post-restore migration data blob of length (%lu bytes)", buf, 0xCu);
    }
  }

  if ([v3 length])
  {
    v48 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v48];
    v8 = v48;
    if (v8)
    {
      v9 = nr_framework_log();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (!v10)
      {
        goto LABEL_10;
      }

      v11 = nr_framework_log();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 138412546;
      v51 = v8;
      v52 = 2112;
      v53 = v3;
      v34 = "Failed to unserialize with error (%@) pre-restore data : (%@)";
      v35 = v11;
      v36 = 22;
      goto LABEL_45;
    }

    if (!v7)
    {
      v32 = nr_framework_log();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);

      if (!v33)
      {
        goto LABEL_10;
      }

      v11 = nr_framework_log();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v34 = "Unserialization returned nil object without error";
      v35 = v11;
      v36 = 2;
LABEL_45:
      _os_log_error_impl(&dword_1E0ADF000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v7;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v13 = v7;
      v14 = [v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (!v14)
      {
        goto LABEL_35;
      }

      v15 = v14;
      v16 = *v45;
      while (1)
      {
        v17 = 0;
        do
        {
          if (*v45 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v44 + 1) + 8 * v17);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v18];
            if (v19)
            {
              v20 = +[NRMigrator sharedMigrator];
              v42[0] = MEMORY[0x1E69E9820];
              v42[1] = 3221225472;
              v42[2] = __64__NRMigrator_ingestPostRestoreMigrationDataForConsentedDevices___block_invoke;
              v42[3] = &unk_1E86DC3A0;
              v43 = v19;
              [v20 setMigrationConsented:1 forDeviceID:v43 withBlock:v42];

              v21 = v43;
            }

            else
            {
              v27 = nr_framework_log();
              v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

              if (!v28)
              {
                v19 = 0;
                goto LABEL_28;
              }

              v21 = nr_framework_log();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v51 = v18;
                v25 = v21;
                v26 = "Failed to convert unserialized deviceID (%@) into a UUID";
LABEL_33:
                _os_log_error_impl(&dword_1E0ADF000, v25, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);
              }
            }

            goto LABEL_28;
          }

          v22 = nr_framework_log();
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

          if (!v23)
          {
            goto LABEL_29;
          }

          v19 = nr_framework_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v24 = objc_opt_class();
            *buf = 138412290;
            v51 = v24;
            v21 = v24;
            v25 = v19;
            v26 = "Unserialization deviceID not a string: (%@)";
            goto LABEL_33;
          }

LABEL_28:

LABEL_29:
          ++v17;
        }

        while (v15 != v17);
        v29 = [v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
        v15 = v29;
        if (!v29)
        {
LABEL_35:

          v30 = nr_framework_log();
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);

          v7 = v41;
          if (v31)
          {
            v11 = nr_framework_log();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E0ADF000, v11, OS_LOG_TYPE_DEFAULT, "Ingesting post-restore migration data complete", buf, 2u);
            }

            goto LABEL_9;
          }

          goto LABEL_10;
        }
      }
    }

    v37 = nr_framework_log();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);

    if (v38)
    {
      v11 = nr_framework_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v39 = objc_opt_class();
        *buf = 138412290;
        v51 = v39;
        v40 = v39;
        _os_log_error_impl(&dword_1E0ADF000, v11, OS_LOG_TYPE_ERROR, "Unserialized root object not an array (%@)", buf, 0xCu);
      }

LABEL_9:
    }

LABEL_10:
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __64__NRMigrator_ingestPostRestoreMigrationDataForConsentedDevices___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = nr_framework_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = nr_framework_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = 138412546;
        v10 = v3;
        v11 = 2112;
        v12 = v8;
        _os_log_error_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_ERROR, "Failed with error: (%@) to apply consent for deviceID: %@", &v9, 0x16u);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)beginMigrationWithDevice:(id)a3 passcode:(id)a4 withBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[NRPairedDeviceRegistry sharedInstance];
  [v10 beginMigrationWithDevice:v9 passcode:v8 withBlock:v7];
}

- (void)beginMigrationWithDevice:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NRPairedDeviceRegistry sharedInstance];
  [v7 beginMigrationWithDevice:v6 withCompletion:v5];
}

- (id)lastMigrationRequestPhoneName
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 lastMigrationRequestPhoneName];

  return v3;
}

- (void)isPhoneReadyToMigrateDevice:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NRPairedDeviceRegistry sharedInstance];
  [v7 isPhoneReadyToMigrateDevice:v6 withCompletion:v5];
}

@end