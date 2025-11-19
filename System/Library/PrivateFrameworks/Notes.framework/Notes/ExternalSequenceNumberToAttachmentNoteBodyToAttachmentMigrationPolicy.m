@interface ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
- (BOOL)createRelationshipsForDestinationInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6;
- (BOOL)endEntityMapping:(id)a3 manager:(id)a4 error:(id *)a5;
- (id)unarchiveObjectWithExternalRepresentation:(id)a3;
@end

@implementation ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy

- (id)unarchiveObjectWithExternalRepresentation:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v23 = 0;
  v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:&v23];
  v6 = v23;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy *)v6 unarchiveObjectWithExternalRepresentation:v7];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [MEMORY[0x277D24F38] supportedArchivedClassNames];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v5 setClass:objc_opt_class() forClassName:*(*(&v19 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v10);
  }

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v5 decodeObjectOfClasses:v15 forKey:*MEMORY[0x277CCA308]];

  [v5 finishDecoding];
  objc_autoreleasePoolPop(v4);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)createDestinationInstancesForSourceInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v42 = a4;
  v43 = a5;
  v44 = v9;
  v38 = [v9 valueForKey:@"externalRepresentation"];
  if (v38)
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [(ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy *)self unarchiveObjectWithExternalRepresentation:v38];
    if ([v11 conformsToProtocol:&unk_286E33538] && objc_msgSend(v11, "conformsToProtocol:", &unk_286E3BCD0))
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v13)
      {
        v14 = *v50;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v50 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v49 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v16 contentID];
              v18 = [v17 length] == 0;

              if (!v18)
              {
                [v10 addObject:v16];
              }
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v13);
      }
    }

    if ([v10 count])
    {
      v19 = [v43 destinationContext];
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = v10;
      v20 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v20)
      {
        v21 = 0x2799AC000uLL;
        v22 = *v46;
        while (2)
        {
          v23 = 0;
          v24 = *(v21 + 3336);
          do
          {
            if (*v46 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v45 + 1) + 8 * v23);
            v26 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"NoteAttachment" inManagedObjectContext:{v19, v38}];
            v27 = [v25 contentID];
            [v26 setValue:v27 forKey:@"contentID"];

            v28 = [v25 preferredFilename];
            if (v28)
            {
              [v26 setValue:v28 forKey:@"filename"];
            }

            else
            {
              v29 = [v25 filename];
              [v26 setValue:v29 forKey:@"filename"];
            }

            v30 = [v25 mimeType];
            [v26 setValue:v30 forKey:@"mimeType"];

            v31 = [v25 regularFileContents];
            v32 = objc_opt_class();
            MethodImplementation = class_getMethodImplementation(v32, v24);
            if (((MethodImplementation)(v26, v24, v31, a6) & 1) == 0)
            {

              v34 = 0;
              goto LABEL_30;
            }

            [v43 associateSourceInstance:v44 withDestinationInstance:v26 forEntityMapping:v42];

            ++v23;
          }

          while (v20 != v23);
          v20 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
          v21 = 0x2799AC000;
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v34 = 1;
LABEL_30:
    }

    else
    {
      v34 = 1;
    }
  }

  else
  {
    v34 = 1;
  }

  v35 = [v44 managedObjectContext];
  [v35 refreshObject:v44 mergeChanges:0];

  v36 = *MEMORY[0x277D85DE8];
  return v34;
}

- (BOOL)createRelationshipsForDestinationInstance:(id)a3 entityMapping:(id)a4 manager:(id)a5 error:(id *)a6
{
  v30[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = [a4 name];
  v30[0] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v13 = [v10 sourceInstancesForEntityMappingNamed:v11 destinationInstances:v12];
  v14 = [v13 lastObject];

  v15 = [v14 valueForKey:@"owner"];
  v29 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v17 = [v10 destinationInstancesForEntityMappingNamed:@"NoteToNote" sourceInstances:v16];

  v18 = [v17 lastObject];

  if (v18)
  {
    [v9 setValue:v18 forKey:@"note"];
  }

  else if (a6)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = [v9 valueForKey:@"contentID"];
    v21 = [v19 stringWithFormat:@"Can't find destination note for attachment with CID: %@", v20];

    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277D36168];
    v27 = *MEMORY[0x277D36170];
    v28 = v21;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *a6 = [v22 errorWithDomain:v23 code:100 userInfo:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v18 != 0;
}

- (BOOL)endEntityMapping:(id)a3 manager:(id)a4 error:(id *)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v56.receiver = self;
  v56.super_class = ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy;
  v31 = a3;
  v32 = a4;
  v30 = a5;
  if ([NSEntityMigrationPolicy endEntityMapping:sel_endEntityMapping_manager_error_ manager:v31 error:?])
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy_;
    v54 = __Block_byref_object_dispose_;
    v55 = 0;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __104__ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy_endEntityMapping_manager_error___block_invoke;
    v49[3] = &unk_2799AC918;
    v49[4] = &v50;
    v27 = MEMORY[0x25F88B080](v49);
    v29 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NoteAttachment"];
    v7 = [v32 destinationContext];
    v28 = [v7 executeFetchRequest:v29 error:a5];

    if (!v28)
    {
      goto LABEL_34;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v28;
    v8 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v8)
    {
      v35 = *v46;
      do
      {
        v9 = 0;
        v36 = v8;
        do
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v39 = v9;
          v10 = *(*(&v45 + 1) + 8 * v9);
          context = objc_autoreleasePoolPush();
          v11 = [v10 valueForKeyPath:@"note.body.externalRepresentation"];
          v37 = v11;
          if (v11)
          {
            v12 = [(ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy *)self unarchiveObjectWithExternalRepresentation:v11];
            v40 = [v12 mutableCopy];
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v13 = v12;
            v14 = [v13 countByEnumeratingWithState:&v41 objects:v57 count:16];
            if (v14)
            {
              v15 = 0;
              v16 = *v42;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v42 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v41 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v19 = [v18 contentID];
                    v20 = [v10 valueForKey:@"contentID"];
                    v21 = [v19 isEqual:v20];

                    if (v21)
                    {
                      [v40 removeObject:v18];
                      v15 = 1;
                    }
                  }
                }

                v14 = [v13 countByEnumeratingWithState:&v41 objects:v57 count:16];
              }

              while (v14);

              if (v15)
              {
                if ([v40 count])
                {
                  v22 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v40 requiringSecureCoding:1 error:0];
                }

                else
                {
                  v22 = 0;
                }

                [v10 setValue:v22 forKeyPath:@"note.body.externalRepresentation"];
              }
            }

            else
            {
            }
          }

          objc_autoreleasePoolPop(context);
          v9 = v39 + 1;
        }

        while (v39 + 1 != v36);
        v8 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v8);
    }

    v23 = v51[5];
    if (!v23)
    {
      v24 = 1;
      goto LABEL_36;
    }

    if (v30)
    {
      v24 = 0;
      *v30 = v23;
    }

    else
    {
LABEL_34:
      v24 = 0;
    }

LABEL_36:

    _Block_object_dispose(&v50, 8);
    goto LABEL_37;
  }

  v24 = 0;
LABEL_37:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

void __104__ExternalSequenceNumberToAttachmentNoteBodyToAttachmentMigrationPolicy_endEntityMapping_manager_error___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277D36168];
  v12 = *MEMORY[0x277D36170];
  v13[0] = a2;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a2;
  v7 = [v5 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8 = [v3 errorWithDomain:v4 code:100 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)unarchiveObjectWithExternalRepresentation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25C69C000, a2, OS_LOG_TYPE_ERROR, "Error creating unarchiver: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end