@interface MXIRecording
- (MXIRecording)initWithURL:(id)l device:(id)device;
- (id)captureTexture:(id)texture;
- (id)captureTexture:(id)texture commandBuffer:(id)buffer;
- (void)captureCommand:(id)command withArgs:(id)args;
@end

@implementation MXIRecording

- (MXIRecording)initWithURL:(id)l device:(id)device
{
  lCopy = l;
  deviceCopy = device;
  v61.receiver = self;
  v61.super_class = MXIRecording;
  v13 = [(MXIRecording *)&v61 init];
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v9, v10, v11, v12);
  v60 = 0;
  v19 = objc_msgSend_path(lCopy, v15, v16, v17, v18);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v14, v20, v19, &v60, v21);

  v26 = objc_msgSend_URLByAppendingPathComponent_(lCopy, v23, @"mxi_recording.json", v24, v25);
  v31 = v26;
  if (v60 == 1 && (objc_msgSend_path(v26, v27, v28, v29, v30), v32 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend_fileExistsAtPath_(v14, v33, v32, v34, v35), v32, v36))
  {
    v40 = objc_msgSend_path(lCopy, v27, v37, v38, v39);
    objc_msgSend_removeItemAtPath_error_(v14, v41, v40, 0, v42);
  }

  else if (isDirectory)
  {
LABEL_9:

    v58 = 0;
    goto LABEL_10;
  }

  if (!objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v14, v27, lCopy, 1, 0, 0))
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v13->_directoryURL, l);
  objc_storeStrong(&v13->_jsonURL, v31);
  v43 = objc_opt_new();
  commands = v13->_commands;
  v13->_commands = v43;

  v45 = dispatch_queue_create("com.apple.mxi.recording", 0);
  v50 = objc_msgSend_newSharedEvent(deviceCopy, v46, v47, v48, v49);
  event = v13->_event;
  v13->_event = v50;

  v52 = objc_alloc(MEMORY[0x277CD6FD8]);
  v56 = objc_msgSend_initWithDispatchQueue_(v52, v53, v45, v54, v55);
  listener = v13->_listener;
  v13->_listener = v56;

  v13->_nextValue = 0;
LABEL_8:
  v58 = v13;
LABEL_10:

  return v58;
}

- (void)captureCommand:(id)command withArgs:(id)args
{
  v19[2] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  argsCopy = args;
  commands = self->_commands;
  v18[0] = @"command";
  v18[1] = @"args";
  v19[0] = commandCopy;
  v19[1] = argsCopy;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v19, v18, 2);
  objc_msgSend_addObject_(commands, v11, v10, v12, v13);

  v15 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x277CCAAA0], v14, self->_commands, 9, 0);
  objc_msgSend_writeToURL_atomically_(v15, v16, self->_jsonURL, 1, v17);
}

- (id)captureTexture:(id)texture
{
  textureCopy = texture;
  if (textureCopy)
  {
    v9 = MEMORY[0x277CCACA8];
    texureIndex = self->_texureIndex;
    self->_texureIndex = texureIndex + 1;
    v11 = objc_msgSend_stringWithFormat_(v9, v4, @"%05d.ktx", v6, v7, texureIndex);
    v15 = objc_msgSend_URLByAppendingPathComponent_(self->_directoryURL, v12, v11, v13, v14);
    v20 = objc_msgSend_path(v15, v16, v17, v18, v19);
    v21 = v20;
    v26 = objc_msgSend_UTF8String(v21, v22, v23, v24, v25);
    v29 = &unk_28449BD98;
    v30 = fopen(v26, "wb");

    if (image::WriteKTX(&v29, textureCopy))
    {
      v27 = v11;
    }

    else
    {
      v27 = 0;
    }

    v29 = &unk_28449BD98;
    fclose(v30);
  }

  else
  {
    v27 = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5, v6, v7);
  }

  return v27;
}

- (id)captureTexture:(id)texture commandBuffer:(id)buffer
{
  textureCopy = texture;
  bufferCopy = buffer;
  if (textureCopy)
  {
    v12 = MEMORY[0x277CCACA8];
    texureIndex = self->_texureIndex;
    self->_texureIndex = texureIndex + 1;
    v14 = objc_msgSend_stringWithFormat_(v12, v7, @"%05d.ktx", v9, v10, texureIndex);
    v18 = objc_msgSend_URLByAppendingPathComponent_(self->_directoryURL, v15, v14, v16, v17);
    nextValue = self->_nextValue;
    v20 = nextValue + 1;
    v21 = nextValue + 2;
    self->_nextValue = v21;
    objc_msgSend_encodeSignalEvent_value_(bufferCopy, v22, self->_event, v20, v23);
    objc_msgSend_encodeWaitForEvent_value_(bufferCopy, v24, self->_event, v21, v25);
    event = self->_event;
    listener = self->_listener;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_22F9DDC60;
    v33[3] = &unk_2788ADD20;
    v28 = v18;
    v34 = v28;
    v35 = textureCopy;
    v36 = v21;
    objc_msgSend_notifyListener_atValue_block_(event, v29, listener, v20, v33);
    v30 = v35;
    v31 = v14;
  }

  else
  {
    v31 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8, v9, v10);
  }

  return v31;
}

@end